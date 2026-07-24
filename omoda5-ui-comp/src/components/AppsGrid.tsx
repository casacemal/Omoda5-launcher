import React from 'react';
import { 
  Navigation, 
  Fan, 
  Car, 
  Music, 
  Camera, 
  Palette, 
  Smartphone, 
  Phone, 
  Disc, 
  Settings, 
  Sun, 
  BookOpen, 
  Grid,
  ShieldCheck,
  Zap
} from 'lucide-react';
import { ActiveScreen } from '../types';

interface AppsGridProps {
  onSelectScreen: (screen: ActiveScreen) => void;
}

export const AppsGrid: React.FC<AppsGridProps> = ({ onSelectScreen }) => {
  const appList = [
    { id: 'LAUNCHER', label: 'Main Launcher', icon: <Grid className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-cyan-500 to-blue-600' },
    { id: 'CONCEPT_ANDROID_AUTO', label: 'Android Auto Concept', icon: <Smartphone className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-blue-600 to-emerald-600' },
    { id: 'CONCEPT_CARPLAY_SPLIT', label: 'CarPlay Split-Screen', icon: <Smartphone className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-indigo-600 to-purple-600' },
    { id: 'CONCEPT_CYBER_HUD', label: 'Cyber-HUD Telemetry', icon: <Zap className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-amber-500 to-orange-600' },
    { id: 'CONCEPT_AMBIENT_LOUNGE', label: 'Ambient Lounge', icon: <Sun className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-fuchsia-600 to-pink-600' },
    { id: 'CONCEPT_BENTO_CANVAS', label: 'Bento Grid Canvas', icon: <Grid className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-teal-600 to-cyan-600' },
    { id: 'NAVIGATION', label: 'GPS Navigation', icon: <Navigation className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-blue-600 to-indigo-700' },
    { id: 'CLIMATE', label: 'Dual Climate AC', icon: <Fan className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-cyan-600 to-teal-700' },
    { id: 'VEHICLE_CONTROL', label: 'Vehicle Controls', icon: <Car className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-slate-700 to-slate-900' },
    { id: 'MEDIA', label: 'Sony 3D Sound', icon: <Music className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-purple-600 to-pink-600' },
    { id: 'CAMERA_360', label: '360° Camera', icon: <Camera className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-emerald-600 to-teal-800' },
    { id: 'AMBIENT_LIGHT', label: '64-Color Ambient', icon: <Palette className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-fuchsia-600 to-purple-800' },
    { id: 'INSTRUMENT_CLUSTER', label: 'Driver Gauge', icon: <Zap className="w-7 h-7 text-white" />, bg: 'bg-gradient-to-br from-amber-500 to-red-600' },
  ];

  return (
    <div className="w-full h-full bg-slate-950 p-6 overflow-y-auto no-scrollbar flex flex-col justify-between select-none">
      
      {/* Header */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-6">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Grid className="w-6 h-6 text-cyan-400" />
            OMODA 5 APPLICATIONS DRAWER
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">All Installed Infotainment & Vehicle Applications</p>
        </div>
      </div>

      {/* Grid */}
      <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 max-w-4xl mx-auto my-auto py-4">
        {appList.map(app => (
          <button
            key={app.id}
            onClick={() => onSelectScreen(app.id as ActiveScreen)}
            className="flex flex-col items-center gap-2.5 p-4 rounded-3xl car-panel hover:border-cyan-500/50 group transition-all cursor-pointer"
          >
            <div className={`w-16 h-16 rounded-2xl ${app.bg} flex items-center justify-center shadow-2xl group-hover:scale-110 transition-transform`}>
              {app.icon}
            </div>
            <span className="text-xs font-bold text-slate-200 group-hover:text-cyan-300 transition-colors text-center">
              {app.label}
            </span>
          </button>
        ))}
      </div>

    </div>
  );
};
