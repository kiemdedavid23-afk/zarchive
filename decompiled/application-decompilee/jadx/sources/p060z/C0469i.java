package p060z;

import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu;

/* JADX INFO: renamed from: z.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0469i implements FloatingActionMenu.InterfaceC0331c {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2296a;

    /* JADX INFO: renamed from: z.i$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0469i.this.f2296a.f1391m.setMenuState(false);
        }
    }

    public C0469i(ZArchiver zArchiver) {
        this.f2296a = zArchiver;
    }

    @Override // ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu.InterfaceC0331c
    /* JADX INFO: renamed from: a */
    public final void mo936a(boolean z2) {
        View viewFindViewById = this.f2296a.findViewById(R.id.ibActionBg);
        if (z2) {
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new a());
        } else {
            viewFindViewById.setVisibility(8);
            viewFindViewById.setOnClickListener(null);
        }
    }
}
