package p050u;

/* JADX INFO: renamed from: u.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0375a extends AbstractC0376b {
    @Override // p050u.AbstractC0376b
    /* JADX INFO: renamed from: a */
    public final int mo1050a(byte[] bArr, int i2) {
        int i3;
        if ((bArr[i2] & 255) != 164 || (i3 = bArr[i2 + 1] & 255) < 161 || i3 > 243) {
            return -1;
        }
        return i3 - 161;
    }
}
