package p052v;

/* JADX INFO: renamed from: v.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0388c extends AbstractC0392g {

    /* JADX INFO: renamed from: f */
    public final /* synthetic */ int f2099f;

    @Override // p052v.AbstractC0387b
    /* JADX INFO: renamed from: b */
    public final int mo1086b(byte[] bArr, int i2) {
        int i3;
        switch (this.f2099f) {
            case 0:
                int i4 = bArr[i2] & 255;
                if (i4 < 161) {
                    return -1;
                }
                return (((i4 - 161) * 94) + (bArr[i2 + 1] & 255)) - 161;
            default:
                int i5 = bArr[i2] & 255;
                if (i5 >= 129 && i5 <= 159) {
                    i3 = i5 - 129;
                } else {
                    if (i5 < 224 || i5 > 239) {
                        return -1;
                    }
                    i3 = (i5 - 224) + 31;
                }
                int i6 = bArr[i2 + 1] & 255;
                int i7 = (i6 - 64) + (i3 * 188);
                if (i6 >= 128) {
                    i7--;
                }
                return i7;
        }
    }
}
