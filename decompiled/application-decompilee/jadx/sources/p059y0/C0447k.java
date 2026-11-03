package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: renamed from: y0.k */
/* JADX INFO: loaded from: classes.dex */
public final class C0447k extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f2253a;

    public C0447k(View view) {
        this.f2253a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view = this.f2253a;
        view.setVisibility(8);
        view.setRotation(0.0f);
    }
}
