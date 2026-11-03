package p060z;

import android.content.ClipData;
import java.util.ArrayList;
import p020g0.C0129h;
import p033m0.C0185h;
import p051u0.C0383f;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0415f;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: z.m0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0478m0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final ClipData f2316e;

    public C0478m0(int i2, ClipData clipData) {
        this.f2316e = clipData;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() throws Throwable {
        ZApp zApp = ZApp.f1375c;
        if (zApp == null) {
            return null;
        }
        int itemCount = this.f2316e.getItemCount();
        ArrayList arrayList = new ArrayList(itemCount);
        for (int i2 = 0; i2 < itemCount; i2++) {
            String strM1073d = C0383f.m1073d(zApp, this.f2316e.getItemAt(i2).getUri());
            if (strM1073d != null) {
                String[] strArrM1133a = C0415f.m1133a(strM1073d);
                if (strArrM1133a != null && C0185h.m580b(strArrM1133a)) {
                    strM1073d = C0185h.m579a(strM1073d, strArrM1133a[2]);
                }
                arrayList.add(new C0129h("file", strM1073d));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new C0501y(arrayList);
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 14;
    }
}
