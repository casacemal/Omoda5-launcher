import React, { useState } from 'react';
import { Camera, ShieldCheck, Video, Eye, ShieldAlert, Sparkles, AlertCircle } from 'lucide-react';

export const Camera360View: React.FC = () => {
  const [selectedCam, setSelectedCam] = useState<'3D' | 'FRONT' | 'REAR' | 'LEFT' | 'RIGHT'>('3D');

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-y-auto no-scrollbar flex flex-col justify-between select-none">
      
      {/* Header */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-4">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Camera className="w-6 h-6 text-cyan-400" />
            360° HD SURROUND VIEW PARKING CAMERA
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Ultra-wide HD 3D Bird's Eye Obstacle Detection</p>
        </div>

        <div className="flex items-center gap-2">
          <span className="px-3 py-1 rounded-full text-xs font-bold bg-emerald-500/20 text-emerald-300 border border-emerald-500/40 flex items-center gap-1.5">
            <ShieldCheck className="w-4 h-4" /> All 4 Sensors Clear
          </span>
        </div>
      </div>

      {/* Main 360 Camera View Stage */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 my-auto py-2">
        
        {/* Left: 360 Bird's Eye Overhead Radar View */}
        <div className="lg:col-span-6 car-panel-glow rounded-3xl p-6 flex flex-col items-center justify-center relative border border-slate-800 min-h-[300px]">
          <span className="text-xs font-orbitron font-bold text-cyan-400 tracking-wider absolute top-4 left-4">
            360° BIRD'S EYE VIEW
          </span>

          {/* Sonar Sensor Rings */}
          <div className="relative w-64 h-64 flex items-center justify-center">
            {/* Outer Sonar Ring */}
            <div className="absolute inset-0 rounded-full border-2 border-dashed border-emerald-500/40 animate-ping opacity-20" />
            <div className="absolute inset-4 rounded-full border border-cyan-500/30" />
            <div className="absolute inset-12 rounded-full border border-cyan-500/20" />

            {/* Omoda 5 Top-Down Vehicle Diagram */}
            <div className="w-28 h-52 bg-gradient-to-b from-slate-900 via-slate-800 to-slate-900 rounded-2xl border-2 border-cyan-400 shadow-2xl flex flex-col items-center justify-between p-3 relative z-10">
              <span className="font-orbitron font-black text-[10px] text-cyan-300 tracking-widest">FRONT</span>
              
              <div className="w-16 h-16 rounded-full bg-slate-950 border border-slate-700 flex items-center justify-center">
                <span className="font-orbitron font-extrabold text-xs text-slate-200">OMODA 5</span>
              </div>

              <span className="font-orbitron font-black text-[10px] text-cyan-300 tracking-widest">REAR</span>
            </div>

            {/* Front Sensor Status */}
            <div className="absolute top-2 px-2 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/40 text-[10px] font-mono">
              FRONT 1.8m OK
            </div>

            {/* Rear Sensor Status */}
            <div className="absolute bottom-2 px-2 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/40 text-[10px] font-mono">
              REAR 2.1m OK
            </div>
          </div>
        </div>

        {/* Right: Selected Live Camera Stream Feed */}
        <div className="lg:col-span-6 car-panel rounded-3xl p-6 flex flex-col justify-between border border-slate-800 space-y-4">
          <div className="flex items-center justify-between">
            <span className="text-xs font-orbitron font-bold text-slate-200 tracking-wider uppercase flex items-center gap-2">
              <Video className="w-4 h-4 text-cyan-400" /> CAMERA FEED: {selectedCam}
            </span>
            <span className="text-[10px] text-slate-400 font-mono">1080P 60FPS</span>
          </div>

          {/* Simulated HD Feed Container with Guidelines */}
          <div className="w-full h-56 bg-slate-900 rounded-2xl border border-slate-800 relative overflow-hidden flex items-center justify-center">
            {/* Guidelines Overlay SVG */}
            <svg className="w-full h-full absolute inset-0 opacity-80" viewBox="0 0 100 100" preserveAspectRatio="none">
              {/* Dynamic trajectory guide lines */}
              <path d="M 20 100 Q 30 50 40 20" fill="none" stroke="#ef4444" strokeWidth="2" strokeDasharray="2,2" />
              <path d="M 80 100 Q 70 50 60 20" fill="none" stroke="#ef4444" strokeWidth="2" strokeDasharray="2,2" />
              
              <path d="M 25 80 L 75 80" fill="none" stroke="#ef4444" strokeWidth="2" />
              <path d="M 30 60 L 70 60" fill="none" stroke="#f59e0b" strokeWidth="2" />
              <path d="M 35 40 L 65 40" fill="none" stroke="#10b981" strokeWidth="2" />
            </svg>

            {/* Simulated Rear Parking View Graphic */}
            <div className="text-center z-10">
              <Camera className="w-10 h-10 text-cyan-400 mx-auto opacity-40 mb-2 animate-pulse" />
              <div className="text-sm font-bold text-slate-200">Live 180° Rear Reversing Feed</div>
              <div className="text-xs text-slate-400 mt-1 font-mono">Steering Angle: 0° Neutral</div>
            </div>
          </div>

          {/* Camera Angle Switcher Buttons */}
          <div className="grid grid-cols-5 gap-2 pt-2 border-t border-slate-800">
            {(['3D', 'FRONT', 'REAR', 'LEFT', 'RIGHT'] as const).map(cam => (
              <button
                key={cam}
                onClick={() => setSelectedCam(cam)}
                className={`py-2 rounded-xl text-xs font-orbitron font-bold border transition-all cursor-pointer text-center ${
                  selectedCam === cam
                    ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50 shadow-md'
                    : 'bg-slate-900 text-slate-500 border-slate-800 hover:border-slate-700'
                }`}
              >
                {cam}
              </button>
            ))}
          </div>

        </div>

      </div>

    </div>
  );
};
