import React from 'react';
import { 
  Home, 
  Fan, 
  Car, 
  Palette, 
  Navigation, 
  Music, 
  Smartphone, 
  Grid, 
  Camera, 
  Volume2, 
  VolumeX,
  Play,
  Pause,
  ChevronUp,
  ChevronDown
} from 'lucide-react';
import { ActiveScreen, ClimateState, MediaState } from '../types';

interface BottomDockProps {
  activeScreen: ActiveScreen;
  onSelectScreen: (screen: ActiveScreen) => void;
  climate: ClimateState;
  onUpdateClimate: (updater: (prev: ClimateState) => ClimateState) => void;
  media: MediaState;
  onUpdateMedia: (updater: (prev: MediaState) => MediaState) => void;
}

export const BottomDock: React.FC<BottomDockProps> = ({
  activeScreen,
  onSelectScreen,
  climate,
  onUpdateClimate,
  media,
  onUpdateMedia
}) => {
  const handleTempChange = (delta: number, isDriver: boolean) => {
    onUpdateClimate(prev => {
      const field = isDriver ? 'driverTemp' : 'passengerTemp';
      const newVal = Math.min(30, Math.max(16, Number((prev[field] + delta).toFixed(1))));
      if (prev.dualMode && isDriver) {
        return { ...prev, driverTemp: newVal, passengerTemp: newVal };
      }
      return { ...prev, [field]: newVal };
    });
  };

  const navItems: { id: ActiveScreen; label: string; icon: React.ReactNode }[] = [
    { id: 'LAUNCHER', label: 'Home', icon: <Home className="w-5 h-5" /> },
    { id: 'CLIMATE', label: 'Climate', icon: <Fan className="w-5 h-5" /> },
    { id: 'VEHICLE_CONTROL', label: 'Vehicle', icon: <Car className="w-5 h-5" /> },
    { id: 'NAVIGATION', label: 'Nav', icon: <Navigation className="w-5 h-5" /> },
    { id: 'MEDIA', label: 'Media', icon: <Music className="w-5 h-5" /> },
    { id: 'CAMERA_360', label: '360° Cam', icon: <Camera className="w-5 h-5" /> },
    { id: 'AMBIENT_LIGHT', label: 'Ambient', icon: <Palette className="w-5 h-5" /> },
    { id: 'CARPLAY', label: 'CarPlay', icon: <Smartphone className="w-5 h-5" /> },
    { id: 'APPS_GRID', label: 'Apps', icon: <Grid className="w-5 h-5" /> },
  ];

  return (
    <footer className="h-16 w-full bg-slate-950/90 backdrop-blur-xl border-t border-slate-800/80 px-2 sm:px-4 flex items-center justify-between gap-2 z-30 select-none">
      {/* Left: Quick Driver Temp Adjustment */}
      <div className="flex items-center gap-1.5 bg-slate-900/90 border border-slate-800 rounded-xl px-2.5 py-1">
        <div className="flex flex-col items-center">
          <button 
            onClick={() => handleTempChange(0.5, true)}
            className="p-0.5 text-slate-400 hover:text-cyan-400 transition-colors cursor-pointer"
            title="Increase Driver Temp"
          >
            <ChevronUp className="w-3.5 h-3.5" />
          </button>
          <button 
            onClick={() => handleTempChange(-0.5, true)}
            className="p-0.5 text-slate-400 hover:text-cyan-400 transition-colors cursor-pointer"
            title="Decrease Driver Temp"
          >
            <ChevronDown className="w-3.5 h-3.5" />
          </button>
        </div>
        <button 
          onClick={() => onSelectScreen('CLIMATE')}
          className="text-left cursor-pointer group"
        >
          <div className="text-[10px] text-slate-400 font-medium">DRIVER</div>
          <div className="text-sm font-bold text-slate-100 font-orbitron group-hover:text-cyan-400 transition-colors">
            {climate.driverTemp.toFixed(1)}°C
          </div>
        </button>
      </div>

      {/* Middle Navigation Icons Bar */}
      <nav className="flex items-center gap-1 sm:gap-1.5 overflow-x-auto no-scrollbar max-w-[60vw]">
        {navItems.map(item => {
          const isActive = activeScreen === item.id;
          return (
            <button
              key={item.id}
              onClick={() => onSelectScreen(item.id)}
              className={`flex flex-col items-center justify-center px-2.5 sm:px-3 py-1.5 rounded-xl transition-all cursor-pointer relative ${
                isActive 
                  ? 'bg-cyan-500/20 text-cyan-300 border border-cyan-500/40 shadow-lg shadow-cyan-500/10' 
                  : 'text-slate-400 hover:text-slate-200 hover:bg-slate-900/60'
              }`}
            >
              {item.icon}
              <span className="text-[10px] font-medium mt-0.5 whitespace-nowrap">
                {item.label}
              </span>
              {isActive && (
                <span className="absolute -bottom-1 left-1/2 -translate-x-1/2 w-4 h-1 rounded-full bg-cyan-400 shadow-sm shadow-cyan-400" />
              )}
            </button>
          );
        })}
      </nav>

      {/* Right: Quick Media Controls & Passenger Temp */}
      <div className="flex items-center gap-2">
        {/* Media Quick Widget */}
        <div className="hidden lg:flex items-center gap-2 bg-slate-900/90 border border-slate-800 rounded-xl px-2.5 py-1">
          <button 
            onClick={() => onUpdateMedia(prev => ({ ...prev, isPlaying: !prev.isPlaying }))}
            className="w-7 h-7 rounded-lg bg-cyan-500/20 hover:bg-cyan-500/30 text-cyan-400 flex items-center justify-center border border-cyan-500/30 transition-colors cursor-pointer"
          >
            {media.isPlaying ? <Pause className="w-3.5 h-3.5" /> : <Play className="w-3.5 h-3.5 ml-0.5" />}
          </button>
          <div className="w-24 overflow-hidden text-xs">
            <div className="font-medium text-slate-200 truncate">{media.currentTrack.title}</div>
            <div className="text-[10px] text-slate-400 truncate">{media.currentTrack.artist}</div>
          </div>
          <button
            onClick={() => onUpdateMedia(prev => ({ ...prev, isMuted: !prev.isMuted }))}
            className="p-1 text-slate-400 hover:text-slate-200 transition-colors cursor-pointer"
          >
            {media.isMuted ? <VolumeX className="w-4 h-4 text-rose-400" /> : <Volume2 className="w-4 h-4" />}
          </button>
        </div>

        {/* Passenger Temp */}
        <div className="flex items-center gap-1.5 bg-slate-900/90 border border-slate-800 rounded-xl px-2.5 py-1">
          <button 
            onClick={() => onSelectScreen('CLIMATE')}
            className="text-right cursor-pointer group"
          >
            <div className="text-[10px] text-slate-400 font-medium">PASSENGER</div>
            <div className="text-sm font-bold text-slate-100 font-orbitron group-hover:text-cyan-400 transition-colors">
              {climate.passengerTemp.toFixed(1)}°C
            </div>
          </button>
          <div className="flex flex-col items-center">
            <button 
              onClick={() => handleTempChange(0.5, false)}
              className="p-0.5 text-slate-400 hover:text-cyan-400 transition-colors cursor-pointer"
              title="Increase Passenger Temp"
            >
              <ChevronUp className="w-3.5 h-3.5" />
            </button>
            <button 
              onClick={() => handleTempChange(-0.5, false)}
              className="p-0.5 text-slate-400 hover:text-cyan-400 transition-colors cursor-pointer"
              title="Decrease Passenger Temp"
            >
              <ChevronDown className="w-3.5 h-3.5" />
            </button>
          </div>
        </div>
      </div>
    </footer>
  );
};
