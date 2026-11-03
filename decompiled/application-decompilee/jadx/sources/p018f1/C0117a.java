package p018f1;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.style.ReplacementSpan;
import p059y0.C0439c;

/* JADX INFO: renamed from: f1.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0117a extends ReplacementSpan {

    /* JADX INFO: renamed from: c */
    public static final float f855c = C0439c.m1166a(8);

    /* JADX INFO: renamed from: d */
    public static final float f856d = C0439c.m1166a(4);

    /* JADX INFO: renamed from: a */
    public final int f857a;

    /* JADX INFO: renamed from: b */
    public final int f858b = -1;

    public C0117a(int i2) {
        this.f857a = i2;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i2, int i3, float f2, int i4, int i5, int i6, Paint paint) {
        Paint paint2 = new Paint(paint);
        paint2.setColor(this.f857a);
        float f3 = i4;
        float f4 = f856d;
        float f5 = f3 + f4;
        float textSize = paint2.getTextSize() + f5 + f4;
        float fMeasureText = paint2.measureText(charSequence.subSequence(i2, i3).toString());
        float f6 = f855c;
        float f7 = 2.0f * f6;
        canvas.drawRoundRect(new RectF(f2, f3, Math.round(fMeasureText + f6 + f6) + f2, textSize), f7, f7, paint2);
        paint2.setColor(this.f858b);
        canvas.drawText(charSequence, i2, i3, f6 + f2, (paint2.getTextSize() * 0.9f) + f5, paint2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i2, int i3, Paint.FontMetricsInt fontMetricsInt) {
        float fMeasureText = paint.measureText(charSequence.subSequence(i2, i3).toString());
        float f2 = f855c;
        return Math.round(fMeasureText + f2 + f2);
    }
}
