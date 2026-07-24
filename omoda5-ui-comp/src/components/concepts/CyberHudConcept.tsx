import React, { useState, useEffect } from 'react';
import { 
  Zap, 
  Gauge, 
  Flame, 
  Activity, 
  ShieldCheck, 
  Music, 
  Compass, 
  Radio, 
  Cpu, 
  Thermometer,
  RotateCcw,
  Sparkles,
  ChevronRight
} from 'lucide-react';
import { VehicleState, MediaState, ActiveScreen } from '../../types';

interface CyberHudConceptProps {
  vehicle: VehicleState;
  media: MediaState;
  onUpdateVehicle: (updater: (prev: VehicleState) => VehicleState) => void;
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const CyberHudConcept: React.FC<CyberHudConceptProps> = ({
  vehicle,
  media,
  onUpdateVehicle,
  onSelectScreen
}) => {
  const [gForce, setGForce] = useState({ x: 0.12, y: 0.35 });
  const [powerKw, setPowerKw] = useState(142);
  const [torqueNm, setTorqueNm] = useState(290);

  // Simulate real-time HUD telemetry fluctuations
  useEffect(() => {
    const interval = setInterval(() => {
      setGForce({
        x: Number((Math.sin(Date.now() / 1000) * 0.4).toFixed(2)),
        y: Number((Math.cos(Date.now() / 800) * 0.6 + 0.2).toFixed(2)),
      });
      setPowerKw(Math.round(135 + Math.random() * 25));
      setTorqueNm(Math.round(280 + Math.random() * 30));
    }, 1200);
    return () => clearInterval(interval);
  }, []);

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-hidden flex flex-col justify-between select-none relative font-['Orbitron',sans-serif] text-amber-400">
      
      {/* Background Cyber HUD Grid lines */}
      <div className="absolute inset-0 bg-[radial-gradient(#f59e0b_1px,transparent_1px)] [background-size:24px_24px] opacity-10 pointer-events-none" />

      {/* Cyber HUD Header */}
      <div className="flex items-center justify-between border-b border-amber-500/30 pb-3 relative z-10">
        <div className="flex items-center gap-3">
          <Cpu className="w-6 h-6 text-amber-400 animate-pulse" />
          <div>
            <h1 className="text-lg font-black tracking-widest text-amber-400 flex items-center gap-2">
              CYBER-HUD TELEMETRY SYSTEM
            </h1>
            <p className="text-[10px] text-amber-500/70 font-mono tracking-normal">
              Omoda 5 Performance Protocol • Real-time G-Force & Power Vectoring
            </p>
          </div>
        </div>

        <div className="flex items-center gap-2 font-mono text-xs">
          <span className="px-3 py-1 rounded-sm bg-amber-500/10 border border-amber-500/40 text-amber-300">
            DRIVE MODE: <strong className="text-amber-400">{vehicle.driveMode}</strong>
          </span>
          <button
            onClick={() => onUpdateVehicle(p => ({ ...p, driveMode: p.driveMode === 'SPORT' ? 'RACE' : 'SPORT' }))}
            className="px-3 py-1 rounded-sm bg-amber-500/20 hover:bg-amber-500/40 border border-amber-500 text-amber-300 text-[10px] uppercase font-bold cursor-pointer"
          >
            TOGGLE RACE MODE
          </button>
        </div>
      </div>

      {/* Main HUD Display Grid */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 my-auto py-2 relative z-10 items-center">
        
        {/* Sol Kanat (3 Cols): TPMS & Engine Temp */}
        <div className="lg:col-span-3 space-y-4">
          
          {/* TPMS Matrix Box */}
          <div className="p-4 rounded-xl bg-slate-900/90 border border-amber-500/40 shadow-2xl relative overflow-hidden">
            <div className="text-[10px] font-bold text-amber-400 uppercase tracking-widest mb-3 flex items-center gap-1.5">
              <Activity className="w-4 h-4 text-amber-400" /> TPMS TYRE MATRIX
            </div>

            <div className="grid grid-cols-2 gap-3 text-center font-mono">
              <div className="p-2 bg-slate-950 border border-amber-500/30 rounded-lg">
                <div className="text-[10px] text-amber-500/70">FL</div>
                <div className="text-sm font-black text-amber-300">{vehicle.tires.frontLeft.pressurePsi} PSI</div>
                <div className="text-[9px] text-amber-500/60">{vehicle.tires.frontLeft.tempC}°C</div>
              </div>

              <div className="p-2 bg-slate-950 border border-amber-500/30 rounded-lg">
                <div className="text-[10px] text-amber-500/70">FR</div>
                <div className="text-sm font-black text-amber-300">{vehicle.tires.frontRight.pressurePsi} PSI</div>
                <div className="text-[9px] text-amber-500/60">{vehicle.tires.frontRight.tempC}°C</div>
              </div>

              <div className="p-2 bg-slate-950 border border-amber-500/30 rounded-lg">
                <div className="text-[10px] text-amber-500/70">RL</div>
                <div className="text-sm font-black text-amber-300">{vehicle.tires.rearLeft.pressurePsi} PSI</div>
                <div className="text-[9px] text-amber-500/60">{vehicle.tires.rearLeft.tempC}°C</div>
              </div>

              <div className="p-2 bg-slate-950 border border-amber-500/30 rounded-lg">
                <div className="text-[10px] text-amber-500/70">RR</div>
                <div className="text-sm font-black text-amber-300">{vehicle.tires.rearRight.pressurePsi} PSI</div>
                <div className="text-[9px] text-amber-500/60">{vehicle.tires.rearRight.tempC}°C</div>
              </div>
            </div>
          </div>

          {/* Engine & Battery Temp */}
          <div className="p-4 rounded-xl bg-slate-900/90 border border-amber-500/40 shadow-2xl font-mono text-xs space-y-2">
            <div className="flex justify-between items-center text-amber-300">
              <span className="flex items-center gap-1.5"><Thermometer className="w-4 h-4 text-amber-400" /> ENGINE OIL TEMP</span>
              <span className="font-bold">92°C</span>
            </div>
            <div className="w-full h-1.5 bg-slate-950 border border-amber-500/30 rounded-full overflow-hidden">
              <div className="h-full bg-amber-400 w-[65%]" />
            </div>

            <div className="flex justify-between items-center text-amber-300 pt-2">
              <span className="flex items-center gap-1.5"><Flame className="w-4 h-4 text-orange-400" /> TURBO BOOST</span>
              <span className="font-bold">1.4 BAR</span>
            </div>
            <div className="w-full h-1.5 bg-slate-950 border border-amber-500/30 rounded-full overflow-hidden">
              <div className="h-full bg-orange-400 w-[80%]" />
            </div>
          </div>

        </div>

        {/* Merkez (6 Cols): Devasa Dijital Hız Göstergesi & Güç Dağılım Halkası (G-Force Meter) */}
        <div className="lg:col-span-6 flex flex-col items-center justify-center relative">
          
          {/* Cyber Circular Power Gauge Ring */}
          <div className="relative w-72 h-72 sm:w-80 sm:h-80 flex items-center justify-center">
            
            {/* Outer Rotating Cyber Ring */}
            <svg className="w-full h-full absolute inset-0 animate-spin-slow" viewBox="0 0 100 100">
              <circle cx="50" cy="50" r="46" fill="none" stroke="#f59e0b" strokeWidth="1" strokeDasharray="4 8" opacity="0.4" />
              <circle cx="50" cy="50" r="42" fill="none" stroke="#fbbf24" strokeWidth="2" strokeDasharray="20 40 10 30" opacity="0.8" />
            </svg>

            {/* Center Speed Visual Box */}
            <div className="w-56 h-56 rounded-full bg-slate-950 border-2 border-amber-500 shadow-[0_0_50px_rgba(245,158,11,0.25)] flex flex-col items-center justify-center relative z-10 p-4 text-center">
              <span className="text-[10px] tracking-widest text-amber-500 uppercase font-mono">DIGITAL SPEED</span>
              
              <div className="text-6xl sm:text-7xl font-black font-orbitron tracking-tighter text-amber-400 my-1 drop-shadow-[0_0_15px_rgba(245,158,11,0.8)]">
                {vehicle.speedKmh}
              </div>

              <span className="text-xs font-mono font-bold text-amber-300 tracking-widest">KM/H</span>

              <div className="mt-2 px-3 py-0.5 rounded bg-amber-500/20 text-amber-300 font-mono text-[10px] border border-amber-500/40">
                GEAR {vehicle.gear} • {vehicle.rpm} RPM
              </div>
            </div>

            {/* G-Force Floating Vector Indicator */}
            <div className="absolute top-2 left-2 p-2 rounded bg-slate-950 border border-amber-500/40 text-[9px] font-mono">
              G-FORCE: X {gForce.x}G / Y {gForce.y}G
            </div>
          </div>

        </div>

        {/* Sağ Kanat (3 Cols): Anlık Tork/Güç Grafiği & Live Vector SVG */}
        <div className="lg:col-span-3 space-y-4">
          
          {/* Dynamic Canvas / SVG Power & Torque Chart */}
          <div className="p-4 rounded-xl bg-slate-900/90 border border-amber-500/40 shadow-2xl relative overflow-hidden">
            <div className="text-[10px] font-bold text-amber-400 uppercase tracking-widest mb-2 flex items-center justify-between">
              <span className="flex items-center gap-1.5"><Zap className="w-4 h-4 text-amber-400" /> DYNAMIC POWER GRAPH</span>
              <span className="text-amber-300 font-mono">{powerKw} KW</span>
            </div>

            {/* SVG Real-time Telemetry Graph */}
            <div className="w-full h-28 bg-slate-950 border border-amber-500/30 rounded-lg relative overflow-hidden p-1 flex items-end">
              <svg className="w-full h-full" viewBox="0 0 100 50" preserveAspectRatio="none">
                <path d="M 0,40 Q 25,10 50,25 T 100,5" fill="none" stroke="#f59e0b" strokeWidth="2" />
                <path d="M 0,40 Q 25,10 50,25 T 100,5 L 100,50 L 0,50 Z" fill="rgba(245, 158, 11, 0.15)" />
              </svg>

              <div className="absolute top-1 right-2 text-[9px] font-mono text-amber-400">
                TORQUE: {torqueNm} NM
              </div>
            </div>
          </div>

          {/* Cruise Control & ADAS Telemetry Status */}
          <div className="p-4 rounded-xl bg-slate-900/90 border border-amber-500/40 shadow-2xl font-mono text-xs space-y-2">
            <div className="text-[10px] font-bold text-amber-400 uppercase tracking-widest flex items-center gap-1.5">
              <ShieldCheck className="w-4 h-4 text-emerald-400" /> ADAS CO-PILOT
            </div>
            
            <div className="flex justify-between text-slate-300 text-[10px]">
              <span>LANE KEEP: <strong className="text-emerald-400">ENGAGED</strong></span>
              <span>AEB: <strong className="text-emerald-400">ACTIVE</strong></span>
            </div>
          </div>

        </div>

      </div>

      {/* Alt Panel: Minimalist Yola Odaklı Medya Şeridi */}
      <div className="bg-slate-900/90 border border-amber-500/40 rounded-xl p-3 px-5 flex items-center justify-between relative z-10 shadow-2xl">
        <div className="flex items-center gap-3">
          <Music className="w-5 h-5 text-amber-400" />
          <div className="font-mono text-xs">
            <span className="text-amber-300 font-bold">{media.currentTrack.title}</span>
            <span className="text-amber-500/70 ml-2">• {media.currentTrack.artist}</span>
          </div>
        </div>

        <div className="flex items-center gap-4 text-xs font-mono">
          <span className="text-amber-500/80">HUD MODE ACTIVE</span>
          <button 
            onClick={() => onSelectScreen('INSTRUMENT_CLUSTER')}
            className="flex items-center gap-1 text-amber-400 hover:underline cursor-pointer"
          >
            Gauge Cluster <ChevronRight className="w-4 h-4" />
          </button>
        </div>
      </div>

    </div>
  );
};
