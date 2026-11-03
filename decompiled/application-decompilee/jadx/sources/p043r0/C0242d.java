package p043r0;

import java.io.File;
import java.util.ArrayList;
import p004b.C0015d;
import p011d0.C0063a;
import p020g0.C0129h;
import p033m0.C0181d;
import p041q0.C0234a;
import p041q0.C0236c;
import ru.zdevs.zarchiver.archiver.C2JBridge;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: r0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0242d extends AbstractC0245g {

    /* JADX INFO: renamed from: i */
    public C0129h f1338i;

    /* JADX INFO: renamed from: j */
    public String f1339j;

    /* JADX INFO: renamed from: k */
    public boolean f1340k;

    /* JADX INFO: renamed from: l */
    public String f1341l;

    public C0242d(ZArchiverService zArchiverService, int i2) {
        super(zArchiverService, (byte) 12, i2);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    /* JADX WARN: Code duplicated, block: B:15:0x002f  */
    /* JADX WARN: Code duplicated, block: B:18:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0043  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0079  */
    /* JADX WARN: Code duplicated, block: B:30:0x0081  */
    /* JADX WARN: Code duplicated, block: B:31:0x0084  */
    /* JADX WARN: Code duplicated, block: B:34:0x0092  */
    @Override // p043r0.AbstractC0245g
    /* JADX INFO: renamed from: p */
    public final void mo696p() {
        boolean zCreateNewFile;
        C0236c c0236cM689c;
        String str;
        boolean zCAddFiles;
        if (m702d(this.f1338i, true)) {
            String strM566g = C0181d.m566g();
            File file = new File(strM566g, this.f1339j);
            boolean z2 = this.f1340k;
            int i2 = this.f1353c;
            boolean z3 = false;
            if (z2) {
                try {
                    zCreateNewFile = file.createNewFile();
                } catch (Exception unused) {
                    zCreateNewFile = false;
                }
                if (zCreateNewFile) {
                    C0063a.m232b(i2, false, this.f1338i.f1015c);
                    if (!isCancelled()) {
                        if (m709k(1)) {
                            zCAddFiles = C0234a.m670a(m708j(), this.f1338i.f1015c, this.f1341l, this.f1339j, strM566g);
                        } else if (m706h()) {
                            c0236cM689c = C0236c.m689c(new C0129h(this.f1338i.f1015c), true);
                            if (c0236cM689c != null) {
                                byte[] bArr = C0015d.f118e;
                                bArr[i2] = (byte) (bArr[i2] | (-128));
                                if (!c0236cM689c.m691b(this)) {
                                    C0063a.m234d(i2, 0, "Failed to write to archive");
                                    c0236cM689c = null;
                                }
                            }
                            if (c0236cM689c != null) {
                                str = c0236cM689c.f1324b;
                            } else {
                                str = this.f1338i.f1015c;
                            }
                            zCAddFiles = C2JBridge.cAddFiles(i2, str, this.f1341l, this.f1339j, strM566g);
                            if (c0236cM689c != null) {
                                c0236cM689c.m690a(this);
                            }
                        }
                        z3 = zCAddFiles;
                    }
                    m712n();
                    file.delete();
                } else if (!this.f1340k && file.mkdir()) {
                    C0063a.m232b(i2, false, this.f1338i.f1015c);
                    if (!isCancelled()) {
                        if (m709k(1)) {
                            zCAddFiles = C0234a.m670a(m708j(), this.f1338i.f1015c, this.f1341l, this.f1339j, strM566g);
                        } else if (m706h()) {
                            c0236cM689c = C0236c.m689c(new C0129h(this.f1338i.f1015c), true);
                            if (c0236cM689c != null) {
                                byte[] bArr2 = C0015d.f118e;
                                bArr2[i2] = (byte) (bArr2[i2] | (-128));
                                if (!c0236cM689c.m691b(this)) {
                                    C0063a.m234d(i2, 0, "Failed to write to archive");
                                    c0236cM689c = null;
                                }
                            }
                            if (c0236cM689c != null) {
                                str = c0236cM689c.f1324b;
                            } else {
                                str = this.f1338i.f1015c;
                            }
                            zCAddFiles = C2JBridge.cAddFiles(i2, str, this.f1341l, this.f1339j, strM566g);
                            if (c0236cM689c != null) {
                                c0236cM689c.m690a(this);
                            }
                        }
                        z3 = zCAddFiles;
                    }
                    m712n();
                    file.delete();
                }
            } else if (!this.f1340k) {
                C0063a.m232b(i2, false, this.f1338i.f1015c);
                if (!isCancelled()) {
                    if (m709k(1)) {
                        zCAddFiles = C0234a.m670a(m708j(), this.f1338i.f1015c, this.f1341l, this.f1339j, strM566g);
                    } else if (m706h()) {
                        c0236cM689c = C0236c.m689c(new C0129h(this.f1338i.f1015c), true);
                        if (c0236cM689c != null) {
                            byte[] bArr3 = C0015d.f118e;
                            bArr3[i2] = (byte) (bArr3[i2] | (-128));
                            if (!c0236cM689c.m691b(this)) {
                                C0063a.m234d(i2, 0, "Failed to write to archive");
                                c0236cM689c = null;
                            }
                        }
                        if (c0236cM689c != null) {
                            str = c0236cM689c.f1324b;
                        } else {
                            str = this.f1338i.f1015c;
                        }
                        zCAddFiles = C2JBridge.cAddFiles(i2, str, this.f1341l, this.f1339j, strM566g);
                        if (c0236cM689c != null) {
                            c0236cM689c.m690a(this);
                        }
                    }
                    z3 = zCAddFiles;
                }
                m712n();
                file.delete();
            }
            m714q(z3 ? 1179648 : 1114112);
            ArrayList<C0063a.b> arrayList = this.f1358h;
            ZArchiverService zArchiverService = this.f1351a;
            zArchiverService.m895l(this, z3, arrayList, null);
            if (z3) {
                zArchiverService.m896m(i2, 1, null);
            }
        }
    }
}
