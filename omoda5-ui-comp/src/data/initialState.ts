import { VehicleState, ClimateState, AmbientLightState, MediaState, NavigationRoute, Track } from '../types';

export const initialVehicleState: VehicleState = {
  speedKmh: 0,
  targetSpeed: 0,
  rpm: 800,
  gear: 'P',
  driveMode: 'NORMAL',
  fuelLevelPercent: 78,
  batteryLevelPercent: 92,
  rangeKm: 580,
  odometerKm: 14250,
  tripKm: 142.5,
  avgConsumptionL100km: 6.8,
  outsideTempC: 22,
  tires: {
    frontLeft: { pressurePsi: 33, tempC: 28, status: 'NORMAL' },
    frontRight: { pressurePsi: 33, tempC: 29, status: 'NORMAL' },
    rearLeft: { pressurePsi: 32, tempC: 27, status: 'NORMAL' },
    rearRight: { pressurePsi: 32, tempC: 28, status: 'NORMAL' },
  },
  doors: {
    frontLeft: false,
    frontRight: false,
    rearLeft: false,
    rearRight: false,
    trunk: false,
    hood: false,
  },
  windows: {
    frontLeft: 0,
    frontRight: 0,
    rearLeft: 0,
    rearRight: 0,
    sunroof: 0,
  },
  lights: {
    headlights: 'AUTO',
    ambientOn: true,
    fogLights: false,
  },
  adas: {
    laneKeepAssist: true,
    adaptiveCruise: false,
    blindSpotMonitoring: true,
    autoEmergencyBraking: true,
    cruiseSpeedKmh: 90,
  },
};

export const initialClimateState: ClimateState = {
  powerOn: true,
  acOn: true,
  autoMode: true,
  dualMode: true,
  driverTemp: 21.5,
  passengerTemp: 22.0,
  fanSpeed: 3,
  recirculation: false,
  airflowFace: true,
  airflowFeet: true,
  airflowDefrost: false,
  frontDefrost: false,
  rearDefrost: false,
  driverSeatHeat: 0,
  passengerSeatHeat: 0,
  driverSeatVent: 0,
  passengerSeatVent: 0,
  steeringHeater: false,
  airPurifier: true,
  pm25Level: 8,
};

export const ambientColorPresets = [
  { name: 'Cyber Cyan', hex: '#06b6d4' },
  { name: 'Omoda Red', hex: '#ef4444' },
  { name: 'Electric Purple', hex: '#a855f7' },
  { name: 'Emerald Drive', hex: '#10b981' },
  { name: 'Sunset Amber', hex: '#f59e0b' },
  { name: 'Ice Blue', hex: '#38bdf8' },
  { name: 'Neon Pink', hex: '#ec4899' },
  { name: 'Pure White', hex: '#f8fafc' },
];

export const initialAmbientLightState: AmbientLightState = {
  enabled: true,
  colorHex: '#06b6d4',
  brightnessPercent: 85,
  rhythmMode: 'DRIVE_MODE_SYNC',
  selectedPresetIndex: 0,
};

export const samplePlaylist: Track[] = [
  {
    id: '1',
    title: 'Midnight Highway Drive',
    artist: 'Synthwave Night Driver',
    album: 'Omoda Sound System Sessions',
    coverUrl: 'https://images.unsplash.com/photo-1618005182384-a83a8bd57fbe?w=500&auto=format&fit=crop&q=80',
    durationSeconds: 235,
  },
  {
    id: '2',
    title: 'Neon Horizon',
    artist: 'Cyber Pulse',
    album: 'Futuristic Cockpit',
    coverUrl: 'https://images.unsplash.com/photo-1508700115892-45ecd05ae2ad?w=500&auto=format&fit=crop&q=80',
    durationSeconds: 198,
  },
  {
    id: '3',
    title: 'Cozy Chillout Beats',
    artist: 'Lo-Fi Sunset',
    album: 'Urban Cruiser',
    coverUrl: 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?w=500&auto=format&fit=crop&q=80',
    durationSeconds: 184,
  },
  {
    id: '4',
    title: 'High Velocity (Sony 3D Surround)',
    artist: 'Electro Dynamic',
    album: 'Turbo Sound Experience',
    coverUrl: 'https://images.unsplash.com/photo-1514525253161-7a46d19cd819?w=500&auto=format&fit=crop&q=80',
    durationSeconds: 250,
  }
];

export const initialMediaState: MediaState = {
  isPlaying: true,
  currentTrack: samplePlaylist[0],
  currentTimeSeconds: 42,
  volumePercent: 48,
  isMuted: false,
  source: 'SPOTIFY',
  soundPreset: 'SONY_3D',
};

export const initialNavigationRoute: NavigationRoute = {
  destination: 'Bosphorus Bridge, Istanbul',
  address: '15 Temmuz Şehitler Köprüsü, Istanbul',
  distanceKm: 14.2,
  etaMinutes: 18,
  nextManeuver: 'TURN_RIGHT',
  nextInstruction: 'In 350m, take exit onto E80 Expressway towards Kadıköy',
  nextManeuverDistanceMeters: 350,
  speedLimitKmh: 90,
};
