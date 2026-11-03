package p037o0;

import p020g0.C0129h;

/* JADX INFO: renamed from: o0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0208f {
    /* JADX INFO: renamed from: a */
    public static boolean m614a(C0129h c0129h) {
        String str = c0129h.f1015c;
        return str.startsWith("/data/") || str.startsWith("/sys/") || str.startsWith("/system/");
    }
}
