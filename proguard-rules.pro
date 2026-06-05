# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Keep the launcher application
-keep class com.omoda5.launcher.** { *; }
-dontwarn com.omoda5.launcher.**

# Keep Service implementations
-keep class * extends android.app.Service
-keep class * extends android.content.BroadcastReceiver

# Keep data classes (LauncherItem, etc.)
-keep class com.omoda5.launcher.model.** { *; }

# VOSK & JNA (Voice Assistant)
-keep class org.vosk.** { *; }
-keep class com.sun.jna.** { *; }
-keepclassmembers class * extends com.sun.jna.** { *; }
-dontwarn org.vosk.**
-dontwarn com.sun.jna.**

# Keep PreferencesManager (SharedPreferences wrapper)
-keep class com.omoda5.launcher.data.preferences.** { *; }

# Keep AnimationDrawable references
-keep class android.graphics.drawable.AnimationDrawable

# Remove logging in release builds
-assumenosideeffects classandroid.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
    public static *** w(...);
    public static *** e(...);
}
