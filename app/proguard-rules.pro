# Omoda Launcher ProGuard Kuralları

# 1. Ktor, Coroutines ve Netty (Yerel Sunucu) için kurallar
-keepattributes Signature, InnerClasses, AnnotationDefault, EnclosingMethod
-keep class io.ktor.** { *; }
-keep class kotlinx.coroutines.** { *; }
-keep class io.netty.** { *; }

# Eksik sınıf hatalarını yoksay (Opsiyonel kütüphaneler)
-dontwarn io.netty.**
-dontwarn io.ktor.**
-dontwarn org.apache.logging.log4j.**
-dontwarn org.apache.log4j.**
-dontwarn org.eclipse.jetty.npn.**
-dontwarn org.eclipse.jetty.alpn.**
-dontwarn org.slf4j.impl.**
-dontwarn reactor.blockhound.**

# 2. Gson ve Model sınıflarını koru
-keep class com.omoda.lanc.model.** { *; }
-keep class com.omoda.lanc.config.** { *; }
-keep class com.omoda.lanc.core.** { *; }
-keep class com.google.gson.** { *; }
-keepattributes *Annotation*

# 3. Sherpa-ONNX ve Native kütüphaneleri koru
-keep class com.k2fsa.sherpa.onnx.** { *; }
-keep class net.java.dev.jna.** { *; }

# 4. Android Car ve Sistem sınıfları
-keep class android.car.** { *; }
-keep class androidx.compose.** { *; }
-keep class androidx.lifecycle.** { *; }
