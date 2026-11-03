package p049t0;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;

/* JADX INFO: renamed from: t0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0374b {

    /* JADX INFO: renamed from: a */
    public String f2073a;

    /* JADX INFO: renamed from: b */
    public String f2074b;

    /* JADX INFO: renamed from: c */
    public String f2075c;

    /* JADX INFO: renamed from: d */
    public int f2076d;

    /* JADX INFO: renamed from: e */
    public int f2077e;

    public C0374b(ResolveInfo resolveInfo) {
        this.f2073a = null;
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        this.f2074b = activityInfo.packageName;
        this.f2075c = activityInfo.name;
        this.f2076d = 1;
        this.f2077e = 0;
    }

    public C0374b() {
    }
}
