package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: renamed from: y0.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0445i extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f2249a;

    public C0445i(View view) {
        this.f2249a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        View view = this.f2249a;
        view.setVisibility(8);
        view.setAlpha(1.0f);
    }
}
