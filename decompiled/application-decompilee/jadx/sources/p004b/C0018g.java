package p004b;

/* JADX INFO: renamed from: b.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0018g {

    /* JADX INFO: renamed from: d */
    public float f144d;

    /* JADX INFO: renamed from: e */
    public int f145e;

    /* JADX INFO: renamed from: a */
    public int f141a = -1;

    /* JADX INFO: renamed from: b */
    public int f142b = -1;

    /* JADX INFO: renamed from: c */
    public int f143c = 0;

    /* JADX INFO: renamed from: f */
    public C0013b[] f146f = new C0013b[8];

    /* JADX INFO: renamed from: g */
    public int f147g = 0;

    public C0018g(int i2) {
        this.f145e = i2;
    }

    /* JADX INFO: renamed from: a */
    public final void m120a(C0013b c0013b) {
        int i2 = 0;
        for (int i3 = 0; i3 < this.f147g; i3++) {
            if (this.f146f[i3] == c0013b) {
                while (true) {
                    int i4 = this.f147g;
                    if (i2 >= (i4 - i3) - 1) {
                        this.f147g = i4 - 1;
                        return;
                    }
                    C0013b[] c0013bArr = this.f146f;
                    int i5 = i3 + i2;
                    c0013bArr[i5] = c0013bArr[i5 + 1];
                    i2++;
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m121b() {
        this.f145e = 5;
        this.f143c = 0;
        this.f141a = -1;
        this.f142b = -1;
        this.f144d = 0.0f;
        this.f147g = 0;
    }

    public final String toString() {
        return "null";
    }
}
