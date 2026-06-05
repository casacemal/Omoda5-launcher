plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("org.jetbrains.kotlin.plugin.compose") version "2.0.21"
}
android {
    namespace = "com.omoda5.launcher"
    compileSdk = 34
    defaultConfig {
        applicationId = "com.omoda5.launcher"
        minSdk = 24
        targetSdk = 34
        versionCode = 944
        versionName = "9.4.4-FinalHub"
        vectorDrawables { useSupportLibrary = true }
        ndk { abiFilters.add("arm64-v8a") } // 🚀 Removes x86/arm32 Vosk files, saves 28MB
    }
    buildTypes {
        debug { isMinifyEnabled = false; isShrinkResources = false; proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro") }
        release { isMinifyEnabled = true; isShrinkResources = true; proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro") }
    }
    compileOptions { sourceCompatibility = JavaVersion.VERSION_17; targetCompatibility = JavaVersion.VERSION_17 }
    kotlinOptions { jvmTarget = "17" }
    buildFeatures { compose = true; viewBinding = true; buildConfig = true }
}
dependencies {
    implementation("androidx.core:core-ktx:1.13.1")
    implementation("androidx.lifecycle:lifecycle-runtime-ktx:2.8.2")
    implementation("androidx.lifecycle:lifecycle-runtime-compose:2.8.2") // ⚡ Gerekli kütüphane
    implementation("androidx.activity:activity-compose:1.9.0")
    implementation(platform("androidx.compose:compose-bom:2024.05.00"))
    implementation("androidx.compose.ui:ui")
    implementation("androidx.compose.ui:ui-graphics")
    implementation("androidx.compose.ui:ui-tooling-preview")
    implementation("androidx.compose.material3:material3")
    implementation("androidx.constraintlayout:constraintlayout-compose:1.0.1")
    implementation("androidx.media:media:1.7.0")
    implementation("com.squareup.okhttp3:okhttp:4.12.0")
    implementation("com.alphacephei:vosk-android:0.3.32@aar")
    implementation("net.java.dev.jna:jna:5.13.0@aar") // 🎙️ Required by VOSK
    compileOnly(files("${android.sdkDirectory}/platforms/android-34/optional/android.car.jar"))
}
