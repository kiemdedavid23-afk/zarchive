package p034n;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import p004b.C0015d;
import p032m.C0177a;
import p036o.C0200a;
import p036o.C0202c;
import p038p.C0210a;
import p038p.C0211b;
import p038p.C0212c;
import p038p.C0217h;
import p038p.C0220k;
import p038p.C0222m;
import p042r.C0238b;

/* JADX INFO: renamed from: n.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0190d {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1174a = 1;

    /* JADX INFO: renamed from: b */
    public Object f1175b;

    /* JADX INFO: renamed from: c */
    public Comparable f1176c;

    /* JADX INFO: renamed from: d */
    public Object f1177d;

    public C0190d() {
    }

    /* JADX INFO: renamed from: a */
    public final C0200a m588a() {
        long jPosition = ((ByteBuffer) this.f1176c).position();
        int iM61W = C0015d.m61W((ByteBuffer) this.f1176c);
        int iM61W2 = C0015d.m61W((ByteBuffer) this.f1176c);
        int iM60V = (int) C0015d.m60V((ByteBuffer) this.f1176c);
        if (iM61W != 0) {
            if (iM61W == 1) {
                C0202c c0202c = new C0202c(iM61W2, iM60V);
                c0202c.f1214d = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                c0202c.f1215e = C0015d.m60V((ByteBuffer) this.f1176c);
                c0202c.f1216f = C0015d.m60V((ByteBuffer) this.f1176c);
                C0015d.m60V((ByteBuffer) this.f1176c);
                C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                return c0202c;
            }
            if (iM61W == 2) {
                C0217h c0217h = new C0217h(iM61W2, iM60V);
                c0217h.f1252d = (int) C0015d.m60V((ByteBuffer) this.f1176c);
                C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                return c0217h;
            }
            switch (iM61W) {
                case 512:
                    C0211b c0211b = new C0211b(iM61W2, iM60V);
                    c0211b.f1232d = (int) C0015d.m60V((ByteBuffer) this.f1176c);
                    ByteBuffer byteBuffer = (ByteBuffer) this.f1176c;
                    Charset charset = C0238b.f1328a;
                    StringBuilder sb = new StringBuilder(128);
                    for (int i2 = 0; i2 < 128; i2++) {
                        sb.append(byteBuffer.getChar());
                    }
                    String string = sb.toString();
                    for (int i3 = 0; i3 < string.length(); i3++) {
                        if (string.charAt(i3) == 0) {
                            string.substring(0, i3);
                            c0211b.f1233e = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                            C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                            c0211b.f1234f = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                            C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                            C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                            return c0211b;
                        }
                    }
                    c0211b.f1233e = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    c0211b.f1234f = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                    return c0211b;
                case 513:
                    C0220k c0220k = new C0220k(iM61W2, iM60V);
                    c0220k.f1260d = (byte) C0015d.m59U((ByteBuffer) this.f1176c);
                    C0015d.m59U((ByteBuffer) this.f1176c);
                    C0015d.m61W((ByteBuffer) this.f1176c);
                    c0220k.f1261e = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    c0220k.f1262f = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    long jPosition2 = ((ByteBuffer) this.f1176c).position();
                    C0212c c0212c = new C0212c();
                    long jM60V = C0015d.m60V((ByteBuffer) this.f1176c);
                    ((ByteBuffer) this.f1176c).getShort();
                    ((ByteBuffer) this.f1176c).getShort();
                    byte[] bArr = new byte[2];
                    ((ByteBuffer) this.f1176c).get(bArr);
                    new String(bArr).replace("\u0000", "");
                    byte[] bArr2 = new byte[2];
                    ((ByteBuffer) this.f1176c).get(bArr2);
                    new String(bArr2).replace("\u0000", "");
                    C0015d.m59U((ByteBuffer) this.f1176c);
                    C0015d.m59U((ByteBuffer) this.f1176c);
                    c0212c.f1235a = (short) C0015d.m61W((ByteBuffer) this.f1176c);
                    long jPosition3 = ((ByteBuffer) this.f1176c).position();
                    ByteBuffer byteBuffer2 = (ByteBuffer) this.f1176c;
                    byteBuffer2.position(byteBuffer2.position() + ((int) (jM60V - (jPosition3 - jPosition2))));
                    c0220k.f1263g = c0212c;
                    C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                    return c0220k;
                case 514:
                    C0222m c0222m = new C0222m(iM61W2, iM60V);
                    c0222m.f1267d = (byte) C0015d.m59U((ByteBuffer) this.f1176c);
                    C0015d.m59U((ByteBuffer) this.f1176c);
                    C0015d.m61W((ByteBuffer) this.f1176c);
                    c0222m.f1268e = C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                    return c0222m;
                case 515:
                    C0210a c0210a = new C0210a(iM61W2, iM60V);
                    C0015d.m85m(C0015d.m60V((ByteBuffer) this.f1176c));
                    C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
                    return c0210a;
                case 516:
                case 517:
                case 518:
                    break;
                default:
                    throw new C0177a("Unexpected chunk Type: 0x" + Integer.toHexString(iM61W));
            }
        }
        C0015d.m56R((ByteBuffer) this.f1176c, jPosition + ((long) iM61W2));
        return new C0210a(iM61W2, iM60V);
    }

    public final String toString() {
        switch (this.f1174a) {
            case 1:
                StringBuilder sb = new StringBuilder("<");
                String str = (String) this.f1175b;
                if (str != null) {
                    sb.append(str);
                    sb.append(":");
                }
                sb.append((String) this.f1176c);
                sb.append('>');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public C0190d(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        this.f1176c = byteBufferDuplicate;
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
    }
}
