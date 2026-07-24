import { useState, useEffect, useCallback } from 'react';
import { WeatherData, DailyForecast } from '../types';

export const WMO_CODE_MAP: Record<number, { label: string; icon: string; hazardAlert?: string }> = {
  0: { label: 'Clear Sky', icon: 'Sun' },
  1: { label: 'Mainly Clear', icon: 'Sun' },
  2: { label: 'Partly Cloudy', icon: 'CloudSun' },
  3: { label: 'Overcast Sky', icon: 'Cloud' },
  45: { label: 'Foggy Conditions', icon: 'CloudFog', hazardAlert: 'Low Visibility Fog - Reduce Speed' },
  48: { label: 'Freezing Fog', icon: 'CloudFog', hazardAlert: 'Freezing Fog - Risk of Black Ice' },
  51: { label: 'Light Drizzle', icon: 'CloudDrizzle' },
  53: { label: 'Moderate Drizzle', icon: 'CloudDrizzle' },
  55: { label: 'Dense Drizzle', icon: 'CloudDrizzle' },
  56: { label: 'Light Freezing Drizzle', icon: 'CloudDrizzle', hazardAlert: 'Freezing Drizzle - Slippery Roadway' },
  57: { label: 'Dense Freezing Drizzle', icon: 'CloudDrizzle', hazardAlert: 'Freezing Drizzle - Slippery Roadway' },
  61: { label: 'Slight Rain', icon: 'CloudRain' },
  63: { label: 'Moderate Rain', icon: 'CloudRain', hazardAlert: 'Wet Roads - Maintain Distance' },
  65: { label: 'Heavy Rain', icon: 'CloudRain', hazardAlert: 'Heavy Rain - Hydroplaning Hazard' },
  66: { label: 'Light Freezing Rain', icon: 'CloudRain', hazardAlert: 'Freezing Rain - Ice Hazard' },
  67: { label: 'Heavy Freezing Rain', icon: 'CloudRain', hazardAlert: 'Severe Ice Hazard - Use Caution' },
  71: { label: 'Slight Snowfall', icon: 'CloudSnow' },
  73: { label: 'Moderate Snowfall', icon: 'CloudSnow', hazardAlert: 'Snowfall - Snow Traction Required' },
  75: { label: 'Heavy Snowfall', icon: 'CloudSnow', hazardAlert: 'Heavy Snow - Extreme Caution' },
  77: { label: 'Snow Grains', icon: 'CloudSnow' },
  80: { label: 'Slight Rain Showers', icon: 'CloudRain' },
  81: { label: 'Moderate Rain Showers', icon: 'CloudRain' },
  82: { label: 'Violent Rain Showers', icon: 'CloudRain', hazardAlert: 'Torrential Downpour' },
  85: { label: 'Slight Snow Showers', icon: 'CloudSnow' },
  86: { label: 'Heavy Snow Showers', icon: 'CloudSnow', hazardAlert: 'Heavy Snow Showers' },
  95: { label: 'Thunderstorm', icon: 'CloudLightning', hazardAlert: 'Thunderstorm - Lighting Warning' },
  96: { label: 'Thunderstorm with Hail', icon: 'CloudLightning', hazardAlert: 'Thunderstorm & Hail - Seek Shelter' },
  99: { label: 'Thunderstorm with Heavy Hail', icon: 'CloudLightning', hazardAlert: 'Severe Hail Warning' },
};

export function getWeatherCondition(code: number) {
  return WMO_CODE_MAP[code] || { label: 'Fair Conditions', icon: 'Sun' };
}

// Default fallback location (London / Munich) if geolocation is denied or unavailable
const DEFAULT_LAT = 51.5074;
const DEFAULT_LON = -0.1278;
const DEFAULT_LOCATION_NAME = 'London';
const DEFAULT_COUNTRY = 'United Kingdom';

export function useWeather(onTemperatureSync?: (tempC: number) => void) {
  const [tempUnit, setTempUnit] = useState<'C' | 'F'>('C');
  const [weather, setWeather] = useState<WeatherData>({
    temperatureC: 21,
    apparentTempC: 22,
    humidityPercent: 55,
    windSpeedKmh: 14,
    weatherCode: 0,
    conditionLabel: 'Clear Sky',
    isDay: true,
    locationName: 'Locating...',
    country: '',
    latitude: null,
    longitude: null,
    isLiveLocation: false,
    dailyForecast: [],
    lastUpdated: '',
    loading: true,
    error: null,
  });

  const fetchWeatherData = useCallback(async (lat: number, lon: number, isLive: boolean, cityOverride?: string, countryOverride?: string) => {
    try {
      setWeather(prev => ({ ...prev, loading: true, error: null }));

      // 1. Fetch current weather and 5-day forecast from Open-Meteo
      const weatherUrl = `https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lon}&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,weather_code,wind_speed_10m&daily=weather_code,temperature_2m_max,temperature_2m_min&timezone=auto`;
      const response = await fetch(weatherUrl);
      if (!response.ok) {
        throw new Error(`Weather API returned status ${response.status}`);
      }
      const data = await response.json();

      const current = data.current || {};
      const daily = data.daily || {};

      const tempC = Math.round(current.temperature_2m ?? 21);
      const apparentTempC = Math.round(current.apparent_temperature ?? tempC);
      const humidityPercent = Math.round(current.relative_humidity_2m ?? 50);
      const windSpeedKmh = Math.round(current.wind_speed_10m ?? 12);
      const weatherCode = current.weather_code ?? 0;
      const isDay = current.is_day === 1;

      const condition = getWeatherCondition(weatherCode);

      // 2. Fetch location city name via reverse geocoding
      let locationName = cityOverride || DEFAULT_LOCATION_NAME;
      let country = countryOverride || DEFAULT_COUNTRY;

      if (!cityOverride) {
        try {
          const geoRes = await fetch(`https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=${lat}&longitude=${lon}&localityLanguage=en`);
          if (geoRes.ok) {
            const geoData = await geoRes.json();
            locationName = geoData.city || geoData.locality || geoData.principalSubdivision || 'Current Location';
            country = geoData.countryName || '';
          }
        } catch {
          // Fallback reverse geocoding via nominatim if bigdatacloud fails
          try {
            const nomRes = await fetch(`https://nominatim.openstreetmap.org/reverse?format=json&lat=${lat}&lon=${lon}`);
            if (nomRes.ok) {
              const nomData = await nomRes.json();
              const addr = nomData.address || {};
              locationName = addr.city || addr.town || addr.village || addr.suburb || 'Current Location';
              country = addr.country || '';
            }
          } catch {
            locationName = isLive ? 'Local Position' : DEFAULT_LOCATION_NAME;
          }
        }
      }

      // 3. Format 5-day forecast
      const dailyForecast: DailyForecast[] = [];
      if (daily.time && daily.time.length > 0) {
        const daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
        for (let i = 0; i < Math.min(5, daily.time.length); i++) {
          const date = new Date(daily.time[i]);
          const dayName = i === 0 ? 'Today' : daysOfWeek[date.getDay()];
          const code = daily.weather_code[i] ?? 0;
          dailyForecast.push({
            day: dayName,
            tempMaxC: Math.round(daily.temperature_2m_max[i] ?? tempC + 2),
            tempMinC: Math.round(daily.temperature_2m_min[i] ?? tempC - 4),
            condition: getWeatherCondition(code).label,
            code,
          });
        }
      }

      const nowTime = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

      setWeather({
        temperatureC: tempC,
        apparentTempC,
        humidityPercent,
        windSpeedKmh,
        weatherCode,
        conditionLabel: condition.label,
        isDay,
        locationName,
        country,
        latitude: lat,
        longitude: lon,
        isLiveLocation: isLive,
        dailyForecast,
        lastUpdated: nowTime,
        loading: false,
        error: null,
      });

      // Synchronize vehicle outside temperature
      if (onTemperatureSync) {
        onTemperatureSync(tempC);
      }
    } catch (err: any) {
      console.warn('Weather fetch warning:', err);
      setWeather(prev => ({
        ...prev,
        loading: false,
        error: err.message || 'Failed to fetch weather',
      }));
    }
  }, [onTemperatureSync]);

  // Request browser geolocation
  const requestGeolocation = useCallback(() => {
    setWeather(prev => ({ ...prev, loading: true, error: null }));

    if (!('geolocation' in navigator)) {
      fetchWeatherData(DEFAULT_LAT, DEFAULT_LON, false, DEFAULT_LOCATION_NAME, DEFAULT_COUNTRY);
      return;
    }

    navigator.geolocation.getCurrentPosition(
      (pos) => {
        const { latitude, longitude } = pos.coords;
        fetchWeatherData(latitude, longitude, true);
      },
      (err) => {
        console.warn('Geolocation error / permission denied:', err.message);
        // Fallback to default location gracefully
        fetchWeatherData(DEFAULT_LAT, DEFAULT_LON, false, DEFAULT_LOCATION_NAME, DEFAULT_COUNTRY);
      },
      { timeout: 10000, maximumAge: 300000, enableHighAccuracy: true }
    );
  }, [fetchWeatherData]);

  // Initial load
  useEffect(() => {
    requestGeolocation();
  }, [requestGeolocation]);

  const refreshWeather = () => {
    if (weather.latitude && weather.longitude) {
      fetchWeatherData(
        weather.latitude, 
        weather.longitude, 
        weather.isLiveLocation, 
        weather.locationName, 
        weather.country
      );
    } else {
      requestGeolocation();
    }
  };

  const convertTemp = (tempC: number) => {
    if (tempUnit === 'F') {
      return Math.round((tempC * 9) / 5 + 32);
    }
    return tempC;
  };

  return {
    weather,
    tempUnit,
    setTempUnit,
    convertTemp,
    refreshWeather,
    requestGeolocation,
  };
}
