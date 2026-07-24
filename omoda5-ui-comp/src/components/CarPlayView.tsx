import React, { useState } from 'react';
import { 
  Phone, 
  MapPin, 
  Music, 
  MessageSquare, 
  Radio, 
  Settings, 
  Mic, 
  Smartphone, 
  Calendar, 
  Clock,
  Compass,
  ArrowLeft,
  LayoutGrid,
  Maximize2,
  Navigation,
  Play,
  SkipForward,
  ChevronRight
} from 'lucide-react';
import { ActiveScreen } from '../types';

interface CarPlayViewProps {
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const CarPlayView: React.FC<CarPlayViewProps> = ({ onSelectScreen }) => {
  const [viewMode, setViewMode] = useState<'GRID' | 'DASHBOARD'>('DASHBOARD');

  const apps = [
    { name: 'Phone', icon: <Phone className="w-7 h-7 text-white" />, bg: 'bg-emerald-500 shadow-emerald-500/20' },
    { name: 'Apple Maps', icon: <MapPin className="w-7 h-7 text-white" />, bg: 'bg-blue-500 shadow-blue-500/20', action: () => onSelectScreen('NAVIGATION') },
    { name: 'Music', icon: <Music className="w-7 h-7 text-white" />, bg: 'bg-rose-500 shadow-rose-500/20', action: () => onSelectScreen('MEDIA') },
    { name: 'Messages', icon: <MessageSquare className="w-7 h-7 text-white" />, bg: 'bg-green-500 shadow-green-500/20' },
    { name: 'Podcasts', icon: <Radio className="w-7 h-7 text-white" />, bg: 'bg-purple-600 shadow-purple-600/20' },
    { name: 'Calendar', icon: <Calendar className="w-7 h-7 text-white" />, bg: 'bg-amber-500 shadow-amber-500/20' },
    { name: 'Settings', icon: <Settings className="w-7 h-7 text-white" />, bg: 'bg-slate-600 shadow-slate-600/20', action: () => onSelectScreen('VEHICLE_CONTROL') },
    { name: 'Omoda Vehicle', icon: <Compass className="w-7 h-7 text-white" />, bg: 'bg-cyan-600 shadow-cyan-600/20', action: () => onSelectScreen('LAUNCHER') },
  ];

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 flex flex-col justify-between relative overflow-hidden select-none">
      
      {/* Background ambient CarPlay gradient glow */}
      <div className="absolute top-0 right-0 w-96 h-96 bg-blue-600/10 rounded-full blur-3xl pointer-events-none" />
      <div className="absolute bottom-0 left-0 w-96 h-96 bg-purple-600/10 rounded-full blur-3xl pointer-events-none" />

      {/* CarPlay Header Bar - AAOS Compliant */}
      <div className="flex items-center justify-between border-b border-slate-800/80 pb-3 z-10">
        <div className="flex items-center gap-3">
          <button
            onClick={() => onSelectScreen('LAUNCHER')}
            className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-slate-900 border border-slate-700 text-slate-200 text-xs font-bold hover:border-cyan-500 transition-colors cursor-pointer aaos-touch-target"
          >
            <ArrowLeft className="w-4 h-4 text-cyan-400" />
            <span>Return to Omoda System</span>
          </button>
          
          <div className="hidden sm:flex items-center gap-2 bg-slate-900/80 px-3 py-1.5 rounded-xl border border-slate-800">
            <Smartphone className="w-4 h-4 text-cyan-400" />
            <span className="text-xs font-bold font-orbitron text-slate-100">APPLE CARPLAY 2.0</span>
          </div>
        </div>

        {/* View Mode Toggle Switch (Grid vs Split Dashboard) */}
        <div className="flex items-center gap-2">
          <div className="bg-slate-900/90 p-1 rounded-xl border border-slate-800 flex items-center gap-1">
            <button
              onClick={() => setViewMode('DASHBOARD')}
              className={`px-3 py-1.5 rounded-lg text-xs font-bold transition-all cursor-pointer flex items-center gap-1.5 ${
                viewMode === 'DASHBOARD'
                  ? 'bg-blue-600 text-white shadow-md shadow-blue-500/20'
                  : 'text-slate-400 hover:text-white'
              }`}
            >
              <LayoutGrid className="w-3.5 h-3.5" />
              <span>Dashboard</span>
            </button>
            <button
              onClick={() => setViewMode('GRID')}
              className={`px-3 py-1.5 rounded-lg text-xs font-bold transition-all cursor-pointer flex items-center gap-1.5 ${
                viewMode === 'GRID'
                  ? 'bg-blue-600 text-white shadow-md shadow-blue-500/20'
                  : 'text-slate-400 hover:text-white'
              }`}
            >
              <Maximize2 className="w-3.5 h-3.5" />
              <span>App Grid</span>
            </button>
          </div>

          <div className="hidden md:flex items-center gap-2 text-xs font-mono text-emerald-400 bg-emerald-500/10 px-2.5 py-1 rounded-lg border border-emerald-500/20">
            <span className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse" />
            <span>iPhone Connected</span>
          </div>
        </div>
      </div>

      {/* Main CarPlay Body */}
      {viewMode === 'DASHBOARD' ? (
        /* CarPlay Split Dashboard View */
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-4 my-auto py-2 z-10 max-w-6xl mx-auto w-full">
          {/* Main Map Tile */}
          <div 
            onClick={() => onSelectScreen('NAVIGATION')}
            className="lg:col-span-7 carplay-card-blue rounded-3xl p-5 flex flex-col justify-between cursor-pointer hover:border-blue-400 transition-all min-h-[220px] shadow-xl group relative overflow-hidden"
          >
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <div className="w-8 h-8 rounded-xl bg-blue-500 text-white flex items-center justify-center shadow-lg">
                  <Navigation className="w-4 h-4" />
                </div>
                <div>
                  <div className="text-xs font-bold text-blue-200 uppercase tracking-wider">Turn-By-Turn Navigation</div>
                  <div className="text-sm font-bold text-white">Turn Right onto Grand Avenue</div>
                </div>
              </div>
              <span className="text-xs font-mono font-bold text-blue-300 bg-blue-500/20 px-2.5 py-1 rounded-full border border-blue-400/30">
                1.2 km • 3 min
              </span>
            </div>

            <div className="my-3 flex items-center gap-3 bg-slate-950/60 p-3 rounded-2xl border border-blue-500/20 backdrop-blur-md">
              <MapPin className="w-5 h-5 text-blue-400 shrink-0" />
              <div className="text-xs text-slate-200 truncate">
                Destination: <span className="font-bold text-white">Tech Innovation Campus</span>
              </div>
            </div>

            <div className="flex items-center justify-between text-xs font-semibold text-blue-300 group-hover:translate-x-1 transition-transform">
              <span>Open Full CarPlay Map</span>
              <ChevronRight className="w-4 h-4" />
            </div>
          </div>

          {/* Right Column: Music + Quick Calendar Widgets */}
          <div className="lg:col-span-5 flex flex-col gap-4">
            {/* Music Card */}
            <div 
              onClick={() => onSelectScreen('MEDIA')}
              className="carplay-card-purple rounded-3xl p-4 flex flex-col justify-between cursor-pointer hover:border-purple-400 transition-all shadow-xl group"
            >
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-3">
                  <div className="w-12 h-12 rounded-2xl bg-gradient-to-br from-purple-500 to-rose-500 flex items-center justify-center text-white shadow-lg font-bold font-orbitron">
                    S
                  </div>
                  <div>
                    <div className="text-xs text-purple-300 font-medium">Apple Music</div>
                    <div className="text-sm font-bold text-white truncate max-w-[160px]">Cyberpunk Horizon</div>
                    <div className="text-xs text-slate-300 truncate max-w-[160px]">Synthwave Radio</div>
                  </div>
                </div>

                <div className="flex items-center gap-1">
                  <button className="p-2 rounded-xl bg-purple-500/20 hover:bg-purple-500/40 text-purple-200 transition-colors">
                    <Play className="w-4 h-4 fill-purple-200" />
                  </button>
                  <button className="p-2 rounded-xl bg-purple-500/20 hover:bg-purple-500/40 text-purple-200 transition-colors">
                    <SkipForward className="w-4 h-4" />
                  </button>
                </div>
              </div>
            </div>

            {/* Calendar / Next Event Tile */}
            <div className="carplay-card-orange rounded-3xl p-4 flex items-center justify-between shadow-xl">
              <div className="flex items-center gap-3">
                <div className="w-10 h-10 rounded-2xl bg-orange-500 text-white flex items-center justify-center shadow-lg font-bold">
                  <Calendar className="w-5 h-5" />
                </div>
                <div>
                  <div className="text-xs font-bold text-orange-200 uppercase">Upcoming Event</div>
                  <div className="text-xs font-bold text-white mt-0.5">Design Review Meeting</div>
                  <div className="text-[11px] text-slate-300">11:30 AM • Conference Room B</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      ) : (
        /* CarPlay Grid App Icons View */
        <div className="grid grid-cols-4 gap-6 max-w-2xl mx-auto my-auto py-6 z-10">
          {apps.map(app => (
            <button
              key={app.name}
              onClick={app.action || (() => onSelectScreen('LAUNCHER'))}
              className="flex flex-col items-center gap-2 group cursor-pointer aaos-touch-target"
            >
              <div className={`w-16 h-16 sm:w-20 sm:h-20 rounded-2xl ${app.bg} flex items-center justify-center shadow-2xl group-hover:scale-110 transition-transform`}>
                {app.icon}
              </div>
              <span className="text-xs font-semibold text-slate-200 group-hover:text-cyan-300 transition-colors">
                {app.name}
              </span>
            </button>
          ))}
        </div>
      )}

      {/* CarPlay Siri Bottom Wave Bar - High-Contrast AAOS Accent */}
      <div className="carplay-glass-panel rounded-2xl p-3 flex items-center justify-between shadow-2xl z-10 mt-2">
        <div className="flex items-center gap-3">
          {/* Animated Siri Glowing Wave Ring */}
          <div className="w-7 h-7 rounded-full bg-gradient-to-r from-cyan-400 via-purple-500 to-rose-500 animate-spin p-0.5 flex items-center justify-center shadow-lg">
            <div className="w-full h-full bg-slate-950 rounded-full flex items-center justify-center">
              <Mic className="w-3.5 h-3.5 text-cyan-300" />
            </div>
          </div>
          <div>
            <div className="text-xs font-bold text-slate-100 flex items-center gap-2">
              <span>Siri Voice Controller</span>
              <span className="text-[10px] text-cyan-400 font-mono bg-cyan-500/10 px-1.5 py-0.5 rounded border border-cyan-500/20">Active</span>
            </div>
            <div className="text-[11px] text-slate-400">"Hey Siri, navigate to nearest charging station..."</div>
          </div>
        </div>

        <button 
          onClick={() => onSelectScreen('LAUNCHER')}
          className="text-xs font-bold text-cyan-400 hover:text-cyan-300 bg-cyan-500/10 px-3 py-1.5 rounded-xl border border-cyan-500/20 hover:border-cyan-400 transition-all"
        >
          Omoda Cockpit
        </button>
      </div>

    </div>
  );
};

