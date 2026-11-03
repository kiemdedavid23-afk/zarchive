package p060z;

import android.view.View;
import p008c0.AbstractViewOnClickListenerC0050h;
import ru.zdevs.zarchiver.ZSelectFile;

/* JADX INFO: renamed from: z.b1 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0454b1 implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZSelectFile f2264a;

    public ViewOnClickListenerC0454b1(ZSelectFile zSelectFile) {
        this.f2264a = zSelectFile;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ZSelectFile zSelectFile = this.f2264a;
        AbstractViewOnClickListenerC0050h listAdapter = zSelectFile.f1425j.getListAdapter();
        if (listAdapter != null) {
            zSelectFile.m772z(listAdapter.m191d());
        }
    }
}
