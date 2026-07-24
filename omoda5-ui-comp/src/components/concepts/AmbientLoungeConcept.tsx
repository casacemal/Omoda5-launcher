import React, { useState } from 'react';
import { 
  Sparkles, 
  Sun, 
  Moon, 
  Palette, 
  Flame, 
  Wind, 
  Music, 
  Heart, 
  Sliders, 
  Coffee, 
  ChevronRight,
  Zap,
  Volume2
} from 'lucide-react';
import { AmbientLightState, ClimateState, MediaState, ActiveScreen } from '../../types';

interface AmbientLoungeConceptProps {
  ambientLight: AmbientLightState;
  climate: ClimateState;
  media: MediaState;
  onUpdateAmbientLight: (updater: (prev: AmbientLightState) => AmbientLightState) => void;
  onUpdateClimate: (updater: (prev: ClimateState) => ClimateState) => void;
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const AmbientLoungeConcept: React.FC<AmbientLoungeConceptProps> = ({
  ambientLight,
  climate,
  media,
  onUpdateAmbientLight,
  onUpdateClimate,
  onSelectScreen
}) => {
  const [massageMode, setMassageMode] = useState<'OFF' | 'RELAX' | 'WAVE' | 'LUMBAR'>('RELAX');
  const [loungeTheme, setLoungeTheme] = useState<'NIGHT_SERENITY' | 'SUNSET_GLOW' | 'AURORA'>('NIGHT_SERENITY');

  const lyricsList = [
    { time: '0:12', text: 'Drifting softly through the evening city lights...' },
    { time: '0:18', text: 'Where the ambient glow warms the quiet night' },
    { time: '0:24', text: 'Feel the rhythm flow, quiet peace inside...' },
  ];

  return (
    <div className={`w-full h-full p-6 overflow-hidden flex flex-col justify-between select-none relative font-['Plus_Jakarta_Sans',sans-serif] transition-all duration-1000 ${
      loungeTheme === 'NIGHT_SERENITY'
        ? 'bg-gradient-to-br from-slate-950 via-indigo-950 to-slate-900 text-slate-100'
        : loungeTheme === 'SUNSET_GLOW'
        ? 'bg-gradient-to-br from-slate-950 via-purple-950 to-rose-950 text-slate-100'
        : 'bg-gradient-to-br from-slate-950 via-teal-950 to-blue-950 text-slate-100'
    }`}>
      
      {/* Dynamic Atmospheric Glow Background Orbs */}
      <div 
        className="absolute top-10 left-1/4 w-96 h-96 rounded-full opacity-20 blur-3xl pointer-events-none animate-pulse-ring" 
        style={{ backgroundColor: ambientLight.colorHex }} 
      />

      {/* Header */}
      <div className="flex items-center justify-between border-b border-white/10 pb-4 relative z-10">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wider text-white flex items-center gap-2">
            <Sparkles className="w-6 h-6 text-purple-400" />
            AMBIENT EXECUTIVE LOUNGE
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Circadian Rhythm & Executive Seating Wellness</p>
        </div>

        {/* Atmosphere Presets */}
        <div className="flex items-center gap-2">
          {(['NIGHT_SERENITY', 'SUNSET_GLOW', 'AURORA'] as const).map(th => (
            <button
              key={th}
              onClick={() => setLoungeTheme(th)}
              className={`px-3 py-1.5 rounded-2xl text-xs font-bold transition-all cursor-pointer border ${
                loungeTheme === th
                  ? 'bg-white/20 text-white border-white/40 shadow-lg'
                  : 'bg-white/5 text-slate-400 border-white/10 hover:bg-white/10'
              }`}
            >
              {th.replace('_', ' ')}
            </button>
          ))}
        </div>
      </div>

      {/* Main Lounge Stage */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 my-auto py-2 relative z-10">
        
        {/* Sol Odak Kartı (6 Cols): Biyolojik Ritme Uyumlu Kabin Ambiyans & Koltuk Masaj/Isıtma Paneli */}
        <div className="lg:col-span-6 bg-white/5 backdrop-blur-2xl border border-white/10 rounded-3xl p-6 flex flex-col justify-between shadow-2xl space-y-4">
          
          <div className="flex items-center justify-between">
            <span className="text-xs font-orbitron font-bold text-purple-300 tracking-wider flex items-center gap-2 uppercase">
              <Palette className="w-4 h-4 text-purple-400" /> CIRCADIAN LIGHTING & SEATING
            </span>
            <span className="text-xs px-3 py-1 rounded-full bg-purple-500/20 text-purple-300 font-mono border border-purple-500/30">
              {ambientLight.brightnessPercent}% BRIGHTNESS
            </span>
          </div>

          {/* Color Wheel Bar */}
          <div className="space-y-2">
            <div className="text-xs font-bold text-slate-300">Bio-Rhythm Ambient Tone</div>
            <div className="flex items-center gap-3">
              {['#a855f7', '#06b6d4', '#ec4899', '#f59e0b', '#10b981', '#3b82f6'].map(hex => (
                <button
                  key={hex}
                  onClick={() => onUpdateAmbientLight(p => ({ ...p, colorHex: hex, enabled: true }))}
                  className={`w-10 h-10 rounded-full border-2 transition-transform cursor-pointer shadow-xl ${
                    ambientLight.colorHex === hex ? 'scale-125 border-white ring-4 ring-purple-500/40' : 'border-transparent hover:scale-110'
                  }`}
                  style={{ backgroundColor: hex }}
                />
              ))}
            </div>
          </div>

          {/* Seat Massage & Climate Panel */}
          <div className="pt-3 border-t border-white/10 space-y-3">
            <div className="text-xs font-bold text-slate-300 flex items-center justify-between">
              <span className="flex items-center gap-2"><Coffee className="w-4 h-4 text-amber-400" /> EXECUTIVE SEAT MASSAGE</span>
              <span className="text-purple-300 font-mono">{massageMode}</span>
            </div>

            <div className="grid grid-cols-4 gap-2">
              {(['OFF', 'RELAX', 'WAVE', 'LUMBAR'] as const).map(m => (
                <button
                  key={m}
                  onClick={() => setMassageMode(m)}
                  className={`py-2.5 rounded-2xl text-xs font-bold transition-all cursor-pointer border ${
                    massageMode === m
                      ? 'bg-purple-600 text-white border-purple-400 shadow-lg'
                      : 'bg-white/5 text-slate-400 border-white/10 hover:bg-white/10'
                  }`}
                >
                  {m}
                </button>
              ))}
            </div>

            <div className="grid grid-cols-2 gap-3 pt-2">
              {/* Driver Seat Heat */}
              <button
                onClick={() => onUpdateClimate(p => ({ ...p, driverSeatHeat: (p.driverSeatHeat + 1) % 4 }))}
                className="p-3 rounded-2xl bg-white/5 border border-white/10 hover:bg-white/10 text-left flex items-center justify-between cursor-pointer"
              >
                <div>
                  <div className="text-xs font-bold text-slate-200">Seat Heating</div>
                  <div className="text-[10px] text-amber-400 font-mono">Level {climate.driverSeatHeat} / 3</div>
                </div>
                <Flame className={`w-5 h-5 ${climate.driverSeatHeat > 0 ? 'text-amber-400 animate-pulse' : 'text-slate-600'}`} />
              </button>

              {/* Seat Ventilation */}
              <button
                onClick={() => onUpdateClimate(p => ({ ...p, driverSeatVent: (p.driverSeatVent + 1) % 4 }))}
                className="p-3 rounded-2xl bg-white/5 border border-white/10 hover:bg-white/10 text-left flex items-center justify-between cursor-pointer"
              >
                <div>
                  <div className="text-xs font-bold text-slate-200">Seat Ventilation</div>
                  <div className="text-[10px] text-cyan-400 font-mono">Level {climate.driverSeatVent} / 3</div>
                </div>
                <Wind className={`w-5 h-5 ${climate.driverSeatVent > 0 ? 'text-cyan-400 animate-spin' : 'text-slate-600'}`} />
              </button>
            </div>
          </div>

        </div>

        {/* Sağ Müzik Alanı (6 Cols): Synced Lyrics Aktığı Şık Devasa Tipografi Alanı */}
        <div className="lg:col-span-6 bg-white/5 backdrop-blur-2xl border border-white/10 rounded-3xl p-6 flex flex-col justify-between shadow-2xl space-y-4">
          
          <div className="flex items-center justify-between border-b border-white/10 pb-3">
            <span className="text-xs font-orbitron font-bold text-rose-300 tracking-wider flex items-center gap-2 uppercase">
              <Music className="w-4 h-4 text-rose-400" /> SYNCED LYRICS & LOUNGE AUDIO
            </span>
            <span className="text-xs text-slate-400 font-mono">{media.currentTrack.title}</span>
          </div>

          {/* Synced Lyrics Typography Display */}
          <div className="my-auto py-4 space-y-4 text-center">
            {lyricsList.map((line, idx) => (
              <p
                key={idx}
                className={`transition-all duration-500 ${
                  idx === 1
                    ? 'text-xl sm:text-2xl font-extrabold text-white scale-105 drop-shadow-[0_0_20px_rgba(255,255,255,0.4)]'
                    : 'text-sm font-medium text-slate-400/60'
                }`}
              >
                {line.text}
              </p>
            ))}
          </div>

          {/* Bottom Track Meta */}
          <div className="pt-3 border-t border-white/10 flex items-center justify-between text-xs text-slate-300">
            <div>
              <span className="font-bold text-white">{media.currentTrack.artist}</span>
              <span className="text-slate-400 ml-2">• {media.currentTrack.album}</span>
            </div>

            <button 
              onClick={() => onSelectScreen('AMBIENT_LIGHT')}
              className="flex items-center gap-1 text-purple-300 font-bold hover:underline cursor-pointer"
            >
              Full Ambient Setup <ChevronRight className="w-4 h-4" />
            </button>
          </div>

        </div>

      </div>

    </div>
  );
};
