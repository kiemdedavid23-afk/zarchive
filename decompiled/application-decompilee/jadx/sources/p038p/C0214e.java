package p038p;

import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: p.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0214e extends C0213d {

    /* JADX INFO: renamed from: e */
    public long f1240e;

    /* JADX INFO: renamed from: f */
    public long f1241f;

    /* JADX INFO: renamed from: g */
    public C0218i[] f1242g;

    public C0214e(C0213d c0213d) {
        this.f1236a = c0213d.f1236a;
        this.f1237b = c0213d.f1237b;
        this.f1238c = c0213d.f1238c;
    }

    @Override // p038p.C0213d
    /* JADX INFO: renamed from: a */
    public final String mo616a(C0216g c0216g, Locale locale) {
        C0218i[] c0218iArr = this.f1242g;
        if (c0218iArr.length > 0) {
            c0218iArr[0].getClass();
        }
        return null;
    }

    @Override // p038p.C0213d
    public final String toString() {
        return "ResourceMapEntry{parent=" + this.f1240e + ", count=" + this.f1241f + ", resourceTableMaps=" + Arrays.toString(this.f1242g) + '}';
    }
}
