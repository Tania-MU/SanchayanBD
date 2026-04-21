# Add project specific ProGuard rules here.
-keep class com.sanchayanbd.app.** { *; }
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
