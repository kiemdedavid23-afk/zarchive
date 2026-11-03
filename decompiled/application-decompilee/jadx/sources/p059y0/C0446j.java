package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;

/* JADX INFO: renamed from: y0.j */
/* JADX INFO: loaded from: classes.dex */
public final class C0446j extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ImageView f2250a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Bitmap f2251b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f2252c = 300;

    public C0446j(ImageView imageView, Bitmap bitmap) {
        this.f2250a = imageView;
        this.f2251b = bitmap;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Bitmap bitmap = this.f2251b;
        ImageView imageView = this.f2250a;
        imageView.setImageBitmap(bitmap);
        imageView.animate().alpha(1.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(this.f2252c / 2);
    }
}
