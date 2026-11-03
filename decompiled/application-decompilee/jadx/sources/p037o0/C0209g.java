package p037o0;

import p035n0.AbstractC0194a;

/* JADX INFO: renamed from: o0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0209g extends C0203a {
    /* JADX INFO: renamed from: c */
    public static boolean m615c(AbstractC0194a abstractC0194a, String str, boolean z2) {
        StringBuilder sb = new StringBuilder();
        if (C0203a.m606b()) {
            sb.append(C0203a.m605a());
            sb.append(" rm -f ");
        } else {
            sb.append("rm ");
        }
        if (z2) {
            sb.append("-r ");
        }
        sb.append('\'');
        sb.append(str.replace("'", "'\\''"));
        sb.append('\'');
        if (!abstractC0194a.m592b(sb.toString())) {
            return false;
        }
        abstractC0194a.m599k(false);
        return abstractC0194a.f1190h == 0;
    }
}
