package p021g1;

/* JADX INFO: renamed from: g1.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0131b {

    /* JADX INFO: renamed from: a */
    public final int[] f1020a;

    /* JADX INFO: renamed from: b */
    public final String[] f1021b;

    /* JADX INFO: renamed from: c */
    public final byte[] f1022c;

    /* JADX INFO: renamed from: d */
    public int f1023d;

    public C0131b(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Capacity: " + i2);
        }
        this.f1023d = 0;
        this.f1020a = new int[i2];
        this.f1021b = new String[i2];
        this.f1022c = new byte[i2];
    }

    /* JADX INFO: renamed from: a */
    public final byte m494a(String str) {
        boolean z2;
        int iHashCode = str.hashCode();
        for (int i2 = 0; i2 < this.f1023d; i2++) {
            if (this.f1020a[i2] == iHashCode) {
                String str2 = this.f1021b[i2];
                int length = str2.length();
                if (length != str.length()) {
                    z2 = false;
                    break;
                }
                int i3 = 0;
                while (true) {
                    int i4 = length - 1;
                    if (length == 0) {
                        z2 = true;
                        break;
                    }
                    if (str2.charAt(i3) != str.charAt(i3)) {
                        z2 = false;
                        break;
                    }
                    i3++;
                    length = i4;
                }
                if (z2) {
                    return this.f1022c[i2];
                }
            }
        }
        return (byte) 0;
    }

    /* JADX INFO: renamed from: b */
    public final void m495b(String str, byte b2) {
        int i2 = this.f1023d;
        int[] iArr = this.f1020a;
        if (i2 >= iArr.length) {
            throw new IllegalArgumentException("Capacity: " + iArr.length);
        }
        iArr[i2] = str.hashCode();
        int i3 = this.f1023d;
        this.f1021b[i3] = str;
        this.f1022c[i3] = b2;
        this.f1023d = i3 + 1;
    }
}
