package com.example.springboot.tools;

import org.springframework.security.crypto.codec.Hex;
import java.security.MessageDigest;

public class Utils {

    // Вычисляет SHA-256 по конкатенации строк пароля и salt для смены и проверки пароля
    public static String ComputeHash(String pwd, String salt)
    {
        MessageDigest digest;
        // Массив, содержащий пароль, преобразуется в HEXASCII и склеивается с salt
        byte[] w = Hex.decode(new String(Hex.encode(pwd.getBytes())) + salt);
        try {
            digest = MessageDigest.getInstance("SHA-256");
        }
        catch (Exception ex) {
            return new String();
        }
        return new String(Hex.encode(digest.digest(w)));
    }
}

