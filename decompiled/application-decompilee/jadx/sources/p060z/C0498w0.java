package p060z;

import android.widget.SearchView;
import p051u0.C0379b;
import ru.zdevs.zarchiver.ZSelectFile;

/* JADX INFO: renamed from: z.w0 */
/* JADX INFO: loaded from: classes.dex */
public final class C0498w0 implements SearchView.OnCloseListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZSelectFile f2384a;

    public C0498w0(ZSelectFile zSelectFile) {
        this.f2384a = zSelectFile;
    }

    @Override // android.widget.SearchView.OnCloseListener
    public final boolean onClose() {
        ZSelectFile zSelectFile = this.f2384a;
        if (zSelectFile.f1421f.m828i()) {
            zSelectFile.m766A(false, true);
        }
        zSelectFile.f1427l.setVisibility(C0379b.m1060g(zSelectFile) ? 8 : 0);
        return false;
    }
}
