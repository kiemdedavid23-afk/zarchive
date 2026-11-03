package p043r0;

import android.os.Build;
import android.os.PowerManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import p004b.C0015d;
import p011d0.C0063a;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p035n0.AbstractC0194a;
import p051u0.C0385h;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.C0314a;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.g */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0245g extends Thread implements InterfaceC0239a {

    /* JADX INFO: renamed from: a */
    public final ZArchiverService f1351a;

    /* JADX INFO: renamed from: b */
    public byte f1352b;

    /* JADX INFO: renamed from: c */
    public final int f1353c;

    /* JADX INFO: renamed from: d */
    public int f1354d;

    /* JADX INFO: renamed from: e */
    public int f1355e;

    /* JADX INFO: renamed from: f */
    public AbstractC0194a f1356f;

    /* JADX INFO: renamed from: g */
    public long f1357g;

    /* JADX INFO: renamed from: h */
    public ArrayList<C0063a.b> f1358h;

    public AbstractC0245g(ZArchiverService zArchiverService, byte b2, int i2) {
        super(null, null, "za_task" + ((int) b2), 2097152L);
        this.f1351a = zArchiverService;
        this.f1352b = b2;
        this.f1353c = i2;
        this.f1354d = 0;
        this.f1355e = 0;
        this.f1356f = null;
        C0015d.f118e[i2] = b2;
        C0015d.f117d[i2] = 0;
        C2JBridge.m803d(i2);
    }

    /* JADX INFO: renamed from: a */
    public void mo694a(String str) {
    }

    /* JADX INFO: renamed from: b */
    public final boolean m701b(int i2, int i3, String str, C0129h c0129h) {
        String string;
        ZArchiverService zArchiverService = this.f1351a;
        C0314a c0314a = zArchiverService.f1656c;
        byte b2 = this.f1352b;
        c0314a.getClass();
        C0314a.a aVarM904b = c0314a.m904b(i2, b2, i3, C0314a.m902c(c0129h));
        if (aVarM904b == null) {
            return true;
        }
        switch (C0015d.f118e[aVarM904b.f1664c] & 127) {
            case 1:
            case 5:
                string = zArchiverService.getString(R.string.MENU_EXTRACT_TO);
                break;
            case 2:
            case 11:
            case 13:
            default:
                string = "-";
                break;
            case 3:
                string = zArchiverService.getString(R.string.MENU_COMPRESS_TO);
                break;
            case 4:
                string = zArchiverService.getString(R.string.MENU_COPY);
                break;
            case 6:
            case 8:
                string = zArchiverService.getString(R.string.MENU_DELETE);
                break;
            case 7:
                string = zArchiverService.getString(R.string.MENU_ADD_FILES);
                break;
            case 9:
                string = zArchiverService.getString(R.string.MENU_RENAME);
                break;
            case 10:
                string = zArchiverService.getString(R.string.MENU_CUT);
                break;
            case 12:
                string = zArchiverService.getString(R.string.MENU_NEW_FOLDER);
                break;
            case 14:
                string = zArchiverService.getString(R.string.MENU_INSTALL);
                break;
        }
        int i4 = aVarM904b.f1663b;
        String string2 = ((i4 == 2 || i4 == 1) && (i2 == 2 || i2 == 1)) ? zArchiverService.getString(R.string.MES_BACKGROUND_ARCHIVE_LOCKED, string) : zArchiverService.getString(R.string.MES_BACKGROUND_FS_LOCKED, string, aVarM904b.f1662a);
        if (str == null) {
            str = C0015d.m97y(c0129h.f1015c);
        }
        m711m(str, string2);
        return false;
    }

    /* JADX INFO: renamed from: c */
    public void mo695c(long j2) {
    }

    /* JADX INFO: renamed from: d */
    public final boolean m702d(C0129h c0129h, boolean z2) {
        return m703e(z2 ? 1 : 2, 0, null, c0129h);
    }

    /* JADX INFO: renamed from: e */
    public final boolean m703e(int i2, int i3, String str, C0129h c0129h) {
        if (this.f1351a.f1656c.m903a(c0129h, i2, this.f1353c, i3)) {
            return true;
        }
        return m701b(i2, i3, str, c0129h);
    }

    /* JADX INFO: renamed from: f */
    public final boolean m704f(String str, List list, int i2) {
        C0129h c0129h;
        C0314a c0314a;
        if (list.size() < 100) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!m703e(i2, 0, str, (C0129h) it.next())) {
                    return false;
                }
            }
        } else {
            C0129h c0129hM479f = ((C0129h) list.get(0)).m479f();
            if (c0129hM479f != null) {
                Iterator it2 = list.iterator();
                do {
                    boolean zHasNext = it2.hasNext();
                    ZArchiverService zArchiverService = this.f1351a;
                    if (zHasNext) {
                        c0129h = (C0129h) it2.next();
                        c0314a = zArchiverService.f1656c;
                        c0314a.getClass();
                    } else {
                        zArchiverService.f1656c.m903a(c0129hM479f, i2, this.f1353c, 0);
                    }
                } while (!(c0314a.m904b(i2, -1, 0, C0314a.m902c(c0129h)) != null));
                m701b(i2, 0, str, c0129h);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m705g(C0129h c0129h, List<String> list, int i2, int i3) {
        C0129h c0129h2;
        C0314a c0314a;
        if (list.size() < 100) {
            for (String str : list) {
                if (!m703e(i2, i3, str, new C0129h(str, c0129h))) {
                    return false;
                }
            }
            return true;
        }
        Iterator<String> it = list.iterator();
        do {
            boolean zHasNext = it.hasNext();
            ZArchiverService zArchiverService = this.f1351a;
            if (!zHasNext) {
                zArchiverService.f1656c.m903a(c0129h, i2, this.f1353c, i3);
                return true;
            }
            c0129h2 = new C0129h(it.next(), c0129h);
            c0314a = zArchiverService.f1656c;
            c0314a.getClass();
        } while (!(c0314a.m904b(i2, -1, 0, C0314a.m902c(c0129h2)) != null));
        m701b(i2, i3, null, c0129h2);
        return false;
    }

    /* JADX INFO: renamed from: h */
    public final boolean m706h() {
        if (C2JBridge.f1554c || C2JBridge.m804e()) {
            C2JBridge.cSetOption(1, ZArchiverService.f1653g);
            C2JBridge.cSetOption(4, ZArchiverService.m891i(2) ? 1 : 0);
            return true;
        }
        ZArchiverService zArchiverService = this.f1351a;
        String string = zArchiverService.getString(R.string.ERROR_7Z_LIB);
        int i2 = this.f1353c;
        C0063a.m234d(i2, 0, string);
        ArrayList<C0063a.b> arrayList = new ArrayList<>(1);
        arrayList.add(C0063a.m231a(i2));
        zArchiverService.m895l(this, false, arrayList, null);
        return false;
    }

    /* JADX INFO: renamed from: i */
    public final int m707i(AbstractC0127f abstractC0127f, AbstractC0127f abstractC0127f2) {
        try {
            return C2JBridge.jAskOverwrite(this.f1353c, abstractC0127f2.m467i(), abstractC0127f2.mo424o(), (int) (abstractC0127f2.mo423n() / 1000), abstractC0127f.m467i(), abstractC0127f.mo424o(), (int) (abstractC0127f.mo423n() / 1000));
        } catch (Exception unused) {
            return 0;
        }
    }

    @Override // p051u0.InterfaceC0381d
    public final boolean isCancelled() {
        return C0015d.m49K(C0015d.f117d[this.f1353c], 15);
    }

    /* JADX INFO: renamed from: j */
    public final synchronized AbstractC0194a m708j() {
        if (this.f1356f == null) {
            AbstractC0194a abstractC0194aM589c = AbstractC0194a.m589c(ZArchiverService.f1652f >> 24);
            this.f1356f = abstractC0194aM589c;
            abstractC0194aM589c.f1183a = this.f1353c;
            abstractC0194aM589c.f1184b = "$C";
        }
        return this.f1356f;
    }

    /* JADX INFO: renamed from: k */
    public final boolean m709k(int i2) {
        return (this.f1354d & i2) == i2;
    }

    /* JADX INFO: renamed from: l */
    public final boolean m710l() {
        ArrayList<C0063a.b> arrayList = this.f1358h;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    /* JADX INFO: renamed from: m */
    public final void m711m(String str, String str2) {
        ArrayList<C0063a.b> arrayList = this.f1358h;
        if (arrayList == null) {
            this.f1358h = new ArrayList<>(1);
        } else if (arrayList.size() > 100) {
            return;
        }
        C0063a.b bVar = new C0063a.b(str);
        bVar.m236a(0, str2);
        this.f1358h.add(bVar);
    }

    /* JADX INFO: renamed from: n */
    public final void m712n() {
        C0063a.b bVarM231a = C0063a.m231a(this.f1353c);
        if (bVarM231a != null) {
            ArrayList<C0063a.b> arrayList = this.f1358h;
            if (arrayList == null) {
                this.f1358h = new ArrayList<>(1);
            } else if (arrayList.size() > 100) {
                return;
            }
            this.f1358h.add(bVarM231a);
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m713o(String str) {
        String str2;
        AbstractC0194a abstractC0194a = this.f1356f;
        if (abstractC0194a == null || (str2 = abstractC0194a.f1185c) == null) {
            return;
        }
        ArrayList<C0063a.b> arrayList = this.f1358h;
        if (arrayList == null) {
            this.f1358h = new ArrayList<>(1);
        } else if (arrayList.size() > 100) {
            return;
        }
        C0063a.b bVar = new C0063a.b(str);
        for (String str3 : C0385h.m1084h(str2, '\n')) {
            if (!str3.isEmpty()) {
                bVar.m236a(0, str3);
            }
        }
        if (!bVar.f452c.isEmpty()) {
            this.f1358h.add(bVar);
        }
    }

    /* JADX INFO: renamed from: p */
    public abstract void mo696p();

    /* JADX INFO: renamed from: q */
    public final void m714q(int i2) {
        C0015d.m77h0(this.f1351a, this.f1353c, i2);
    }

    /* JADX INFO: renamed from: r */
    public final void m715r(byte b2) {
        this.f1352b = b2;
        C0015d.f118e[this.f1353c] = b2;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0053  */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        PowerManager.WakeLock wakeLockNewWakeLock;
        String str;
        m714q(0);
        PowerManager powerManager = (PowerManager) this.f1351a.getSystemService("power");
        if (powerManager == null) {
            wakeLockNewWakeLock = null;
        } else {
            if (this.f1351a.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                String str2 = Build.MANUFACTURER;
                if (str2 != null && C0385h.m1085i(str2).contains("huawei")) {
                    str = "android.media.MediaPlayer";
                } else {
                    str = "ZArchiverTask[" + ((int) this.f1352b) + "]";
                }
                wakeLockNewWakeLock = powerManager.newWakeLock(1, str);
            } else {
                wakeLockNewWakeLock = null;
            }
        }
        if (wakeLockNewWakeLock != null) {
            wakeLockNewWakeLock.acquire(18000000L);
        }
        String str3 = C0015d.f119f[this.f1353c];
        m714q(0);
        this.f1351a.m897n(this.f1353c, 3);
        this.f1357g = System.currentTimeMillis();
        if (!m709k(1) || m708j().m595f()) {
            mo696p();
            if (C0015d.m49K(C0015d.f117d[this.f1353c], 2097152)) {
                m714q(2162688);
            }
            if (C0015d.m48J(this.f1353c)) {
                this.f1351a.m895l(this, false, this.f1358h, null);
                m714q(1114112);
            }
        } else {
            this.f1351a.mo755e(this.f1353c, 0, "Can't get root access");
            m714q(1114112);
        }
        AbstractC0194a abstractC0194a = this.f1356f;
        if (abstractC0194a != null) {
            abstractC0194a.close();
        }
        if (wakeLockNewWakeLock != null) {
            try {
                wakeLockNewWakeLock.release();
            } catch (RuntimeException unused) {
            }
        }
        C0314a c0314a = this.f1351a.f1656c;
        int i2 = this.f1353c;
        synchronized (c0314a) {
            ListIterator<C0314a.a> listIterator = c0314a.f1661a.listIterator();
            while (listIterator.hasNext()) {
                if (listIterator.next().f1664c == i2) {
                    listIterator.remove();
                }
            }
        }
        C2JBridge.m803d(this.f1353c);
        this.f1351a.m892g(this.f1353c, 0);
        this.f1351a.m901r();
    }
}
