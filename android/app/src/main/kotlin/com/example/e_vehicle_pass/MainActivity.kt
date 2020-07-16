package com.example.e_vehicle_pass

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant

import android.os.Bundle

class MainActivity: FlutterActivity() {


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        getWindow().setStatusBarColor(0x00000000)
        GeneratedPluginRegistrant.registerWith(flutterEngine);
    }
}
