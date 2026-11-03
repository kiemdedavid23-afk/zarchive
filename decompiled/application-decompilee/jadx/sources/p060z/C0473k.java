package p060z;

import android.widget.SearchView;
import p051u0.C0379b;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.k */
/* JADX INFO: loaded from: classes.dex */
public final class C0473k implements SearchView.OnCloseListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2302a;

    public C0473k(ZArchiver zArchiver) {
        this.f2302a = zArchiver;
    }

    @Override // android.widget.SearchView.OnCloseListener
    public final boolean onClose() {
        ZArchiver zArchiver = this.f2302a;
        C0305b c0305bM842c = zArchiver.f1386h.m842c();
        if (c0305bM842c.m828i()) {
            zArchiver.m747Q(c0305bM842c.f1593b, false, true);
        }
        zArchiver.f1390l.setVisibility(C0379b.m1060g(zArchiver) ? 8 : 0);
        return false;
    }
}
