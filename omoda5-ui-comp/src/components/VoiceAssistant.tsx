import React, { useState } from 'react';
import { Mic, X, Sparkles, Check, Car, Fan, Sun, Music, Palette } from 'lucide-react';
import { VehicleState, ClimateState, ActiveScreen, AmbientLightState } from '../types';

interface VoiceAssistantProps {
  isOpen: boolean;
  onClose: () => void;
  onUpdateVehicle: (updater: (prev: VehicleState) => VehicleState) => void;
  onUpdateClimate: (updater: (prev: ClimateState) => ClimateState) => void;
  onUpdateAmbientLight: (updater: (prev: AmbientLightState) => AmbientLightState) => void;
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const VoiceAssistant: React.FC<VoiceAssistantProps> = ({
  isOpen,
  onClose,
  onUpdateVehicle,
  onUpdateClimate,
  onUpdateAmbientLight,
  onSelectScreen
}) => {
  const [lastCommandText, setLastCommandText] = useState<string>('');
  const [responseMessage, setResponseMessage] = useState<string>('Listening... Say a command or tap below.');

  if (!isOpen) return null;

  const handleCommand = (cmd: string) => {
    setLastCommandText(cmd);
    
    if (cmd.includes('sunroof')) {
      onUpdateVehicle(p => ({ ...p, windows: { ...p.windows, sunroof: 100 } }));
      setResponseMessage('Opening panoramic sunroof now.');
    } else if (cmd.includes('21°C') || cmd.includes('cool')) {
      onUpdateClimate(p => ({ ...p, driverTemp: 21.0, passengerTemp: 21.0, powerOn: true }));
      setResponseMessage('Set dual climate temperature to 21°C.');
    } else if (cmd.includes('Sport')) {
      onUpdateVehicle(p => ({ ...p, driveMode: 'SPORT' }));
      setResponseMessage('Switched drive mode to SPORT. Turbo response engaged.');
    } else if (cmd.includes('ambient') || cmd.includes('lighting')) {
      onUpdateAmbientLight(p => ({ ...p, enabled: true, colorHex: '#a855f7' }));
      setResponseMessage('Enabled Electric Purple ambient lighting.');
    } else if (cmd.includes('music') || cmd.includes('play')) {
      onSelectScreen('MEDIA');
      setResponseMessage('Opening Sony 3D Music Player.');
    } else {
      setResponseMessage(`Executing command: "${cmd}"`);
    }

    setTimeout(() => {
      onClose();
    }, 1800);
  };

  return (
    <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-xl flex items-center justify-center p-4 animate-fade-in select-none">
      <div className="w-full max-w-lg car-panel-glow rounded-3xl p-6 border border-cyan-500/40 shadow-2xl relative flex flex-col items-center text-center">
        
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 text-slate-400 hover:text-slate-100 rounded-full hover:bg-slate-800 transition-colors cursor-pointer"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Animated Chery AI Orb */}
        <div className="relative my-6">
          <div className="w-24 h-24 rounded-full bg-gradient-to-tr from-cyan-500 via-blue-600 to-purple-600 flex items-center justify-center shadow-2xl shadow-cyan-500/50 animate-pulse-ring">
            <Mic className="w-10 h-10 text-white animate-bounce" />
          </div>
          <Sparkles className="w-5 h-5 text-cyan-300 absolute -top-1 -right-1 animate-spin" />
        </div>

        <h2 className="text-xl font-bold font-orbitron text-slate-100 tracking-wider">
          CHERY AI VOICE ASSISTANT
        </h2>
        
        <p className="text-sm font-medium text-cyan-300 mt-2 bg-slate-900/90 px-4 py-2 rounded-2xl border border-slate-800 w-full">
          {responseMessage}
        </p>

        {/* Quick Voice Command Buttons */}
        <div className="w-full my-6 space-y-2">
          <div className="text-[10px] font-orbitron font-bold text-slate-400 uppercase tracking-widest mb-2">
            TRY SAYING:
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-2 text-left">
            <button
              onClick={() => handleCommand('Open panoramic sunroof')}
              className="p-3 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-800 hover:border-cyan-500/50 text-xs font-semibold text-slate-200 flex items-center gap-2 transition-all cursor-pointer"
            >
              <Sun className="w-4 h-4 text-amber-400" /> "Open panoramic sunroof"
            </button>

            <button
              onClick={() => handleCommand('Set AC temperature to 21°C')}
              className="p-3 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-800 hover:border-cyan-500/50 text-xs font-semibold text-slate-200 flex items-center gap-2 transition-all cursor-pointer"
            >
              <Fan className="w-4 h-4 text-cyan-400" /> "Set AC to 21°C"
            </button>

            <button
              onClick={() => handleCommand('Switch drive mode to Sport')}
              className="p-3 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-800 hover:border-cyan-500/50 text-xs font-semibold text-slate-200 flex items-center gap-2 transition-all cursor-pointer"
            >
              <Car className="w-4 h-4 text-rose-400" /> "Switch to Sport mode"
            </button>

            <button
              onClick={() => handleCommand('Turn on purple ambient lighting')}
              className="p-3 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-800 hover:border-cyan-500/50 text-xs font-semibold text-slate-200 flex items-center gap-2 transition-all cursor-pointer"
            >
              <Palette className="w-4 h-4 text-purple-400" /> "Turn on ambient lighting"
            </button>
          </div>
        </div>

      </div>
    </div>
  );
};
