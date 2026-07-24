import React from 'react';
import { Palette, Sparkles, Sun, Music, Sliders, Check, Power } from 'lucide-react';
import { AmbientLightState } from '../types';
import { ambientColorPresets } from '../data/initialState';

interface AmbientLightingProps {
  ambientLight: AmbientLightState;
  onUpdateAmbientLight: (updater: (prev: AmbientLightState) => AmbientLightState) => void;
}

export const AmbientLighting: React.FC<AmbientLightingProps> = ({
  ambientLight,
  onUpdateAmbientLight
}) => {
  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-y-auto no-scrollbar flex flex-col justify-between select-none">
      
      {/* Header */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-6">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Palette className="w-6 h-6 text-cyan-400" />
            64-COLOR AMBIENT LIGHTING ATMOSPHERE
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Customize Omoda 5 Dashboard & Door Trim Lighting</p>
        </div>

        <button
          onClick={() => onUpdateAmbientLight(p => ({ ...p, enabled: !p.enabled }))}
          className={`flex items-center gap-2 px-5 py-2 rounded-2xl font-bold text-xs uppercase tracking-wider border transition-all cursor-pointer ${
            ambientLight.enabled
              ? 'bg-cyan-500 text-slate-950 border-cyan-300 shadow-lg shadow-cyan-500/30'
              : 'bg-slate-900 text-slate-500 border-slate-800'
          }`}
        >
          <Power className="w-4 h-4" />
          {ambientLight.enabled ? 'LIGHTING ON' : 'LIGHTING OFF'}
        </button>
      </div>

      {/* Main Cockpit Lighting Preview Box */}
      <div className="relative w-full h-48 sm:h-56 bg-slate-900/90 rounded-3xl border border-slate-800 overflow-hidden flex flex-col items-center justify-center p-6 my-2 shadow-2xl">
        {/* Glowing Background Tube Effect */}
        <div 
          className="absolute inset-x-0 top-0 h-16 blur-2xl transition-all duration-500 opacity-80"
          style={{
            backgroundColor: ambientLight.enabled ? ambientLight.colorHex : 'transparent',
            opacity: ambientLight.enabled ? ambientLight.brightnessPercent / 100 : 0
          }}
        />

        <div 
          className="absolute inset-x-0 bottom-0 h-16 blur-2xl transition-all duration-500 opacity-80"
          style={{
            backgroundColor: ambientLight.enabled ? ambientLight.colorHex : 'transparent',
            opacity: ambientLight.enabled ? (ambientLight.brightnessPercent / 100) * 0.7 : 0
          }}
        />

        {/* Cockpit Trim Graphic Frame */}
        <div className="z-10 text-center">
          <div className="font-orbitron font-extrabold text-2xl text-slate-100 tracking-wider">
            OMODA 5 COCKPIT LIGHTING
          </div>
          <div className="text-xs text-slate-400 mt-1 font-mono">
            Rhythm Mode: <span className="text-cyan-400 font-bold">{ambientLight.rhythmMode}</span> • Brightness: <span className="text-cyan-400 font-bold">{ambientLight.brightnessPercent}%</span>
          </div>

          <div className="mt-4 flex items-center justify-center gap-2">
            <span 
              className="w-8 h-8 rounded-full border-2 border-white/40 shadow-lg shadow-black"
              style={{ backgroundColor: ambientLight.colorHex }}
            />
            <span className="font-orbitron font-bold text-slate-200 text-sm">
              {ambientColorPresets[ambientLight.selectedPresetIndex]?.name || 'Custom Hex'} ({ambientLight.colorHex})
            </span>
          </div>
        </div>
      </div>

      {/* Color Swatches & Custom Picker */}
      <div className="my-6 space-y-4">
        <div>
          <label className="text-xs font-orbitron font-bold text-slate-200 uppercase tracking-wider block mb-3">
            COLOR PRESETS (64-COLOR ATMOSPHERE)
          </label>
          <div className="grid grid-cols-2 sm:grid-cols-4 lg:grid-cols-8 gap-3">
            {ambientColorPresets.map((preset, idx) => {
              const isSelected = ambientLight.selectedPresetIndex === idx && ambientLight.colorHex === preset.hex;
              return (
                <button
                  key={preset.name}
                  onClick={() => onUpdateAmbientLight(p => ({
                    ...p,
                    colorHex: preset.hex,
                    selectedPresetIndex: idx
                  }))}
                  className={`p-3 rounded-2xl border text-center transition-all cursor-pointer flex flex-col items-center justify-center gap-2 ${
                    isSelected
                      ? 'bg-slate-800 border-cyan-400 shadow-lg shadow-cyan-500/20 scale-105'
                      : 'bg-slate-900/90 border-slate-800 hover:border-slate-700'
                  }`}
                >
                  <span 
                    className="w-7 h-7 rounded-full shadow-inner border border-white/20"
                    style={{ backgroundColor: preset.hex }}
                  />
                  <span className="text-[11px] font-medium text-slate-200 truncate w-full">
                    {preset.name}
                  </span>
                </button>
              );
            })}
          </div>
        </div>

        {/* Brightness & Color Picker */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4 pt-4 border-t border-slate-800">
          <div className="car-panel rounded-2xl p-4 border border-slate-800">
            <div className="flex items-center justify-between text-xs font-bold text-slate-200 mb-2">
              <span className="flex items-center gap-1.5">
                <Sun className="w-4 h-4 text-amber-400" /> BRIGHTNESS LEVEL
              </span>
              <span className="font-orbitron text-cyan-400">{ambientLight.brightnessPercent}%</span>
            </div>
            <input
              type="range"
              min="10"
              max="100"
              step="5"
              value={ambientLight.brightnessPercent}
              onChange={(e) => onUpdateAmbientLight(p => ({ ...p, brightnessPercent: Number(e.target.value) }))}
              className="w-full accent-cyan-400 bg-slate-900 rounded-lg cursor-pointer h-2"
            />
          </div>

          <div className="car-panel rounded-2xl p-4 border border-slate-800 flex items-center justify-between">
            <span className="text-xs font-bold text-slate-200">Custom Color Hex Picker</span>
            <input
              type="color"
              value={ambientLight.colorHex}
              onChange={(e) => onUpdateAmbientLight(p => ({ ...p, colorHex: e.target.value }))}
              className="w-12 h-10 rounded-xl bg-transparent border border-slate-700 cursor-pointer p-0"
            />
          </div>
        </div>
      </div>

      {/* Rhythm Modes */}
      <div className="pt-4 border-t border-slate-800">
        <label className="text-xs font-orbitron font-bold text-slate-200 uppercase tracking-wider block mb-3">
          DYNAMIC LIGHT RHYTHM MODES
        </label>

        <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
          {[
            { id: 'DRIVE_MODE_SYNC', label: 'Drive Mode Sync', desc: 'Changes color automatically with Sport/Eco/Normal' },
            { id: 'MUSIC_SYNC', label: 'Music Beat Sync', desc: 'Pulsates in sync with Sony 3D sound system' },
            { id: 'BREATHING', label: 'Gentle Breathing', desc: 'Soft breathing fade effect' },
            { id: 'STATIC', label: 'Static Constant', desc: 'Constant solid color output' },
          ].map(r => (
            <button
              key={r.id}
              onClick={() => onUpdateAmbientLight(p => ({ ...p, rhythmMode: r.id as any }))}
              className={`p-3 rounded-2xl border text-left transition-all cursor-pointer ${
                ambientLight.rhythmMode === r.id
                  ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50 shadow-md shadow-cyan-500/10'
                  : 'bg-slate-900 text-slate-400 border-slate-800 hover:border-slate-700'
              }`}
            >
              <div className="font-bold text-xs text-slate-200">{r.label}</div>
              <div className="text-[10px] text-slate-400 mt-1">{r.desc}</div>
            </button>
          ))}
        </div>
      </div>

    </div>
  );
};
