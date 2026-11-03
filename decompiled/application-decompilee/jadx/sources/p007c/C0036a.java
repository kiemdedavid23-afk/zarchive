package p007c;

/* JADX INFO: renamed from: c.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0036a {

    /* JADX INFO: renamed from: g */
    public static boolean f241g = false;

    /* JADX INFO: renamed from: a */
    public final C0038c f242a;

    /* JADX INFO: renamed from: b */
    public final a f243b = new a();

    /* JADX INFO: renamed from: c */
    public final a f244c = new a();

    /* JADX INFO: renamed from: d */
    public final a f245d = new a();

    /* JADX INFO: renamed from: e */
    public long f246e = 0;

    /* JADX INFO: renamed from: f */
    public boolean f247f = false;

    /* JADX INFO: renamed from: c.a$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public int f248a;

        /* JADX INFO: renamed from: b */
        public int f249b;

        /* JADX INFO: renamed from: c */
        public int f250c;

        /* JADX INFO: renamed from: d */
        public int f251d;
    }

    public C0036a(C0038c c0038c) {
        this.f242a = c0038c;
    }

    /* JADX INFO: renamed from: a */
    public static int m138a(float f2, float f3, float f4) {
        double d2;
        double d3 = f2;
        double d4 = f3;
        double d5 = (((double) f4) - d4) / 2.0d;
        double d6 = d3 * 2.0d;
        if (d6 < 1.0d) {
            d2 = (d5 * d6 * d6) + d4;
        } else {
            double d7 = d6 - 1.0d;
            d2 = ((((d7 - 2.0d) * d7) - 1.0d) * (-d5)) + d4;
        }
        return (int) d2;
    }
}
