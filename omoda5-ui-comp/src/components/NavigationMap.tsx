import React, { useState } from 'react';
import { 
  Navigation, 
  Search, 
  Compass, 
  MapPin, 
  Volume2, 
  VolumeX, 
  Play, 
  Pause, 
  RotateCcw,
  Zap,
  Coffee,
  Fuel,
  Car,
  ChevronRight,
  ShieldAlert
} from 'lucide-react';
import { NavigationRoute } from '../types';

interface NavigationMapProps {
  navigation: NavigationRoute;
  onUpdateNavigation: (updater: (prev: NavigationRoute) => NavigationRoute) => void;
}

export const NavigationMap: React.FC<NavigationMapProps> = ({
  navigation,
  onUpdateNavigation
}) => {
  const [searchQuery, setSearchQuery] = useState('');
  const [isVoiceMuted, setIsVoiceMuted] = useState(false);
  const [isNavigating, setIsNavigating] = useState(true);

  const pois = [
    { label: 'EV Fast Charger', icon: <Zap className="w-3.5 h-3.5 text-emerald-400" />, dist: '1.2 km' },
    { label: 'Gas Station', icon: <Fuel className="w-3.5 h-3.5 text-amber-400" />, dist: '2.5 km' },
    { label: 'Parking Garage', icon: <Car className="w-3.5 h-3.5 text-blue-400" />, dist: '800 m' },
    { label: 'Espresso Coffee', icon: <Coffee className="w-3.5 h-3.5 text-rose-400" />, dist: '400 m' },
  ];

  return (
    <div className="w-full h-full bg-slate-950 relative overflow-hidden select-none flex flex-col">
      
      {/* Simulated Map Canvas Background */}
      <div className="absolute inset-0 bg-slate-950 overflow-hidden">
        {/* Map Grid Roads SVG Graphic */}
        <svg className="w-full h-full opacity-30" width="100%" height="100%">
          <defs>
            <pattern id="grid" width="40" height="40" patternUnits="userSpaceOnUse">
              <path d="M 40 0 L 0 0 0 40" fill="none" stroke="rgba(51, 65, 85, 0.4)" strokeWidth="1" />
            </pattern>
          </defs>
          <rect width="100%" height="100%" fill="url(#grid)" />
          
          {/* Simulated Expressway Curves */}
          <path d="M -50 300 Q 300 100 600 400 T 1200 200" fill="none" stroke="rgba(30, 41, 59, 0.9)" strokeWidth="24" />
          <path d="M -50 300 Q 300 100 600 400 T 1200 200" fill="none" stroke="#06b6d4" strokeWidth="8" strokeDasharray="12,6" />
        </svg>

        {/* Animated GPS Vehicle Arrow Indicator on Route */}
        <div className="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 z-10 flex flex-col items-center">
          <div className="w-12 h-12 rounded-full bg-cyan-500/20 border-2 border-cyan-400 flex items-center justify-center shadow-2xl shadow-cyan-500/50 animate-pulse">
            <Navigation className="w-6 h-6 text-cyan-300 transform rotate-45" />
          </div>
          <span className="text-[10px] font-orbitron font-bold text-cyan-300 bg-slate-950/90 px-2 py-0.5 rounded-md border border-cyan-500/40 mt-1 shadow-md">
            OMODA 5
          </span>
        </div>
      </div>

      {/* Top Search & Destination Overlay Bar */}
      <div className="z-20 p-4 flex flex-wrap items-center justify-between gap-3">
        
        {/* Search Input Box */}
        <div className="flex-1 max-w-md relative">
          <Search className="w-4 h-4 text-slate-400 absolute left-3.5 top-1/2 -translate-y-1/2" />
          <input
            type="text"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            placeholder="Search destination, street, or POI..."
            className="w-full bg-slate-900/90 backdrop-blur-md border border-slate-700/80 rounded-2xl pl-10 pr-4 py-2.5 text-xs text-slate-100 placeholder-slate-400 focus:outline-none focus:border-cyan-400 shadow-xl"
          />
        </div>

        {/* Quick POI Chips */}
        <div className="flex items-center gap-2 overflow-x-auto no-scrollbar">
          {pois.map(poi => (
            <button
              key={poi.label}
              onClick={() => onUpdateNavigation(p => ({ ...p, destination: poi.label, address: `Nearby ${poi.label} (${poi.dist})` }))}
              className="flex items-center gap-1.5 px-3 py-2 rounded-xl bg-slate-900/90 hover:bg-slate-800 border border-slate-800 text-xs text-slate-200 transition-all cursor-pointer whitespace-nowrap shadow-lg"
            >
              {poi.icon}
              <span className="font-medium">{poi.label}</span>
              <span className="text-[10px] text-slate-400">({poi.dist})</span>
            </button>
          ))}
        </div>
      </div>

      {/* Floating Left Guidance Banner Card */}
      <div className="z-20 absolute left-4 top-20 w-80 sm:w-96 car-panel-glow rounded-3xl p-4 border border-slate-800 shadow-2xl space-y-3">
        
        {/* Next Turn Instruction */}
        <div className="flex items-center gap-3">
          <div className="w-12 h-12 rounded-2xl bg-cyan-500 text-slate-950 flex items-center justify-center font-bold shadow-lg shadow-cyan-500/30">
            <Navigation className="w-6 h-6 transform -rotate-45" />
          </div>
          <div>
            <div className="text-xl font-black font-orbitron text-slate-100">
              {navigation.nextManeuverDistanceMeters}m
            </div>
            <div className="text-xs text-slate-300 font-semibold">
              {navigation.nextInstruction}
            </div>
          </div>
        </div>

        {/* Destination & Address */}
        <div className="bg-slate-900/90 rounded-2xl p-3 border border-slate-800/80 space-y-1">
          <div className="flex items-center justify-between text-[10px] text-slate-400 font-mono">
            <span>DESTINATION</span>
            <span className="text-emerald-400 font-bold">ROUTE ACTIVE</span>
          </div>
          <div className="text-sm font-bold text-slate-100 truncate flex items-center gap-1.5">
            <MapPin className="w-4 h-4 text-rose-400" />
            {navigation.destination}
          </div>
          <div className="text-xs text-slate-400 truncate pl-5">
            {navigation.address}
          </div>
        </div>

        {/* Route Metrics Row */}
        <div className="grid grid-cols-3 gap-2 text-center text-xs">
          <div className="bg-slate-900/80 p-2 rounded-xl border border-slate-800">
            <div className="text-[10px] text-slate-400">ETA</div>
            <div className="font-orbitron font-bold text-cyan-400 text-sm">{navigation.etaMinutes} min</div>
          </div>
          <div className="bg-slate-900/80 p-2 rounded-xl border border-slate-800">
            <div className="text-[10px] text-slate-400">DISTANCE</div>
            <div className="font-orbitron font-bold text-slate-100 text-sm">{navigation.distanceKm} km</div>
          </div>
          <div className="bg-slate-900/80 p-2 rounded-xl border border-slate-800">
            <div className="text-[10px] text-slate-400">SPEED LIMIT</div>
            <div className="font-orbitron font-bold text-amber-400 text-sm">{navigation.speedLimitKmh} km/h</div>
          </div>
        </div>

        {/* Controls */}
        <div className="flex items-center justify-between pt-1">
          <button
            onClick={() => setIsVoiceMuted(!isVoiceMuted)}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-900 text-slate-300 border border-slate-800 text-xs font-medium cursor-pointer"
          >
            {isVoiceMuted ? <VolumeX className="w-4 h-4 text-rose-400" /> : <Volume2 className="w-4 h-4 text-cyan-400" />}
            Voice Nav
          </button>

          <button
            onClick={() => setIsNavigating(!isNavigating)}
            className={`flex items-center gap-1.5 px-4 py-1.5 rounded-xl text-xs font-bold border cursor-pointer transition-all ${
              isNavigating ? 'bg-rose-500/20 text-rose-300 border-rose-500/40' : 'bg-cyan-500 text-slate-950 border-cyan-300'
            }`}
          >
            {isNavigating ? 'Stop Guidance' : 'Start Guidance'}
          </button>
        </div>

      </div>

    </div>
  );
};
