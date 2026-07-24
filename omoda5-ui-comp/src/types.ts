export type DriveMode = 'ECO' | 'NORMAL' | 'SPORT' | 'RACE';
export type GearPosition = 'P' | 'R' | 'N' | 'D';
export type ActiveScreen = 
  | 'LAUNCHER' 
  | 'INSTRUMENT_CLUSTER' 
  | 'CLIMATE' 
  | 'VEHICLE_CONTROL' 
  | 'AMBIENT_LIGHT' 
  | 'NAVIGATION' 
  | 'MEDIA' 
  | 'CARPLAY' 
  | 'PHONE' 
  | 'APPS_GRID' 
  | 'CAMERA_360'
  | 'JETPACK_COMPOSE_VIEW'
  | 'CONCEPT_ANDROID_AUTO'
  | 'CONCEPT_CARPLAY_SPLIT'
  | 'CONCEPT_CYBER_HUD'
  | 'CONCEPT_AMBIENT_LOUNGE'
  | 'CONCEPT_BENTO_CANVAS';

export interface TirePressure {
  pressurePsi: number;
  tempC: number;
  status: 'NORMAL' | 'LOW' | 'HIGH';
}

export interface VehicleState {
  speedKmh: number;
  targetSpeed: number;
  rpm: number;
  gear: GearPosition;
  driveMode: DriveMode;
  fuelLevelPercent: number;
  batteryLevelPercent: number;
  rangeKm: number;
  odometerKm: number;
  tripKm: number;
  avgConsumptionL100km: number;
  outsideTempC: number;
  tires: {
    frontLeft: TirePressure;
    frontRight: TirePressure;
    rearLeft: TirePressure;
    rearRight: TirePressure;
  };
  doors: {
    frontLeft: boolean;
    frontRight: boolean;
    rearLeft: boolean;
    rearRight: boolean;
    trunk: boolean;
    hood: boolean;
  };
  windows: {
    frontLeft: number; // 0 (closed) to 100 (open)
    frontRight: number;
    rearLeft: number;
    rearRight: number;
    sunroof: number;
  };
  lights: {
    headlights: 'OFF' | 'AUTO' | 'LOW' | 'HIGH';
    ambientOn: boolean;
    fogLights: boolean;
  };
  adas: {
    laneKeepAssist: boolean;
    adaptiveCruise: boolean;
    blindSpotMonitoring: boolean;
    autoEmergencyBraking: boolean;
    cruiseSpeedKmh: number;
  };
}

export interface ClimateState {
  powerOn: boolean;
  acOn: boolean;
  autoMode: boolean;
  dualMode: boolean;
  driverTemp: number; // 16.0 to 30.0
  passengerTemp: number;
  fanSpeed: number; // 1 to 7
  recirculation: boolean;
  airflowFace: boolean;
  airflowFeet: boolean;
  airflowDefrost: boolean;
  frontDefrost: boolean;
  rearDefrost: boolean;
  driverSeatHeat: number; // 0 to 3
  passengerSeatHeat: number;
  driverSeatVent: number; // 0 to 3
  passengerSeatVent: number;
  steeringHeater: boolean;
  airPurifier: boolean;
  pm25Level: number; // e.g. 12 (Good)
}

export interface AmbientLightState {
  enabled: boolean;
  colorHex: string;
  brightnessPercent: number;
  rhythmMode: 'STATIC' | 'MUSIC_SYNC' | 'DRIVE_MODE_SYNC' | 'BREATHING';
  selectedPresetIndex: number;
}

export interface Track {
  id: string;
  title: string;
  artist: string;
  album: string;
  coverUrl: string;
  durationSeconds: number;
}

export interface MediaState {
  isPlaying: boolean;
  currentTrack: Track;
  currentTimeSeconds: number;
  volumePercent: number;
  isMuted: boolean;
  source: 'BLUETOOTH' | 'SPOTIFY' | 'RADIO' | 'USB';
  soundPreset: 'SONY_3D' | 'BASS_BOOST' | 'VOCAL_CLEAR' | 'BALANCED' | 'CUSTOM';
}

export interface NavigationRoute {
  destination: string;
  address: string;
  distanceKm: number;
  etaMinutes: number;
  nextManeuver: 'STRAIGHT' | 'TURN_RIGHT' | 'TURN_LEFT' | 'MERGE_LEFT' | 'EXIT_RIGHT';
  nextInstruction: string;
  nextManeuverDistanceMeters: number;
  speedLimitKmh: number;
}

export interface NotificationItem {
  id: string;
  title: string;
  message: string;
  time: string;
  type: 'INFO' | 'WARNING' | 'SUCCESS';
  read: boolean;
}

export interface DailyForecast {
  day: string;
  tempMaxC: number;
  tempMinC: number;
  condition: string;
  code: number;
}

export interface WeatherData {
  temperatureC: number;
  apparentTempC: number;
  humidityPercent: number;
  windSpeedKmh: number;
  weatherCode: number;
  conditionLabel: string;
  isDay: boolean;
  locationName: string;
  country: string;
  latitude: number | null;
  longitude: number | null;
  isLiveLocation: boolean;
  dailyForecast: DailyForecast[];
  lastUpdated: string;
  loading: boolean;
  error: string | null;
}

