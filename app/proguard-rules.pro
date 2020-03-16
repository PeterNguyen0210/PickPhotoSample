# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/wanbo/Dev/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-ignorewarnings

#glide

-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class * extends com.bumptech.glide.module.AppGlideModule {
 <init>(...);
}
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
-keep class com.bumptech.glide.load.data.ParcelFileDescriptorRewinder$InternalRewinder {
  *** rewind();
}

# Uncomment for DexGuard only
#-keepresourcexmlelements manifest/application/meta-data@value=GlideModule

# moretype
-keepclassmembers  class * extends com.werb.library.link.XDiffCallback{
 public <init>(java.util.List, java.util.List);
}
-keepclassmembers class * extends com.werb.library.MoreViewHolder{
 public <init>(java.util.Map, android.view.View);
}

#eventbus
-keep class com.werb.eventbus.SubscriberMethodHunter {*;}
-keep enum com.werb.eventbus.ThreadMode { *; }
-keep class * implements com.werb.eventbus.IEvent
-keepclassmembers class * {
    @com.werb.eventbus.Subscribe <methods>;
}

# pickPhoto
-keepattributes *Annotation*
-keep @android.support.annotation.Keep class **
-keep @androidx.annotation.Keep class **
