import React, { useState } from 'react';
import { 
  Compass, 
  Music, 
  MapPin, 
  Home, 
  Power, 
  Sun, 
  Moon, 
  Key, 
  Navigation, 
  Play, 
  Pause, 
  SkipForward, 
  Wifi, 
  BatteryCharging, 
  ChevronRight,
  ShieldCheck,
  Building,
  Briefcase
} from 'lucide-react';
import { VehicleState, MediaState, NavigationRoute, ActiveScreen } from '../../types';

interface CarPlayConceptProps {
  vehicle: VehicleState;
  media: MediaState;
  navigation: NavigationRoute;
  onUpdateMedia: (updater: (prev: MediaState) => MediaState) => void;
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const CarPlayConcept: React.FC<CarPlayConceptProps> = ({
  vehicle,
  media,
  navigation,
  onUpdateMedia,
  onSelectScreen
}) => {
  const [garageOpen, setGarageOpen] = useState(false);
  const [isDarkMode, setIsDarkMode] = useState(true);

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-hidden flex gap-4 select-none relative font-['Plus_Jakarta_Sans',sans-serif]">
      
      {/* Sol Şeffaf Cam Efektli Status/Dock Bar (Glassmorphism Dock) */}
      <div className="w-16 sm:w-20 bg-slate-900/60 backdrop-blur-2xl border border-white/10 rounded-[28px] flex flex-col items-center justify-between py-6 shadow-2xl z-10">
        
        {/* Top Status (Clock, Cell, Battery) */}
        <div className="flex flex-col items-center gap-3">
          <span className="text-xs font-bold font-mono text-slate-100">09:41</span>
          <div className="flex flex-col gap-2 text-slate-300">
            <Wifi className="w-4 h-4 text-emerald-400" />
            <BatteryCharging className="w-4 h-4 text-emerald-400" />
          </div>
        </div>

        {/* Center CarPlay Quick Dock Apps */}
        <div className="flex flex-col gap-4 items-center">
          <div className="w-12 h-12 rounded-2xl bg-blue-500/80 text-white flex items-center justify-center shadow-lg shadow-blue-500/30">
            <MapPin className="w-6 h-6" />
          </div>
          <div className="w-12 h-12 rounded-2xl bg-rose-500/80 text-white flex items-center justify-center shadow-lg shadow-rose-500/30">
            <Music className="w-6 h-6" />
          </div>
        </div>

        {/* Bottom CarPlay Home Button */}
        <button
          onClick={() => onSelectScreen('CARPLAY')}
          className="w-12 h-12 rounded-2xl bg-white/10 hover:bg-white/20 border border-white/20 text-white flex items-center justify-center transition-all cursor-pointer shadow-xl active:scale-95"
          title="CarPlay Home"
        >
          <Home className="w-6 h-6" />
        </button>

      </div>

      {/* Sağ Asimetrik Bölünmüş Ekran (Split-Screen Layout) */}
      <div className="flex-1 grid grid-cols-1 lg:grid-cols-12 gap-5 h-full overflow-hidden">
        
        {/* Ana Odak (2/3 Alan - 8 Cols): Canlı Vektörel Harita Kartı & Dönüş Adım Talimatı */}
        <div className="lg:col-span-8 h-full bg-slate-900/50 backdrop-blur-xl border border-white/10 rounded-[28px] p-6 relative overflow-hidden flex flex-col justify-between shadow-2xl">
          
          {/* Subtle Vector Gradient Map Background */}
          <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_bottom_left,_var(--tw-gradient-stops))] from-blue-900/30 via-slate-900 to-slate-950 pointer-events-none" />

          {/* Turn-by-Turn Apple Maps Style Floating Box */}
          <div className="relative z-10 bg-slate-950/80 backdrop-blur-2xl border border-white/15 rounded-3xl p-5 shadow-2xl max-w-md flex items-center gap-4">
            <div className="w-14 h-14 rounded-2xl bg-emerald-500 text-slate-950 flex items-center justify-center font-extrabold shadow-lg shadow-emerald-500/30">
              <Navigation className="w-8 h-8" />
            </div>

            <div className="flex-1">
              <div className="text-xs font-bold text-emerald-400 uppercase tracking-wider">
                In 300m Turn Right
              </div>
              <div className="text-lg font-bold text-white leading-tight">
                {navigation.nextInstruction}
              </div>
              <div className="text-xs text-slate-400 mt-0.5">
                {navigation.destination}
              </div>
            </div>
          </div>

          {/* Map Overlay Center Vehicle Indicator */}
          <div className="relative z-10 my-auto text-center">
            <div className="w-16 h-16 rounded-full bg-blue-500/20 border-2 border-blue-400 flex items-center justify-center mx-auto shadow-2xl animate-pulse">
              <div className="w-6 h-6 rounded-full bg-blue-500 border-2 border-white shadow-lg" />
            </div>
            <div className="text-xs font-semibold text-slate-300 mt-2 bg-slate-950/60 px-3 py-1 rounded-full border border-white/10 inline-block backdrop-blur-md">
              Omoda 5 SUV • Speed 65 km/h
            </div>
          </div>

          {/* Bottom ETA Strip */}
          <div className="relative z-10 flex items-center justify-between bg-slate-950/80 backdrop-blur-2xl border border-white/10 p-4 rounded-2xl">
            <div className="flex items-center gap-4">
              <div>
                <span className="text-xl font-extrabold text-emerald-400">18 min</span>
                <span className="text-xs text-slate-400 ml-2">12.4 km</span>
              </div>
              <span className="text-xs font-bold text-slate-300 font-mono">ETA 10:48 AM</span>
            </div>

            <button
              onClick={() => onSelectScreen('NAVIGATION')}
              className="px-4 py-2 rounded-xl bg-blue-600 hover:bg-blue-500 text-white text-xs font-bold transition-all cursor-pointer shadow-lg"
            >
              Full Navigation
            </button>
          </div>

        </div>

        {/* İkincil Odak (1/3 Alan - 4 Cols) */}
        <div className="lg:col-span-4 flex flex-col gap-5 h-full">
          
          {/* İkincil Üst: Apple Music Stili Medya Paneli */}
          <div className="flex-1 bg-slate-900/60 backdrop-blur-2xl border border-white/10 rounded-[28px] p-5 flex flex-col justify-between shadow-2xl relative overflow-hidden">
            <div className="flex items-center justify-between">
              <span className="text-[10px] font-bold text-rose-400 tracking-wider flex items-center gap-1.5 uppercase font-orbitron">
                <Music className="w-3.5 h-3.5" /> Apple Music
              </span>
              <span className="text-[10px] text-slate-400 font-mono">Lossless</span>
            </div>

            <div className="flex items-center gap-4 my-2">
              <img 
                src={media.currentTrack.coverUrl} 
                alt="Album Cover" 
                className="w-16 h-16 rounded-2xl object-cover shadow-2xl border border-white/10" 
              />
              <div className="overflow-hidden">
                <div className="text-sm font-extrabold text-white truncate">{media.currentTrack.title}</div>
                <div className="text-xs text-slate-300 truncate">{media.currentTrack.artist}</div>
                <div className="text-[10px] text-slate-400 mt-0.5">{media.currentTrack.album}</div>
              </div>
            </div>

            {/* Apple Music Play Controls */}
            <div className="flex items-center justify-between pt-3 border-t border-white/10">
              <button className="text-slate-400 hover:text-white cursor-pointer">
                <SkipForward className="w-5 h-5 rotate-180" />
              </button>

              <button 
                onClick={() => onUpdateMedia(p => ({ ...p, isPlaying: !p.isPlaying }))}
                className="w-11 h-11 rounded-2xl bg-white text-slate-950 font-bold flex items-center justify-center shadow-xl hover:scale-105 transition-transform cursor-pointer"
              >
                {media.isPlaying ? <Pause className="w-5 h-5" /> : <Play className="w-5 h-5 ml-0.5" />}
              </button>

              <button className="text-slate-400 hover:text-white cursor-pointer">
                <SkipForward className="w-5 h-5" />
              </button>
            </div>
          </div>

          {/* İkincil Alt: Hızlı Aksiyonlar (Garaj Kapısı Aç, Siyah Tema Toggle, Ev/İş Yol Tarifi) */}
          <div className="flex-1 bg-slate-900/60 backdrop-blur-2xl border border-white/10 rounded-[28px] p-5 flex flex-col justify-between shadow-2xl space-y-3">
            <div className="text-[10px] font-bold text-slate-300 font-orbitron uppercase tracking-wider">
              SMART SHORTCUTS & ACTIONS
            </div>

            <div className="grid grid-cols-2 gap-2">
              {/* Garaj Kapısı Aç */}
              <button
                onClick={() => setGarageOpen(!garageOpen)}
                className={`p-3 rounded-2xl border transition-all cursor-pointer text-left flex flex-col justify-between ${
                  garageOpen 
                    ? 'bg-emerald-500/20 text-emerald-300 border-emerald-500/50' 
                    : 'bg-white/5 border-white/10 text-slate-200 hover:bg-white/10'
                }`}
              >
                <Key className="w-5 h-5 text-emerald-400" />
                <div className="mt-2">
                  <div className="text-xs font-bold">Home Garage</div>
                  <div className="text-[10px] text-slate-400">{garageOpen ? 'OPENING...' : 'Tap to Open'}</div>
                </div>
              </button>

              {/* Tema Toggle */}
              <button
                onClick={() => setIsDarkMode(!isDarkMode)}
                className="p-3 rounded-2xl bg-white/5 hover:bg-white/10 border border-white/10 text-slate-200 transition-all cursor-pointer text-left flex flex-col justify-between"
              >
                {isDarkMode ? <Moon className="w-5 h-5 text-purple-400" /> : <Sun className="w-5 h-5 text-amber-400" />}
                <div className="mt-2">
                  <div className="text-xs font-bold">CarPlay Theme</div>
                  <div className="text-[10px] text-slate-400">{isDarkMode ? 'Dark Mode' : 'Light Mode'}</div>
                </div>
              </button>
            </div>

            {/* Quick Home / Work Nav */}
            <div className="grid grid-cols-2 gap-2 pt-1 border-t border-white/10">
              <button 
                onClick={() => onSelectScreen('NAVIGATION')}
                className="p-2.5 rounded-2xl bg-blue-600/20 hover:bg-blue-600/30 border border-blue-500/30 text-blue-300 flex items-center gap-2 text-xs font-bold transition-all cursor-pointer"
              >
                <Building className="w-4 h-4 text-blue-400" /> Nav Home
              </button>
              <button 
                onClick={() => onSelectScreen('NAVIGATION')}
                className="p-2.5 rounded-2xl bg-purple-600/20 hover:bg-purple-600/30 border border-purple-500/30 text-purple-300 flex items-center gap-2 text-xs font-bold transition-all cursor-pointer"
              >
                <Briefcase className="w-4 h-4 text-purple-400" /> Nav Work
              </button>
            </div>

          </div>

        </div>

      </div>

    </div>
  );
};
