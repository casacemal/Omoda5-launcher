import React, { useState } from 'react';
import { 
  Navigation, 
  Music, 
  Phone, 
  Grid, 
  Search, 
  Mic, 
  ArrowUpRight, 
  Play, 
  Pause, 
  SkipForward, 
  Volume2, 
  Bell, 
  ChevronRight, 
  Sparkles,
  MapPin,
  Clock,
  Compass,
  MessageSquare,
  ShieldAlert
} from 'lucide-react';
import { VehicleState, MediaState, NavigationRoute, ActiveScreen } from '../../types';

interface AndroidAutoConceptProps {
  vehicle: VehicleState;
  media: MediaState;
  navigation: NavigationRoute;
  onUpdateMedia: (updater: (prev: MediaState) => MediaState) => void;
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const AndroidAutoConcept: React.FC<AndroidAutoConceptProps> = ({
  vehicle,
  media,
  navigation,
  onUpdateMedia,
  onSelectScreen
}) => {
  const [activeTab, setActiveTab] = useState<'MAP' | 'MEDIA' | 'PHONE' | 'APPS'>('MAP');

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-hidden flex gap-4 select-none relative font-['Plus_Jakarta_Sans',sans-serif]">
      
      {/* Sol Dikey Dinamik Uygulama Çubuğu (Quick Navigation Bar) */}
      <div className="w-16 sm:w-20 bg-slate-900/90 border border-slate-800 rounded-3xl flex flex-col items-center justify-between py-5 shadow-2xl z-10 backdrop-blur-md">
        
        {/* App Switcher Top Icons */}
        <div className="flex flex-col gap-4 items-center w-full">
          <button
            onClick={() => setActiveTab('MAP')}
            className={`w-12 h-12 rounded-2xl flex items-center justify-center transition-all cursor-pointer ${
              activeTab === 'MAP' 
                ? 'bg-blue-600 text-white shadow-lg shadow-blue-500/40 scale-105' 
                : 'text-slate-400 hover:text-white hover:bg-slate-800'
            }`}
            title="Google Maps"
          >
            <Navigation className="w-6 h-6" />
          </button>

          <button
            onClick={() => setActiveTab('MEDIA')}
            className={`w-12 h-12 rounded-2xl flex items-center justify-center transition-all cursor-pointer ${
              activeTab === 'MEDIA' 
                ? 'bg-emerald-600 text-white shadow-lg shadow-emerald-500/40 scale-105' 
                : 'text-slate-400 hover:text-white hover:bg-slate-800'
            }`}
            title="Media Player"
          >
            <Music className="w-6 h-6" />
          </button>

          <button
            onClick={() => setActiveTab('PHONE')}
            className={`w-12 h-12 rounded-2xl flex items-center justify-center transition-all cursor-pointer ${
              activeTab === 'PHONE' 
                ? 'bg-purple-600 text-white shadow-lg shadow-purple-500/40 scale-105' 
                : 'text-slate-400 hover:text-white hover:bg-slate-800'
            }`}
            title="Phone & Messages"
          >
            <Phone className="w-6 h-6" />
          </button>
        </div>

        {/* Bottom Launcher Drawer Icon */}
        <div className="flex flex-col gap-3 items-center w-full border-t border-slate-800/80 pt-4">
          <button
            onClick={() => onSelectScreen('APPS_GRID')}
            className="w-12 h-12 rounded-2xl bg-slate-800/80 hover:bg-cyan-500/20 hover:text-cyan-400 text-slate-300 flex items-center justify-center transition-all cursor-pointer border border-slate-700/50"
            title="Apps Grid"
          >
            <Grid className="w-6 h-6" />
          </button>

          <div className="w-3 h-3 rounded-full bg-emerald-400 animate-pulse" title="Google Assistant Ready" />
        </div>

      </div>

      {/* Sağ Taraf - Dashboard Tile Izgara Düzeni (Material 3 Expressive Dark) */}
      <div className="flex-1 grid grid-cols-1 lg:grid-cols-12 gap-4 h-full overflow-hidden">
        
        {/* Üst / Büyük Kart (L-Shape / Left Side 8 Cols): Harita & Canlı Navigasyon Simülasyonu */}
        <div className="lg:col-span-8 h-full bg-slate-900/80 border border-slate-800/90 rounded-3xl p-5 relative overflow-hidden flex flex-col justify-between shadow-2xl group">
          
          {/* Simulated Map Visual Canvas Background */}
          <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_top,_var(--tw-gradient-stops))] from-blue-950/40 via-slate-900 to-slate-950 opacity-90" />
          
          {/* Decorative Vector Roads Overlay */}
          <svg className="absolute inset-0 w-full h-full opacity-30 pointer-events-none" viewBox="0 0 400 300">
            <path d="M 0,200 Q 150,180 200,100 T 400,50" stroke="#3b82f6" strokeWidth="12" fill="none" strokeLinecap="round" />
            <path d="M 100,300 Q 220,150 350,0" stroke="#10b981" strokeWidth="8" strokeDasharray="10 6" fill="none" />
            <circle cx="200" cy="100" r="10" fill="#60a5fa" className="animate-ping" />
            <circle cx="200" cy="100" r="6" fill="#2563eb" />
          </svg>

          {/* Search Header */}
          <div className="relative z-10 flex items-center justify-between bg-slate-950/80 backdrop-blur-md p-3 px-4 rounded-2xl border border-slate-800 shadow-lg">
            <div className="flex items-center gap-3 text-slate-300 text-sm font-medium w-full">
              <Search className="w-5 h-5 text-cyan-400" />
              <span>Search Google Maps destination...</span>
            </div>
            <div className="flex items-center gap-2">
              <button className="p-2 rounded-xl bg-blue-600/20 text-blue-400 border border-blue-500/30 hover:bg-blue-600/30 cursor-pointer">
                <Mic className="w-4 h-4" />
              </button>
            </div>
          </div>

          {/* Turn-by-Turn Card Overlay */}
          <div className="relative z-10 my-auto bg-slate-950/90 backdrop-blur-xl border border-blue-500/30 rounded-3xl p-5 max-w-sm shadow-2xl space-y-3">
            <div className="flex items-center justify-between text-xs font-bold font-orbitron text-blue-400">
              <span className="flex items-center gap-1.5">
                <Compass className="w-4 h-4 text-emerald-400 animate-spin" /> LIVE NAVIGATION
              </span>
              <span className="text-slate-400">{navigation.speedLimitKmh} km/h LIMIT</span>
            </div>

            <div className="flex items-center gap-4">
              <div className="w-12 h-12 rounded-2xl bg-blue-600/30 border border-blue-500/50 flex items-center justify-center text-blue-300">
                <ArrowUpRight className="w-7 h-7" />
              </div>
              <div>
                <div className="text-lg font-extrabold text-slate-100">{navigation.nextInstruction}</div>
                <div className="text-xs text-slate-400">In {navigation.nextManeuverDistanceMeters} meters • {navigation.destination}</div>
              </div>
            </div>

            <div className="flex items-center justify-between pt-2 border-t border-slate-800 text-xs text-slate-300 font-mono">
              <span className="text-emerald-400 font-bold">{navigation.etaMinutes} min ({navigation.distanceKm} km)</span>
              <span>ETA 10:45 AM</span>
            </div>
          </div>

          {/* Bottom Status Bar */}
          <div className="relative z-10 flex items-center justify-between text-xs text-slate-400">
            <span className="bg-slate-950/80 px-3 py-1.5 rounded-xl border border-slate-800 font-mono text-cyan-300">
              ⚡ Android Auto v11.4 • Material 3 Expressive
            </span>
            <button 
              onClick={() => onSelectScreen('NAVIGATION')} 
              className="flex items-center gap-1 text-blue-400 font-bold hover:underline cursor-pointer"
            >
              Full Screen Map <ChevronRight className="w-4 h-4" />
            </button>
          </div>

        </div>

        {/* Sağ Taraf Column (4 Cols) */}
        <div className="lg:col-span-4 flex flex-col gap-4 h-full">
          
          {/* Alt Sol / Üst Medya Kartı (Albüm Kapağı, Soft Blur, Waveform, Controls) */}
          <div className="flex-1 bg-slate-900/90 border border-slate-800 rounded-3xl p-5 relative overflow-hidden flex flex-col justify-between shadow-xl">
            {/* Background Blur Artwork */}
            <div 
              className="absolute inset-0 bg-cover bg-center opacity-20 blur-2xl pointer-events-none" 
              style={{ backgroundImage: `url(${media.currentTrack.coverUrl})` }}
            />

            <div className="relative z-10 flex items-center justify-between">
              <span className="text-[10px] font-orbitron font-bold text-emerald-400 tracking-wider flex items-center gap-1.5">
                <Music className="w-3.5 h-3.5" /> SPOTIFY MEDIA TILE
              </span>
              <span className="text-[10px] px-2 py-0.5 rounded-full bg-emerald-500/20 text-emerald-300 font-mono border border-emerald-500/30">
                HQ SOUND
              </span>
            </div>

            <div className="relative z-10 flex items-center gap-4 my-2">
              <img 
                src={media.currentTrack.coverUrl} 
                alt="Album" 
                className="w-16 h-16 rounded-2xl object-cover shadow-2xl border border-slate-700" 
              />
              <div className="overflow-hidden">
                <div className="text-sm font-bold text-slate-100 truncate">{media.currentTrack.title}</div>
                <div className="text-xs text-slate-400 truncate">{media.currentTrack.artist}</div>
                <div className="text-[10px] text-slate-500 mt-0.5">{media.currentTrack.album}</div>
              </div>
            </div>

            {/* Waveform Animation Simulation */}
            <div className="relative z-10 flex items-center justify-center gap-1 my-1">
              {[40, 70, 30, 90, 50, 80, 40, 100, 60, 30, 85, 45].map((h, idx) => (
                <div 
                  key={idx} 
                  className={`w-1 rounded-full bg-emerald-400 transition-all duration-300 ${media.isPlaying ? 'animate-pulse' : 'opacity-40'}`} 
                  style={{ height: media.isPlaying ? `${h * 0.25}px` : '6px' }}
                />
              ))}
            </div>

            {/* Controls */}
            <div className="relative z-10 flex items-center justify-between border-t border-slate-800/80 pt-3">
              <Volume2 className="w-4 h-4 text-slate-400" />
              
              <div className="flex items-center gap-3">
                <button 
                  onClick={() => onUpdateMedia(p => ({ ...p, isPlaying: !p.isPlaying }))}
                  className="w-10 h-10 rounded-2xl bg-emerald-500 text-slate-950 font-bold flex items-center justify-center shadow-lg shadow-emerald-500/30 cursor-pointer hover:scale-105 transition-transform"
                >
                  {media.isPlaying ? <Pause className="w-5 h-5" /> : <Play className="w-5 h-5 ml-0.5" />}
                </button>
                <button className="p-2 text-slate-400 hover:text-white cursor-pointer">
                  <SkipForward className="w-5 h-5" />
                </button>
              </div>

              <Sparkles className="w-4 h-4 text-emerald-400" />
            </div>

          </div>

          {/* Alt Sağ / Son Aramalar & Hızlı Rehber / Bildirim Özeti Widget'ı */}
          <div className="flex-1 bg-slate-900/90 border border-slate-800 rounded-3xl p-5 flex flex-col justify-between shadow-xl">
            <div className="flex items-center justify-between">
              <span className="text-[10px] font-orbitron font-bold text-purple-400 tracking-wider flex items-center gap-1.5">
                <Phone className="w-3.5 h-3.5" /> QUICK CONTACTS & WIDGETS
              </span>
              <Bell className="w-3.5 h-3.5 text-slate-400" />
            </div>

            <div className="space-y-2 my-2">
              <div className="p-2.5 rounded-2xl bg-slate-950/80 border border-slate-800 flex items-center justify-between">
                <div className="flex items-center gap-2.5">
                  <div className="w-8 h-8 rounded-full bg-purple-600/30 text-purple-300 font-bold flex items-center justify-center text-xs">
                    AH
                  </div>
                  <div>
                    <div className="text-xs font-bold text-slate-200">Ahmet Yılmaz</div>
                    <div className="text-[10px] text-slate-400">Incoming Call • 2m ago</div>
                  </div>
                </div>
                <button className="p-1.5 rounded-xl bg-purple-600 text-white cursor-pointer hover:bg-purple-500">
                  <Phone className="w-3.5 h-3.5" />
                </button>
              </div>

              <div className="p-2.5 rounded-2xl bg-slate-950/80 border border-slate-800 flex items-center justify-between">
                <div className="flex items-center gap-2.5">
                  <div className="w-8 h-8 rounded-full bg-blue-600/30 text-blue-300 font-bold flex items-center justify-center text-xs">
                    <MessageSquare className="w-4 h-4" />
                  </div>
                  <div>
                    <div className="text-xs font-bold text-slate-200">Omoda 5 Assistant</div>
                    <div className="text-[10px] text-emerald-400">Tire pressure optimal (33 PSI)</div>
                  </div>
                </div>
              </div>
            </div>

            <div className="text-[10px] text-slate-500 font-mono text-center">
              Android Auto Connected • Pixel 8 Pro
            </div>
          </div>

        </div>

      </div>

    </div>
  );
};
