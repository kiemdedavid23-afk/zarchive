package p039p0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p004b.C0015d;
import p010d.C0062a;
import p011d0.C0068f;
import p013e.C0075a;
import p013e.C0078d;
import p013e.InterfaceC0077c;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p021g1.C0137h;
import p028k.C0160a;
import p028k.C0162c;
import p028k.C0163d;
import p030l.C0169a;
import p030l.C0170b;
import p033m0.C0181d;
import p034n.C0187a;
import p034n.C0188b;
import p038p.C0216g;
import p047s0.C0358b;
import p055w0.C0412c;
import p055w0.C0415f;
import ru.zdevs.zarchiver.C0306c;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.activity.InstallApkDlg;
import ru.zdevs.zarchiver.archiver.NArc;
import ru.zdevs.zarchiver.p044io.SAF;
import ru.zdevs.zarchiver.service.InterfaceC0316c;

/* JADX INFO: renamed from: p0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0223a {

    /* JADX INFO: renamed from: p0.a$a */
    public static class a extends Exception {
        public a(String str) {
            super(str);
        }
    }

    /* JADX INFO: renamed from: p0.a$b */
    public static final class b extends Exception {

        /* JADX INFO: renamed from: a */
        public final Intent f1269a;

        public b(Intent intent) {
            this.f1269a = intent;
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m619a(Context context) {
        try {
            PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
            Iterator<PackageInstaller.SessionInfo> it = packageInstaller.getMySessions().iterator();
            while (it.hasNext()) {
                packageInstaller.abandonSession(it.next().getSessionId());
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: b */
    public static Bitmap m620b(Drawable drawable, Drawable drawable2, int i2) {
        if (Build.VERSION.SDK_INT >= 26) {
            AdaptiveIconDrawable adaptiveIconDrawable = new AdaptiveIconDrawable(drawable, drawable2);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            adaptiveIconDrawable.setBounds(0, 0, i2, i2);
            adaptiveIconDrawable.draw(canvas);
            return bitmapCreateBitmap;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
        float f2 = i2 / 2;
        canvas2.scale(1.6f, 1.6f, f2, f2);
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i2);
            drawable.draw(canvas2);
        }
        drawable2.setBounds(0, 0, i2, i2);
        drawable2.draw(canvas2);
        return bitmapCreateBitmap2;
    }

    /* JADX INFO: renamed from: c */
    public static Drawable m621c(C0160a c0160a, String str, byte[] bArr) {
        if (bArr != null) {
            try {
                if (str.endsWith(".xml")) {
                    return m629k(c0160a, bArr);
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return (bArr == null || !str.startsWith("res/")) ? new ColorDrawable(((int) Long.parseLong(str, 16)) | (-16777216)) : new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
    }

    /* JADX INFO: renamed from: d */
    public static Bitmap m622d(C0160a c0160a, int i2) {
        byte[] bArrMo529a;
        byte[] bArrMo529a2;
        byte[] bArrMo529a3;
        Drawable drawableM621c;
        try {
            C0169a c0169a = c0160a.f1067d;
            if (!((c0169a == null || c0169a.f1102a == null) ? false : true)) {
                return null;
            }
            List<C0170b> list = c0160a.f1068e;
            if (list.isEmpty()) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Iterator<C0170b> it = list.iterator();
                while (it.hasNext()) {
                    String str = it.next().f1114a;
                    if (str.endsWith(".xml") && (bArrMo529a2 = c0160a.mo529a(str)) != null) {
                        C0187a c0187a = new C0187a();
                        C0188b c0188b = new C0188b(ByteBuffer.wrap(bArrMo529a2), c0160a.f1066c);
                        Locale locale = Locale.US;
                        if (locale != null) {
                            c0188b.f1169f = locale;
                        }
                        c0188b.f1167d = c0187a;
                        c0188b.m586a();
                        String str2 = c0187a.f1162c;
                        String str3 = c0187a.f1163d;
                        if (str2 == null && str3 == null) {
                            C0078d c0078dM629k = m629k(c0160a, bArrMo529a2);
                            if (c0078dM629k != null) {
                                return m620b(null, c0078dM629k, i2);
                            }
                        } else if (str2 != null && (bArrMo529a3 = c0160a.mo529a(str2)) != null && (drawableM621c = m621c(c0160a, str2, bArrMo529a3)) != null) {
                            return m620b(m621c(c0160a, str3, c0160a.mo529a(str3)), drawableM621c, i2);
                        }
                    }
                }
            }
            Iterator<C0170b> it2 = list.iterator();
            while (it2.hasNext()) {
                String str4 = it2.next().f1114a;
                if (!str4.endsWith(".xml") && (bArrMo529a = c0160a.mo529a(str4)) != null) {
                    return BitmapFactory.decodeByteArray(bArrMo529a, 0, bArrMo529a.length);
                }
            }
            return null;
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: e */
    public static Bitmap m623e(int i2, String str) {
        C0160a c0160a;
        ZipFile zipFile;
        C0160a c0160a2;
        ZipFile zipFile2 = null;
        C0160a c0160a3 = null;
        try {
            zipFile = new ZipFile(new File(str), 1);
            try {
                ZipEntry entry = zipFile.getEntry("icon.png");
                if (entry != null) {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(zipFile.getInputStream(entry));
                    C0181d.m565f(zipFile);
                    return bitmapDecodeStream;
                }
                Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                while (enumerationEntries.hasMoreElements()) {
                    ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                    String name = zipEntryNextElement.getName();
                    if (!name.startsWith("split_") && name.endsWith(".apk")) {
                        c0160a2 = new C0160a(zipFile.getInputStream(zipEntryNextElement), 1);
                        try {
                            Bitmap bitmapM622d = m622d(c0160a2, i2);
                            C0181d.m565f(zipFile);
                            C0181d.m563d(c0160a2);
                            return bitmapM622d;
                        } catch (Exception unused) {
                            C0181d.m565f(zipFile);
                            C0181d.m563d(c0160a2);
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            c0160a3 = c0160a2;
                            c0160a = c0160a3;
                            zipFile2 = zipFile;
                            C0181d.m565f(zipFile2);
                            C0181d.m563d(c0160a);
                            throw th;
                        }
                    }
                }
                C0181d.m565f(zipFile);
                return null;
            } catch (Exception unused2) {
                c0160a2 = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused3) {
            zipFile = null;
            c0160a2 = null;
        } catch (Throwable th3) {
            th = th3;
            c0160a = null;
        }
    }

    /* JADX INFO: renamed from: f */
    public static Bitmap m624f(String str) {
        ZipFile zipFile;
        ZipFile zipFile2 = null;
        try {
            zipFile = new ZipFile(new File(str), 1);
            try {
                ZipEntry entry = zipFile.getEntry("icon.png");
                if (entry == null) {
                    C0181d.m565f(zipFile);
                    return null;
                }
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(zipFile.getInputStream(entry));
                C0181d.m565f(zipFile);
                return bitmapDecodeStream;
            } catch (Exception unused) {
                C0181d.m565f(zipFile);
                return null;
            } catch (Throwable th) {
                th = th;
                zipFile2 = zipFile;
                C0181d.m565f(zipFile2);
                throw th;
            }
        } catch (Exception unused2) {
            zipFile = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: g */
    public static boolean m625g(C0129h c0129h) throws b {
        if (Build.VERSION.SDK_INT < 26 || C0137h.m500b()) {
            return m626h(c0129h, new C0129h[]{c0129h});
        }
        Intent intent = new Intent(ZApp.f1375c, (Class<?>) InstallApkDlg.class);
        intent.putExtra("apk_path", c0129h);
        throw new b(intent);
    }

    /* JADX INFO: renamed from: h */
    public static boolean m626h(C0129h c0129h, C0129h[] c0129hArr) {
        int iCreateSession;
        PackageInstaller packageInstaller;
        PackageInstaller.Session sessionOpenSession = null;
        try {
            ZApp zAppM722e = ZApp.m722e();
            packageInstaller = zAppM722e.getPackageManager().getPackageInstaller();
            try {
                PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 26) {
                    sessionParams.setInstallReason(4);
                }
                if (i2 >= 33) {
                    sessionParams.setPackageSource(3);
                }
                sessionParams.setInstallLocation(0);
                long j2 = 0;
                long j3 = 0;
                for (C0129h c0129h2 : c0129hArr) {
                    long jMo424o = AbstractC0127f.m463u(c0129h2).mo424o();
                    if (jMo424o > 0) {
                        j3 += jMo424o;
                    }
                }
                sessionParams.setSize(j3);
                byte[] bArr = new byte[65536];
                iCreateSession = packageInstaller.createSession(sessionParams);
                try {
                    sessionOpenSession = packageInstaller.openSession(iCreateSession);
                    ZApp zAppM721d = ZApp.m721d();
                    if (zAppM721d != null) {
                        zAppM721d.m727h();
                    }
                    int length = c0129hArr.length;
                    int i3 = 0;
                    while (i3 < length) {
                        C0129h c0129h3 = c0129hArr[i3];
                        AbstractC0127f abstractC0127fM463u = AbstractC0127f.m463u(c0129h3);
                        long jMo424o2 = abstractC0127fM463u.mo424o();
                        if (jMo424o2 <= j2) {
                            jMo424o2 = -1;
                        }
                        long j4 = jMo424o2;
                        InputStream inputStreamMo430w = abstractC0127fM463u.mo430w();
                        int i4 = length;
                        int i5 = i3;
                        OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(c0129h3.m478e(), 0L, j4);
                        while (true) {
                            int i6 = inputStreamMo430w.read(bArr);
                            if (i6 >= 0) {
                                outputStreamOpenWrite.write(bArr, 0, i6);
                            }
                        }
                        sessionOpenSession.fsync(outputStreamOpenWrite);
                        inputStreamMo430w.close();
                        outputStreamOpenWrite.close();
                        i3 = i5 + 1;
                        length = i4;
                        j2 = 0;
                    }
                    sessionOpenSession.commit(PendingIntent.getActivity(zAppM722e, 0, new Intent("ru.zdevs.zarchiver.APP_INSTALL_RESULT", c0129h.m492s(), zAppM722e, ZArchiver.class), 167772160).getIntentSender());
                    sessionOpenSession.close();
                    return true;
                } catch (Throwable unused) {
                    if (sessionOpenSession != null) {
                        try {
                            try {
                                sessionOpenSession.abandon();
                            } catch (Exception unused2) {
                            }
                        } finally {
                            if (sessionOpenSession != null) {
                                sessionOpenSession.close();
                            }
                        }
                    }
                    if (packageInstaller != null && iCreateSession != 0) {
                        try {
                            packageInstaller.abandonSession(iCreateSession);
                        } catch (Exception unused3) {
                        }
                    }
                    return false;
                }
            } catch (Throwable unused4) {
                iCreateSession = 0;
            }
        } catch (Throwable unused5) {
            iCreateSession = 0;
            packageInstaller = null;
        }
    }

    /* JADX INFO: renamed from: i */
    public static boolean m627i(C0129h c0129h, String[] strArr) throws b {
        if (c0129h == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26 && !C0137h.m500b()) {
            Intent intent = new Intent(ZApp.f1375c, (Class<?>) InstallApkDlg.class);
            intent.putExtra("dir_path", c0129h);
            intent.putExtra("name_list", strArr);
            throw new b(intent);
        }
        String str = strArr[0];
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str2 : strArr) {
            if (str.length() < str2.length()) {
                str = str2;
            }
            arrayList.add(new C0129h(str2, c0129h));
        }
        return m626h(new C0129h(str, c0129h), (C0129h[]) arrayList.toArray(new C0129h[0]));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x0127 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:91:0x013a A[DONT_GENERATE] */
    /* JADX WARN: Code duplicated, block: B:93:0x013f A[DONT_GENERATE] */
    /* JADX INFO: renamed from: j */
    public static boolean m628j(C0129h c0129h, Class<?> cls) throws b {
        int i2;
        NArc nArcM805j;
        PackageInstaller.Session session;
        PackageInstaller packageInstaller;
        int iCreateSession;
        String path;
        String path2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 26 && !C0137h.m500b()) {
            Intent intent = new Intent(ZApp.m721d(), (Class<?>) InstallApkDlg.class);
            intent.putExtra("apk_path", c0129h);
            throw new b(intent);
        }
        try {
            ZApp zAppM722e = ZApp.m722e();
            packageInstaller = zAppM722e.getPackageManager().getPackageInstaller();
            try {
                PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
                if (i3 >= 26) {
                    try {
                        sessionParams.setInstallReason(4);
                    } catch (Throwable unused) {
                        nArcM805j = null;
                        i2 = 0;
                        session = null;
                        if (session != null) {
                            try {
                                try {
                                    session.abandon();
                                } finally {
                                    if (nArcM805j != null) {
                                        nArcM805j.close();
                                    }
                                    if (session != null) {
                                        session.close();
                                    }
                                }
                            } catch (Exception unused2) {
                            }
                        }
                        if (packageInstaller != null) {
                            try {
                                packageInstaller.abandonSession(i2);
                            } catch (Exception unused3) {
                            }
                        }
                        return false;
                    }
                }
                if (i3 >= 33) {
                    sessionParams.setPackageSource(3);
                }
                sessionParams.setInstallLocation(0);
                byte[] bArr = new byte[65536];
                nArcM805j = NArc.m805j(c0129h.m491r());
                if (nArcM805j == null) {
                    if (nArcM805j != null) {
                        nArcM805j.close();
                    }
                    return false;
                }
                try {
                    int iM814g = nArcM805j.m814g();
                    long j2 = 0;
                    long j3 = 0;
                    for (int i4 = 0; i4 < iM814g; i4++) {
                        try {
                            NArc.NArcItem nArcItemM813f = nArcM805j.m813f(i4);
                            if (nArcItemM813f != null && (path2 = nArcItemM813f.getPath()) != null && path2.endsWith(".apk")) {
                                long size = nArcItemM813f.getSize();
                                if (size > 0) {
                                    j3 += size;
                                }
                            }
                        } catch (Throwable unused4) {
                            i2 = 0;
                            session = null;
                            if (session != null) {
                                session.abandon();
                            }
                            if (packageInstaller != null) {
                                packageInstaller.abandonSession(i2);
                            }
                            return false;
                        }
                    }
                    sessionParams.setSize(j3);
                    iCreateSession = packageInstaller.createSession(sessionParams);
                    try {
                        PackageInstaller.Session sessionOpenSession = packageInstaller.openSession(iCreateSession);
                        try {
                            ZApp zAppM721d = ZApp.m721d();
                            if (zAppM721d != null) {
                                zAppM721d.m727h();
                            }
                            int i5 = 0;
                            while (i5 < iM814g) {
                                NArc.NArcItem nArcItemM813f2 = nArcM805j.m813f(i5);
                                if (nArcItemM813f2 != null && (path = nArcItemM813f2.getPath()) != null && path.endsWith(".apk")) {
                                    long size2 = nArcItemM813f2.getSize();
                                    if (size2 <= j2) {
                                        size2 = -1;
                                    }
                                    C0068f c0068fM815h = nArcM805j.m815h(i5, path);
                                    OutputStream outputStreamOpenWrite = sessionOpenSession.openWrite(path, 0L, size2);
                                    while (true) {
                                        int i6 = c0068fM815h.read(bArr);
                                        if (i6 < 0) {
                                            break;
                                        }
                                        outputStreamOpenWrite.write(bArr, 0, i6);
                                    }
                                    sessionOpenSession.fsync(outputStreamOpenWrite);
                                    c0068fM815h.close();
                                    outputStreamOpenWrite.close();
                                }
                                i5++;
                                j2 = 0;
                            }
                            sessionOpenSession.commit(PendingIntent.getActivity(zAppM722e, 0, new Intent("ru.zdevs.zarchiver.APP_INSTALL_RESULT", c0129h.m492s(), zAppM722e, cls), 167772160).getIntentSender());
                            nArcM805j.close();
                            sessionOpenSession.close();
                            return true;
                        } catch (Throwable unused5) {
                            i2 = iCreateSession;
                            session = sessionOpenSession;
                            if (session != null) {
                                session.abandon();
                            }
                            if (packageInstaller != null) {
                                packageInstaller.abandonSession(i2);
                            }
                            return false;
                        }
                    } catch (Throwable unused6) {
                        i2 = iCreateSession;
                        session = null;
                        if (session != null) {
                            session.abandon();
                        }
                        if (packageInstaller != null && i2 != 0) {
                            packageInstaller.abandonSession(i2);
                        }
                        return false;
                    }
                } catch (Throwable unused7) {
                    iCreateSession = 0;
                }
            } catch (Throwable unused8) {
                iCreateSession = 0;
                nArcM805j = null;
            }
        } catch (Throwable unused9) {
            i2 = 0;
            nArcM805j = null;
            session = null;
            packageInstaller = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: k */
    public static C0078d m629k(C0160a c0160a, byte[] bArr) {
        int i2;
        int i3;
        int i4;
        C0078d c0078d = null;
        try {
            Class<?> cls = Class.forName("android.content.res.XmlBlock");
            int i5 = 1;
            int i6 = 0;
            Constructor<?> constructor = cls.getConstructor(byte[].class);
            Method declaredMethod = cls.getDeclaredMethod("newParser", new Class[0]);
            constructor.setAccessible(true);
            declaredMethod.setAccessible(true);
            XmlPullParser xmlPullParser = (XmlPullParser) declaredMethod.invoke(constructor.newInstance(bArr), new Object[0]);
            if (xmlPullParser == null) {
                return null;
            }
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
            while (xmlPullParser.next() == 0) {
                c0078d = null;
            }
            C0216g c0216g = c0160a.f1066c;
            C0162c c0162c = c0216g == null ? c0078d : new C0162c(c0216g);
            try {
                C0078d c0078d2 = new C0078d();
                C0078d.f fVar = c0078d2.f528a;
                fVar.f576b = new C0078d.e();
                InterfaceC0077c interfaceC0077cM532a = c0162c.m532a(attributeSetAsAttributeSet, C0075a.f518a, C0075a.f519b);
                C0078d.e eVar = c0078d2.f528a.f576b;
                C0163d c0163d = (C0163d) interfaceC0077cM532a;
                eVar.f570j = c0163d.m538c(eVar.f570j, 4);
                float fM538c = c0163d.m538c(eVar.f571k, 5);
                eVar.f571k = fM538c;
                if (eVar.f570j <= 0.0f) {
                    throw new XmlPullParserException("<vector> tag requires viewportWidth > 0");
                }
                if (fM538c <= 0.0f) {
                    throw new XmlPullParserException("<vector> tag requires viewportHeight > 0");
                }
                int i7 = 2;
                eVar.f568h = c0163d.m537b(eVar.f568h, 2);
                float fM537b = c0163d.m537b(eVar.f569i, 1);
                eVar.f569i = fM537b;
                if (eVar.f568h <= 0.0f) {
                    throw new XmlPullParserException("<vector> tag requires width > 0");
                }
                if (fM537b <= 0.0f) {
                    throw new XmlPullParserException("<vector> tag requires height > 0");
                }
                int i8 = 3;
                eVar.f572l = (int) (c0163d.m538c(eVar.f572l / 255.0f, 3) * 255.0f);
                String strM540e = c0163d.m540e(0);
                if (strM540e != null) {
                    eVar.f573m = strM540e;
                    eVar.f574n.put(strM540e, eVar);
                }
                fVar.f575a = c0078d2.getChangingConfigurations();
                fVar.f579e = true;
                C0078d.f fVar2 = c0078d2.f528a;
                C0078d.e eVar2 = fVar2.f576b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(eVar2.f567g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z2 = true;
                while (eventType != i5 && (xmlPullParser.getDepth() >= depth || eventType != i8)) {
                    if (eventType == i7) {
                        String name = xmlPullParser.getName();
                        C0078d.c cVar = (C0078d.c) arrayDeque.peek();
                        if (cVar != null) {
                            boolean zEquals = "path".equals(name);
                            ArrayList<Object> arrayList = cVar.f546b;
                            ArrayMap arrayMap = eVar2.f574n;
                            if (zEquals) {
                                C0078d.b bVar = new C0078d.b();
                                C0163d c0163d2 = (C0163d) c0162c.m532a(attributeSetAsAttributeSet, C0075a.f522e, C0075a.f523f);
                                String strM540e2 = c0163d2.m540e(i7);
                                if (strM540e2 != null) {
                                    bVar.f557a = C0062a.m229a(strM540e2);
                                    String strM540e3 = c0163d2.m540e(i6);
                                    if (strM540e3 != null) {
                                        bVar.f558b = strM540e3;
                                    }
                                    bVar.f535f = c0163d2.m536a(1, bVar.f535f);
                                    bVar.f538i = c0163d2.m538c(bVar.f538i, 12);
                                    int iM539d = c0163d2.m539d(8, -1);
                                    Paint.Cap cap = bVar.f542m;
                                    if (iM539d == 0) {
                                        cap = Paint.Cap.BUTT;
                                    } else if (iM539d == 1) {
                                        cap = Paint.Cap.ROUND;
                                    } else if (iM539d == i7) {
                                        cap = Paint.Cap.SQUARE;
                                    }
                                    bVar.f542m = cap;
                                    int iM539d2 = c0163d2.m539d(9, -1);
                                    Paint.Join join = bVar.f543n;
                                    if (iM539d2 == 0) {
                                        join = Paint.Join.MITER;
                                    } else if (iM539d2 == 1) {
                                        join = Paint.Join.ROUND;
                                    } else if (iM539d2 == i7) {
                                        join = Paint.Join.BEVEL;
                                    }
                                    bVar.f543n = join;
                                    bVar.f544o = c0163d2.m538c(bVar.f544o, 10);
                                    bVar.f533d = c0163d2.m536a(3, bVar.f533d);
                                    bVar.f536g = c0163d2.m538c(bVar.f536g, 11);
                                    bVar.f534e = c0163d2.m538c(bVar.f534e, 4);
                                    bVar.f540k = c0163d2.m538c(bVar.f540k, 6);
                                    bVar.f541l = c0163d2.m538c(bVar.f541l, 7);
                                    bVar.f539j = c0163d2.m538c(bVar.f539j, 5);
                                    bVar.f537h = c0163d2.m539d(13, bVar.f537h);
                                }
                                arrayList.add(bVar);
                                String str = bVar.f558b;
                                if (str != null) {
                                    arrayMap.put(str, bVar);
                                }
                                fVar2.f575a |= bVar.f559c;
                                i3 = 1;
                                i2 = 3;
                                z2 = false;
                            } else {
                                if ("clip-path".equals(name)) {
                                    C0078d.a aVar = new C0078d.a();
                                    C0163d c0163d3 = (C0163d) c0162c.m532a(attributeSetAsAttributeSet, C0075a.f524g, C0075a.f525h);
                                    String strM540e4 = c0163d3.m540e(0);
                                    if (strM540e4 != null) {
                                        aVar.f558b = strM540e4;
                                    }
                                    String strM540e5 = c0163d3.m540e(1);
                                    if (strM540e5 != null) {
                                        aVar.f557a = C0062a.m229a(strM540e5);
                                    }
                                    arrayList.add(aVar);
                                    String str2 = aVar.f558b;
                                    if (str2 != null) {
                                        arrayMap.put(str2, aVar);
                                    }
                                    fVar2.f575a |= aVar.f559c;
                                } else {
                                    if ("group".equals(name)) {
                                        C0078d.c cVar2 = new C0078d.c();
                                        C0163d c0163d4 = (C0163d) c0162c.m532a(attributeSetAsAttributeSet, C0075a.f520c, C0075a.f521d);
                                        cVar2.f547c = c0163d4.m538c(cVar2.f547c, 5);
                                        i4 = 1;
                                        cVar2.f548d = c0163d4.m538c(cVar2.f548d, 1);
                                        cVar2.f549e = c0163d4.m538c(cVar2.f549e, i7);
                                        cVar2.f550f = c0163d4.m538c(cVar2.f550f, 3);
                                        cVar2.f551g = c0163d4.m538c(cVar2.f551g, 4);
                                        cVar2.f552h = c0163d4.m538c(cVar2.f552h, 6);
                                        cVar2.f553i = c0163d4.m538c(cVar2.f553i, 7);
                                        String strM540e6 = c0163d4.m540e(0);
                                        if (strM540e6 != null) {
                                            cVar2.f556l = strM540e6;
                                        }
                                        Matrix matrix = cVar2.f554j;
                                        matrix.reset();
                                        matrix.postTranslate(-cVar2.f548d, -cVar2.f549e);
                                        matrix.postScale(cVar2.f550f, cVar2.f551g);
                                        matrix.postRotate(cVar2.f547c, 0.0f, 0.0f);
                                        matrix.postTranslate(cVar2.f552h + cVar2.f548d, cVar2.f553i + cVar2.f549e);
                                        arrayList.add(cVar2);
                                        arrayDeque.push(cVar2);
                                        String str3 = cVar2.f556l;
                                        if (str3 != null) {
                                            arrayMap.put(str3, cVar2);
                                        }
                                        fVar2.f575a |= cVar2.f555k;
                                    }
                                    i3 = i4;
                                    i2 = 3;
                                }
                                i4 = 1;
                                i3 = i4;
                                i2 = 3;
                            }
                        }
                    } else {
                        int i9 = i5;
                        i2 = i8;
                        i3 = i9;
                        if (eventType == i2 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    i6 = 0;
                    i7 = 2;
                    int i10 = i2;
                    i5 = i3;
                    i8 = i10;
                }
                if (z2) {
                    throw new XmlPullParserException("no path defined");
                }
                return c0078d2;
            } catch (Exception unused) {
                return null;
            }
        } catch (Exception unused2) {
            return c0078d;
        }
    }

    /* JADX INFO: renamed from: l */
    public static int m630l(C0306c c0306c, C0129h c0129h) throws Throwable {
        NArc nArcM806k;
        C0068f c0068fM815h;
        String string;
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList<C0129h> arrayList3;
        ArrayList arrayList4;
        C0129h c0129hM863n;
        try {
            nArcM806k = NArc.m806k(c0129h.m491r(), "zip", null);
            try {
                if (nArcM806k == null) {
                    throw new a("XAPK file not found");
                }
                c0068fM815h = nArcM806k.m815h(-1, "manifest.json");
                try {
                    if (c0068fM815h == null) {
                        throw new a("manifest.json not found");
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(c0068fM815h));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        sb.append('\n');
                    }
                    string = sb.toString();
                    try {
                        nArcM806k.m809b(c0068fM815h);
                    } catch (Exception unused) {
                    }
                    if (string == null) {
                        throw new a("Bad manifest.json");
                    }
                    C0129h c0129h2 = new C0129h(C0412c.m1115i().f2153b);
                    int iM1030a = C0358b.m1030a();
                    String str = iM1030a > 0 ? "\\-y\\-mmt=" + iM1030a : "\\-y";
                    try {
                        JSONArray jSONArray = (JSONArray) new JSONObject(new JSONTokener(string)).opt("expansions");
                        if (jSONArray != null) {
                            int length = jSONArray.length();
                            arrayList = new ArrayList(length);
                            arrayList2 = new ArrayList(length);
                            arrayList3 = new ArrayList(length);
                            arrayList4 = new ArrayList(length);
                            for (int i2 = 0; i2 < length; i2++) {
                                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                                if ("EXTERNAL_STORAGE".equalsIgnoreCase(jSONObject.getString("install_location"))) {
                                    String string2 = jSONObject.getString("file");
                                    String string3 = jSONObject.getString("install_path");
                                    if (string2.length() >= 2 && string3.length() >= 2) {
                                        arrayList.add(C0015d.m97y(string2));
                                        arrayList2.add("\\" + string2);
                                        arrayList3.add(new C0129h(C0015d.m39A(string3), c0129h2));
                                        if (string2.indexOf(47) > 0) {
                                            arrayList4.add(str + "\\-z" + C0015d.m39A(string2));
                                        } else {
                                            arrayList4.add(str);
                                        }
                                    }
                                }
                            }
                        } else {
                            arrayList = null;
                            arrayList2 = null;
                            arrayList3 = null;
                            arrayList4 = null;
                        }
                        if (arrayList2 == null || arrayList2.size() == 0) {
                            return 0;
                        }
                        if (c0306c == null) {
                            return 3;
                        }
                        int i3 = 0;
                        for (C0129h c0129h3 : arrayList3) {
                            String str2 = c0129h3.f1015c;
                            C0412c.a aVarM1138f = C0415f.m1138f(str2);
                            if (aVarM1138f != null) {
                                if (C0358b.m1035f(67108864)) {
                                    i3 |= 1;
                                } else if (Build.VERSION.SDK_INT < 33 || !str2.contains("/Android/obb/")) {
                                    String strM1127b = aVarM1138f.m1127b(str2);
                                    String strM858i = SAF.m858i(strM1127b);
                                    if (strM858i == null || !aVarM1138f.m1129d(strM858i) || (c0129hM863n = SAF.m863n(aVarM1138f, strM1127b)) == null) {
                                        return 2;
                                    }
                                    c0129h3.m489p(c0129hM863n.f1015c);
                                    c0129h3.m490q(c0129hM863n.f1013a);
                                }
                            }
                            AbstractC0127f.m463u(c0129h3).mo427s(null);
                        }
                        int i4 = i3 | 64;
                        InterfaceC0316c interfaceC0316c = c0306c.f1616a.get();
                        if (interfaceC0316c != null) {
                            try {
                                if (arrayList.size() == 1) {
                                    interfaceC0316c.ArchiveExtract((String) arrayList.get(0), c0129h, (String) arrayList4.get(0), (String) arrayList2.get(0), (C0129h) arrayList3.get(0), i4);
                                } else {
                                    ArrayList arrayList5 = new ArrayList();
                                    int size = arrayList.size();
                                    for (int i5 = 0; i5 < size; i5++) {
                                        arrayList5.add(c0129h);
                                    }
                                    interfaceC0316c.ArchiveExtractMulti(arrayList, arrayList5, arrayList4, arrayList2, arrayList3, i4);
                                }
                            } catch (Exception unused2) {
                            }
                        }
                        return 1;
                    } catch (JSONException e2) {
                        throw new a("manifest.json: " + e2.getMessage());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (nArcM806k != null) {
                        try {
                            nArcM806k.m809b(c0068fM815h);
                        } catch (Exception unused3) {
                            string = null;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                c0068fM815h = null;
            }
        } catch (Throwable th3) {
            th = th3;
            nArcM806k = null;
            c0068fM815h = null;
        }
    }
}
