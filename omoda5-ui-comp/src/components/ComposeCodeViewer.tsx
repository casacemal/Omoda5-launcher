import React, { useState } from 'react';
import { Code, Download, Copy, Check, ArrowLeft, Smartphone, FileCode, Sparkles } from 'lucide-react';
import { ActiveScreen } from '../types';

interface ComposeCodeViewerProps {
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const ComposeCodeViewer: React.FC<ComposeCodeViewerProps> = ({ onSelectScreen }) => {
  const [activeTab, setActiveTab] = useState<'app' | 'theme' | 'home' | 'cluster' | 'carplay' | 'build'>('app');
  const [copied, setCopied] = useState(false);

  const snippets = {
    app: `// com/omoda/aaos/ui/OmodaAaosApp.kt
package com.omoda.aaos.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import com.omoda.aaos.theme.*
import com.omoda.aaos.ui.screens.*

@Composable
fun OmodaAaosApp() {
    var activeScreen by remember { mutableStateOf(AaosScreen.HOME) }
    var speedKmh by remember { mutableStateOf(72) }

    Column(modifier = Modifier.fillMaxSize().background(AaosSurface)) {
        TopStatusBar(speedKmh = speedKmh)
        Box(modifier = Modifier.weight(1f)) {
            when (activeScreen) {
                AaosScreen.HOME -> HomeScreen(onNavigate = { activeScreen = it })
                AaosScreen.INSTRUMENT_CLUSTER -> TeslaClusterScreen(speedKmh = speedKmh, onSpeedChange = { speedKmh = it })
                AaosScreen.CARPLAY -> CarPlayDashboardScreen(onReturnHome = { activeScreen = AaosScreen.HOME })
                else -> HomeScreen(onNavigate = { activeScreen = it })
            }
        }
        AaosBottomDock(activeScreen = activeScreen, onScreenSelect = { activeScreen = it })
    }
}`,
    theme: `// com/omoda/aaos/theme/Theme.kt
package com.omoda.aaos.theme

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

val AaosSurface = Color(0xFF0F172A)
val AaosSurfaceContainer = Color(0xFF1E293B)
val AaosPrimaryCyan = Color(0xFF06B6D4)
val CarPlayBlue = Color(0xFF007AFF)
val CarPlayGreen = Color(0xFF34C759)
val TeslaCardBackground = Color(0xDA121826)

private val AaosDarkColorScheme = darkColorScheme(
    primary = AaosPrimaryCyan,
    surface = AaosSurface,
    surfaceContainer = AaosSurfaceContainer
)

@Composable
fun OmodaAAOSTheme(content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = AaosDarkColorScheme, content = content)
}`,
    home: `// com/omoda/aaos/ui/screens/HomeScreen.kt
package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.omoda.aaos.theme.*

@Composable
fun HomeScreen(onNavigate: (AaosScreen) -> Unit) {
    Column(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        Text("OMODA 5 COCKPIT DASHBOARD", color = Color.White)
        Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
            BentoWidget("Tesla Gauges", "Digital Speed & ADAS", onClick = { onNavigate(AaosScreen.INSTRUMENT_CLUSTER) })
            BentoWidget("Apple CarPlay 2.0", "Split Dashboard", onClick = { onNavigate(AaosScreen.CARPLAY) })
        }
    }
}`,
    cluster: `// com/omoda/aaos/ui/screens/TeslaClusterScreen.kt
package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.omoda.aaos.theme.*

@Composable
fun TeslaClusterScreen(speedKmh: Int, onSpeedChange: (Int) -> Unit) {
    Column(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        Text("SPEED: $speedKmh KM/H", fontSize = 48.sp, color = Color.White)
        Row {
            Button(onClick = { onSpeedChange(speedKmh - 5) }) { Text("BRAKE") }
            Button(onClick = { onSpeedChange(speedKmh + 5) }) { Text("GAS") }
        }
    }
}`,
    carplay: `// com/omoda/aaos/ui/screens/CarPlayScreen.kt
package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import com.omoda.aaos.theme.*

@Composable
fun CarPlayDashboardScreen(onReturnHome: () -> Unit) {
    Column(modifier = Modifier.fillMaxSize()) {
        Text("APPLE CARPLAY 2.0 SPLIT DASHBOARD", color = Color.White)
        Button(onClick = onReturnHome) { Text("Return to Omoda System") }
    }
}`,
    build: `// android/app/build.gradle.kts
plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose")
}

android {
    namespace = "com.omoda.aaos"
    compileSdk = 35
    defaultConfig {
        minSdk = 26 // Android Automotive OS Base
        targetSdk = 35
    }
}

dependencies {
    implementation(platform("androidx.compose:compose-bom:2024.09.00"))
    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.material3:material3")
}`
  };

  const handleCopy = () => {
    navigator.clipboard.writeText(snippets[activeTab]);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 flex flex-col justify-between relative overflow-y-auto no-scrollbar select-none">
      
      {/* Header */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-4">
        <div className="flex items-center gap-3">
          <button
            onClick={() => onSelectScreen('LAUNCHER')}
            className="flex items-center gap-2 px-3 py-1.5 rounded-xl bg-slate-900 border border-slate-700 text-slate-200 text-xs font-bold hover:border-cyan-500 transition-colors cursor-pointer aaos-touch-target"
          >
            <ArrowLeft className="w-4 h-4 text-cyan-400" />
            <span>Cockpitt'e Dön</span>
          </button>
          
          <div className="flex items-center gap-2 bg-emerald-500/10 border border-emerald-500/30 px-3 py-1.5 rounded-xl">
            <Smartphone className="w-4 h-4 text-emerald-400" />
            <span className="text-xs font-bold text-emerald-300 font-orbitron">NATIVE JETPACK COMPOSE / KOTLIN</span>
          </div>
        </div>

        <a
          href="/api/download-project"
          download="omoda5_launcher_project.zip"
          className="flex items-center gap-2 px-4 py-2 rounded-xl bg-emerald-500 hover:bg-emerald-400 text-slate-950 font-bold text-xs transition-all shadow-lg shadow-emerald-500/20 cursor-pointer"
        >
          <Download className="w-4 h-4" />
          <span>Tüm Kotlin Projesini ZIP İndir</span>
        </a>
      </div>

      {/* Code Inspector Body */}
      <div className="tesla-glass-card rounded-3xl p-5 border border-slate-800 flex-1 flex flex-col justify-between">
        
        {/* File Tabs */}
        <div className="flex flex-wrap items-center justify-between gap-2 border-b border-slate-800/80 pb-3 mb-4">
          <div className="flex items-center gap-1.5 overflow-x-auto no-scrollbar">
            {[
              { id: 'app', label: 'OmodaAaosApp.kt' },
              { id: 'theme', label: 'Theme.kt' },
              { id: 'home', label: 'HomeScreen.kt' },
              { id: 'cluster', label: 'TeslaClusterScreen.kt' },
              { id: 'carplay', label: 'CarPlayScreen.kt' },
              { id: 'build', label: 'build.gradle.kts' },
            ].map(tab => (
              <button
                key={tab.id}
                onClick={() => setActiveTab(tab.id as any)}
                className={`px-3 py-1.5 rounded-xl text-xs font-mono font-semibold flex items-center gap-1.5 transition-all cursor-pointer ${
                  activeTab === tab.id
                    ? 'bg-cyan-500/20 text-cyan-300 border border-cyan-500/40 shadow-sm'
                    : 'bg-slate-900/80 text-slate-400 hover:text-slate-200 border border-slate-800'
                }`}
              >
                <FileCode className="w-3.5 h-3.5" />
                <span>{tab.label}</span>
              </button>
            ))}
          </div>

          <button
            onClick={handleCopy}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-800 hover:bg-slate-700 text-slate-200 text-xs font-semibold border border-slate-700 transition-colors cursor-pointer"
          >
            {copied ? <Check className="w-3.5 h-3.5 text-emerald-400" /> : <Copy className="w-3.5 h-3.5 text-cyan-400" />}
            <span>{copied ? 'Kopyalandı!' : 'Kodu Kopyala'}</span>
          </button>
        </div>

        {/* Code Viewport */}
        <div className="bg-slate-950/90 rounded-2xl p-4 border border-slate-800 font-mono text-xs text-slate-200 overflow-x-auto max-h-[380px] leading-relaxed select-text shadow-inner">
          <pre>{snippets[activeTab]}</pre>
        </div>

        {/* Info Banner */}
        <div className="mt-4 p-3 rounded-2xl bg-slate-900/80 border border-slate-800 flex items-center justify-between text-xs text-slate-300">
          <div className="flex items-center gap-2">
            <Sparkles className="w-4 h-4 text-cyan-400 shrink-0" />
            <span>Tüm Kotlin source kodları proje içerisindeki <b>/android</b> klasöründe yer alır ve Android Studio'da doğrudan derlenebilir.</span>
          </div>
        </div>

      </div>

    </div>
  );
};
