package p042r;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p004b.C0015d;
import p013e.C0076b;
import p034n.C0192f;
import p036o.AbstractC0201b;
import p036o.C0202c;

/* JADX INFO: renamed from: r.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0238b {

    /* JADX INFO: renamed from: a */
    public static final Charset f1328a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a */
    public static AbstractC0201b m692a(ByteBuffer byteBuffer, C0076b c0076b) {
        byteBuffer.getShort();
        byteBuffer.get();
        short s2 = (short) (byteBuffer.get() & 255);
        if (s2 == 0) {
            return AbstractC0201b.f.f1210b;
        }
        if (s2 == 1) {
            return new AbstractC0201b.i(byteBuffer.getInt());
        }
        if (s2 == 3) {
            int i2 = byteBuffer.getInt();
            if (i2 >= 0) {
                return new AbstractC0201b.j(i2, c0076b);
            }
            return null;
        }
        if (s2 == 5) {
            return new AbstractC0201b.c(byteBuffer.getInt());
        }
        if (s2 == 6) {
            return new AbstractC0201b.d(byteBuffer.getInt());
        }
        switch (s2) {
            case 16:
                return new AbstractC0201b.b(byteBuffer.getInt());
            case 17:
                return new AbstractC0201b.e(byteBuffer.getInt());
            case 18:
                return new AbstractC0201b.a(byteBuffer.getInt());
            default:
                switch (s2) {
                    case 28:
                    case 30:
                        return new AbstractC0201b.g(byteBuffer.getInt(), 8);
                    case 29:
                    case 31:
                        return new AbstractC0201b.g(byteBuffer.getInt(), 6);
                    default:
                        return new AbstractC0201b.h(byteBuffer.getInt(), s2);
                }
        }
    }

    /* JADX INFO: renamed from: b */
    public static C0076b m693b(ByteBuffer byteBuffer, C0202c c0202c) {
        int i2;
        String string;
        long jPosition = byteBuffer.position();
        int i3 = c0202c.f1214d;
        int[] iArr = new int[i3];
        if (i3 > 0) {
            for (int i4 = 0; i4 < c0202c.f1214d; i4++) {
                iArr[i4] = (int) C0015d.m60V(byteBuffer);
            }
        }
        boolean z2 = (c0202c.f1215e & 256) != 0;
        long j2 = c0202c.f1216f + jPosition;
        short s2 = c0202c.f1207b;
        long j3 = j2 - ((long) s2);
        C0015d.m56R(byteBuffer, j3);
        C0192f[] c0192fArr = new C0192f[i3];
        int i5 = 0;
        while (i5 < i3) {
            c0192fArr[i5] = new C0192f(i5, (((long) iArr[i5]) & 4294967295L) + j3);
            i5++;
            z2 = z2;
        }
        boolean z3 = z2;
        C0076b c0076b = new C0076b(c0202c.f1214d, 1);
        String str = null;
        long j4 = -1;
        int i6 = 0;
        while (i6 < i3) {
            C0192f c0192f = c0192fArr[i6];
            long j5 = c0192f.f1182b;
            int i7 = i3;
            Object obj = c0076b.f526a;
            long j6 = j4;
            int i8 = c0192f.f1181a;
            if (j5 == j4) {
                ((String[]) obj)[i8] = str;
                j4 = j6;
            } else {
                C0015d.m56R(byteBuffer, j5);
                if (z3) {
                    if ((((short) (byteBuffer.get() & 255)) & 128) != 0) {
                        byteBuffer.get();
                    }
                    int i9 = (short) (byteBuffer.get() & 255);
                    if ((i9 & 128) != 0) {
                        i9 = (((i9 & 127) << 8) | 0) + ((short) (byteBuffer.get() & 255));
                    }
                    byte[] bArr = new byte[i9];
                    byteBuffer.get(bArr);
                    string = new String(bArr, f1328a);
                    byteBuffer.get();
                } else {
                    int i10 = byteBuffer.getShort() & 65535;
                    if ((32768 & i10) != 0) {
                        i2 = 0;
                        i10 = (((i10 & 32767) << 16) | 0) + (65535 & byteBuffer.getShort());
                    } else {
                        i2 = 0;
                    }
                    StringBuilder sb = new StringBuilder(i10);
                    for (int i11 = i2; i11 < i10; i11++) {
                        sb.append(byteBuffer.getChar());
                    }
                    string = sb.toString();
                    byteBuffer.getShort();
                }
                ((String[]) obj)[i8] = string;
                str = string;
                j4 = c0192f.f1182b;
            }
            i6++;
            i3 = i7;
        }
        C0015d.m56R(byteBuffer, jPosition + ((long) (c0202c.f1208c - s2)));
        return c0076b;
    }
}
