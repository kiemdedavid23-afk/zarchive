package p060z;

import android.view.View;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.b */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0452b implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2263a;

    public ViewOnClickListenerC0452b(ZArchiver zArchiver) {
        this.f2263a = zArchiver;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ZArchiver zArchiver = this.f2263a;
        zArchiver.f1390l.setVisibility(0);
        C0305b c0305bM842c = zArchiver.f1386h.m842c();
        if (c0305bM842c.m828i()) {
            return;
        }
        zArchiver.m746P(c0305bM842c.f1593b, "", null, true);
    }
}
