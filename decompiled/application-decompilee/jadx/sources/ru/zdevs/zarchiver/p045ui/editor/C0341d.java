package ru.zdevs.zarchiver.p045ui.editor;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewConfiguration;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0341d implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a */
    public final View f1853a;

    /* JADX INFO: renamed from: b */
    public final int f1854b;

    /* JADX INFO: renamed from: c */
    public final Drawable f1855c;

    /* JADX INFO: renamed from: d */
    public final Drawable f1856d;

    /* JADX INFO: renamed from: e */
    public final int f1857e;

    /* JADX INFO: renamed from: f */
    public final int f1858f;

    /* JADX INFO: renamed from: g */
    public final Drawable f1859g;

    /* JADX INFO: renamed from: h */
    public final Drawable f1860h;

    /* JADX INFO: renamed from: i */
    public final int f1861i;

    /* JADX INFO: renamed from: j */
    public final int f1862j;

    /* JADX INFO: renamed from: k */
    public final Rect f1863k;

    /* JADX INFO: renamed from: l */
    public int f1864l;

    /* JADX INFO: renamed from: m */
    public int f1865m;

    /* JADX INFO: renamed from: n */
    public float f1866n;

    /* JADX INFO: renamed from: o */
    public final ValueAnimator f1867o;

    /* JADX INFO: renamed from: p */
    public final a f1868p;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.d$a */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0341d c0341d = C0341d.this;
            c0341d.f1865m = 0;
            ValueAnimator valueAnimator = c0341d.f1867o;
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
            } else {
                valueAnimator.start();
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.d$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        int mo937a();

        int computeHorizontalScrollOffset();

        int computeHorizontalScrollRange();

        int computeVerticalScrollOffset();

        int computeVerticalScrollRange();
    }

    public C0341d(View view) {
        a aVar = new a();
        this.f1868p = aVar;
        this.f1853a = view;
        Context context = view.getContext();
        this.f1854b = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f1855c = C0439c.m1172g(context, R.drawable.fast_track_x);
        Drawable drawableM1172g = C0439c.m1172g(context, R.drawable.fast_thumb_x);
        this.f1856d = drawableM1172g;
        this.f1857e = drawableM1172g.getIntrinsicWidth();
        this.f1858f = drawableM1172g.getIntrinsicHeight();
        this.f1859g = C0439c.m1172g(context, R.drawable.fast_track_y);
        Drawable drawableM1172g2 = C0439c.m1172g(context, R.drawable.fast_thumb_y);
        this.f1860h = drawableM1172g2;
        int intrinsicWidth = drawableM1172g2.getIntrinsicWidth();
        this.f1861i = intrinsicWidth;
        this.f1862j = drawableM1172g2.getIntrinsicHeight();
        this.f1863k = new Rect();
        this.f1865m = 1;
        this.f1864l = 0;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, intrinsicWidth);
        this.f1867o = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(250L);
        valueAnimatorOfInt.addUpdateListener(this);
        view.removeCallbacks(aVar);
        view.postDelayed(aVar, 1500L);
    }

    /* JADX INFO: renamed from: a */
    public final void m998a(int i2) {
        a aVar = this.f1868p;
        View view = this.f1853a;
        if (i2 == 2) {
            view.removeCallbacks(aVar);
        }
        int i3 = this.f1865m;
        this.f1865m = i2;
        if (i2 == 1) {
            if (i3 == 0) {
                this.f1867o.reverse();
            } else {
                view.removeCallbacks(aVar);
                view.postDelayed(aVar, 1500L);
            }
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f1864l = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.f1853a.invalidate();
    }
}
