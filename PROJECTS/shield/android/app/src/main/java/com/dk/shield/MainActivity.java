package com.dk.shield;

import androidx.annotation.NonNull;

import android.content.res.Configuration;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.util.Log;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "sendSms";

    private MethodChannel.Result callResult;

    // @Override
    // protected void onCreate(Bundle savedInstanceState) {
    // super.onCreate(savedInstanceState);
    // GeneratedPluginRegistrant.registerWith(this);
    // new MethodChannel(getFlutterView(), CHANNEL).setMethodCallHandler(
    // new MethodChannel.MethodCallHandler() {
    // @Override
    // public void onMethodCall(MethodCall call, MethodChannel.Result result) {
    // if (call.method.equals("send")) {
    // String num = call.argument("phone");
    // String msg = call.argument("msg");
    // sendSMS(num, msg, result);
    // } else {
    // result.notImplemented();
    // }
    // }
    // });
    // }

    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        new MethodChannel.MethodCallHandler() {
                            @Override
                            public void onMethodCall(MethodCall call, MethodChannel.Result result) {
                                if (call.method.equals("send")) {
                                    String num = call.argument("phone");
                                    String msg = call.argument("msg");
                                    sendSMS(num, msg, result);
                                } else {
                                    result.notImplemented();
                                }
                            }
                        });
    }

    private void sendSMS(String phoneNo, String msg, MethodChannel.Result result) {
        try {
            SmsManager smsManager = SmsManager.getDefault();
            smsManager.sendTextMessage(phoneNo, null, msg, null, null);
            result.success("SMS Sent");
        } catch (Exception ex) {
            ex.printStackTrace();
            result.error("Err", "Sms Not Sent", "");
        }
    }

}