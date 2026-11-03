package p060z;

import android.view.View;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.h */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0467h implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2289a;

    public ViewOnClickListenerC0467h(ZArchiver zArchiver) {
        this.f2289a = zArchiver;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getTag() != null) {
            this.f2289a.m734D(((Integer) view.getTag()).intValue());
        }
    }
}
