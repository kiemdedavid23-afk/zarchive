package p038p;

import java.nio.ByteBuffer;
import p004b.C0015d;
import p013e.C0076b;
import p042r.C0238b;

/* JADX INFO: renamed from: p.j */
/* JADX INFO: loaded from: classes.dex */
public final class C0219j {

    /* JADX INFO: renamed from: a */
    public String f1253a;

    /* JADX INFO: renamed from: b */
    public final short f1254b;

    /* JADX INFO: renamed from: c */
    public C0076b f1255c;

    /* JADX INFO: renamed from: d */
    public ByteBuffer f1256d;

    /* JADX INFO: renamed from: e */
    public long[] f1257e;

    /* JADX INFO: renamed from: f */
    public C0076b f1258f;

    /* JADX INFO: renamed from: g */
    public final int f1259g;

    public C0219j(C0220k c0220k) {
        this.f1254b = (short) (c0220k.f1260d & 255);
        this.f1259g = c0220k.f1263g.f1235a & 65535;
    }

    /* JADX INFO: renamed from: a */
    public final C0213d m618a(int i2) {
        long[] jArr = this.f1257e;
        if (i2 >= jArr.length) {
            return null;
        }
        long j2 = jArr[i2];
        if (j2 == 4294967295L) {
            return null;
        }
        C0015d.m56R(this.f1256d, j2);
        long jPosition = this.f1256d.position();
        C0213d c0213d = new C0213d();
        c0213d.f1236a = C0015d.m61W(this.f1256d);
        c0213d.f1237b = C0015d.m61W(this.f1256d);
        c0213d.f1238c = this.f1255c.m260a(this.f1256d.getInt());
        if ((c0213d.f1237b & 1) == 0) {
            C0015d.m56R(this.f1256d, jPosition + ((long) c0213d.f1236a));
            c0213d.f1239d = C0238b.m692a(this.f1256d, this.f1258f);
            return c0213d;
        }
        C0214e c0214e = new C0214e(c0213d);
        c0214e.f1240e = C0015d.m60V(this.f1256d);
        c0214e.f1241f = C0015d.m60V(this.f1256d);
        C0015d.m56R(this.f1256d, jPosition + ((long) c0213d.f1236a));
        C0218i[] c0218iArr = new C0218i[(int) c0214e.f1241f];
        for (int i3 = 0; i3 < c0214e.f1241f; i3++) {
            C0218i c0218i = new C0218i();
            C0015d.m60V(this.f1256d);
            C0238b.m692a(this.f1256d, this.f1258f);
            c0218iArr[i3] = c0218i;
        }
        c0214e.f1242g = c0218iArr;
        return c0214e;
    }

    public final String toString() {
        return "Type{name='" + this.f1253a + "', id=" + ((int) this.f1254b) + '}';
    }
}
