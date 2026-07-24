import React from 'react';
import { 
  Fan, 
  Flame, 
  Wind, 
  ShieldAlert, 
  Sparkles, 
  RotateCcw, 
  Maximize2, 
  Thermometer, 
  Check, 
  Power, 
  AirVent,
  Sun,
  ShieldCheck
} from 'lucide-react';
import { ClimateState } from '../types';

interface ClimateControlProps {
  climate: ClimateState;
  onUpdateClimate: (updater: (prev: ClimateState) => ClimateState) => void;
}

export const ClimateControl: React.FC<ClimateControlProps> = ({
  climate,
  onUpdateClimate
}) => {
  const handleTempChange = (delta: number, isDriver: boolean) => {
    onUpdateClimate(prev => {
      const field = isDriver ? 'driverTemp' : 'passengerTemp';
      const val = Math.min(30, Math.max(16, Number((prev[field] + delta).toFixed(1))));
      if (prev.dualMode && isDriver) {
        return { ...prev, driverTemp: val, passengerTemp: val };
      }
      return { ...prev, [field]: val };
    });
  };

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-y-auto no-scrollbar flex flex-col justify-between select-none">
      
      {/* Top Header Controls */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Fan className="w-6 h-6 text-cyan-400" />
            OMODA 5 DUAL-ZONE CLIMATE CONTROL
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Air Purification & Seat Comfort System</p>
        </div>

        {/* Master Power Toggle */}
        <button
          onClick={() => onUpdateClimate(p => ({ ...p, powerOn: !p.powerOn }))}
          className={`flex items-center gap-2 px-5 py-2 rounded-2xl font-bold text-xs uppercase tracking-wider border transition-all cursor-pointer ${
            climate.powerOn
              ? 'bg-cyan-500 text-slate-950 border-cyan-300 shadow-lg shadow-cyan-500/30'
              : 'bg-slate-900 text-slate-500 border-slate-800'
          }`}
        >
          <Power className="w-4 h-4" />
          {climate.powerOn ? 'AC SYSTEM ON' : 'SYSTEM OFF'}
        </button>
      </div>

      {/* Main Dual Temperature Dials & Airflow Section */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 my-auto py-4">
        
        {/* Left: Driver Side Climate Card */}
        <div className="lg:col-span-4 car-panel-glow rounded-3xl p-6 flex flex-col items-center justify-between border border-slate-800">
          <div className="text-center w-full">
            <span className="text-xs font-orbitron font-semibold text-cyan-400 tracking-wider uppercase">
              DRIVER SIDE
            </span>
            
            <div className="my-6 relative flex flex-col items-center justify-center">
              <div className="text-6xl font-black font-orbitron text-slate-100 glow-cyan tracking-tight">
                {climate.driverTemp.toFixed(1)}°
              </div>
              <div className="text-xs font-semibold text-slate-400 mt-1">CELSIUS</div>
            </div>

            {/* Temp adjust buttons */}
            <div className="flex items-center justify-center gap-4 my-2">
              <button
                onClick={() => handleTempChange(-0.5, true)}
                className="w-12 h-12 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-cyan-400 text-2xl font-bold flex items-center justify-center transition-all cursor-pointer shadow-md"
              >
                -
              </button>
              <button
                onClick={() => handleTempChange(0.5, true)}
                className="w-12 h-12 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-rose-400 text-2xl font-bold flex items-center justify-center transition-all cursor-pointer shadow-md"
              >
                +
              </button>
            </div>
          </div>

          {/* Driver Seat Heating & Ventilation */}
          <div className="w-full grid grid-cols-2 gap-3 mt-6 pt-4 border-t border-slate-800">
            <button
              onClick={() => onUpdateClimate(p => ({ ...p, driverSeatHeat: (p.driverSeatHeat + 1) % 4 }))}
              className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                climate.driverSeatHeat > 0
                  ? 'bg-amber-500/20 border-amber-500/50 text-amber-400 shadow-md shadow-amber-500/10'
                  : 'bg-slate-900 border-slate-800 text-slate-400'
              }`}
            >
              <Flame className="w-5 h-5 mx-auto mb-1" />
              <div className="text-[11px] font-bold">Seat Heating</div>
              <div className="text-[10px] opacity-80">
                {climate.driverSeatHeat === 0 ? 'OFF' : `LEVEL ${climate.driverSeatHeat}`}
              </div>
            </button>

            <button
              onClick={() => onUpdateClimate(p => ({ ...p, driverSeatVent: (p.driverSeatVent + 1) % 4 }))}
              className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                climate.driverSeatVent > 0
                  ? 'bg-cyan-500/20 border-cyan-500/50 text-cyan-300 shadow-md shadow-cyan-500/10'
                  : 'bg-slate-900 border-slate-800 text-slate-400'
              }`}
            >
              <Wind className="w-5 h-5 mx-auto mb-1" />
              <div className="text-[11px] font-bold">Seat Ventilation</div>
              <div className="text-[10px] opacity-80">
                {climate.driverSeatVent === 0 ? 'OFF' : `LEVEL ${climate.driverSeatVent}`}
              </div>
            </button>
          </div>
        </div>

        {/* Center: Fan Speed & Airflow Distribution Mode */}
        <div className="lg:col-span-4 car-panel rounded-3xl p-6 flex flex-col justify-between border border-slate-800">
          {/* Fan Speed Slider */}
          <div>
            <div className="flex items-center justify-between text-xs font-bold text-slate-200 mb-3">
              <span className="flex items-center gap-1.5">
                <Fan className="w-4 h-4 text-cyan-400" /> FAN SPEED
              </span>
              <span className="font-orbitron text-cyan-400">LEVEL {climate.fanSpeed} / 7</span>
            </div>

            <div className="flex items-center gap-2 my-2">
              {Array.from({ length: 7 }).map((_, idx) => {
                const level = idx + 1;
                const active = climate.fanSpeed >= level;
                return (
                  <button
                    key={level}
                    onClick={() => onUpdateClimate(p => ({ ...p, fanSpeed: level }))}
                    className={`h-10 flex-1 rounded-xl transition-all cursor-pointer border ${
                      active
                        ? 'bg-cyan-500 border-cyan-300 shadow-md shadow-cyan-500/30'
                        : 'bg-slate-900 border-slate-800 hover:border-slate-700'
                    }`}
                  />
                );
              })}
            </div>
          </div>

          {/* Airflow Direction Toggles */}
          <div className="my-6">
            <div className="text-xs font-bold text-slate-200 mb-3 uppercase tracking-wider">
              Air Flow Distribution
            </div>
            <div className="grid grid-cols-3 gap-2">
              <button
                onClick={() => onUpdateClimate(p => ({ ...p, airflowFace: !p.airflowFace }))}
                className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                  climate.airflowFace
                    ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50'
                    : 'bg-slate-900 text-slate-500 border-slate-800'
                }`}
              >
                <AirVent className="w-5 h-5 mx-auto mb-1" />
                <div className="text-[10px] font-bold">Face</div>
              </button>

              <button
                onClick={() => onUpdateClimate(p => ({ ...p, airflowFeet: !p.airflowFeet }))}
                className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                  climate.airflowFeet
                    ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50'
                    : 'bg-slate-900 text-slate-500 border-slate-800'
                }`}
              >
                <Wind className="w-5 h-5 mx-auto mb-1" />
                <div className="text-[10px] font-bold">Feet</div>
              </button>

              <button
                onClick={() => onUpdateClimate(p => ({ ...p, airflowDefrost: !p.airflowDefrost }))}
                className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                  climate.airflowDefrost
                    ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50'
                    : 'bg-slate-900 text-slate-500 border-slate-800'
                }`}
              >
                <Sun className="w-5 h-5 mx-auto mb-1" />
                <div className="text-[10px] font-bold">Defrost</div>
              </button>
            </div>
          </div>

          {/* Air Purifier Card */}
          <div className="bg-slate-900/90 rounded-2xl p-3 border border-slate-800 flex items-center justify-between">
            <div className="flex items-center gap-3">
              <div className="w-9 h-9 rounded-xl bg-emerald-500/20 text-emerald-400 border border-emerald-500/30 flex items-center justify-center">
                <ShieldCheck className="w-5 h-5" />
              </div>
              <div>
                <div className="text-xs font-bold text-slate-200">CN95 Air Purification</div>
                <div className="text-[10px] text-emerald-400 font-mono">PM2.5 Index: {climate.pm25Level} (Excellent)</div>
              </div>
            </div>

            <button
              onClick={() => onUpdateClimate(p => ({ ...p, airPurifier: !p.airPurifier }))}
              className={`px-3 py-1 rounded-xl text-xs font-bold border cursor-pointer ${
                climate.airPurifier ? 'bg-emerald-500/20 text-emerald-300 border-emerald-500/40' : 'bg-slate-800 text-slate-500 border-slate-700'
              }`}
            >
              {climate.airPurifier ? 'ACTIVE' : 'OFF'}
            </button>
          </div>
        </div>

        {/* Right: Passenger Side Climate Card */}
        <div className="lg:col-span-4 car-panel-glow rounded-3xl p-6 flex flex-col items-center justify-between border border-slate-800">
          <div className="text-center w-full">
            <span className="text-xs font-orbitron font-semibold text-cyan-400 tracking-wider uppercase">
              PASSENGER SIDE
            </span>
            
            <div className="my-6 relative flex flex-col items-center justify-center">
              <div className="text-6xl font-black font-orbitron text-slate-100 glow-cyan tracking-tight">
                {climate.passengerTemp.toFixed(1)}°
              </div>
              <div className="text-xs font-semibold text-slate-400 mt-1">CELSIUS</div>
            </div>

            {/* Temp adjust buttons */}
            <div className="flex items-center justify-center gap-4 my-2">
              <button
                onClick={() => handleTempChange(-0.5, false)}
                className="w-12 h-12 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-cyan-400 text-2xl font-bold flex items-center justify-center transition-all cursor-pointer shadow-md"
              >
                -
              </button>
              <button
                onClick={() => handleTempChange(0.5, false)}
                className="w-12 h-12 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-700 text-rose-400 text-2xl font-bold flex items-center justify-center transition-all cursor-pointer shadow-md"
              >
                +
              </button>
            </div>
          </div>

          {/* Passenger Seat Heating & Ventilation */}
          <div className="w-full grid grid-cols-2 gap-3 mt-6 pt-4 border-t border-slate-800">
            <button
              onClick={() => onUpdateClimate(p => ({ ...p, passengerSeatHeat: (p.passengerSeatHeat + 1) % 4 }))}
              className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                climate.passengerSeatHeat > 0
                  ? 'bg-amber-500/20 border-amber-500/50 text-amber-400 shadow-md shadow-amber-500/10'
                  : 'bg-slate-900 border-slate-800 text-slate-400'
              }`}
            >
              <Flame className="w-5 h-5 mx-auto mb-1" />
              <div className="text-[11px] font-bold">Seat Heating</div>
              <div className="text-[10px] opacity-80">
                {climate.passengerSeatHeat === 0 ? 'OFF' : `LEVEL ${climate.passengerSeatHeat}`}
              </div>
            </button>

            <button
              onClick={() => onUpdateClimate(p => ({ ...p, passengerSeatVent: (p.passengerSeatVent + 1) % 4 }))}
              className={`p-3 rounded-2xl border text-center transition-all cursor-pointer ${
                climate.passengerSeatVent > 0
                  ? 'bg-cyan-500/20 border-cyan-500/50 text-cyan-300 shadow-md shadow-cyan-500/10'
                  : 'bg-slate-900 border-slate-800 text-slate-400'
              }`}
            >
              <Wind className="w-5 h-5 mx-auto mb-1" />
              <div className="text-[11px] font-bold">Seat Ventilation</div>
              <div className="text-[10px] opacity-80">
                {climate.passengerSeatVent === 0 ? 'OFF' : `LEVEL ${climate.passengerSeatVent}`}
              </div>
            </button>
          </div>
        </div>

      </div>

      {/* Quick Mode Preset Toggles Bottom Row */}
      <div className="grid grid-cols-2 sm:grid-cols-5 gap-3 pt-4 border-t border-slate-800">
        <button
          onClick={() => onUpdateClimate(p => ({ ...p, autoMode: !p.autoMode }))}
          className={`py-2.5 rounded-2xl font-bold text-xs uppercase tracking-wider border cursor-pointer transition-all ${
            climate.autoMode ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50' : 'bg-slate-900 text-slate-400 border-slate-800'
          }`}
        >
          ❄️ AUTO MODE
        </button>

        <button
          onClick={() => onUpdateClimate(p => ({ ...p, acOn: !p.acOn }))}
          className={`py-2.5 rounded-2xl font-bold text-xs uppercase tracking-wider border cursor-pointer transition-all ${
            climate.acOn ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50' : 'bg-slate-900 text-slate-400 border-slate-800'
          }`}
        >
          💨 MAX A/C
        </button>

        <button
          onClick={() => onUpdateClimate(p => ({ ...p, recirculation: !p.recirculation }))}
          className={`py-2.5 rounded-2xl font-bold text-xs uppercase tracking-wider border cursor-pointer transition-all ${
            climate.recirculation ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50' : 'bg-slate-900 text-slate-400 border-slate-800'
          }`}
        >
          🔄 RECIRCULATION
        </button>

        <button
          onClick={() => onUpdateClimate(p => ({ ...p, frontDefrost: !p.frontDefrost }))}
          className={`py-2.5 rounded-2xl font-bold text-xs uppercase tracking-wider border cursor-pointer transition-all ${
            climate.frontDefrost ? 'bg-amber-500/20 text-amber-300 border-amber-500/50' : 'bg-slate-900 text-slate-400 border-slate-800'
          }`}
        >
          🪟 FRONT DEFROST
        </button>

        <button
          onClick={() => onUpdateClimate(p => ({ ...p, rearDefrost: !p.rearDefrost }))}
          className={`py-2.5 rounded-2xl font-bold text-xs uppercase tracking-wider border cursor-pointer transition-all ${
            climate.rearDefrost ? 'bg-amber-500/20 text-amber-300 border-amber-500/50' : 'bg-slate-900 text-slate-400 border-slate-800'
          }`}
        >
          ⚡ REAR DEFROST
        </button>
      </div>

    </div>
  );
};
