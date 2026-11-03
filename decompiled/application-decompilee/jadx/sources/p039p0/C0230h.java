package p039p0;

import android.content.res.Resources;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: p0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0230h {

    /* JADX INFO: renamed from: a */
    public final int f1310a;

    public C0230h(int i2) {
        this.f1310a = i2;
    }

    public final String toString() {
        ZApp zApp = ZApp.f1375c;
        if (zApp == null) {
            return "";
        }
        if (this.f1310a == 0) {
            return zApp.getString(R.string.MES_EMPTY);
        }
        Resources resources = zApp.getResources();
        int i2 = this.f1310a;
        return resources.getQuantityString(R.plurals.FINFO_ITEM_COUNT, i2, Integer.valueOf(i2));
    }
}
