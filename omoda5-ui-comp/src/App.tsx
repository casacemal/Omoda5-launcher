import React, { useState, useCallback } from 'react';
import { 
  ActiveScreen, 
  VehicleState, 
  ClimateState, 
  AmbientLightState, 
  MediaState, 
  NavigationRoute,
  NotificationItem
} from './types';
import { 
  initialVehicleState, 
  initialClimateState, 
  initialAmbientLightState, 
  initialMediaState, 
  initialNavigationRoute 
} from './data/initialState';

import { TopStatusBar } from './components/TopStatusBar';
import { BottomDock } from './components/BottomDock';
import { LauncherHome } from './components/LauncherHome';
import { InstrumentCluster } from './components/InstrumentCluster';
import { ClimateControl } from './components/ClimateControl';
import { VehicleControl } from './components/VehicleControl';
import { AmbientLighting } from './components/AmbientLighting';
import { NavigationMap } from './components/NavigationMap';
import { MediaPlayer } from './components/MediaPlayer';
import { Camera360View } from './components/Camera360View';
import { CarPlayView } from './components/CarPlayView';
import { ComposeCodeViewer } from './components/ComposeCodeViewer';
import { AppsGrid } from './components/AppsGrid';
import { VoiceAssistant } from './components/VoiceAssistant';
import { NotificationsModal } from './components/NotificationsModal';
import { WeatherModal } from './components/WeatherModal';
import { useWeather } from './hooks/useWeather';

import { AndroidAutoConcept } from './components/concepts/AndroidAutoConcept';
import { CarPlayConcept } from './components/concepts/CarPlayConcept';
import { CyberHudConcept } from './components/concepts/CyberHudConcept';
import { AmbientLoungeConcept } from './components/concepts/AmbientLoungeConcept';
import { BentoCanvasConcept } from './components/concepts/BentoCanvasConcept';

export const App: React.FC = () => {
  const [activeScreen, setActiveScreen] = useState<ActiveScreen>('LAUNCHER');
  const [vehicle, setVehicle] = useState<VehicleState>(initialVehicleState);
  const [climate, setClimate] = useState<ClimateState>(initialClimateState);
  const [ambientLight, setAmbientLight] = useState<AmbientLightState>(initialAmbientLightState);
  const [media, setMedia] = useState<MediaState>(initialMediaState);
  const [navigation, setNavigation] = useState<NavigationRoute>(initialNavigationRoute);

  const [isVoiceAssistantOpen, setIsVoiceAssistantOpen] = useState(false);
  const [isNotificationsOpen, setIsNotificationsOpen] = useState(false);
  const [isWeatherModalOpen, setIsWeatherModalOpen] = useState(false);

  // Sync vehicle outside temperature with real-time weather
  const handleTempSync = useCallback((tempC: number) => {
    setVehicle(prev => ({ ...prev, outsideTempC: tempC }));
  }, []);

  const {
    weather,
    tempUnit,
    setTempUnit,
    refreshWeather,
    requestGeolocation
  } = useWeather(handleTempSync);

  const [notifications, setNotifications] = useState<NotificationItem[]>([
    { id: '1', title: 'ADAS System Check Passed', message: 'L2 Lane Keep & Blind Spot Detection initialized successfully.', time: '10:42 AM', type: 'SUCCESS', read: false },
    { id: '2', title: 'Tire Pressure Optimal', message: 'All 4 tires at 33 PSI / 28°C.', time: '09:15 AM', type: 'INFO', read: false },
    { id: '3', title: 'Air Purifier Active', message: 'Cabin PM2.5 index is 8 (Excellent quality).', time: '08:30 AM', type: 'INFO', read: false },
  ]);

  const renderActiveScreen = () => {
    switch (activeScreen) {
      case 'INSTRUMENT_CLUSTER':
        return (
          <InstrumentCluster 
            vehicle={vehicle} 
            onUpdateVehicle={setVehicle} 
            navigation={navigation}
            ambientColor={ambientLight.colorHex}
          />
        );
      case 'CLIMATE':
        return (
          <ClimateControl 
            climate={climate} 
            onUpdateClimate={setClimate} 
          />
        );
      case 'VEHICLE_CONTROL':
        return (
          <VehicleControl 
            vehicle={vehicle} 
            onUpdateVehicle={setVehicle} 
          />
        );
      case 'AMBIENT_LIGHT':
        return (
          <AmbientLighting 
            ambientLight={ambientLight} 
            onUpdateAmbientLight={setAmbientLight} 
          />
        );
      case 'NAVIGATION':
        return (
          <NavigationMap 
            navigation={navigation} 
            onUpdateNavigation={setNavigation} 
          />
        );
      case 'MEDIA':
        return (
          <MediaPlayer 
            media={media} 
            onUpdateMedia={setMedia} 
          />
        );
      case 'CAMERA_360':
        return <Camera360View />;
      case 'JETPACK_COMPOSE_VIEW':
        return <ComposeCodeViewer onSelectScreen={setActiveScreen} />;
      case 'CONCEPT_ANDROID_AUTO':
        return (
          <AndroidAutoConcept 
            vehicle={vehicle} 
            media={media} 
            navigation={navigation} 
            onUpdateMedia={setMedia} 
            onSelectScreen={setActiveScreen} 
          />
        );
      case 'CONCEPT_CARPLAY_SPLIT':
        return (
          <CarPlayConcept 
            vehicle={vehicle} 
            media={media} 
            navigation={navigation} 
            onUpdateMedia={setMedia} 
            onSelectScreen={setActiveScreen} 
          />
        );
      case 'CONCEPT_CYBER_HUD':
        return (
          <CyberHudConcept 
            vehicle={vehicle} 
            media={media} 
            onUpdateVehicle={setVehicle} 
            onSelectScreen={setActiveScreen} 
          />
        );
      case 'CONCEPT_AMBIENT_LOUNGE':
        return (
          <AmbientLoungeConcept 
            ambientLight={ambientLight} 
            climate={climate} 
            media={media} 
            onUpdateAmbientLight={setAmbientLight} 
            onUpdateClimate={setClimate} 
            onSelectScreen={setActiveScreen} 
          />
        );
      case 'CONCEPT_BENTO_CANVAS':
        return (
          <BentoCanvasConcept 
            vehicle={vehicle} 
            climate={climate} 
            media={media} 
            navigation={navigation} 
            onUpdateVehicle={setVehicle} 
            onUpdateClimate={setClimate} 
            onSelectScreen={setActiveScreen} 
          />
        );
      case 'CARPLAY':
        return <CarPlayView onSelectScreen={setActiveScreen} />;
      case 'APPS_GRID':
        return <AppsGrid onSelectScreen={setActiveScreen} />;
      case 'LAUNCHER':
      default:
        return (
          <LauncherHome
            vehicle={vehicle}
            climate={climate}
            media={media}
            navigation={navigation}
            ambientLight={ambientLight}
            weather={weather}
            tempUnit={tempUnit}
            onOpenWeatherModal={() => setIsWeatherModalOpen(true)}
            onSelectScreen={setActiveScreen}
            onUpdateVehicle={setVehicle}
            onUpdateClimate={setClimate}
            onUpdateMedia={setMedia}
          />
        );
    }
  };

  return (
    <div className="w-screen h-screen bg-slate-950 flex flex-col justify-between overflow-hidden relative font-['Plus_Jakarta_Sans',sans-serif]">
      {/* Top Cockpit Status Bar */}
      <TopStatusBar 
        vehicle={vehicle}
        weather={weather}
        tempUnit={tempUnit}
        onOpenVoiceAssistant={() => setIsVoiceAssistantOpen(true)}
        onOpenNotifications={() => setIsNotificationsOpen(true)}
        onOpenWeatherModal={() => setIsWeatherModalOpen(true)}
        onSelectScreen={setActiveScreen}
        activeScreen={activeScreen}
        unreadCount={notifications.filter(n => !n.read).length}
      />

      {/* Main Touch Screen Content Frame */}
      <main className="flex-1 w-full h-[calc(100vh-7rem)] overflow-hidden relative">
        {renderActiveScreen()}
      </main>

      {/* Bottom Floating Quick Control Dock */}
      <BottomDock 
        activeScreen={activeScreen}
        onSelectScreen={setActiveScreen}
        climate={climate}
        onUpdateClimate={setClimate}
        media={media}
        onUpdateMedia={setMedia}
      />

      {/* Voice Assistant AI Modal */}
      <VoiceAssistant 
        isOpen={isVoiceAssistantOpen}
        onClose={() => setIsVoiceAssistantOpen(false)}
        onUpdateVehicle={setVehicle}
        onUpdateClimate={setClimate}
        onUpdateAmbientLight={setAmbientLight}
        onSelectScreen={setActiveScreen}
      />

      {/* Notifications Modal */}
      <NotificationsModal 
        isOpen={isNotificationsOpen}
        onClose={() => setIsNotificationsOpen(false)}
        notifications={notifications}
        onClearNotifications={() => setNotifications([])}
      />

      {/* Real-time Weather Telemetry Modal */}
      <WeatherModal 
        isOpen={isWeatherModalOpen}
        onClose={() => setIsWeatherModalOpen(false)}
        weather={weather}
        tempUnit={tempUnit}
        onToggleUnit={() => setTempUnit(prev => prev === 'C' ? 'F' : 'C')}
        onRefresh={refreshWeather}
        onRequestGeolocation={requestGeolocation}
        onNavigateToClimate={() => setActiveScreen('CLIMATE')}
        onNavigateToMap={() => setActiveScreen('NAVIGATION')}
      />
    </div>
  );
};

export default App;
