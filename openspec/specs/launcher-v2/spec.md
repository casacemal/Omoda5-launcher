# Omoda5 Launcher v2

> Chery Omoda5 araci icin Android Automotive OS launcher uygulamasi.
> WebView tabanli UI, AI asistan entegrasyonu, Spotify SDK destegi.

**Version:** 2.0.0

## Purpose

Omoda5 aracinda ana launcher olarak calisir. Kullaniciya media kontrol, AI asistan ve arac bilgilerini tek arayuzden sunar. WebView tabanli UI ile esnek tema destegi saglar.

## Requirements

### RQ-001: AAOS Uyumluluk
- **Priority:** critical
- **Status:** approved
- compileSdk=35, minSdk=31, targetSdk=35 ile calismali

#### Scenario: Android Automotive OS'de baslatma
- **GIVEN** cihaz Android Automotive OS calistiriyor
- **WHEN** uygulama baslatilir
- **THEN** API 31-35 araliginda sorunsuz calisir

### RQ-002: WebView UI
- **Priority:** high
- **Status:** approved
- ui_monochrome.html + monochrome SVG assetler ile WebView UI

#### Scenario: WebView yukleme
- **GIVEN** uygulama baslatildi
- **WHEN** kullanici arayuzu yuklenir
- **THEN** ui_monochrome.html WebView'de goruntulenir
- **AND** SVG assetler dogru temada render edilir

### RQ-003: AI Chat
- **Priority:** critical
- **Status:** approved
- Hermes API SSE /v1/chat/completions ile sohbet arayuzu

#### Scenario: Mesaj gonderimi
- **GIVEN** kullanici chat arayuzunde
- **WHEN** bir mesaj gonderilir
- **THEN** AgentManager SSE ile Hermes API'ye baglanir
- **AND** yanit stream olarak alinir ve WebView'de gosterilir

### RQ-004: Spotify Entegrasyonu
- **Priority:** high
- **Status:** approved
- Spotify SDK ile muzik oynatma

#### Scenario: Spotify oynatma
- **GIVEN** Spotify SDK bagli
- **WHEN** kullanici bir sarki secer
- **THEN** SDK uzerinden oynatma baslar

### RQ-005: Sesli Etkilesim
- **Priority:** medium
- **Status:** approved
- Groq Cloud STT (VPN) + Edge TTS (Hermes API)

#### Scenario: Sesli komut
- **GIVEN** WakeWord tetiklendi
- **WHEN** kullanici sesli komut verir
- **THEN** Groq STT ile metne cevrilir
- **AND** Hermes AI yaniti Edge TTS ile seslendirilir

### RQ-006: Gateway Baglantisi
- **Priority:** critical
- **Status:** approved
- 9Router (192.168.1.14:20128)

#### Scenario: Gateway erisimi
- **GIVEN** uygulama aga bagli
- **WHEN** AI istegi yapilir
- **THEN** LAN IP'ye (192.168.1.14:20128) baglanilir

### RQ-007: Multi-Modul Mimari
- **Priority:** high
- **Status:** approved
- automotive, mobile, monochrome, shared modulleri

#### Scenario: Modul yapisi
- **GIVEN** proje derlenir
- **WHEN** Gradle build calisir
- **THEN** automotive, mobile, shared modulleri ayri ayri build edilir

## Tech Stack

- **Languages:** Kotlin 2.1.0, JavaScript
- **Frameworks:** Jetpack Compose, Ktor, Retrofit2, Moshi, Coil
- **Build:** Gradle 8.x, AGP 8.8.2, Compose BOM 2025.03.01
- **Tools:** Android Studio, Dokka, Ktlint, Detekt
- **AI:** Hermes API, 9Router Gateway, Groq Cloud, Edge TTS
- **Network:** LAN, Tailscale, WiFi ADB

## Architecture

### Layers
1. **Presentation:** WebView (ui_monochrome.html) + SVG
2. **Domain:** Kotlin servisleri (VoiceAssistantService, AgentManager)
3. **Data:** Hermes API, 9Router, Spotify SDK
4. **Network:** OkHttp SSE, Ktor Client

## Integrations

- **Hermes API:** SSE /v1/chat/completions, Bearer auth, host: 192.168.1.14:8642
- **9Router Gateway:** OpenAI-compatible /v1, host: 192.168.1.14:20128, model: ornith-coding
- **Spotify:** SDK
- **Groq STT:** REST API (VPN)
- **Edge TTS:** Hermes API uzerinden

## Conventions

- Dil: Kotlin
- Commit mesajlari: Turkce
- Moduller arasi bagimlilik: shared -> automotive/mobile
- API degisikliklerinde geri uyumluluk korunmali
- Build sonrasi install test
