package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* JADX INFO: renamed from: y0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0444h extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f2248a;

    public C0444h(View view) {
        this.f2248a = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f2248a.setVisibility(0);
    }
}
