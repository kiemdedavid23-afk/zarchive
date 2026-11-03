package p051u0;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: u0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0378a {
    /* JADX INFO: renamed from: a */
    public static void m1053a(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        if (str == null) {
            str = "ZA";
        }
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null) {
            return;
        }
        try {
            clipboardManager.setPrimaryClip(ClipData.newPlainText(str, str2));
            if (Build.VERSION.SDK_INT < 33) {
                ZApp.m725i(R.string.MES_COPIED);
            }
        } catch (SecurityException unused) {
            ZApp.m726j("SecurityException");
        }
    }
}
