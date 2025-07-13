package com.example.techrar_project_team_dashboard

import android.annotation.TargetApi
import android.net.wifi.WifiManager
import java.net.Proxy
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Build
import android.os.Bundle
import android.content.Context
import android.app.Activity
import android.os.Environment
import android.util.Log
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import org.json.JSONObject
import java.io.File
import java.net.HttpURLConnection
import java.net.InetAddress
import java.net.URL
import java.net.ProxySelector
import java.net.URI

class MainActivity: FlutterActivity() {
    private val CHANNEL = "spoofing_detector"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            when (call.method) {
                "isUsingVpn" -> result.success(isVpnActive())
                "isEmulator" -> result.success(isRunningOnEmulator())
                "isMacSpoofed" -> result.success(isMacRandomized())
                "isUsingProxy" -> result.success(isUsingProxy())
                "isDnsSpoofed" -> {
                    val domain = call.argument<String>("domain") ?: "google.com"
                    result.success(isDnsSpoofed(domain))
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun isVpnActive(): Boolean {
        // return false;

        val cm = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        val networks = cm.allNetworks
        for (network in networks) {
            val caps = cm.getNetworkCapabilities(network)
            if (caps != null && caps.hasTransport(NetworkCapabilities.TRANSPORT_VPN)) {
                return true
            }
        }
        return false
    }

    private fun isRunningOnEmulator(): Boolean {
         return false;

        return (Build.FINGERPRINT.contains("generic")
                || Build.MODEL.contains("emulator")
                || Build.MODEL.contains("Genymotion")
                || Build.MODEL.contains("generic")
                || Build.MODEL.contains("emulator")
                || Build.MODEL.contains("Genymotion")
                || Build.BRAND.contains("generic")
                || Build.BRAND.contains("emulator")
                || Build.BRAND.contains("Genymotion")
                || Build.DEVICE.contains("generic")
                || Build.DEVICE.contains("emulator")
                || Build.DEVICE.contains("Genymotion"))
    }

    private fun isMacRandomized(): Boolean {
        // return false;

        return try {
            val wifiManager = applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
            val mac = wifiManager.connectionInfo.macAddress
            mac?.startsWith("02:") == true
        } catch (e: Exception) {
            false
        }
    }

    private fun isUsingProxy(): Boolean {
        // return false;

        return try {
            val proxyHost = System.getProperty("http.proxyHost")
            val proxyPort = System.getProperty("http.proxyPort")
            if (!proxyHost.isNullOrEmpty() && proxyPort != null) return true

            val proxyList = ProxySelector.getDefault().select(URI("http://www.google.com"))
            proxyList.any { it.type() != Proxy.Type.DIRECT }
        } catch (e: Exception) {
            false
        }
    }

    private fun isDnsSpoofed(domain: String): Boolean {
        // return false;

        return try {
            val localIp = InetAddress.getByName(domain).hostAddress

            val url = URL("https://dns.google/resolve?name=$domain&type=A")
            val connection = url.openConnection() as HttpURLConnection
            connection.setRequestProperty("Accept", "application/dns-json")
            val response = connection.inputStream.bufferedReader().readText()
            val json = JSONObject(response)
            val answer = json.getJSONArray("Answer")
            val dohIp = answer.getJSONObject(0).getString("data")

            return localIp != dohIp
        } catch (e: Exception) {
            false
        }
    }
}

