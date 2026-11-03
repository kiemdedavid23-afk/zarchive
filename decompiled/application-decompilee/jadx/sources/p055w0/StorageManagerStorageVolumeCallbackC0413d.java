package p055w0;

import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import ru.zdevs.zarchiver.C0287a;

/* JADX INFO: renamed from: w0.d */
/* JADX INFO: loaded from: classes.dex */
public final class StorageManagerStorageVolumeCallbackC0413d extends StorageManager.StorageVolumeCallback {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0412c.b f2159a;

    public StorageManagerStorageVolumeCallbackC0413d(C0287a c0287a) {
        this.f2159a = c0287a;
    }

    @Override // android.os.storage.StorageManager.StorageVolumeCallback
    public final void onStateChanged(StorageVolume storageVolume) {
        String state = storageVolume.getState();
        if ("ejecting".equals(state)) {
            this.f2159a.mo784c(storageVolume, true);
        } else if ("mounted".equals(state)) {
            this.f2159a.mo784c(storageVolume, false);
        }
    }
}
