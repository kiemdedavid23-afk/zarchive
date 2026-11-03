package p006b1;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: b1.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0032c implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C0033d f223a;

    public C0032c(C0033d c0033d) {
        this.f223a = c0033d;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        C0033d c0033d = this.f223a;
        float f2 = c0033d.f226c;
        c0033d.f228e = (valueAnimator.getAnimatedFraction() * (c0033d.f230g - f2)) + f2;
        float f3 = c0033d.f227d;
        c0033d.f229f = (valueAnimator.getAnimatedFraction() * (c0033d.f231h - f3)) + f3;
        c0033d.f224a.show(c0033d.f228e, c0033d.f229f);
    }
}
