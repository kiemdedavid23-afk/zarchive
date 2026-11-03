package p060z;

import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZSelectFile;
import ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu;

/* JADX INFO: renamed from: z.c1 */
/* JADX INFO: loaded from: classes.dex */
public final class C0457c1 implements FloatingActionMenu.InterfaceC0331c {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZSelectFile f2271a;

    /* JADX INFO: renamed from: z.c1$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0457c1.this.f2271a.f1428m.setMenuState(false);
        }
    }

    public C0457c1(ZSelectFile zSelectFile) {
        this.f2271a = zSelectFile;
    }

    @Override // ru.zdevs.zarchiver.p045ui.ctrl.fab.FloatingActionMenu.InterfaceC0331c
    /* JADX INFO: renamed from: a */
    public final void mo936a(boolean z2) {
        View viewFindViewById = this.f2271a.findViewById(R.id.ibActionBg);
        if (z2) {
            viewFindViewById.setVisibility(0);
            viewFindViewById.setOnClickListener(new a());
        } else {
            viewFindViewById.setVisibility(8);
            viewFindViewById.setOnClickListener(null);
        }
    }
}
