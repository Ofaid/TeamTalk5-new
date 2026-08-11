-keep class dk.bearware.AudioBlock {
  <init>();
  <fields>;
}
-keep class dk.bearware.AudioCodec {
  <init>();
  <fields>;
}
-keep class dk.bearware.AudioConfig {
  <init>();
  <fields>;
}
-keep class dk.bearware.AudioFormat {
  <init>();
  <fields>;
}
-keep class dk.bearware.BannedUser {
  <init>();
  <fields>;
}
-keep class dk.bearware.Channel {
  <init>();
  <fields>;
}
-keep class dk.bearware.ClientErrorMsg {
  <init>();
  <fields>;
}
-keepclassmembers class dk.bearware.ClientStatistics {
  <fields>;
}
-keep class dk.bearware.DesktopInput {
  <init>();
  <fields>;
}
-keep class dk.bearware.DesktopWindow {
  <init>();
  <fields>;
}
-keep class dk.bearware.FileTransfer {
  <init>();
  <fields>;
}
-keepclassmembers class dk.bearware.IntPtr {
  <fields>;
}
-keep class dk.bearware.MediaFileInfo {
  <init>();
  <fields>;
}
-keep class dk.bearware.OpusCodec {
  <init>();
  <fields>;
}
-keep class dk.bearware.RemoteFile {
  <init>();
  <fields>;
}
-keep class dk.bearware.ServerProperties {
  <init>();
  <fields>;
}
-keep class dk.bearware.ServerStatistics {
  <init>();
  <fields>;
}
-keep class dk.bearware.SoundDevice {
  <init>();
  <fields>;
}
-keep class dk.bearware.SpeexCodec {
  <init>();
  <fields>;
}
-keepclassmembers class dk.bearware.SpeexDSP {
  <fields>;
}
-keep class dk.bearware.SpeexVBRCodec {
  <init>();
  <fields>;
}
-keep class dk.bearware.TextMessage {
  <init>();
  <fields>;
}
-keepclassmembers class dk.bearware.TTMessage {
  <fields>;
}
-keep class dk.bearware.User {
  <init>();
  <fields>;
}
-keep class dk.bearware.UserAccount {
  <init>();
  <fields>;
}
-keepclassmembers class dk.bearware.UserStatistics {
  <fields>;
}
-keep class dk.bearware.VideoCaptureDevice {
  <init>();
  <fields>;
}
-keepclassmembers class dk.bearware.VideoCodec {
  <fields>;
}
-keep class dk.bearware.VideoFormat {
  <init>();
  <fields>;
}
-keep class dk.bearware.VideoFrame {
  <init>();
  <fields>;
}
-keep class dk.bearware.WebMVP8Codec {
  <init>();
  <fields>;
}

# =============================================================================
# KODE TAMBAHAN UNTUK OPTIMASI & MENGECILKAN UKURAN APK
# =============================================================================

# 1. Mengamankan seluruh paket dk.bearware secara total dari penyusutan agresif
-keep class dk.bearware.** { *; }

# 2. Mengamankan library GSON yang Anda gunakan di build.gradle
-keep class com.google.gson.** { *; }
-keepattributes Signature
-keepattributes *Annotation*
-keepattributes EnclosingMethod, InnerClasses

# 3. Menghapus log debug bawaan dari Android untuk memangkas ukuran teks log
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int d(...);
}

# 4. Mengabaikan peringatan (warnings) dari library pihak ketiga saat proses build
-dontwarn com.google.gson.**
-dontwarn androidx.**
