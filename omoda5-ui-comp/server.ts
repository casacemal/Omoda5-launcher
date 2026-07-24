import express from 'express';
import path from 'path';
import fs from 'fs';
import { createServer as createViteServer } from 'vite';
import { createRequire } from 'module';

const require = createRequire(import.meta.url);
const archiver = require('archiver');

async function startServer() {
  const app = express();
  const PORT = 3000;

  app.use(express.json());

  // 1. Endpoint to download the entire project source code as a ZIP file
  app.get('/api/download-project', (req, res) => {
    const rootDir = process.cwd();
    const zipName = 'omoda5_launcher_project.zip';

    res.attachment(zipName);
    res.setHeader('Content-Type', 'application/zip');

    const archive = archiver('zip', { zlib: { level: 9 } });

    archive.on('error', (err) => {
      console.error('Archive error:', err);
      if (!res.headersSent) {
        res.status(500).send({ error: err.message });
      }
    });

    archive.pipe(res);

    // Glob pattern or ignore function to exclude heavy/temporary folders
    archive.glob('**/*', {
      cwd: rootDir,
      ignore: ['node_modules/**', 'dist/**', '.git/**', '.vite/**', '*.zip', '*.tar.gz'],
      dot: true,
    });

    archive.finalize();
  });

  // Health check
  app.get('/api/health', (_req, res) => {
    res.json({ status: 'ok', time: new Date().toISOString() });
  });

  // 2. Vite middleware setup for Development vs Production
  if (process.env.NODE_ENV !== 'production') {
    const vite = await createViteServer({
      server: { middlewareMode: true },
      appType: 'spa',
    });
    app.use(vite.middlewares);
  } else {
    const distPath = path.join(process.cwd(), 'dist');
    app.use(express.static(distPath));
    app.get('*all', (_req, res) => {
      res.sendFile(path.join(distPath, 'index.html'));
    });
  }

  app.listen(PORT, '0.0.0.0', () => {
    console.log(`Server running on http://0.0.0.0:${PORT}`);
  });
}

startServer().catch((err) => {
  console.error('Failed to start server:', err);
});
