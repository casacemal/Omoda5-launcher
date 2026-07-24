import React, { useState, useEffect } from 'react';
import { 
  Car, 
  ShieldAlert, 
  Compass, 
  Zap, 
  Gauge, 
  Flame, 
  Disc, 
  Radio, 
  Navigation,
  CheckCircle2,
  AlertTriangle
} from 'lucide-react';
import { VehicleState, DriveMode, GearPosition, NavigationRoute } from '../types';

interface InstrumentClusterProps {
  vehicle: VehicleState;
  onUpdateVehicle: (updater: (prev: VehicleState) => VehicleState) => void;
  navigation: NavigationRoute;
  ambientColor: string;
}

export const InstrumentCluster: React.FC<InstrumentClusterProps> = ({
  vehicle,
  onUpdateVehicle,
  navigation,
  ambientColor
}) => {
  const [isAccelerating, setIsAccelerating] = useState(false);
  const [isBraking, setIsBraking] = useState(false);
  const [clusterStyle, setClusterStyle] = useState<'TESLA_MINIMAL' | 'OMODA_SPORT'>('OMODA_SPORT');

  // Interactive driving simulator
  useEffect(() => {
    const timer = setInterval(() => {
      onUpdateVehicle(prev => {
        let newSpeed = prev.speedKmh;
        let newRpm = prev.rpm;
        let newGear = prev.gear;

        if (isAccelerating) {
          if (newGear === 'P') newGear = 'D';
          newSpeed = Math.min(220, newSpeed + 3);
          newRpm = Math.min(6500, 1000 + newSpeed * 28);
        } else if (isBraking) {
          newSpeed = Math.max(0, newSpeed - 5);
          if (newSpeed === 0) newRpm = 800;
          else newRpm = Math.max(800, 1000 + newSpeed * 20);
        } else {
          // Coasting down slowly
          if (newSpeed > 0) {
            newSpeed = Math.max(0, newSpeed - 0.8);
            newRpm = Math.max(800, 800 + newSpeed * 18);
          } else {
            newRpm = 800;
          }
        }

        // Auto gear shift logic for realism
        if (newSpeed === 0 && !isAccelerating) {
          // remain or return
        } else if (newSpeed > 0) {
          newGear = 'D';
        }

        const distanceTraveledKm = (newSpeed / 3600);
        const newOdo = Number((prev.odometerKm + distanceTraveledKm).toFixed(1));
        const newTrip = Number((prev.tripKm + distanceTraveledKm).toFixed(1));

        return {
          ...prev,
          speedKmh: Math.round(newSpeed),
          rpm: Math.round(newRpm),
          gear: newGear,
          odometerKm: newOdo,
          tripKm: newTrip
        };
      });
    }, 100);

    return () => clearInterval(timer);
  }, [isAccelerating, isBraking, onUpdateVehicle]);

  // Color scheme based on drive mode
  const getThemeColors = () => {
    switch (vehicle.driveMode) {
      case 'SPORT':
        return {
          primary: '#ef4444',
          glowClass: 'glow-rose',
          gradient: 'from-red-600 via-rose-500 to-amber-500',
          bgGlow: 'rgba(239, 68, 68, 0.15)',
          border: 'border-red-500/40',
          accentText: 'text-red-400',
        };
      case 'RACE':
        return {
          primary: '#a855f7',
          glowClass: 'glow-amber',
          gradient: 'from-purple-600 via-fuchsia-500 to-pink-500',
          bgGlow: 'rgba(168, 85, 247, 0.15)',
          border: 'border-purple-500/40',
          accentText: 'text-purple-400',
        };
      case 'ECO':
        return {
          primary: '#10b981',
          glowClass: 'glow-emerald',
          gradient: 'from-emerald-600 via-teal-500 to-cyan-500',
          bgGlow: 'rgba(16, 185, 129, 0.15)',
          border: 'border-emerald-500/40',
          accentText: 'text-emerald-400',
        };
      default: // NORMAL
        return {
          primary: '#06b6d4',
          glowClass: 'glow-cyan',
          gradient: 'from-cyan-600 via-blue-500 to-indigo-500',
          bgGlow: 'rgba(6, 182, 212, 0.15)',
          border: 'border-cyan-500/40',
          accentText: 'text-cyan-400',
        };
    }
  };

  const theme = getThemeColors();
  const speedPercentage = (vehicle.speedKmh / 220) * 100;
  const rpmPercentage = (vehicle.rpm / 7000) * 100;

  return (
    <div className="w-full h-full bg-slate-950 flex flex-col justify-between p-3 sm:p-6 relative overflow-hidden select-none">
      {/* Dynamic Ambient Background Glow */}
      <div 
        className="absolute inset-0 pointer-events-none transition-all duration-700 opacity-30 blur-3xl"
        style={{
          background: `radial-gradient(circle at 50% 50%, ${theme.primary}, transparent 70%)`
        }}
      />

      {/* Top HUD Status Row - AAOS Standard */}
      <div className="flex items-center justify-between text-xs font-mono border-b border-slate-800/80 pb-3 z-10">
        <div className="flex items-center gap-4 text-slate-300">
          <div className="flex items-center gap-1.5">
            <Compass className="w-4 h-4 text-cyan-400" />
            <span className="font-bold text-slate-100">NW 315°</span>
          </div>
          <span className="text-slate-600">|</span>
          <div className="flex items-center gap-1">
            <span className="text-slate-400">ODO:</span>
            <span className="font-orbitron text-slate-100 font-bold">{vehicle.odometerKm.toLocaleString()} km</span>
          </div>
          <div className="flex items-center gap-1 hidden sm:flex">
            <span className="text-slate-400">TRIP A:</span>
            <span className="font-orbitron text-slate-100">{vehicle.tripKm.toFixed(1)} km</span>
          </div>
        </div>

        {/* Style Selector: Tesla Minimal vs Omoda Sport */}
        <div className="flex items-center gap-2">
          <div className="bg-slate-900/90 rounded-xl p-1 border border-slate-800 flex items-center gap-1">
            <button
              onClick={() => setClusterStyle('OMODA_SPORT')}
              className={`px-2.5 py-1 rounded-lg text-xs font-bold transition-all cursor-pointer ${
                clusterStyle === 'OMODA_SPORT'
                  ? 'bg-cyan-500 text-slate-950 font-orbitron'
                  : 'text-slate-400 hover:text-white'
              }`}
            >
              Omoda Cyber
            </button>
            <button
              onClick={() => setClusterStyle('TESLA_MINIMAL')}
              className={`px-2.5 py-1 rounded-lg text-xs font-bold transition-all cursor-pointer ${
                clusterStyle === 'TESLA_MINIMAL'
                  ? 'bg-cyan-500 text-slate-950 font-orbitron'
                  : 'text-slate-400 hover:text-white'
              }`}
            >
              Tesla Minimal
            </button>
          </div>

          {/* Drive mode switch pill */}
          <div className="hidden sm:flex items-center gap-1 bg-slate-900/90 rounded-xl p-1 border border-slate-800">
            {(['ECO', 'NORMAL', 'SPORT', 'RACE'] as DriveMode[]).map(mode => (
              <button
                key={mode}
                onClick={() => onUpdateVehicle(p => ({ ...p, driveMode: mode }))}
                className={`px-2.5 py-1 rounded-lg text-xs font-orbitron font-bold transition-all cursor-pointer ${
                  vehicle.driveMode === mode
                    ? `${theme.border} bg-slate-800 text-white shadow-md shadow-black`
                    : 'text-slate-500 hover:text-slate-300'
                }`}
              >
                {mode}
              </button>
            ))}
          </div>
        </div>

        <div className="flex items-center gap-4">
          <div className="flex items-center gap-1.5">
            <Zap className="w-4 h-4 text-emerald-400" />
            <span className="text-slate-300 font-orbitron">{vehicle.rangeKm} km</span>
          </div>
        </div>
      </div>

      {/* Main Display Area */}
      {clusterStyle === 'TESLA_MINIMAL' ? (
        /* Tesla Minimalist Clean Digital Display */
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 items-center my-auto z-10 max-w-5xl mx-auto w-full">
          {/* Left Speed & Limit Display */}
          <div className="lg:col-span-4 tesla-glass-card rounded-3xl p-8 flex flex-col items-center justify-center text-center shadow-2xl border border-slate-800">
            <div className="text-xs font-orbitron font-bold tracking-widest text-slate-400 uppercase">CURRENT SPEED</div>
            <div className="text-7xl font-orbitron font-black text-slate-100 my-2 glow-cyan">
              {vehicle.speedKmh}
            </div>
            <div className="text-sm font-bold text-cyan-400 font-orbitron">KM/H</div>

            <div className="mt-4 flex items-center gap-2 bg-slate-900/90 px-3 py-1 rounded-full border border-slate-700 text-xs font-mono text-slate-300">
              <span className="w-2 h-2 rounded-full bg-emerald-400" />
              <span>LIMIT {navigation.speedLimitKmh} KM/H</span>
            </div>
          </div>

          {/* Center Tesla Autopilot ADAS Road Render */}
          <div className="lg:col-span-5 tesla-glass-card rounded-3xl p-6 flex flex-col items-center justify-between min-h-[260px] border border-slate-800 relative overflow-hidden">
            <div className="flex items-center justify-between w-full text-xs font-bold font-orbitron text-cyan-400 border-b border-slate-800/80 pb-2">
              <span>TESLA AUTOPILOT SIMULATION</span>
              <span className="text-emerald-400 font-mono text-[10px]">FULL SELF-DRIVING ACTIVE</span>
            </div>

            {/* Road lines animation */}
            <div className="my-auto relative w-full h-36 flex items-center justify-center">
              <div className="absolute inset-0 flex justify-between px-12 opacity-30">
                <div className="w-1 bg-cyan-400 border-dashed" />
                <div className="w-1 bg-cyan-400 border-dashed" />
              </div>

              <div className="w-24 h-12 bg-slate-900 rounded-2xl border-2 border-cyan-400 flex items-center justify-center shadow-xl shadow-cyan-500/20 z-10">
                <span className="font-orbitron font-black text-xs text-white">MODEL 3</span>
              </div>
            </div>

            {/* Gear Selector Pill */}
            <div className="flex items-center justify-center gap-4 w-full pt-2 border-t border-slate-800">
              {(['P', 'R', 'N', 'D'] as GearPosition[]).map(g => (
                <button
                  key={g}
                  onClick={() => onUpdateVehicle(p => ({ ...p, gear: g }))}
                  className={`w-10 h-10 rounded-xl font-orbitron font-extrabold text-sm flex items-center justify-center transition-all cursor-pointer ${
                    vehicle.gear === g
                      ? 'bg-slate-100 text-slate-950 font-black shadow-lg scale-110'
                      : 'text-slate-500 hover:text-slate-300'
                  }`}
                >
                  {g}
                </button>
              ))}
            </div>
          </div>

          {/* Right Power & Energy Meter */}
          <div className="lg:col-span-3 tesla-glass-card rounded-3xl p-6 flex flex-col items-center justify-center text-center shadow-2xl border border-slate-800">
            <div className="text-xs font-orbitron font-bold tracking-wider text-slate-400 uppercase">POWER USAGE</div>
            <div className="text-3xl font-black font-orbitron text-emerald-400 my-2">
              {(vehicle.speedKmh * 0.18).toFixed(1)} <span className="text-xs font-normal text-slate-400">kW</span>
            </div>
            <div className="w-full bg-slate-900 rounded-full h-2.5 overflow-hidden my-2 border border-slate-800">
              <div className="bg-emerald-400 h-full transition-all duration-300" style={{ width: `${Math.min(100, vehicle.speedKmh * 0.4)}%` }} />
            </div>
            <div className="text-[10px] text-slate-400 font-mono">
              BATTERY 92% • ECO EFFICIENCY
            </div>
          </div>
        </div>
      ) : (
        /* Omoda Cyberpunk Dual Gauge Cockpit */
        <div className="grid grid-cols-1 lg:grid-cols-12 gap-4 items-center my-auto z-10">
          
          {/* Left Gauge: Speedometer Arc */}
          <div className="lg:col-span-4 flex flex-col items-center justify-center relative">
            <div className="relative w-56 h-56 sm:w-64 sm:h-64 flex items-center justify-center">
              <svg className="w-full h-full transform -rotate-90" viewBox="0 0 100 100">
                <circle
                  cx="50"
                  cy="50"
                  r="42"
                  stroke="rgba(30, 41, 59, 0.8)"
                  strokeWidth="6"
                  fill="transparent"
                  strokeDasharray="263.8"
                  strokeDashoffset="60"
                />
                <circle
                  cx="50"
                  cy="50"
                  r="42"
                  stroke={theme.primary}
                  strokeWidth="7"
                  fill="transparent"
                  strokeDasharray="263.8"
                  strokeDashoffset={263.8 - (speedPercentage / 100) * 203.8}
                  strokeLinecap="round"
                  className="transition-all duration-300"
                />
              </svg>

              <div className="absolute inset-0 flex flex-col items-center justify-center text-center">
                <div className="text-[10px] tracking-widest text-slate-400 uppercase font-orbitron mb-1">SPEED</div>
                <div className={`text-5xl sm:text-6xl font-orbitron font-black tracking-tighter ${theme.accentText} ${theme.glowClass}`}>
                  {vehicle.speedKmh}
                </div>
                <div className="text-xs text-slate-400 font-orbitron font-semibold mt-1">KM/H</div>
                
                <div className="mt-2 text-[10px] font-mono text-slate-500 bg-slate-900/80 px-2.5 py-0.5 rounded-full border border-slate-800">
                  LIMIT {navigation.speedLimitKmh} KM/H
                </div>
              </div>
            </div>
          </div>

          {/* Center ADAS Vehicle Simulator */}
          <div className="lg:col-span-4 flex flex-col items-center justify-center py-2">
            <div className="w-full h-48 bg-slate-900/80 rounded-2xl border border-slate-800/80 p-4 relative overflow-hidden flex flex-col items-center justify-center shadow-inner">
              <div className="absolute inset-0 opacity-40">
                <div className="absolute left-1/4 top-0 bottom-0 w-[2px] bg-cyan-400/80 border-dashed border-l-2" />
                <div className="absolute right-1/4 top-0 bottom-0 w-[2px] bg-cyan-400/80 border-dashed border-r-2" />
                <div className="absolute left-1/2 top-0 bottom-0 w-[1px] bg-slate-700 border-dashed border-l" />
              </div>

              <div className={`transition-all duration-500 mb-6 ${vehicle.speedKmh > 40 ? 'scale-90 opacity-90' : 'scale-100'}`}>
                <div className="px-3 py-1 rounded-md bg-slate-800 border border-slate-700 text-[10px] text-slate-300 font-mono mb-1 text-center">
                  32m Ahead
                </div>
                <div className="w-16 h-8 bg-slate-800 rounded-md border border-cyan-500/40 flex items-center justify-center shadow-md shadow-cyan-500/10">
                  <Car className="w-5 h-5 text-cyan-400" />
                </div>
              </div>

              <div className="relative group">
                <div className="w-20 h-10 rounded-xl bg-gradient-to-r from-slate-900 via-slate-800 to-slate-900 border-2 border-cyan-400 flex items-center justify-center shadow-lg shadow-cyan-500/30">
                  <span className="font-orbitron font-extrabold text-xs tracking-wider text-cyan-300">OMODA 5</span>
                </div>
              </div>

              <div className="absolute bottom-2 left-3 right-3 flex items-center justify-between text-[10px] text-slate-400 font-mono bg-slate-950/80 px-2.5 py-1 rounded-lg border border-slate-800">
                <span className="flex items-center gap-1 text-emerald-400">
                  <CheckCircle2 className="w-3 h-3" /> Lane Assist
                </span>
                <span className="text-slate-300 font-bold">L2 ADAS</span>
                <span className="text-cyan-400">ACC {vehicle.adas.adaptiveCruise ? 'ON' : 'OFF'}</span>
              </div>
            </div>

            <div className="flex items-center justify-center gap-3 mt-3">
              {(['P', 'R', 'N', 'D'] as GearPosition[]).map(g => (
                <button
                  key={g}
                  onClick={() => onUpdateVehicle(p => ({ ...p, gear: g }))}
                  className={`w-9 h-9 rounded-xl font-orbitron font-extrabold text-sm flex items-center justify-center transition-all cursor-pointer aaos-touch-target ${
                    vehicle.gear === g
                      ? 'bg-cyan-500 text-slate-950 shadow-lg shadow-cyan-500/40 scale-110 border border-cyan-300'
                      : 'bg-slate-900/90 text-slate-500 border border-slate-800 hover:text-slate-300'
                  }`}
                >
                  {g}
                </button>
              ))}
            </div>
          </div>

          {/* Right Gauge: Tachometer */}
          <div className="lg:col-span-4 flex flex-col items-center justify-center relative">
            <div className="relative w-56 h-56 sm:w-64 sm:h-64 flex items-center justify-center">
              <svg className="w-full h-full transform -rotate-90" viewBox="0 0 100 100">
                <circle
                  cx="50"
                  cy="50"
                  r="42"
                  stroke="rgba(30, 41, 59, 0.8)"
                  strokeWidth="6"
                  fill="transparent"
                  strokeDasharray="263.8"
                  strokeDashoffset="60"
                />
                <circle
                  cx="50"
                  cy="50"
                  r="42"
                  stroke={vehicle.rpm > 5500 ? '#ef4444' : theme.primary}
                  strokeWidth="7"
                  fill="transparent"
                  strokeDasharray="263.8"
                  strokeDashoffset={263.8 - (rpmPercentage / 100) * 203.8}
                  strokeLinecap="round"
                  className="transition-all duration-300"
                />
              </svg>

              <div className="absolute inset-0 flex flex-col items-center justify-center text-center">
                <div className="text-[10px] tracking-widest text-slate-400 uppercase font-orbitron mb-1">ENGINE RPM</div>
                <div className={`text-4xl sm:text-5xl font-orbitron font-bold tracking-tighter ${vehicle.rpm > 5500 ? 'text-red-400 glow-rose' : 'text-slate-100'}`}>
                  {vehicle.rpm}
                </div>
                <div className="text-xs text-slate-400 font-orbitron font-semibold mt-1">x1000 r/min</div>

                <div className="mt-2 text-[10px] font-mono text-emerald-400 bg-slate-900/80 px-2.5 py-0.5 rounded-full border border-slate-800">
                  FUEL EFFICIENCY {vehicle.avgConsumptionL100km} L/100km
                </div>
              </div>
            </div>
          </div>

        </div>
      )}

      {/* Interactive Driving Simulator Controls Bar */}
      <div className="z-10 bg-slate-900/90 border border-slate-800 rounded-2xl p-3 flex flex-wrap items-center justify-between gap-3 shadow-xl">
        <div className="flex items-center gap-2">
          <Gauge className="w-5 h-5 text-cyan-400" />
          <div className="text-xs">
            <div className="font-bold text-slate-200">Interactive Cockpit Telemetry</div>
            <div className="text-slate-400 text-[11px]">Hold Gas or Brake to simulate driving physics</div>
          </div>
        </div>

        <div className="flex items-center gap-3">
          <button
            onMouseDown={() => setIsBraking(true)}
            onMouseUp={() => setIsBraking(false)}
            onMouseLeave={() => setIsBraking(false)}
            onTouchStart={() => setIsBraking(true)}
            onTouchEnd={() => setIsBraking(false)}
            className={`px-5 py-2.5 rounded-xl font-bold text-xs uppercase tracking-wider border transition-all cursor-pointer aaos-touch-target ${
              isBraking 
                ? 'bg-red-500 text-white border-red-400 shadow-lg shadow-red-500/40 scale-95'
                : 'bg-slate-800 hover:bg-slate-700 text-slate-200 border-slate-700'
            }`}
          >
            🛑 BRAKE
          </button>

          <button
            onMouseDown={() => setIsAccelerating(true)}
            onMouseUp={() => setIsAccelerating(false)}
            onMouseLeave={() => setIsAccelerating(false)}
            onTouchStart={() => setIsAccelerating(true)}
            onTouchEnd={() => setIsAccelerating(false)}
            className={`px-6 py-2.5 rounded-xl font-bold text-xs uppercase tracking-wider border transition-all cursor-pointer aaos-touch-target ${
              isAccelerating 
                ? 'bg-emerald-500 text-slate-950 border-emerald-300 shadow-lg shadow-emerald-500/40 scale-95'
                : 'bg-cyan-500/20 hover:bg-cyan-500/30 text-cyan-300 border-cyan-500/40'
            }`}
          >
            ⚡ GAS PEDAL
          </button>
        </div>
      </div>
    </div>
  );
};
