import React, { useState, useEffect } from 'react';
import { 
  Wifi, 
  Bluetooth, 
  Bell, 
  Mic, 
  ShieldCheck, 
  User, 
  Sparkles,
  Sun,
  Navigation,
  Car,
  MapPin,
  CloudSun,
  Download
} from 'lucide-react';
import { VehicleState, NotificationItem, WeatherData } from '../types';
import { renderWeatherIcon } from './WeatherModal';

interface TopStatusBarProps {
  vehicle: VehicleState;
  weather?: WeatherData;
  tempUnit?: 'C' | 'F';
  onOpenVoiceAssistant: () => void;
  onOpenNotifications: () => void;
  onOpenWeatherModal?: () => void;
  onSelectScreen: (screen: any) => void;
  activeScreen: string;
  unreadCount: number;
}

export const TopStatusBar: React.FC<TopStatusBarProps> = ({
  vehicle,
  weather,
  tempUnit = 'C',
  onOpenVoiceAssistant,
  onOpenNotifications,
  onOpenWeatherModal,
  onSelectScreen,
  activeScreen,
  unreadCount
}) => {
  const [timeStr, setTimeStr] = useState<string>('');
  const [dateStr, setDateStr] = useState<string>('');

  useEffect(() => {
    const updateTime = () => {
      const now = new Date();
      setTimeStr(now.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit', hour12: false }));
      setDateStr(now.toLocaleDateString('en-US', { weekday: 'short', month: 'short', day: 'numeric' }));
    };
    updateTime();
    const interval = setInterval(updateTime, 1000);
    return () => clearInterval(interval);
  }, []);

  const getDisplayTemp = () => {
    if (!weather) return `${vehicle.outsideTempC}°C`;
    const tempC = weather.temperatureC;
    if (tempUnit === 'F') {
      return `${Math.round((tempC * 9) / 5 + 32)}°F`;
    }
    return `${tempC}°C`;
  };

  const getDriveModeBadge = () => {
    switch (vehicle.driveMode) {
      case 'SPORT':
        return { bg: 'bg-red-500/20 text-red-400 border-red-500/40', label: 'SPORT' };
      case 'RACE':
        return { bg: 'bg-purple-500/20 text-purple-400 border-purple-500/40', label: 'RACE' };
      case 'ECO':
        return { bg: 'bg-emerald-500/20 text-emerald-400 border-emerald-500/40', label: 'ECO' };
      default:
        return { bg: 'bg-cyan-500/20 text-cyan-400 border-cyan-500/40', label: 'NORMAL' };
    }
  };

  const modeBadge = getDriveModeBadge();

  return (
    <header className="h-12 w-full bg-slate-950/80 backdrop-blur-md border-b border-slate-800/80 px-4 flex items-center justify-between z-30 select-none">
      {/* Left section: Omoda 5 Branding & Drive Mode */}
      <div className="flex items-center gap-3">
        <button 
          onClick={() => onSelectScreen('LAUNCHER')}
          className="flex items-center gap-2 group cursor-pointer"
        >
          <div className="w-7 h-7 rounded-lg bg-gradient-to-br from-cyan-500 to-blue-600 flex items-center justify-center font-orbitron font-extrabold text-xs text-white shadow-lg shadow-cyan-500/20 group-hover:scale-105 transition-transform">
            O5
          </div>
          <span className="font-orbitron font-bold tracking-widest text-slate-100 text-sm hidden sm:inline-block">
            OMODA <span className="text-cyan-400 font-normal">5</span>
          </span>
        </button>

        <div className="h-4 w-[1px] bg-slate-800 hidden sm:block" />

        {/* Display screen toggle button */}
        <div className="flex items-center gap-1 bg-slate-900/90 rounded-full p-1 border border-slate-800">
          <button
            onClick={() => onSelectScreen('LAUNCHER')}
            className={`px-2.5 py-0.5 rounded-full text-xs font-medium transition-all ${
              activeScreen === 'LAUNCHER' 
                ? 'bg-cyan-500/20 text-cyan-300 border border-cyan-500/40' 
                : 'text-slate-400 hover:text-slate-200'
            }`}
          >
            Home Omoda 5
          </button>
          
          <select
            value={activeScreen.startsWith('CONCEPT_') ? activeScreen : ''}
            onChange={(e) => {
              if (e.target.value) onSelectScreen(e.target.value);
            }}
            className="bg-slate-950 text-cyan-300 text-[11px] font-bold rounded-full px-2 py-0.5 border border-cyan-500/30 outline-none cursor-pointer hover:bg-slate-900"
          >
            <option value="" disabled>✨ AAOS Concepts ▾</option>
            <option value="CONCEPT_ANDROID_AUTO">1. Android Auto Concept</option>
            <option value="CONCEPT_CARPLAY_SPLIT">2. CarPlay Split-Screen</option>
            <option value="CONCEPT_CYBER_HUD">3. Cyber-HUD Telemetry</option>
            <option value="CONCEPT_AMBIENT_LOUNGE">4. Ambient Executive Lounge</option>
            <option value="CONCEPT_BENTO_CANVAS">5. Bento Spatial Grid</option>
          </select>
        </div>

        {/* Drive mode badge */}
        <button 
          onClick={() => onSelectScreen('VEHICLE_CONTROL')}
          className={`px-2.5 py-0.5 rounded-md text-[11px] font-orbitron font-bold border transition-all hover:brightness-125 ${modeBadge.bg}`}
        >
          {modeBadge.label}
        </button>
      </div>

      {/* Middle section: Voice Assistant Trigger & Weather */}
      <div className="flex items-center gap-4">
        <button
          onClick={onOpenVoiceAssistant}
          className="flex items-center gap-2 px-3 py-1 rounded-full bg-slate-900/80 hover:bg-slate-800/90 border border-cyan-500/30 text-cyan-400 text-xs font-medium transition-all hover:border-cyan-400 group shadow-sm shadow-cyan-500/10 cursor-pointer"
        >
          <div className="relative">
            <Mic className="w-3.5 h-3.5 text-cyan-400 group-hover:scale-110 transition-transform" />
            <span className="absolute -top-0.5 -right-0.5 w-1.5 h-1.5 rounded-full bg-cyan-400 animate-ping" />
          </div>
          <span>"Hey Chery..."</span>
          <Sparkles className="w-3 h-3 text-cyan-400/70" />
        </button>

        {/* Interactive Real-Time Weather Widget Badge */}
        <button
          onClick={onOpenWeatherModal}
          className="hidden md:flex items-center gap-2 text-xs text-slate-200 font-medium bg-slate-900/80 hover:bg-slate-800/90 px-3 py-1 rounded-full border border-cyan-500/30 hover:border-cyan-400 transition-all cursor-pointer shadow-sm group"
          title="Click to view detailed local weather cockpit"
        >
          {weather ? (
            renderWeatherIcon(weather.weatherCode, weather.isDay, 'w-4 h-4')
          ) : (
            <Sun className="w-4 h-4 text-amber-400" />
          )}
          <span className="font-bold text-slate-100 font-orbitron">{getDisplayTemp()}</span>
          <span className="text-slate-500">•</span>
          <span className="text-slate-300">{weather ? weather.conditionLabel : 'Fair'}</span>
          {weather && (
            <span className="text-[10px] text-cyan-400 font-mono bg-cyan-500/10 px-1.5 py-0.5 rounded-full border border-cyan-500/20 max-w-[100px] truncate">
              {weather.locationName}
            </span>
          )}
        </button>
      </div>

      {/* Right section: System Status Icons, Time & Profile */}
      <div className="flex items-center gap-2 sm:gap-3">
        {/* Jetpack Compose / Kotlin Code Inspector Button */}
        <button
          onClick={() => onSelectScreen('JETPACK_COMPOSE_VIEW')}
          className="hidden md:flex items-center gap-1.5 px-2.5 py-1 rounded-full bg-cyan-500/20 hover:bg-cyan-500/30 text-cyan-300 border border-cyan-500/40 text-xs font-semibold transition-all hover:scale-105 shadow-sm shadow-cyan-500/10 cursor-pointer"
          title="Jetpack Compose / Kotlin Kodlarını İncele"
        >
          <span className="w-2 h-2 rounded-full bg-cyan-400 animate-pulse" />
          <span>Kotlin / Compose</span>
        </button>

        {/* Direct Project ZIP Download Button */}
        <a
          href="/api/download-project"
          download="omoda5_launcher_project.zip"
          className="hidden sm:flex items-center gap-1.5 px-2.5 py-1 rounded-full bg-emerald-500/20 hover:bg-emerald-500/30 text-emerald-300 border border-emerald-500/40 text-xs font-semibold transition-all hover:scale-105 shadow-sm shadow-emerald-500/10 cursor-pointer"
          title="Tüm Proje Dosyalarını (Kotlin/Compose + React) ZIP İndir"
        >
          <Download className="w-3.5 h-3.5 text-emerald-400" />
          <span>ZIP İndir</span>
        </a>

        {/* Status icons */}
        <div className="flex items-center gap-2 text-slate-400">
          <span title="ADAS Active"><ShieldCheck className="w-4 h-4 text-emerald-400" /></span>
          <span title="5G Connected"><Wifi className="w-3.5 h-3.5 text-slate-300" /></span>
          <span title="Phone Connected"><Bluetooth className="w-3.5 h-3.5 text-blue-400" /></span>
        </div>

        {/* Notifications button */}
        <button 
          onClick={onOpenNotifications}
          className="relative p-1.5 text-slate-400 hover:text-slate-200 hover:bg-slate-800/60 rounded-full transition-colors cursor-pointer"
        >
          <Bell className="w-4 h-4" />
          {unreadCount > 0 && (
            <span className="absolute top-0.5 right-0.5 w-2 h-2 rounded-full bg-cyan-400 ring-2 ring-slate-950" />
          )}
        </button>

        <div className="h-4 w-[1px] bg-slate-800" />

        {/* Time display */}
        <div className="text-right">
          <div className="font-orbitron font-semibold text-slate-100 text-sm leading-none tracking-wider">
            {timeStr}
          </div>
          <div className="text-[10px] text-slate-400 leading-tight">
            {dateStr}
          </div>
        </div>

        {/* User Profile */}
        <div className="flex items-center gap-1.5 pl-1">
          <div className="w-7 h-7 rounded-full bg-slate-800 border border-slate-700 flex items-center justify-center text-slate-300 text-xs font-semibold">
            C
          </div>
        </div>
      </div>
    </header>
  );
};
