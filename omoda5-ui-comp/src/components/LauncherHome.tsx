import React from 'react';
import { 
  Car, 
  Fan, 
  Navigation, 
  Music, 
  Palette, 
  Camera, 
  Smartphone, 
  Gauge, 
  Play, 
  Pause, 
  SkipForward, 
  Sun, 
  Zap, 
  ShieldCheck, 
  ChevronRight,
  Sparkles,
  Wind,
  Layers,
  SlidersHorizontal,
  MapPin,
  Droplets,
  Thermometer,
  CloudSun,
  Navigation2
} from 'lucide-react';
import { 
  VehicleState, 
  ClimateState, 
  MediaState, 
  NavigationRoute, 
  ActiveScreen, 
  AmbientLightState,
  WeatherData
} from '../types';
import { renderWeatherIcon } from './WeatherModal';

interface LauncherHomeProps {
  vehicle: VehicleState;
  climate: ClimateState;
  media: MediaState;
  navigation: NavigationRoute;
  ambientLight: AmbientLightState;
  weather?: WeatherData;
  tempUnit?: 'C' | 'F';
  onOpenWeatherModal?: () => void;
  onSelectScreen: (screen: ActiveScreen) => void;
  onUpdateVehicle: (updater: (prev: VehicleState) => VehicleState) => void;
  onUpdateClimate: (updater: (prev: ClimateState) => ClimateState) => void;
  onUpdateMedia: (updater: (prev: MediaState) => MediaState) => void;
}

export const LauncherHome: React.FC<LauncherHomeProps> = ({
  vehicle,
  climate,
  media,
  navigation,
  ambientLight,
  weather,
  tempUnit = 'C',
  onOpenWeatherModal,
  onSelectScreen,
  onUpdateVehicle,
  onUpdateClimate,
  onUpdateMedia
}) => {
  const getDisplayTemp = (tempC: number) => {
    if (tempUnit === 'F') {
      return `${Math.round((tempC * 9) / 5 + 32)}°F`;
    }
    return `${tempC}°C`;
  };
  return (
    <div className="w-full h-full bg-slate-950 p-3 sm:p-5 overflow-y-auto no-scrollbar grid grid-cols-1 md:grid-cols-12 gap-3 sm:gap-4 select-none">
      
      {/* 1. Main Omoda 5 Vehicle Showcase Card */}
      <div className="md:col-span-7 lg:col-span-8 car-panel-glow rounded-2xl p-4 sm:p-5 flex flex-col justify-between relative overflow-hidden group">
        {/* Top Header */}
        <div className="flex items-center justify-between z-10">
          <div>
            <div className="flex items-center gap-2">
              <span className="font-orbitron font-extrabold text-lg text-slate-100 tracking-wider">OMODA 5</span>
              <span className="px-2 py-0.5 rounded-full text-[10px] font-orbitron font-bold bg-cyan-500/20 text-cyan-300 border border-cyan-500/30">
                1.6 TGDI TURBO
              </span>
            </div>
            <p className="text-xs text-slate-400 mt-0.5">Dual 10.25" Cockpit System Active</p>
          </div>

          <button
            onClick={() => onSelectScreen('VEHICLE_CONTROL')}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-slate-900/90 hover:bg-slate-800 border border-slate-700/80 text-xs font-semibold text-cyan-300 transition-all hover:border-cyan-500/50 cursor-pointer"
          >
            <Car className="w-4 h-4 text-cyan-400" />
            Vehicle Controls
            <ChevronRight className="w-3.5 h-3.5" />
          </button>
        </div>

        {/* Center Vehicle Vector Graphics & Status Hotspots */}
        <div className="my-6 relative flex flex-col items-center justify-center min-h-[160px]">
          {/* Futuristic Glowing Vehicle Graphic Representation */}
          <div className="relative w-full max-w-md h-36 flex items-center justify-center">
            {/* Ambient Lighting Glow Behind Car */}
            <div 
              className="absolute inset-0 rounded-full blur-2xl opacity-40 transition-colors duration-500"
              style={{ backgroundColor: ambientLight.enabled ? ambientLight.colorHex : '#06b6d4' }}
            />

            {/* Car Visual Frame */}
            <div className="relative z-10 w-full h-28 bg-gradient-to-r from-slate-900 via-slate-800 to-slate-900 rounded-2xl border border-cyan-500/30 flex items-center justify-between px-6 shadow-2xl">
              <div className="flex flex-col">
                <span className="text-[10px] font-orbitron text-slate-400">STATUS</span>
                <span className="text-sm font-bold text-emerald-400 flex items-center gap-1">
                  <ShieldCheck className="w-4 h-4" /> Ready to Drive
                </span>
              </div>

              {/* Central Car Badge */}
              <div className="flex flex-col items-center">
                <div className="w-24 h-12 rounded-xl bg-slate-950 border border-cyan-500/40 flex items-center justify-center shadow-lg shadow-cyan-500/20">
                  <span className="font-orbitron font-black text-xs text-cyan-300 tracking-widest">OMODA</span>
                </div>
                <div className="text-[10px] text-slate-400 font-mono mt-1">TPMS 33 PSI • OK</div>
              </div>

              <div className="flex flex-col text-right">
                <span className="text-[10px] font-orbitron text-slate-400">RANGE</span>
                <span className="text-sm font-bold text-slate-100 font-orbitron">{vehicle.rangeKm} KM</span>
              </div>
            </div>
          </div>
        </div>

        {/* Bottom Quick Controls Strip */}
        <div className="grid grid-cols-2 sm:grid-cols-4 gap-2 z-10">
          <button
            onClick={() => onUpdateVehicle(p => ({
              ...p,
              windows: { ...p.windows, sunroof: p.windows.sunroof > 0 ? 0 : 100 }
            }))}
            className="p-2.5 rounded-xl bg-slate-900/90 border border-slate-800 hover:border-slate-700 flex items-center justify-between text-left transition-all cursor-pointer"
          >
            <div>
              <div className="text-[10px] text-slate-400">Sunroof</div>
              <div className="text-xs font-bold text-slate-200">
                {vehicle.windows.sunroof > 0 ? `${vehicle.windows.sunroof}% Open` : 'Closed'}
              </div>
            </div>
            <div className={`w-2 h-2 rounded-full ${vehicle.windows.sunroof > 0 ? 'bg-cyan-400 shadow-sm shadow-cyan-400' : 'bg-slate-700'}`} />
          </button>

          <button
            onClick={() => onSelectScreen('CAMERA_360')}
            className="p-2.5 rounded-xl bg-slate-900/90 border border-slate-800 hover:border-slate-700 flex items-center justify-between text-left transition-all cursor-pointer"
          >
            <div>
              <div className="text-[10px] text-slate-400">360° Camera</div>
              <div className="text-xs font-bold text-cyan-400 flex items-center gap-1">
                <Camera className="w-3 h-3" /> Live View
              </div>
            </div>
            <ChevronRight className="w-4 h-4 text-slate-500" />
          </button>

          <button
            onClick={() => onSelectScreen('AMBIENT_LIGHT')}
            className="p-2.5 rounded-xl bg-slate-900/90 border border-slate-800 hover:border-slate-700 flex items-center justify-between text-left transition-all cursor-pointer"
          >
            <div>
              <div className="text-[10px] text-slate-400">64-Color Light</div>
              <div className="text-xs font-bold text-slate-200 flex items-center gap-1">
                <span className="w-2.5 h-2.5 rounded-full inline-block" style={{ backgroundColor: ambientLight.colorHex }} />
                {ambientLight.enabled ? `${ambientLight.brightnessPercent}%` : 'OFF'}
              </div>
            </div>
            <ChevronRight className="w-4 h-4 text-slate-500" />
          </button>

          <button
            onClick={() => onSelectScreen('VEHICLE_CONTROL')}
            className="p-2.5 rounded-xl bg-slate-900/90 border border-slate-800 hover:border-slate-700 flex items-center justify-between text-left transition-all cursor-pointer"
          >
            <div>
              <div className="text-[10px] text-slate-400">Drive Mode</div>
              <div className="text-xs font-bold text-amber-400 font-orbitron">
                {vehicle.driveMode}
              </div>
            </div>
            <SlidersHorizontal className="w-4 h-4 text-slate-500" />
          </button>
        </div>
      </div>

      {/* 2. Real-Time Geolocation Weather Widget Card */}
      <div 
        onClick={onOpenWeatherModal}
        className="md:col-span-5 lg:col-span-4 car-panel rounded-2xl p-4 flex flex-col justify-between border border-slate-800 hover:border-cyan-500/40 transition-all cursor-pointer group relative overflow-hidden"
      >
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-xl bg-cyan-500/20 text-cyan-400 border border-cyan-500/30 flex items-center justify-center">
              {weather ? renderWeatherIcon(weather.weatherCode, weather.isDay, 'w-4 h-4') : <Sun className="w-4 h-4 text-amber-400" />}
            </div>
            <div>
              <div className="text-xs font-bold text-slate-200">Local Real-Time Weather</div>
              <div className="text-[10px] text-slate-400 flex items-center gap-1">
                <MapPin className="w-2.5 h-2.5 text-cyan-400" />
                <span className="truncate max-w-[130px]">{weather ? weather.locationName : 'Locating...'}</span>
              </div>
            </div>
          </div>
          <span className={`text-[10px] font-mono font-bold px-2 py-0.5 rounded-md border ${
            weather?.isLiveLocation 
              ? 'bg-emerald-500/10 text-emerald-400 border-emerald-500/20' 
              : 'bg-cyan-500/10 text-cyan-400 border-cyan-500/20'
          }`}>
            {weather?.isLiveLocation ? 'GPS LIVE' : 'AUTO'}
          </span>
        </div>

        {/* Central Weather Summary */}
        <div className="my-3 bg-slate-900/90 rounded-xl p-3 border border-slate-800 flex items-center justify-between">
          <div>
            <div className="text-3xl font-black font-orbitron text-slate-100">
              {weather ? getDisplayTemp(weather.temperatureC) : `${vehicle.outsideTempC}°C`}
            </div>
            <div className="text-xs text-slate-200 font-medium mt-0.5">
              {weather ? weather.conditionLabel : 'Fair'}
            </div>
            <div className="text-[10px] text-slate-400 mt-0.5">
              Feels like {weather ? getDisplayTemp(weather.apparentTempC) : `${vehicle.outsideTempC}°C`}
            </div>
          </div>

          <div className="flex flex-col items-end gap-1.5 text-[11px] text-slate-400 font-mono">
            <span className="flex items-center gap-1 bg-slate-950/80 px-2 py-0.5 rounded-md border border-slate-800">
              <Wind className="w-3 h-3 text-cyan-400" /> {weather ? `${weather.windSpeedKmh} km/h` : '12 km/h'}
            </span>
            <span className="flex items-center gap-1 bg-slate-950/80 px-2 py-0.5 rounded-md border border-slate-800">
              <Droplets className="w-3 h-3 text-blue-400" /> {weather ? `${weather.humidityPercent}%` : '50%'}
            </span>
          </div>
        </div>

        <div className="flex items-center justify-between text-xs font-semibold text-cyan-400 group-hover:translate-x-1 transition-transform">
          <span>Open Full Weather Radar</span>
          <ChevronRight className="w-4 h-4" />
        </div>
      </div>

      {/* 3. Navigation Mini-Map Widget */}
      <div 
        onClick={() => onSelectScreen('NAVIGATION')}
        className="md:col-span-4 lg:col-span-4 car-panel rounded-2xl p-4 flex flex-col justify-between border border-slate-800 hover:border-cyan-500/40 transition-all cursor-pointer group relative overflow-hidden"
      >
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-xl bg-cyan-500/20 text-cyan-400 border border-cyan-500/30 flex items-center justify-center">
              <Navigation className="w-4 h-4" />
            </div>
            <div>
              <div className="text-xs font-bold text-slate-200">GPS Navigation</div>
              <div className="text-[10px] text-slate-400">Live Traffic & Turn Guidance</div>
            </div>
          </div>
          <span className="text-[10px] font-mono font-bold text-cyan-400 bg-cyan-500/10 px-2 py-0.5 rounded-md border border-cyan-500/20">
            {navigation.etaMinutes} MIN ETA
          </span>
        </div>

        {/* Mini Route Preview Card */}
        <div className="my-3 bg-slate-900/90 rounded-xl p-3 border border-slate-800">
          <div className="text-xs font-semibold text-slate-100 truncate">{navigation.destination}</div>
          <div className="text-[11px] text-slate-400 mt-1 flex items-center gap-1">
            <span className="w-2 h-2 rounded-full bg-cyan-400" />
            <span>{navigation.nextInstruction}</span>
          </div>
          <div className="mt-2 flex items-center justify-between text-[11px] text-slate-400 font-mono">
            <span>Distance: {navigation.distanceKm} km</span>
            <span className="text-emerald-400 font-bold">Clear Route</span>
          </div>
        </div>

        <div className="flex items-center justify-between text-xs font-semibold text-cyan-400 group-hover:translate-x-1 transition-transform">
          <span>Open Full Navigation</span>
          <ChevronRight className="w-4 h-4" />
        </div>
      </div>

      {/* 4. Sony 3D Sound Media Widget */}
      <div className="md:col-span-4 lg:col-span-4 car-panel rounded-2xl p-4 flex flex-col justify-between border border-slate-800">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2.5">
            <img 
              src={media.currentTrack.coverUrl} 
              alt={media.currentTrack.title}
              className="w-12 h-12 rounded-xl object-cover border border-slate-700 shadow-md"
            />
            <div>
              <div className="text-xs text-cyan-400 font-orbitron font-semibold uppercase tracking-wider">
                SONY 3D • {media.source}
              </div>
              <div className="text-sm font-bold text-slate-100 truncate max-w-[130px]">
                {media.currentTrack.title}
              </div>
              <div className="text-xs text-slate-400 truncate max-w-[130px]">
                {media.currentTrack.artist}
              </div>
            </div>
          </div>

          <button
            onClick={() => onSelectScreen('MEDIA')}
            className="p-2 rounded-xl bg-slate-900 hover:bg-slate-800 text-slate-300 border border-slate-800 cursor-pointer"
          >
            <Music className="w-4 h-4" />
          </button>
        </div>

        {/* Animated Waveform Visualizer */}
        <div className="my-3 flex items-center justify-center gap-1 h-8 px-2 bg-slate-900/60 rounded-xl border border-slate-800">
          {Array.from({ length: 24 }).map((_, i) => (
            <div
              key={i}
              className={`w-1 bg-cyan-400/80 rounded-full transition-all duration-300 ${
                media.isPlaying ? 'animate-pulse' : 'h-1'
              }`}
              style={{
                height: media.isPlaying ? `${Math.max(15, Math.sin(i * 0.5 + Date.now() * 0.005) * 100)}%` : '15%',
                animationDelay: `${i * 0.05}s`
              }}
            />
          ))}
        </div>

        {/* Playback Controls */}
        <div className="flex items-center justify-between pt-1">
          <span className="text-[10px] text-slate-500 font-mono">0:42 / 3:55</span>

          <div className="flex items-center gap-3">
            <button
              onClick={() => onUpdateMedia(p => ({ ...p, isPlaying: !p.isPlaying }))}
              className="w-10 h-10 rounded-full bg-cyan-500 text-slate-950 flex items-center justify-center shadow-lg shadow-cyan-500/30 hover:scale-105 transition-transform cursor-pointer"
            >
              {media.isPlaying ? <Pause className="w-5 h-5" /> : <Play className="w-5 h-5 ml-0.5" />}
            </button>
            <button
              onClick={() => onSelectScreen('MEDIA')}
              className="p-2 text-slate-400 hover:text-slate-200 transition-colors cursor-pointer"
            >
              <SkipForward className="w-5 h-5" />
            </button>
          </div>

          <span className="text-[10px] font-orbitron text-cyan-400 bg-cyan-500/10 px-2 py-0.5 rounded-full border border-cyan-500/20">
            {media.soundPreset}
          </span>
        </div>
      </div>

      {/* 5. Climate Quick Controller Card */}
      <div className="md:col-span-4 lg:col-span-4 car-panel rounded-2xl p-4 flex flex-col justify-between border border-slate-800">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-2">
            <div className="w-8 h-8 rounded-xl bg-blue-500/20 text-blue-400 border border-blue-500/30 flex items-center justify-center">
              <Fan className="w-4 h-4 animate-spin-slow" />
            </div>
            <div>
              <div className="text-xs font-bold text-slate-200">Dual Air Climate</div>
              <div className="text-[10px] text-slate-400">PM2.5 Air Purifier: Good ({climate.pm25Level})</div>
            </div>
          </div>

          <button
            onClick={() => onSelectScreen('CLIMATE')}
            className="text-xs font-semibold text-cyan-400 hover:underline cursor-pointer"
          >
            Full AC Menu
          </button>
        </div>

        {/* Temperature Dials Display */}
        <div className="my-3 grid grid-cols-2 gap-3 text-center">
          <div className="bg-slate-900/90 rounded-xl p-2.5 border border-slate-800">
            <div className="text-[10px] text-slate-400 font-medium">DRIVER</div>
            <div className="text-2xl font-black font-orbitron text-slate-100 my-0.5">
              {climate.driverTemp.toFixed(1)}°C
            </div>
            <div className="text-[10px] text-cyan-400 font-medium">Auto Cool</div>
          </div>

          <div className="bg-slate-900/90 rounded-xl p-2.5 border border-slate-800">
            <div className="text-[10px] text-slate-400 font-medium">PASSENGER</div>
            <div className="text-2xl font-black font-orbitron text-slate-100 my-0.5">
              {climate.passengerTemp.toFixed(1)}°C
            </div>
            <div className="text-[10px] text-cyan-400 font-medium">Auto Cool</div>
          </div>
        </div>

        {/* Quick Seat Heating & Fan Controls */}
        <div className="flex items-center justify-between text-xs text-slate-300">
          <button
            onClick={() => onUpdateClimate(p => ({ ...p, driverSeatHeat: (p.driverSeatHeat + 1) % 4 }))}
            className={`px-3 py-1.5 rounded-xl border transition-all cursor-pointer ${
              climate.driverSeatHeat > 0
                ? 'bg-amber-500/20 text-amber-400 border-amber-500/40'
                : 'bg-slate-900 text-slate-400 border-slate-800'
            }`}
          >
            🔥 Seat Heat L{climate.driverSeatHeat}
          </button>

          <button
            onClick={() => onUpdateClimate(p => ({ ...p, steeringHeater: !p.steeringHeater }))}
            className={`px-3 py-1.5 rounded-xl border transition-all cursor-pointer ${
              climate.steeringHeater
                ? 'bg-rose-500/20 text-rose-400 border-rose-500/40'
                : 'bg-slate-900 text-slate-400 border-slate-800'
            }`}
          >
            🌀 Steering Heat
          </button>

          <button
            onClick={() => onUpdateClimate(p => ({ ...p, fanSpeed: (p.fanSpeed % 7) + 1 }))}
            className="px-3 py-1.5 rounded-xl bg-slate-900 border border-slate-800 text-slate-300 hover:border-slate-700 cursor-pointer"
          >
            💨 Fan Level {climate.fanSpeed}
          </button>
        </div>
      </div>

      {/* 6. Native Jetpack Compose / AAOS Kotlin Source Code Card */}
      <div 
        onClick={() => onSelectScreen('JETPACK_COMPOSE_VIEW')}
        className="md:col-span-12 lg:col-span-12 tesla-glass-card rounded-2xl p-4 flex items-center justify-between border border-cyan-500/30 hover:border-cyan-400 transition-all cursor-pointer group shadow-lg shadow-cyan-500/10"
      >
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-xl bg-emerald-500/20 border border-emerald-500/40 text-emerald-400 flex items-center justify-center font-black font-mono text-sm">
            KT
          </div>
          <div>
            <div className="flex items-center gap-2">
              <span className="text-sm font-bold text-slate-100 font-orbitron">NATIVE JETPACK COMPOSE / KOTLIN SURUMU</span>
              <span className="px-2 py-0.5 rounded-md bg-emerald-500/20 text-emerald-300 border border-emerald-500/30 text-[10px] font-bold">HAZIR DAĞITIM</span>
            </div>
            <div className="text-xs text-slate-400 mt-0.5">
              Android Automotive OS (AAOS) standartlarına uygun Material 3 Jetpack Compose kaynak kodlarını inceleyin veya indirin.
            </div>
          </div>
        </div>

        <div className="flex items-center gap-2 text-xs font-bold text-cyan-400 group-hover:translate-x-1 transition-transform">
          <span>Kodları İncele</span>
          <ChevronRight className="w-4 h-4" />
        </div>
      </div>

    </div>
  );
};
