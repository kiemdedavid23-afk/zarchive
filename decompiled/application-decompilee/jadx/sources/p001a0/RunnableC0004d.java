package p001a0;

import android.content.Intent;
import p020g0.C0129h;
import p021g1.C0137h;
import p039p0.C0223a;
import ru.zdevs.zarchiver.C0306c;
import ru.zdevs.zarchiver.activity.InstallApksDlg;
import ru.zdevs.zarchiver.service.ZArchiverService;

/* JADX INFO: renamed from: a0.d */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0004d implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0306c f10a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C0129h f11b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InstallApksDlg f12c;

    public RunnableC0004d(InstallApksDlg installApksDlg, C0306c c0306c, C0129h c0129h) {
        this.f12c = installApksDlg;
        this.f10a = c0306c;
        this.f11b = c0129h;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0129h c0129h = this.f11b;
        InstallApksDlg installApksDlg = this.f12c;
        try {
            if (C0223a.m630l(this.f10a, c0129h) == 3) {
                installApksDlg.f1520d = c0129h;
                installApksDlg.f1517a = C0137h.m503e(installApksDlg, new Intent(installApksDlg, (Class<?>) ZArchiverService.class), installApksDlg.f1521e);
            } else {
                int i2 = InstallApksDlg.f1516f;
                installApksDlg.m796a(null, true);
            }
        } catch (C0223a.a e2) {
            String message = e2.getMessage();
            int i3 = InstallApksDlg.f1516f;
            installApksDlg.m796a(message, false);
        }
    }
}
