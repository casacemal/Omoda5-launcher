import React from 'react';
import { 
  X, 
  MapPin, 
  RefreshCw, 
  Navigation2, 
  Wind, 
  Droplets, 
  Thermometer, 
  Sun, 
  CloudSun, 
  Cloud, 
  CloudRain, 
  CloudSnow, 
  CloudLightning, 
  CloudFog, 
  ShieldAlert, 
  CheckCircle2, 
  Compass,
  ArrowRight,
  Fan
} from 'lucide-react';
import { WeatherData } from '../types';
import { WMO_CODE_MAP } from '../hooks/useWeather';

interface WeatherModalProps {
  isOpen: boolean;
  onClose: () => void;
  weather: WeatherData;
  tempUnit: 'C' | 'F';
  onToggleUnit: () => void;
  onRefresh: () => void;
  onRequestGeolocation: () => void;
  onNavigateToClimate?: () => void;
  onNavigateToMap?: () => void;
}

export const renderWeatherIcon = (code: number, isDay: boolean = true, className: string = 'w-6 h-6') => {
  const codeMap = WMO_CODE_MAP[code];
  const iconType = codeMap?.icon || 'Sun';

  switch (iconType) {
    case 'Sun':
      return <Sun className={`${className} text-amber-400 animate-spin-slow`} />;
    case 'CloudSun':
      return <CloudSun className={`${className} text-amber-300`} />;
    case 'Cloud':
      return <Cloud className={`${className} text-slate-300`} />;
    case 'CloudRain':
      return <CloudRain className={`${className} text-cyan-400`} />;
    case 'CloudSnow':
      return <CloudSnow className={`${className} text-blue-200`} />;
    case 'CloudLightning':
      return <CloudLightning className={`${className} text-purple-400 animate-pulse`} />;
    case 'CloudFog':
      return <CloudFog className={`${className} text-slate-400`} />;
    default:
      return <Sun className={`${className} text-amber-400`} />;
  }
};

export const WeatherModal: React.FC<WeatherModalProps> = ({
  isOpen,
  onClose,
  weather,
  tempUnit,
  onToggleUnit,
  onRefresh,
  onRequestGeolocation,
  onNavigateToClimate,
  onNavigateToMap,
}) => {
  if (!isOpen) return null;

  const displayTemp = (tempC: number) => {
    if (tempUnit === 'F') {
      return Math.round((tempC * 9) / 5 + 32);
    }
    return tempC;
  };

  const hazard = WMO_CODE_MAP[weather.weatherCode]?.hazardAlert;

  return (
    <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-md flex items-center justify-center p-3 sm:p-6 animate-fade-in">
      <div className="w-full max-w-2xl bg-slate-900 border border-slate-800 rounded-3xl shadow-2xl overflow-hidden flex flex-col max-h-[90vh]">
        {/* Modal Header */}
        <div className="px-6 py-4 border-b border-slate-800 flex items-center justify-between bg-slate-950/60">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 rounded-2xl bg-cyan-500/20 text-cyan-400 border border-cyan-500/30 flex items-center justify-center shadow-lg shadow-cyan-500/10">
              {renderWeatherIcon(weather.weatherCode, weather.isDay, 'w-5 h-5')}
            </div>
            <div>
              <div className="flex items-center gap-2">
                <span className="font-orbitron font-extrabold text-sm text-slate-100 tracking-wider">OMODA 5 WEATHER COCKPIT</span>
                <span className={`px-2 py-0.5 rounded-full text-[10px] font-orbitron font-bold border ${
                  weather.isLiveLocation 
                    ? 'bg-emerald-500/20 text-emerald-400 border-emerald-500/30' 
                    : 'bg-amber-500/20 text-amber-400 border-amber-500/30'
                }`}>
                  {weather.isLiveLocation ? 'LIVE GPS' : 'ESTIMATED'}
                </span>
              </div>
              <p className="text-xs text-slate-400 flex items-center gap-1 mt-0.5">
                <MapPin className="w-3 h-3 text-cyan-400" />
                <span>{weather.locationName}{weather.country ? `, ${weather.country}` : ''}</span>
                {weather.lastUpdated && <span className="text-slate-500 ml-1">• Updated {weather.lastUpdated}</span>}
              </p>
            </div>
          </div>

          <div className="flex items-center gap-2">
            {/* Unit switch button */}
            <button
              onClick={onToggleUnit}
              className="px-2.5 py-1 rounded-xl bg-slate-800 border border-slate-700 text-xs font-bold text-slate-200 hover:border-cyan-500/50 transition-colors cursor-pointer"
              title="Toggle Celsius / Fahrenheit"
            >
              °{tempUnit}
            </button>

            {/* Refresh button */}
            <button
              onClick={onRefresh}
              disabled={weather.loading}
              className="p-2 rounded-xl bg-slate-800 hover:bg-slate-700 text-slate-300 border border-slate-700 transition-colors cursor-pointer disabled:opacity-50"
              title="Refresh Weather Data"
            >
              <RefreshCw className={`w-4 h-4 ${weather.loading ? 'animate-spin text-cyan-400' : ''}`} />
            </button>

            {/* Geolocation Trigger */}
            <button
              onClick={onRequestGeolocation}
              className="p-2 rounded-xl bg-cyan-500/20 hover:bg-cyan-500/30 text-cyan-300 border border-cyan-500/40 transition-colors cursor-pointer"
              title="Detect Local Browser Location"
            >
              <Navigation2 className="w-4 h-4" />
            </button>

            {/* Close Modal */}
            <button
              onClick={onClose}
              className="p-2 rounded-xl bg-slate-800/80 hover:bg-slate-700 text-slate-400 hover:text-white transition-colors cursor-pointer ml-1"
            >
              <X className="w-5 h-5" />
            </button>
          </div>
        </div>

        {/* Modal Body */}
        <div className="p-6 overflow-y-auto space-y-5 no-scrollbar">
          {/* Main Weather Card */}
          <div className="relative rounded-2xl bg-gradient-to-br from-slate-950 via-slate-900 to-slate-950 p-6 border border-cyan-500/30 overflow-hidden shadow-xl">
            {/* Background ambient glow */}
            <div className="absolute -right-10 -bottom-10 w-48 h-48 bg-cyan-500/10 rounded-full blur-3xl pointer-events-none" />

            <div className="flex flex-col sm:flex-row items-center justify-between gap-6 relative z-10">
              <div className="flex items-center gap-5">
                <div className="p-4 rounded-3xl bg-slate-900/90 border border-slate-800 shadow-2xl flex items-center justify-center">
                  {renderWeatherIcon(weather.weatherCode, weather.isDay, 'w-16 h-16')}
                </div>
                <div>
                  <div className="text-5xl font-black font-orbitron text-slate-100 tracking-tight">
                    {displayTemp(weather.temperatureC)}°<span className="text-cyan-400 text-3xl font-semibold">{tempUnit}</span>
                  </div>
                  <div className="text-lg font-bold text-slate-200 mt-1">
                    {weather.conditionLabel}
                  </div>
                  <div className="text-xs text-slate-400 mt-0.5">
                    Feels like {displayTemp(weather.apparentTempC)}°{tempUnit}
                  </div>
                </div>
              </div>

              {/* Driving Safety Alert / Condition */}
              <div className="w-full sm:w-auto flex flex-col items-end text-right">
                {hazard ? (
                  <div className="bg-amber-500/15 border border-amber-500/40 rounded-2xl p-3 max-w-xs flex items-start gap-2 text-left">
                    <ShieldAlert className="w-5 h-5 text-amber-400 shrink-0 mt-0.5" />
                    <div>
                      <div className="text-xs font-bold text-amber-300">Driving Alert</div>
                      <div className="text-[11px] text-amber-200/90">{hazard}</div>
                    </div>
                  </div>
                ) : (
                  <div className="bg-emerald-500/15 border border-emerald-500/30 rounded-2xl p-3 max-w-xs flex items-center gap-2.5 text-left">
                    <CheckCircle2 className="w-5 h-5 text-emerald-400 shrink-0" />
                    <div>
                      <div className="text-xs font-bold text-emerald-300">Optimal Road Conditions</div>
                      <div className="text-[11px] text-slate-300">Good visibility & dry surface</div>
                    </div>
                  </div>
                )}
              </div>
            </div>

            {/* Automotive Telemetry Grid */}
            <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 mt-6 pt-5 border-t border-slate-800">
              <div className="bg-slate-900/80 rounded-xl p-3 border border-slate-800/80">
                <div className="flex items-center gap-1.5 text-xs text-slate-400 mb-1">
                  <Droplets className="w-3.5 h-3.5 text-blue-400" />
                  <span>Humidity</span>
                </div>
                <div className="text-lg font-bold font-orbitron text-slate-100">
                  {weather.humidityPercent}%
                </div>
              </div>

              <div className="bg-slate-900/80 rounded-xl p-3 border border-slate-800/80">
                <div className="flex items-center gap-1.5 text-xs text-slate-400 mb-1">
                  <Wind className="w-3.5 h-3.5 text-cyan-400" />
                  <span>Wind Speed</span>
                </div>
                <div className="text-lg font-bold font-orbitron text-slate-100">
                  {weather.windSpeedKmh} <span className="text-xs font-normal text-slate-400">km/h</span>
                </div>
              </div>

              <div className="bg-slate-900/80 rounded-xl p-3 border border-slate-800/80">
                <div className="flex items-center gap-1.5 text-xs text-slate-400 mb-1">
                  <Thermometer className="w-3.5 h-3.5 text-amber-400" />
                  <span>Apparent</span>
                </div>
                <div className="text-lg font-bold font-orbitron text-slate-100">
                  {displayTemp(weather.apparentTempC)}°{tempUnit}
                </div>
              </div>

              <div className="bg-slate-900/80 rounded-xl p-3 border border-slate-800/80">
                <div className="flex items-center gap-1.5 text-xs text-slate-400 mb-1">
                  <Compass className="w-3.5 h-3.5 text-emerald-400" />
                  <span>Daylight</span>
                </div>
                <div className="text-lg font-bold font-orbitron text-slate-100">
                  {weather.isDay ? 'Daytime' : 'Night'}
                </div>
              </div>
            </div>
          </div>

          {/* 5-Day Forecast Grid */}
          <div>
            <div className="text-xs font-bold font-orbitron text-slate-300 tracking-wider uppercase mb-3 flex items-center justify-between">
              <span>5-Day Weather Forecast</span>
              <span className="text-slate-500 font-normal normal-case text-[11px]">Updated in real-time</span>
            </div>

            <div className="grid grid-cols-2 sm:grid-cols-5 gap-2.5">
              {weather.dailyForecast.map((day, idx) => (
                <div 
                  key={idx}
                  className={`p-3 rounded-2xl bg-slate-950/80 border text-center flex flex-col items-center justify-between transition-all ${
                    idx === 0 
                      ? 'border-cyan-500/50 bg-cyan-500/5 shadow-md shadow-cyan-500/10' 
                      : 'border-slate-800 hover:border-slate-700'
                  }`}
                >
                  <div className="text-xs font-bold text-slate-300">{day.day}</div>
                  <div className="my-2 flex items-center justify-center">
                    {renderWeatherIcon(day.code, true, 'w-7 h-7')}
                  </div>
                  <div className="text-[11px] text-slate-400 truncate max-w-[90px] mb-1">
                    {day.condition}
                  </div>
                  <div className="text-xs font-mono font-bold text-slate-100">
                    {displayTemp(day.tempMaxC)}° <span className="text-slate-500 font-normal">{displayTemp(day.tempMinC)}°</span>
                  </div>
                </div>
              ))}
            </div>
          </div>

          {/* Quick Vehicle Navigation Controls */}
          <div className="pt-2 grid grid-cols-1 sm:grid-cols-2 gap-3">
            {onNavigateToClimate && (
              <button
                onClick={() => {
                  onClose();
                  onNavigateToClimate();
                }}
                className="p-3.5 rounded-2xl bg-slate-950 hover:bg-slate-800 border border-slate-800 hover:border-cyan-500/40 flex items-center justify-between text-left transition-all cursor-pointer group"
              >
                <div className="flex items-center gap-3">
                  <div className="w-8 h-8 rounded-xl bg-blue-500/20 text-blue-400 flex items-center justify-center">
                    <Fan className="w-4 h-4" />
                  </div>
                  <div>
                    <div className="text-xs font-bold text-slate-200">Adjust Cabin Climate</div>
                    <div className="text-[10px] text-slate-400">Match AC to outdoor {displayTemp(weather.temperatureC)}°{tempUnit}</div>
                  </div>
                </div>
                <ArrowRight className="w-4 h-4 text-slate-500 group-hover:text-cyan-400 group-hover:translate-x-1 transition-all" />
              </button>
            )}

            {onNavigateToMap && (
              <button
                onClick={() => {
                  onClose();
                  onNavigateToMap();
                }}
                className="p-3.5 rounded-2xl bg-slate-950 hover:bg-slate-800 border border-slate-800 hover:border-cyan-500/40 flex items-center justify-between text-left transition-all cursor-pointer group"
              >
                <div className="flex items-center gap-3">
                  <div className="w-8 h-8 rounded-xl bg-cyan-500/20 text-cyan-400 flex items-center justify-center">
                    <Navigation2 className="w-4 h-4" />
                  </div>
                  <div>
                    <div className="text-xs font-bold text-slate-200">Open Navigation Map</div>
                    <div className="text-[10px] text-slate-400">Check traffic & route weather</div>
                  </div>
                </div>
                <ArrowRight className="w-4 h-4 text-slate-500 group-hover:text-cyan-400 group-hover:translate-x-1 transition-all" />
              </button>
            )}
          </div>
        </div>
      </div>
    </div>
  );
};
