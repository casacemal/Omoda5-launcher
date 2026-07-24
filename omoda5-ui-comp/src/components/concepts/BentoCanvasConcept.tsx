import React, { useState } from 'react';
import { 
  Grid, 
  Home, 
  Sun, 
  CloudRain, 
  Fan, 
  Navigation, 
  Music, 
  ShieldCheck, 
  Key, 
  Sparkles, 
  ChevronRight, 
  Plus, 
  Sliders,
  Thermometer,
  Zap,
  Lock,
  Unlock,
  Radio,
  Wind
} from 'lucide-react';
import { VehicleState, ClimateState, MediaState, NavigationRoute, ActiveScreen } from '../../types';

interface BentoCanvasConceptProps {
  vehicle: VehicleState;
  climate: ClimateState;
  media: MediaState;
  navigation: NavigationRoute;
  onUpdateVehicle: (updater: (prev: VehicleState) => VehicleState) => void;
  onUpdateClimate: (updater: (prev: ClimateState) => ClimateState) => void;
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const BentoCanvasConcept: React.FC<BentoCanvasConceptProps> = ({
  vehicle,
  climate,
  media,
  navigation,
  onUpdateVehicle,
  onUpdateClimate,
  onSelectScreen
}) => {
  const [smartDoorsLocked, setSmartDoorsLocked] = useState(true);
  const [homeGarageOpen, setHomeGarageOpen] = useState(false);

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-y-auto no-scrollbar flex flex-col justify-between select-none relative font-['Plus_Jakarta_Sans',sans-serif]">
      
      {/* Header */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-4">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Grid className="w-6 h-6 text-cyan-400" />
            MODULAR SPATIAL BENTO CANVAS
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Customizable Bento-Box Spatial Driver Grid</p>
        </div>

        <div className="flex items-center gap-2">
          <button className="px-3 py-1.5 rounded-2xl bg-slate-900 border border-slate-800 hover:border-cyan-500/50 text-slate-300 text-xs font-bold flex items-center gap-1.5 cursor-pointer">
            <Plus className="w-4 h-4 text-cyan-400" /> Add Widget
          </button>
        </div>
      </div>

      {/* Bento Box Grid Layout */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 my-auto py-2">
        
        {/* Widget 1 (2x2 Grid): Navigation Map Live Tile */}
        <div className="lg:col-span-2 lg:row-span-2 bg-slate-900/90 border border-slate-800 rounded-3xl p-5 flex flex-col justify-between shadow-2xl relative overflow-hidden group hover:border-cyan-500/40 transition-all">
          <div className="flex items-center justify-between z-10">
            <span className="text-xs font-orbitron font-bold text-cyan-400 flex items-center gap-2">
              <Navigation className="w-4 h-4" /> LIVE ROUTE WIDGET
            </span>
            <span className="text-[10px] text-emerald-400 font-mono font-bold bg-emerald-500/20 px-2.5 py-0.5 rounded-full border border-emerald-500/30">
              {navigation.etaMinutes} MIN ETA
            </span>
          </div>

          <div className="my-4 z-10 space-y-2">
            <div className="text-xl font-extrabold text-slate-100">{navigation.destination}</div>
            <div className="text-xs text-slate-400">{navigation.nextInstruction}</div>
          </div>

          <div className="z-10 flex items-center justify-between pt-3 border-t border-slate-800 text-xs">
            <span className="text-slate-300 font-mono">{navigation.distanceKm} km remaining</span>
            <button 
              onClick={() => onSelectScreen('NAVIGATION')}
              className="text-cyan-400 font-bold hover:underline flex items-center gap-1 cursor-pointer"
            >
              Open Map <ChevronRight className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* Widget 2 (1x1 Grid): Smart Home & Hermes Door Automation */}
        <div className="bg-slate-900/90 border border-slate-800 rounded-3xl p-5 flex flex-col justify-between shadow-xl hover:border-purple-500/40 transition-all">
          <div className="flex items-center justify-between">
            <span className="text-xs font-orbitron font-bold text-purple-400 flex items-center gap-1.5">
              <Home className="w-4 h-4" /> SMART HOME
            </span>
            <Key className="w-4 h-4 text-slate-400" />
          </div>

          <div className="my-2 space-y-1">
            <button
              onClick={() => setHomeGarageOpen(!homeGarageOpen)}
              className={`w-full py-2 px-3 rounded-2xl text-xs font-bold border transition-all cursor-pointer text-left flex items-center justify-between ${
                homeGarageOpen ? 'bg-emerald-500/20 text-emerald-300 border-emerald-500/40' : 'bg-slate-950 text-slate-300 border-slate-800'
              }`}
            >
              <span>Home Garage</span>
              <span>{homeGarageOpen ? 'OPEN' : 'LOCKED'}</span>
            </button>
          </div>

          <div className="text-[10px] text-slate-500 font-mono">Hermes Protocol Active</div>
        </div>

        {/* Widget 3 (1x1 Grid): AQI Air Quality & Weather */}
        <div className="bg-slate-900/90 border border-slate-800 rounded-3xl p-5 flex flex-col justify-between shadow-xl hover:border-amber-500/40 transition-all">
          <div className="flex items-center justify-between">
            <span className="text-xs font-orbitron font-bold text-amber-400 flex items-center gap-1.5">
              <Sun className="w-4 h-4" /> WEATHER & AQI
            </span>
            <span className="text-xs font-mono font-bold text-slate-200">24°C</span>
          </div>

          <div className="my-2">
            <div className="text-sm font-bold text-slate-100">Istanbul • Clear Sky</div>
            <div className="text-xs text-emerald-400 mt-0.5 font-mono">Cabin AQI: 8 (Excellent)</div>
          </div>

          <div className="w-full bg-slate-950 h-1.5 rounded-full overflow-hidden border border-slate-800">
            <div className="bg-emerald-400 h-full w-[92%]" />
          </div>
        </div>

        {/* Widget 4 (2x1 Grid): HVAC Cabin Temperature Wheel Widget */}
        <div className="lg:col-span-2 bg-slate-900/90 border border-slate-800 rounded-3xl p-5 flex items-center justify-between shadow-xl hover:border-cyan-500/40 transition-all">
          <div className="space-y-1">
            <div className="text-xs font-orbitron font-bold text-cyan-400 flex items-center gap-1.5">
              <Fan className="w-4 h-4" /> CLIMATE CONTROL WIDGET
            </div>
            <div className="text-2xl font-extrabold text-slate-100 font-mono">{climate.driverTemp.toFixed(1)}°C</div>
            <div className="text-xs text-slate-400">Dual Zone AC • Fan Level {climate.fanSpeed}</div>
          </div>

          <div className="flex items-center gap-2">
            <button 
              onClick={() => onUpdateClimate(p => ({ ...p, driverTemp: Math.max(16, p.driverTemp - 0.5) }))}
              className="w-10 h-10 rounded-2xl bg-slate-950 hover:bg-slate-800 border border-slate-800 text-cyan-400 font-bold text-lg cursor-pointer"
            >
              -
            </button>
            <button 
              onClick={() => onUpdateClimate(p => ({ ...p, driverTemp: Math.min(30, p.driverTemp + 0.5) }))}
              className="w-10 h-10 rounded-2xl bg-slate-950 hover:bg-slate-800 border border-slate-800 text-cyan-400 font-bold text-lg cursor-pointer"
            >
              +
            </button>
          </div>
        </div>

        {/* Widget 5 (2x1 Grid): Media Player Quick Strip */}
        <div className="lg:col-span-2 bg-slate-900/90 border border-slate-800 rounded-3xl p-5 flex items-center justify-between shadow-xl hover:border-rose-500/40 transition-all">
          <div className="flex items-center gap-3">
            <img 
              src={media.currentTrack.coverUrl} 
              alt="Track" 
              className="w-12 h-12 rounded-2xl object-cover border border-slate-700" 
            />
            <div>
              <div className="text-xs font-bold text-slate-100">{media.currentTrack.title}</div>
              <div className="text-[10px] text-slate-400">{media.currentTrack.artist}</div>
            </div>
          </div>

          <button 
            onClick={() => onSelectScreen('MEDIA')}
            className="px-3 py-1.5 rounded-xl bg-rose-600/20 text-rose-300 border border-rose-500/30 text-xs font-bold cursor-pointer"
          >
            Sony 3D Player
          </button>
        </div>

      </div>

    </div>
  );
};
