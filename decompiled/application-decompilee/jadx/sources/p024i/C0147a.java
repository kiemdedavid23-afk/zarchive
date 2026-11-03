package p024i;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;

/* JADX INFO: renamed from: i.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0147a {

    /* JADX INFO: renamed from: a */
    public KeyStore f1045a;

    /* JADX INFO: renamed from: b */
    public final int f1046b = 3;

    public C0147a(Context context) {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            this.f1045a = keyStore;
            keyStore.load(null);
            if (this.f1045a.containsAlias("ZA_AP_fragment")) {
                return;
            }
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
            keyGenerator.init(new KeyGenParameterSpec.Builder("ZA_AP_fragment", 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setRandomizedEncryptionRequired(false).build());
            keyGenerator.generateKey();
        } catch (IOException | InvalidAlgorithmParameterException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | CertificateException unused) {
        }
    }

    /* JADX INFO: renamed from: c */
    public static byte[] m507c(String str) {
        byte[] bArr = new byte[12];
        String upperCase = str.replace("/", "").replace(".", "").toUpperCase();
        if (upperCase.isEmpty()) {
            upperCase = "ZAza";
        }
        int length = upperCase.length();
        for (int i2 = 0; i2 < 12; i2++) {
            bArr[i2] = (byte) upperCase.charAt((length - (i2 % length)) - 1);
        }
        return bArr;
    }

    /* JADX INFO: renamed from: a */
    public final String m508a(String str, byte[] bArr) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, this.f1046b);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, (SecretKey) this.f1045a.getKey("ZA_AP_fragment", null), new GCMParameterSpec(128, bArr));
            return new String(cipher.doFinal(bArrDecode), "UTF-8");
        } catch (UnsupportedEncodingException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    public final String m509b(String str, byte[] bArr) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = str.getBytes("UTF-8");
            SecretKey secretKey = (SecretKey) this.f1045a.getKey("ZA_AP_fragment", null);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, secretKey, new GCMParameterSpec(128, bArr));
            return Base64.encodeToString(cipher.doFinal(bytes), this.f1046b);
        } catch (UnsupportedEncodingException | InvalidAlgorithmParameterException | InvalidKeyException | KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException unused) {
            return null;
        }
    }
}
