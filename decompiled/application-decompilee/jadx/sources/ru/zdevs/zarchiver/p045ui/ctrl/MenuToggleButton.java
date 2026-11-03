package ru.zdevs.zarchiver.p045ui.ctrl;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.ImageView;
import p004b.C0015d;
import p047s0.C0358b;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: loaded from: classes.dex */
public class MenuToggleButton extends ImageView implements Checkable {

    /* JADX INFO: renamed from: a */
    public boolean f1726a;

    /* JADX INFO: renamed from: b */
    public final int f1727b;

    /* JADX INFO: renamed from: c */
    public final Paint f1728c;

    public MenuToggleButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1727b = C0439c.m1166a(5);
        Paint paint = new Paint();
        this.f1728c = paint;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0015d.f123j);
            setImageDrawable(C0439c.m1173h(getContext(), typedArrayObtainStyledAttributes.getResourceId(0, 0)));
            typedArrayObtainStyledAttributes.recycle();
        }
        if (!C0358b.m1040k(1536)) {
            setBackgroundDrawable(C0439c.m1172g(context, R.drawable.bg_selectable_button));
        }
        paint.setColor(C0439c.m1168c(getContext(), R.attr.colorPrimary));
        setClickable(true);
        int dimension = (int) getResources().getDimension(R.dimen.menu_item_toggle_padding);
        setPadding(dimension, dimension, dimension, dimension);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1726a;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        if (this.f1726a) {
            int i2 = this.f1727b;
            canvas.drawRect(i2, measuredHeight - i2, measuredWidth - i2, measuredHeight, this.f1728c);
        }
    }

    @Override // android.view.View
    public final boolean performClick() {
        toggle();
        boolean zPerformClick = super.performClick();
        if (!zPerformClick) {
            playSoundEffect(0);
        }
        return zPerformClick;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z2) {
        this.f1726a = z2;
        invalidate();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1726a);
    }
}
