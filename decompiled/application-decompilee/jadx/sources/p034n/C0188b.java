package p034n;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Locale;
import p004b.C0015d;
import p013e.C0076b;
import p032m.C0177a;
import p036o.AbstractC0201b;
import p036o.C0200a;
import p036o.C0202c;
import p038p.C0210a;
import p038p.C0216g;
import p040q.C0232a;
import p040q.C0233b;
import p042r.C0237a;
import p042r.C0238b;

/* JADX INFO: renamed from: n.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0188b {

    /* JADX INFO: renamed from: a */
    public C0076b f1164a;

    /* JADX INFO: renamed from: b */
    public String[] f1165b;

    /* JADX INFO: renamed from: c */
    public final ByteBuffer f1166c;

    /* JADX INFO: renamed from: d */
    public InterfaceC0193g f1167d;

    /* JADX INFO: renamed from: e */
    public final C0216g f1168e;

    /* JADX INFO: renamed from: f */
    public Locale f1169f = C0237a.f1327a;

    public C0188b(ByteBuffer byteBuffer, C0216g c0216g) {
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        this.f1166c = byteBufferDuplicate;
        byteBufferDuplicate.order(ByteOrder.LITTLE_ENDIAN);
        this.f1168e = c0216g;
    }

    /* JADX INFO: renamed from: a */
    public final void m586a() {
        C0200a c0200aM587b;
        String[] strArr;
        if (m587b() == null || (c0200aM587b = m587b()) == null) {
            return;
        }
        Charset charset = C0238b.f1328a;
        short s2 = c0200aM587b.f1206a;
        if (1 != s2) {
            throw new C0177a("Expect chunk type:" + Integer.toHexString(1) + ", but got:" + Integer.toHexString(s2));
        }
        ByteBuffer byteBuffer = this.f1166c;
        this.f1164a = C0238b.m693b(byteBuffer, (C0202c) c0200aM587b);
        C0200a c0200aM587b2 = m587b();
        if (c0200aM587b2 == null) {
            return;
        }
        if (c0200aM587b2.f1206a == 384) {
            C0233b c0233b = (C0233b) c0200aM587b2;
            int i2 = (c0233b.f1208c - c0233b.f1207b) / 4;
            long[] jArr = new long[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                jArr[i3] = C0015d.m60V(byteBuffer);
            }
            this.f1165b = new String[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                this.f1165b[i4] = "AttrId:0x" + Long.toHexString(jArr[i4]);
            }
            c0200aM587b2 = m587b();
        }
        while (c0200aM587b2 != null) {
            long jPosition = byteBuffer.position();
            short s3 = c0200aM587b2.f1207b;
            int i5 = c0200aM587b2.f1208c;
            short s4 = c0200aM587b2.f1206a;
            switch (s4) {
                case 256:
                    int i6 = byteBuffer.getInt();
                    int i7 = byteBuffer.getInt();
                    if (i6 > 0) {
                        this.f1164a.m260a(i6);
                    }
                    if (i7 > 0) {
                        this.f1164a.m260a(i7);
                    }
                    this.f1167d.mo585d();
                    break;
                case 257:
                    int i8 = byteBuffer.getInt();
                    int i9 = byteBuffer.getInt();
                    if (i8 > 0) {
                        this.f1164a.m260a(i8);
                    }
                    if (i9 > 0) {
                        this.f1164a.m260a(i9);
                    }
                    this.f1167d.mo584c();
                    break;
                case 258:
                    int i10 = byteBuffer.getInt();
                    int i11 = byteBuffer.getInt();
                    C0190d c0190d = new C0190d();
                    if (i10 > 0) {
                        c0190d.f1175b = this.f1164a.m260a(i10);
                    }
                    c0190d.f1176c = this.f1164a.m260a(i11);
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    int i12 = byteBuffer.getShort() & 65535;
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    byteBuffer.getShort();
                    C0076b c0076b = new C0076b(i12, 2);
                    for (int i13 = 0; i13 < i12; i13++) {
                        int i14 = byteBuffer.getInt();
                        int i15 = byteBuffer.getInt();
                        C0232a c0232a = new C0232a();
                        if (i14 > 0) {
                            C0076b c0076b2 = this.f1164a;
                            if (i14 < ((String[]) c0076b2.f526a).length) {
                                c0232a.f1314a = c0076b2.m260a(i14);
                            }
                        }
                        String strM260a = this.f1164a.m260a(i15);
                        c0232a.f1315b = strM260a;
                        if (strM260a.isEmpty() && (strArr = this.f1165b) != null && i15 < strArr.length) {
                            c0232a.f1315b = strArr[i15];
                        }
                        int i16 = byteBuffer.getInt();
                        if (i16 > 0) {
                            c0232a.f1316c = this.f1164a.m260a(i16);
                        }
                        AbstractC0201b abstractC0201bM692a = C0238b.m692a(byteBuffer, this.f1164a);
                        c0232a.f1317d = abstractC0201bM692a;
                        if (this.f1167d != null) {
                            Locale locale = this.f1169f;
                            String strMo535c = c0232a.f1316c;
                            if (strMo535c == null) {
                                strMo535c = abstractC0201bM692a != null ? abstractC0201bM692a.mo535c(this.f1168e, locale) : "";
                            }
                            c0232a.f1318e = strMo535c;
                            ((C0232a[]) c0076b.f526a)[i13] = c0232a;
                        }
                    }
                    c0190d.f1177d = c0076b;
                    InterfaceC0193g interfaceC0193g = this.f1167d;
                    if (interfaceC0193g != null) {
                        interfaceC0193g.mo583b(c0190d);
                    }
                    break;
                case 259:
                    int i17 = byteBuffer.getInt();
                    int i18 = byteBuffer.getInt();
                    if (i17 > 0) {
                        this.f1164a.m260a(i17);
                    }
                    this.f1164a.m260a(i18);
                    InterfaceC0193g interfaceC0193g2 = this.f1167d;
                    if (interfaceC0193g2 != null) {
                        interfaceC0193g2.mo582a();
                    }
                    break;
                case 260:
                    int i19 = byteBuffer.getInt();
                    if (i19 > 0) {
                        this.f1164a.m260a(i19);
                    }
                    C0238b.m692a(byteBuffer, this.f1164a);
                    break;
                default:
                    if (s4 < 256 || s4 > 383) {
                        throw new C0177a("Unexpected chunk type:" + ((int) s4));
                    }
                    byteBuffer.position(byteBuffer.position() + (i5 - s3));
                    break;
                    break;
            }
            C0015d.m56R(byteBuffer, jPosition + ((long) (i5 - s3)));
            c0200aM587b2 = m587b();
        }
    }

    /* JADX INFO: renamed from: b */
    public final C0200a m587b() {
        ByteBuffer byteBuffer = this.f1166c;
        if (!byteBuffer.hasRemaining()) {
            return null;
        }
        long jPosition = byteBuffer.position();
        int i2 = byteBuffer.getShort() & 65535;
        int i3 = 65535 & byteBuffer.getShort();
        long jM60V = C0015d.m60V(byteBuffer);
        if (i2 == 0) {
            return new C0210a(i2, i3, jM60V);
        }
        if (i2 == 1) {
            C0202c c0202c = new C0202c(i3, jM60V);
            c0202c.f1214d = C0015d.m85m(C0015d.m60V(byteBuffer));
            C0015d.m85m(C0015d.m60V(byteBuffer));
            c0202c.f1215e = C0015d.m60V(byteBuffer);
            c0202c.f1216f = C0015d.m60V(byteBuffer);
            C0015d.m60V(byteBuffer);
            C0015d.m56R(byteBuffer, jPosition + ((long) i3));
            return c0202c;
        }
        if (i2 == 3) {
            return new C0210a(i2, i3, jM60V);
        }
        if (i2 == 384) {
            C0015d.m56R(byteBuffer, jPosition + ((long) i3));
            return new C0233b(i2, i3, jM60V);
        }
        switch (i2) {
            case 256:
            case 257:
            case 258:
            case 259:
            case 260:
                C0210a c0210a = new C0210a(i2, i3, jM60V);
                C0015d.m60V(byteBuffer);
                C0015d.m60V(byteBuffer);
                C0015d.m56R(byteBuffer, jPosition + ((long) i3));
                return c0210a;
            default:
                throw new C0177a("Unexpected chunk type:" + i2);
        }
    }
}
