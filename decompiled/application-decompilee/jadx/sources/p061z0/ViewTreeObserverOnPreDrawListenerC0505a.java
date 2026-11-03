package p061z0;

import android.view.ViewTreeObserver;
import p059y0.C0442f;

/* JADX INFO: renamed from: z0.a */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC0505a implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogC0510f f2394a;

    public ViewTreeObserverOnPreDrawListenerC0505a(DialogC0510f dialogC0510f) {
        this.f2394a = dialogC0510f;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        DialogC0510f dialogC0510f = this.f2394a;
        C0442f.m1195f(dialogC0510f.f2403a.f2405a);
        dialogC0510f.f2403a.f2405a.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
