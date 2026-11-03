package p037o0;

import android.os.Build;
import p035n0.AbstractC0194a;
import p055w0.C0410a;

/* JADX INFO: renamed from: o0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0207e {

    /* JADX INFO: renamed from: o0.e$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public String f1228a;

        /* JADX INFO: renamed from: b */
        public String f1229b;

        /* JADX INFO: renamed from: c */
        public String f1230c;

        /* JADX INFO: renamed from: d */
        public boolean f1231d;
    }

    /* JADX INFO: renamed from: a */
    public static int m613a(AbstractC0194a abstractC0194a, String str, C0410a.a aVar, boolean z2) {
        if (z2 && aVar != null && Build.VERSION.SDK_INT >= 29) {
            if (!abstractC0194a.m592b("tune2fs -l " + aVar.f2143a + " | grep 'shared_blocks'")) {
                return -1;
            }
            abstractC0194a.m599k(false);
            if (abstractC0194a.f1190h == 0) {
                return -2;
            }
        }
        Object[] objArr = new Object[2];
        objArr[0] = z2 ? "rw" : "ro";
        objArr[1] = str;
        if (!abstractC0194a.m592b(String.format("mount -o %s,remount %s", objArr))) {
            return -1;
        }
        abstractC0194a.m599k(false);
        return abstractC0194a.f1190h == 0 ? 0 : -1;
    }
}
