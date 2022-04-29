#include <jni.h>
#include <string>
#include <android/log.h>
#include <spdlog/spdlog.h>
#include "spdlog/sinks/android_sink.h"

#define LOG_INFO(...) __android_log_print(ANDROID_LOG_INFO, "fclient_ndk", __VA_ARGS__)
#define SLOG_INFO(...) android_logger->info( __VA_ARGS__ )
auto android_logger = spdlog::android_logger_mt("android", "fclient_ndk");

extern "C" JNIEXPORT jstring JNICALL
Java_com_example_lr1_MainActivity_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++";
    LOG_INFO("Hello from Android log %d", 2022);
    SLOG_INFO("Hello from SpdLog {}", 2022);
    return env->NewStringUTF(hello.c_str());
}