# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/mackson/Library/Android/sdk/tools/proguard/proguard-android.txt
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

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-dontusemixedcaseclassnames

# 不混淆第三方引用的库
-dontskipnonpubliclibraryclasses

# 不做预校验
-dontpreverify

# 忽略警告
-ignorewarning


# 嵌入广点通sdk时必须添加
-keep class com.qq.e.** {
    public protected *;
}

# 嵌入广点通sdk时必须添加
-keep class android.support.v4.**{ *;}

# Demo工程里用到了AQuery库，因此需要添加下面的配置
# 请开发者根据自己实际情况给第三方库的添加相应的混淆设置
-dontwarn com.androidquery.**
-keep class com.androidquery.** { *;}

