package p060z;

import android.view.View;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu;

/* JADX INFO: renamed from: z.g */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0465g implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2286a;

    public ViewOnClickListenerC0465g(ZArchiver zArchiver) {
        this.f2286a = zArchiver;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ZArchiver zArchiver = this.f2286a;
        FloatingActionMenu floatingActionMenu = zArchiver.f1391m;
        if (floatingActionMenu == null) {
            return;
        }
        if (floatingActionMenu.f1734e > 2) {
            floatingActionMenu.m934e(!floatingActionMenu.m933d(), floatingActionMenu.f1739j);
            return;
        }
        if (zArchiver.f3b != null) {
            C0307d c0307d = zArchiver.f1386h;
            if (c0307d.f1622a != 0) {
                if (c0307d.f1624c.m792m(zArchiver, true)) {
                    zArchiver.f3b.finish();
                    return;
                }
                return;
            }
        }
        if (floatingActionMenu.getTag() != null) {
            zArchiver.m734D(((Integer) zArchiver.f1391m.getTag()).intValue());
        }
    }
}
