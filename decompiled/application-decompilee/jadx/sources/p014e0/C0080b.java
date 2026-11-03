package p014e0;

import java.util.ArrayList;

/* JADX INFO: renamed from: e0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0080b {

    /* JADX INFO: renamed from: a */
    public final String f586a;

    /* JADX INFO: renamed from: b */
    public long f587b = 0;

    /* JADX INFO: renamed from: c */
    public int f588c = 0;

    /* JADX INFO: renamed from: d */
    public final int f589d;

    /* JADX INFO: renamed from: e */
    public final ArrayList<C0080b> f590e;

    /* JADX INFO: renamed from: f */
    public C0080b f591f;

    public C0080b(String str, int i2) {
        this.f586a = str;
        this.f589d = i2;
        if (m281b()) {
            this.f590e = new ArrayList<>();
        } else {
            this.f590e = null;
        }
        this.f591f = null;
    }

    /* JADX INFO: renamed from: a */
    public final C0080b m280a(String str) {
        ArrayList<C0080b> arrayList = this.f590e;
        if (arrayList == null) {
            return null;
        }
        for (C0080b c0080b : arrayList) {
            if (c0080b.f586a.equals(str)) {
                return c0080b;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final boolean m281b() {
        return (this.f589d & 1) != 0;
    }
}
