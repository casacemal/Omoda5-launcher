package com.omoda5.launcher.media

import android.os.Bundle
import android.service.media.MediaBrowserService
import android.media.browse.MediaBrowser
import android.util.Log

/**
 * v8.4.0 ULTIMATE - SYSTEM MEDIA PROXY
 * Mimics a system media app to gain higher visibility on AAOS
 */
class OmodaMediaBrowserService : MediaBrowserService() {
    override fun onGetRoot(clientPackageName: String, clientUid: Int, rootHints: Bundle?): BrowserRoot? {
        // Allow everyone to connect
        return BrowserRoot("omoda_root", null)
    }

    override fun onLoadChildren(parentId: String, result: Result<List<MediaBrowser.MediaItem>>) {
        result.sendResult(null)
    }
}
