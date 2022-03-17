package com.example.lab;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.TextView;


import com.example.lab.databinding.ActivityMainBinding;

import java.nio.charset.StandardCharsets;

public class MainActivity extends AppCompatActivity {

    // Used to load the 'lab' library on application startup.

    static {
        System.loadLibrary("lab");
        System.loadLibrary("mbedcrypto");
    }

    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        int res = initRng();
        byte[] v = randomBytes(10);
        byte[] key  = "AB093ASM300T5Y67".getBytes(StandardCharsets.UTF_8);
        byte[] data = "___HELLO_LABS___".getBytes(StandardCharsets.UTF_8);
        byte[] encripted = encrypt(key, data);
        byte[] decripted = decrypt(key, encripted);

        String str = new String(decripted, StandardCharsets.UTF_8);


        // Example of a call to a native method
        TextView tv = findViewById(R.id.sample_text);
        tv.setText(stringFromJNI());

    }

    /**
     * A native method that is implemented by the 'lab' native library,
     * which is packaged with this application.
     */
    public static native int initRng();
    public static native byte[] randomBytes(int no);
    public static native byte[] encrypt(byte[] key, byte[] data);
    public static native byte[] decrypt(byte[] key, byte[] data);
    public native String stringFromJNI();
}