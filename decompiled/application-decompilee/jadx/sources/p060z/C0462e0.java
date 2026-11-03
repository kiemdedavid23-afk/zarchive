package p060z;

import java.io.File;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;

/* JADX INFO: renamed from: z.e0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0462e0 extends AbstractCallableC0395c {

    /* JADX INFO: renamed from: e */
    public final String f2283e;

    /* JADX INFO: renamed from: f */
    public final int f2284f;

    public C0462e0(int i2, String str) {
        this.f2283e = str;
        this.f2284f = i2;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: f */
    public final C0393a.b mo343f() {
        String str = this.f2283e;
        int i2 = this.f2284f;
        if (i2 != 0) {
            if (i2 != 1) {
                return null;
            }
            new File(str).setLastModified(System.currentTimeMillis());
            return null;
        }
        File file = new File(str + ".hash");
        if (!file.exists() || !file.delete()) {
            return null;
        }
        File file2 = new File(str);
        if (file2.delete()) {
            return null;
        }
        file2.getAbsolutePath();
        return null;
    }

    @Override // p053v0.AbstractCallableC0395c
    /* JADX INFO: renamed from: j */
    public final int mo344j() {
        return 1002;
    }
}
