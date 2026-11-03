package p028k;

import android.os.Build;
import java.io.Closeable;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import p004b.C0015d;
import p013e.C0076b;
import p030l.C0169a;
import p030l.C0170b;
import p032m.C0177a;
import p033m0.C0182e;
import p034n.C0188b;
import p034n.C0189c;
import p034n.C0190d;
import p036o.C0200a;
import p036o.C0202c;
import p038p.C0211b;
import p038p.C0215f;
import p038p.C0216g;
import p038p.C0217h;
import p038p.C0219j;
import p038p.C0220k;
import p038p.C0221l;
import p038p.C0222m;
import p042r.C0238b;

/* JADX INFO: renamed from: k.a */
/* JADX INFO: loaded from: classes.dex */
public class C0160a implements Closeable {

    /* JADX INFO: renamed from: a */
    public final HashMap f1064a;

    /* JADX INFO: renamed from: b */
    public final InputStream f1065b;

    /* JADX INFO: renamed from: c */
    public C0216g f1066c;

    /* JADX INFO: renamed from: d */
    public C0169a f1067d;

    /* JADX INFO: renamed from: e */
    public List<C0170b> f1068e;

    public C0160a(InputStream inputStream, int i2) throws Throwable {
        this.f1064a = new HashMap();
        if (inputStream.markSupported()) {
            inputStream.mark(Integer.MAX_VALUE);
            this.f1065b = inputStream;
        } else {
            this.f1065b = null;
        }
        boolean z2 = Build.VERSION.SDK_INT >= 24;
        ZipInputStream zipInputStream = new ZipInputStream(inputStream == this.f1065b ? new C0182e(inputStream, 0) : inputStream);
        boolean z3 = false;
        char c2 = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                break;
            }
            String name = nextEntry.getName();
            if ("AndroidManifest.xml".equals(name)) {
                z3 = true;
            } else if (i2 == 1) {
                if (!"resources.arsc".equals(name)) {
                    if (c2 == 0) {
                        if (name.startsWith("res/")) {
                            c2 = 1;
                        } else if (name.startsWith("r/")) {
                            c2 = 2;
                        }
                    }
                    if (c2 != 1) {
                        long size = nextEntry.getSize();
                        if (size <= 5120 && size >= 1024) {
                            boolean zEndsWith = name.endsWith(".xml");
                            boolean z4 = !zEndsWith && name.endsWith(".png");
                            if (zEndsWith || z4) {
                            }
                        }
                    } else if (!z2) {
                        boolean zEndsWith2 = name.endsWith(".png");
                        boolean z5 = zEndsWith2 && name.contains("/ic_launcher");
                        boolean z6 = zEndsWith2 && name.endsWith("icon.png");
                        if (z5 || z6) {
                        }
                    } else if (!name.contains("/mipmap")) {
                        if (name.contains("/drawable")) {
                            boolean zEndsWith3 = name.endsWith(".xml");
                            boolean z7 = !zEndsWith3 && name.contains("/ic_launcher");
                            boolean z8 = !z7 && name.endsWith("icon.png");
                            if (zEndsWith3 || z7 || z8) {
                            }
                        }
                    }
                }
            }
            this.f1064a.put(name, C0015d.m58T(zipInputStream));
        }
        zipInputStream.close();
        if (z3) {
            m531c();
            m530b();
        }
    }

    /* JADX INFO: renamed from: a */
    public byte[] mo529a(String str) throws Throwable {
        InputStream inputStream;
        ZipEntry nextEntry;
        byte[] bArrM58T = (byte[]) this.f1064a.get(str);
        if (bArrM58T == null && (inputStream = this.f1065b) != null) {
            inputStream.reset();
            ZipInputStream zipInputStream = new ZipInputStream(new C0182e(inputStream, 0));
            do {
                nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                }
                zipInputStream.close();
            } while (!str.equals(nextEntry.getName()));
            bArrM58T = C0015d.m58T(zipInputStream);
            zipInputStream.close();
        }
        return bArrM58T;
    }

    /* JADX INFO: renamed from: b */
    public final void m530b() throws Throwable {
        byte[] bArrMo529a = mo529a("AndroidManifest.xml");
        if (bArrMo529a == null) {
            return;
        }
        C0216g c0216g = this.f1066c;
        Locale locale = Locale.US;
        C0189c c0189c = new C0189c(c0216g, locale);
        C0188b c0188b = new C0188b(ByteBuffer.wrap(bArrMo529a), this.f1066c);
        if (locale != null) {
            c0188b.f1169f = locale;
        }
        c0188b.f1167d = c0189c;
        c0188b.m586a();
        this.f1067d = c0189c.f1170a;
        this.f1068e = c0189c.f1171b;
    }

    /* JADX INFO: renamed from: c */
    public final void m531c() throws Throwable {
        byte[] bArrMo529a = mo529a("resources.arsc");
        if (bArrMo529a == null) {
            this.f1066c = new C0216g();
            return;
        }
        C0190d c0190d = new C0190d(ByteBuffer.wrap(bArrMo529a));
        C0217h c0217h = (C0217h) c0190d.m588a();
        c0190d.f1175b = C0238b.m693b((ByteBuffer) c0190d.f1176c, (C0202c) c0190d.m588a());
        c0190d.f1177d = new C0216g();
        if ((((long) c0217h.f1252d) & 4294967295L) != 0) {
            C0211b c0211b = (C0211b) c0190d.m588a();
            int i2 = 0;
            for (long j2 = 4294967295L; i2 < (((long) c0217h.f1252d) & j2); j2 = 4294967295L) {
                C0215f c0215f = new C0215f(c0211b);
                long jPosition = ((ByteBuffer) c0190d.f1176c).position();
                int i3 = c0211b.f1233e;
                short s2 = c0211b.f1207b;
                if (i3 > 0) {
                    C0015d.m56R((ByteBuffer) c0190d.f1176c, (((long) i3) + jPosition) - ((long) s2));
                    c0215f.f1244b = C0238b.m693b((ByteBuffer) c0190d.f1176c, (C0202c) c0190d.m588a());
                }
                int i4 = c0211b.f1234f;
                if (i4 > 0) {
                    C0015d.m56R((ByteBuffer) c0190d.f1176c, (jPosition + ((long) i4)) - ((long) s2));
                    c0215f.f1245c = C0238b.m693b((ByteBuffer) c0190d.f1176c, (C0202c) c0190d.m588a());
                }
                while (true) {
                    if (!((ByteBuffer) c0190d.f1176c).hasRemaining()) {
                        c0211b = null;
                        break;
                    }
                    C0200a c0200aM588a = c0190d.m588a();
                    long jPosition2 = ((ByteBuffer) c0190d.f1176c).position();
                    short s3 = c0200aM588a.f1206a;
                    if (s3 != 0) {
                        switch (s3) {
                            case 512:
                                c0211b = (C0211b) c0200aM588a;
                                continue;
                                break;
                            case 513:
                                C0220k c0220k = (C0220k) c0200aM588a;
                                long[] jArr = new long[c0220k.f1261e];
                                for (int i5 = 0; i5 < c0220k.f1261e; i5++) {
                                    jArr[i5] = C0015d.m60V((ByteBuffer) c0190d.f1176c);
                                }
                                C0219j c0219j = new C0219j(c0220k);
                                c0219j.f1253a = c0215f.f1244b.m260a(((short) (c0220k.f1260d & 255)) - 1);
                                long j3 = ((long) c0220k.f1262f) + jPosition2;
                                short s4 = c0220k.f1207b;
                                C0015d.m56R((ByteBuffer) c0190d.f1176c, j3 - ((long) s4));
                                ByteBuffer byteBufferSlice = ((ByteBuffer) c0190d.f1176c).slice();
                                byteBufferSlice.order(ByteOrder.LITTLE_ENDIAN);
                                c0219j.f1256d = byteBufferSlice;
                                c0219j.f1255c = c0215f.f1245c;
                                c0219j.f1257e = jArr;
                                c0219j.f1258f = (C0076b) c0190d.f1175b;
                                HashMap map = c0215f.f1247e;
                                short s5 = c0219j.f1254b;
                                List arrayList = (List) map.get(Short.valueOf(s5));
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                    map.put(Short.valueOf(s5), arrayList);
                                }
                                arrayList.add(c0219j);
                                C0015d.m56R((ByteBuffer) c0190d.f1176c, jPosition2 + ((long) (c0220k.f1208c - s4)));
                                break;
                            case 514:
                                C0222m c0222m = (C0222m) c0200aM588a;
                                long[] jArr2 = new long[c0222m.f1268e];
                                for (int i6 = 0; i6 < c0222m.f1268e; i6++) {
                                    jArr2[i6] = C0015d.m60V((ByteBuffer) c0190d.f1176c);
                                }
                                C0221l c0221l = new C0221l(c0222m);
                                c0221l.f1264a = jArr2;
                                c0221l.f1265b = c0215f.f1244b.m260a(((short) (c0222m.f1267d & 255)) - 1);
                                c0215f.f1246d.put(Short.valueOf(c0221l.f1266c), c0221l);
                                C0015d.m56R((ByteBuffer) c0190d.f1176c, jPosition2 + ((long) (c0222m.f1208c - c0222m.f1207b)));
                                break;
                            case 515:
                                C0015d.m56R((ByteBuffer) c0190d.f1176c, jPosition2 + ((long) (c0200aM588a.f1208c - c0200aM588a.f1207b)));
                                break;
                            default:
                                throw new C0177a("unexpected chunk type: 0x" + ((int) s3));
                        }
                    } else {
                        ByteBuffer byteBuffer = (ByteBuffer) c0190d.f1176c;
                        byteBuffer.position(((ByteBuffer) c0190d.f1176c).remaining() + byteBuffer.position());
                    }
                }
                ((C0216g) c0190d.f1177d).f1248a.put(Short.valueOf(c0215f.f1243a), c0215f);
                i2++;
            }
        }
        this.f1066c = (C0216g) c0190d.f1177d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f1066c = null;
        HashMap map = this.f1064a;
        if (map != null) {
            map.clear();
        }
    }

    public final void finalize() {
        close();
    }

    public C0160a() {
        this.f1064a = null;
        this.f1065b = null;
    }
}
