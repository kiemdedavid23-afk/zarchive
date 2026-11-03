package p059y0;

import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: renamed from: y0.l */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0448l implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f2254a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ AnimatorListenerAdapter f2255b;

    public RunnableC0448l(View view, C0447k c0447k) {
        this.f2254a = view;
        this.f2255b = c0447k;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2254a.animate().alpha(0.0f).setDuration(300L).setListener(this.f2255b);
    }
}
