package ru.zdevs.zarchiver.p045ui.text;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import p059y0.C0439c;

/* JADX INFO: loaded from: classes.dex */
public class BtnEditText extends ExEditText {

    /* JADX INFO: renamed from: e */
    public int f1914e;

    /* JADX INFO: renamed from: f */
    public View.OnClickListener f1915f;

    public BtnEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1914e = 0;
        this.f1915f = null;
    }

    public int getButton() {
        return this.f1914e;
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int right;
        if (this.f1915f != null && motionEvent.getAction() == 1 && isEnabled() && this.f1914e != 0) {
            Drawable[] compoundDrawables = getCompoundDrawables();
            int x2 = (int) motionEvent.getX();
            if (compoundDrawables[0] != null) {
                right = compoundDrawables[0].getBounds().width() + getLeft() + 50;
            } else {
                right = compoundDrawables[2] != null ? (getRight() - compoundDrawables[2].getBounds().width()) - 50 : 0;
            }
            if (compoundDrawables[0] == null ? x2 >= right : x2 <= right) {
                this.f1915f.onClick(this);
                motionEvent.setAction(3);
                performClick();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setButton(int i2) {
        this.f1914e = i2;
        if (i2 == 0) {
            setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
            return;
        }
        setMaxLines(1);
        Context context = getContext();
        int iM1169d = C0439c.m1169d(context);
        Drawable drawableM1173h = C0439c.m1173h(context, this.f1914e);
        if (drawableM1173h == null) {
            return;
        }
        Drawable drawableMutate = drawableM1173h.mutate();
        drawableMutate.setColorFilter(iM1169d, PorterDuff.Mode.SRC_IN);
        boolean z2 = getResources().getConfiguration().getLayoutDirection() == 1;
        Drawable drawable = z2 ? drawableMutate : null;
        if (z2) {
            drawableMutate = null;
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, drawableMutate, (Drawable) null);
    }

    public void setOnBtnClickListener(View.OnClickListener onClickListener) {
        this.f1915f = onClickListener;
    }
}
