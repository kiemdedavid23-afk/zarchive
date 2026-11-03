package p055w0;

import android.content.Context;
import android.os.AsyncTask;
import android.os.storage.StorageManager;
import ru.zdevs.zarchiver.C0287a;

/* JADX INFO: renamed from: w0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0414e {
    /* JADX INFO: renamed from: a */
    public static void m1132a(Context context, C0287a c0287a) {
        c0287a.f2158a = new StorageManagerStorageVolumeCallbackC0413d(c0287a);
        ((StorageManager) context.getSystemService("storage")).registerStorageVolumeCallback(AsyncTask.THREAD_POOL_EXECUTOR, (StorageManager.StorageVolumeCallback) c0287a.f2158a);
    }
}
