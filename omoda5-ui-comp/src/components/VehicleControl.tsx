import React from 'react';
import { 
  Car, 
  ShieldCheck, 
  Sliders, 
  Sun, 
  Moon, 
  Gauge, 
  Unlock, 
  Lock, 
  Zap, 
  Compass, 
  Radio, 
  SlidersHorizontal,
  Flame,
  CheckCircle2,
  AlertCircle
} from 'lucide-react';
import { VehicleState, DriveMode } from '../types';

interface VehicleControlProps {
  vehicle: VehicleState;
  onUpdateVehicle: (updater: (prev: VehicleState) => VehicleState) => void;
}

export const VehicleControl: React.FC<VehicleControlProps> = ({
  vehicle,
  onUpdateVehicle
}) => {
  const toggleDoor = (doorKey: keyof VehicleState['doors']) => {
    onUpdateVehicle(p => ({
      ...p,
      doors: { ...p.doors, [doorKey]: !p.doors[doorKey] }
    }));
  };

  const setSunroof = (val: number) => {
    onUpdateVehicle(p => ({
      ...p,
      windows: { ...p.windows, sunroof: val }
    }));
  };

  const toggleAdas = (adasKey: keyof VehicleState['adas']) => {
    onUpdateVehicle(p => ({
      ...p,
      adas: {
        ...p.adas,
        [adasKey]: typeof p.adas[adasKey] === 'boolean' ? !p.adas[adasKey] : p.adas[adasKey]
      }
    }));
  };

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-y-auto no-scrollbar select-none">
      
      {/* Top Header - AAOS Standardized Surface */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-6">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Car className="w-6 h-6 text-cyan-400" />
            OMODA 5 VEHICLE SYSTEMS & CONTROLS
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Tesla-Inspired Minimalist Vehicle Cockpit • AAOS Standard Compliant</p>
        </div>

        {/* Lock All / Unlock All quick toggle with 44px+ AAOS touch targets */}
        <div className="flex items-center gap-2">
          <button
            onClick={() => onUpdateVehicle(p => ({
              ...p,
              doors: { frontLeft: false, frontRight: false, rearLeft: false, rearRight: false, trunk: false, hood: false }
            }))}
            className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-slate-900 border border-slate-700 text-xs font-bold text-slate-200 hover:border-emerald-500 cursor-pointer aaos-touch-target transition-all hover:scale-105"
          >
            <Lock className="w-4 h-4 text-emerald-400" /> Lock All Doors
          </button>
          <button
            onClick={() => onUpdateVehicle(p => ({
              ...p,
              doors: { frontLeft: true, frontRight: true, rearLeft: true, rearRight: true, trunk: true, hood: true }
            }))}
            className="flex items-center gap-2 px-4 py-2.5 rounded-xl bg-slate-900 border border-slate-700 text-xs font-bold text-slate-200 hover:border-amber-500 cursor-pointer aaos-touch-target transition-all hover:scale-105"
          >
            <Unlock className="w-4 h-4 text-amber-400" /> Open Doors
          </button>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6">
        
        {/* Left Section: Tesla-Style 3D Interactive Car Inspector Panel */}
        <div className="lg:col-span-7 tesla-glass-card rounded-3xl p-6 flex flex-col justify-between border border-slate-800/80 shadow-2xl relative overflow-hidden">
          <div className="flex items-center justify-between mb-4">
            <div className="flex items-center gap-2">
              <span className="w-2.5 h-2.5 rounded-full bg-cyan-400 animate-pulse" />
              <span className="text-xs font-orbitron font-bold text-cyan-400 tracking-wider">
                TESLA-INSPIRED VEHICLE TELEMETRY
              </span>
            </div>
            <span className="text-xs text-slate-400 font-mono">
              Touch components to toggle doors & hood
            </span>
          </div>

          {/* Interactive Car Blueprint Container */}
          <div className="my-auto py-8 relative flex items-center justify-center">
            
            {/* Omoda 5 Car Chassis Box */}
            <div className="w-72 sm:w-80 h-52 bg-slate-950/90 rounded-3xl border-2 border-cyan-500/50 relative shadow-2xl flex flex-col items-center justify-center p-4 backdrop-blur-md">
              <span className="font-orbitron font-black text-slate-800 text-3xl tracking-widest absolute opacity-25">
                OMODA 5
              </span>

              {/* Front Hood Button */}
              <button
                onClick={() => toggleDoor('hood')}
                className={`absolute -top-5 px-3.5 py-1.5 rounded-xl text-[11px] font-orbitron font-bold border cursor-pointer transition-all aaos-touch-target flex items-center justify-center ${
                  vehicle.doors.hood
                    ? 'bg-amber-500 text-slate-950 border-amber-300 animate-pulse shadow-lg shadow-amber-500/20'
                    : 'bg-slate-900 text-slate-300 border-slate-700 hover:border-cyan-500'
                }`}
              >
                HOOD {vehicle.doors.hood ? 'OPEN' : 'CLOSED'}
              </button>

              {/* Front Left Door */}
              <button
                onClick={() => toggleDoor('frontLeft')}
                className={`absolute -left-8 top-8 px-3 py-1.5 rounded-xl text-[10px] font-bold border cursor-pointer transition-all aaos-touch-target flex items-center justify-center ${
                  vehicle.doors.frontLeft
                    ? 'bg-amber-500 text-slate-950 border-amber-300 animate-pulse shadow-lg shadow-amber-500/20'
                    : 'bg-slate-900 text-slate-300 border-slate-700 hover:border-cyan-500'
                }`}
              >
                FL DOOR
              </button>

              {/* Front Right Door */}
              <button
                onClick={() => toggleDoor('frontRight')}
                className={`absolute -right-8 top-8 px-3 py-1.5 rounded-xl text-[10px] font-bold border cursor-pointer transition-all aaos-touch-target flex items-center justify-center ${
                  vehicle.doors.frontRight
                    ? 'bg-amber-500 text-slate-950 border-amber-300 animate-pulse shadow-lg shadow-amber-500/20'
                    : 'bg-slate-900 text-slate-300 border-slate-700 hover:border-cyan-500'
                }`}
              >
                FR DOOR
              </button>

              {/* Rear Left Door */}
              <button
                onClick={() => toggleDoor('rearLeft')}
                className={`absolute -left-8 bottom-8 px-3 py-1.5 rounded-xl text-[10px] font-bold border cursor-pointer transition-all aaos-touch-target flex items-center justify-center ${
                  vehicle.doors.rearLeft
                    ? 'bg-amber-500 text-slate-950 border-amber-300 animate-pulse shadow-lg shadow-amber-500/20'
                    : 'bg-slate-900 text-slate-300 border-slate-700 hover:border-cyan-500'
                }`}
              >
                RL DOOR
              </button>

              {/* Rear Right Door */}
              <button
                onClick={() => toggleDoor('rearRight')}
                className={`absolute -right-8 bottom-8 px-3 py-1.5 rounded-xl text-[10px] font-bold border cursor-pointer transition-all aaos-touch-target flex items-center justify-center ${
                  vehicle.doors.rearRight
                    ? 'bg-amber-500 text-slate-950 border-amber-300 animate-pulse shadow-lg shadow-amber-500/20'
                    : 'bg-slate-900 text-slate-300 border-slate-700 hover:border-cyan-500'
                }`}
              >
                RR DOOR
              </button>

              {/* Rear Trunk Button */}
              <button
                onClick={() => toggleDoor('trunk')}
                className={`absolute -bottom-5 px-3.5 py-1.5 rounded-xl text-[11px] font-orbitron font-bold border cursor-pointer transition-all aaos-touch-target flex items-center justify-center ${
                  vehicle.doors.trunk
                    ? 'bg-amber-500 text-slate-950 border-amber-300 animate-pulse shadow-lg shadow-amber-500/20'
                    : 'bg-slate-900 text-slate-300 border-slate-700 hover:border-cyan-500'
                }`}
              >
                TRUNK {vehicle.doors.trunk ? 'OPEN' : 'CLOSED'}
              </button>

              {/* Center Cockpit Status */}
              <div className="text-center z-10">
                <div className="text-xs font-bold text-slate-100">Panoramic Glass Roof</div>
                <div className="text-xs font-orbitron text-cyan-400 font-bold mt-0.5">
                  {vehicle.windows.sunroof}% OPENED
                </div>
              </div>
            </div>

          </div>

          {/* Panoramic Sunroof Control Slider */}
          <div className="mt-4 pt-4 border-t border-slate-800">
            <div className="flex items-center justify-between text-xs font-bold text-slate-200 mb-2">
              <span>PANORAMIC SUNROOF POSITION</span>
              <span className="font-orbitron text-cyan-400">{vehicle.windows.sunroof}%</span>
            </div>
            <input
              type="range"
              min="0"
              max="100"
              step="10"
              value={vehicle.windows.sunroof}
              onChange={(e) => setSunroof(Number(e.target.value))}
              className="w-full accent-cyan-400 bg-slate-900 rounded-lg cursor-pointer h-2.5"
            />
          </div>
        </div>

        {/* Right Section: Drive Modes, Headlights, TPMS & ADAS */}
        <div className="lg:col-span-5 space-y-6">
          
          {/* Drive Mode Selector Card */}
          <div className="car-panel rounded-3xl p-5 border border-slate-800">
            <span className="text-xs font-orbitron font-bold text-slate-200 tracking-wider uppercase block mb-3">
              DRIVE MODE SELECTOR
            </span>

            <div className="grid grid-cols-2 gap-2.5">
              {(['ECO', 'NORMAL', 'SPORT', 'RACE'] as DriveMode[]).map(mode => (
                <button
                  key={mode}
                  onClick={() => onUpdateVehicle(p => ({ ...p, driveMode: mode }))}
                  className={`p-3 rounded-2xl border text-left transition-all cursor-pointer ${
                    vehicle.driveMode === mode
                      ? 'bg-cyan-500/20 border-cyan-500/60 text-cyan-300 shadow-lg shadow-cyan-500/10'
                      : 'bg-slate-900 border-slate-800 text-slate-400 hover:border-slate-700'
                  }`}
                >
                  <div className="font-orbitron font-bold text-sm text-slate-100">{mode}</div>
                  <div className="text-[10px] text-slate-400 mt-1">
                    {mode === 'SPORT' ? 'Tight steering & turbo response' : 
                     mode === 'RACE' ? 'Full power & track telemetry' : 
                     mode === 'ECO' ? 'Fuel economy optimization' : 'Balanced daily comfort'}
                  </div>
                </button>
              ))}
            </div>
          </div>

          {/* Headlight Lighting Controls */}
          <div className="car-panel rounded-3xl p-5 border border-slate-800">
            <span className="text-xs font-orbitron font-bold text-slate-200 tracking-wider uppercase block mb-3">
              HEADLIGHT MODES
            </span>

            <div className="grid grid-cols-4 gap-2">
              {(['OFF', 'AUTO', 'LOW', 'HIGH'] as const).map(light => (
                <button
                  key={light}
                  onClick={() => onUpdateVehicle(p => ({ ...p, lights: { ...p.lights, headlights: light } }))}
                  className={`py-2 rounded-xl font-orbitron text-xs font-bold border transition-all cursor-pointer text-center ${
                    vehicle.lights.headlights === light
                      ? 'bg-amber-500/20 text-amber-300 border-amber-500/50'
                      : 'bg-slate-900 text-slate-500 border-slate-800'
                  }`}
                >
                  {light}
                </button>
              ))}
            </div>
          </div>

          {/* Tire Pressure Monitoring System (TPMS) Card */}
          <div className="car-panel rounded-3xl p-5 border border-slate-800">
            <span className="text-xs font-orbitron font-bold text-slate-200 tracking-wider uppercase block mb-3">
              TPMS TIRE PRESSURE MONITOR
            </span>

            <div className="grid grid-cols-2 gap-3 text-center">
              <div className="bg-slate-900/90 rounded-2xl p-2.5 border border-slate-800">
                <div className="text-[10px] text-slate-400 font-bold">FRONT LEFT</div>
                <div className="text-lg font-orbitron font-bold text-emerald-400 mt-0.5">
                  {vehicle.tires.frontLeft.pressurePsi} PSI
                </div>
                <div className="text-[10px] text-slate-500">{vehicle.tires.frontLeft.tempC}°C • NORMAL</div>
              </div>

              <div className="bg-slate-900/90 rounded-2xl p-2.5 border border-slate-800">
                <div className="text-[10px] text-slate-400 font-bold">FRONT RIGHT</div>
                <div className="text-lg font-orbitron font-bold text-emerald-400 mt-0.5">
                  {vehicle.tires.frontRight.pressurePsi} PSI
                </div>
                <div className="text-[10px] text-slate-500">{vehicle.tires.frontRight.tempC}°C • NORMAL</div>
              </div>

              <div className="bg-slate-900/90 rounded-2xl p-2.5 border border-slate-800">
                <div className="text-[10px] text-slate-400 font-bold">REAR LEFT</div>
                <div className="text-lg font-orbitron font-bold text-emerald-400 mt-0.5">
                  {vehicle.tires.rearLeft.pressurePsi} PSI
                </div>
                <div className="text-[10px] text-slate-500">{vehicle.tires.rearLeft.tempC}°C • NORMAL</div>
              </div>

              <div className="bg-slate-900/90 rounded-2xl p-2.5 border border-slate-800">
                <div className="text-[10px] text-slate-400 font-bold">REAR RIGHT</div>
                <div className="text-lg font-orbitron font-bold text-emerald-400 mt-0.5">
                  {vehicle.tires.rearRight.pressurePsi} PSI
                </div>
                <div className="text-[10px] text-slate-500">{vehicle.tires.rearRight.tempC}°C • NORMAL</div>
              </div>
            </div>
          </div>

          {/* ADAS Safety Systems Switches */}
          <div className="car-panel rounded-3xl p-5 border border-slate-800">
            <span className="text-xs font-orbitron font-bold text-slate-200 tracking-wider uppercase block mb-3">
              ADAS DRIVER ASSISTANCE SYSTEMS
            </span>

            <div className="space-y-2 text-xs">
              <div className="flex items-center justify-between p-2.5 bg-slate-900 rounded-xl border border-slate-800">
                <span className="text-slate-200 font-medium">Lane Keep Assist System (LKAS)</span>
                <button
                  onClick={() => toggleAdas('laneKeepAssist')}
                  className={`px-3 py-1 rounded-lg font-bold ${vehicle.adas.laneKeepAssist ? 'bg-emerald-500/20 text-emerald-300' : 'bg-slate-800 text-slate-500'}`}
                >
                  {vehicle.adas.laneKeepAssist ? 'ON' : 'OFF'}
                </button>
              </div>

              <div className="flex items-center justify-between p-2.5 bg-slate-900 rounded-xl border border-slate-800">
                <span className="text-slate-200 font-medium">Adaptive Cruise Control (ACC)</span>
                <button
                  onClick={() => toggleAdas('adaptiveCruise')}
                  className={`px-3 py-1 rounded-lg font-bold ${vehicle.adas.adaptiveCruise ? 'bg-emerald-500/20 text-emerald-300' : 'bg-slate-800 text-slate-500'}`}
                >
                  {vehicle.adas.adaptiveCruise ? 'ON' : 'OFF'}
                </button>
              </div>

              <div className="flex items-center justify-between p-2.5 bg-slate-900 rounded-xl border border-slate-800">
                <span className="text-slate-200 font-medium">Blind Spot Monitoring (BSD)</span>
                <button
                  onClick={() => toggleAdas('blindSpotMonitoring')}
                  className={`px-3 py-1 rounded-lg font-bold ${vehicle.adas.blindSpotMonitoring ? 'bg-emerald-500/20 text-emerald-300' : 'bg-slate-800 text-slate-500'}`}
                >
                  {vehicle.adas.blindSpotMonitoring ? 'ON' : 'OFF'}
                </button>
              </div>
            </div>
          </div>

        </div>

      </div>

    </div>
  );
};
