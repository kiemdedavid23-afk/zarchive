package p060z;

import android.view.View;
import ru.zdevs.zarchiver.ZSelectFile;

/* JADX INFO: renamed from: z.x0 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0500x0 implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZSelectFile f2387a;

    public ViewOnClickListenerC0500x0(ZSelectFile zSelectFile) {
        this.f2387a = zSelectFile;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ZSelectFile zSelectFile = this.f2387a;
        zSelectFile.f1427l.setVisibility(0);
        if (zSelectFile.f1421f.m828i()) {
            return;
        }
        ZSelectFile.m765u(zSelectFile, "", null, true);
    }
}
