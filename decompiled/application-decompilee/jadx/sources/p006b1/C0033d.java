package p006b1;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import android.widget.Magnifier;
import ru.zdevs.zarchiver.p045ui.editor.EditableView;

/* JADX INFO: renamed from: b1.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0033d {

    /* JADX INFO: renamed from: a */
    public final Magnifier f224a;

    /* JADX INFO: renamed from: b */
    public final ValueAnimator f225b;

    /* JADX INFO: renamed from: c */
    public float f226c;

    /* JADX INFO: renamed from: d */
    public float f227d;

    /* JADX INFO: renamed from: e */
    public float f228e;

    /* JADX INFO: renamed from: f */
    public float f229f;

    /* JADX INFO: renamed from: g */
    public float f230g;

    /* JADX INFO: renamed from: h */
    public float f231h;

    public C0033d(EditableView editableView, int i2) {
        Magnifier.Builder builder = new Magnifier.Builder(editableView);
        float f2 = i2;
        this.f224a = builder.setSize((int) (f2 * 5.5f), (int) (f2 * 1.5f)).setElevation(0.0f).setInitialZoom(1.5f).setClippingEnabled(true).setCornerRadius(3.0f).setDefaultSourceToMagnifierOffset(0, (-i2) - (i2 / 2)).setSourceBounds(1, 0, 1, 0).build();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f225b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new C0032c(this));
    }

    /* JADX INFO: renamed from: a */
    public final void m132a() {
        this.f224a.dismiss();
        this.f225b.cancel();
    }

    /* JADX INFO: renamed from: b */
    public final void m133b(float f2, float f3) {
        float f4 = this.f231h;
        ValueAnimator valueAnimator = this.f225b;
        if (f3 != f4) {
            if (valueAnimator.isRunning()) {
                valueAnimator.cancel();
                this.f226c = this.f228e;
                this.f227d = this.f229f;
            } else {
                this.f226c = this.f230g;
                this.f227d = this.f231h;
            }
            valueAnimator.start();
        } else if (!valueAnimator.isRunning()) {
            this.f224a.show(f2, f3);
        }
        this.f230g = f2;
        this.f231h = f3;
    }

    /* JADX INFO: renamed from: c */
    public final void m134c() {
        this.f224a.update();
    }
}
