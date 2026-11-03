package p001a0;

import android.view.View;
import android.view.ViewTreeObserver;
import p059y0.C0442f;

/* JADX INFO: renamed from: a0.e */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC0005e implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f13a;

    public ViewTreeObserverOnPreDrawListenerC0005e(View view) {
        this.f13a = view;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        View view = this.f13a;
        C0442f.m1195f(view);
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
