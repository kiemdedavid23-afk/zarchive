package ru.zdevs.zarchiver.p045ui.layout;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.RelativeLayout;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: loaded from: classes.dex */
class CheckableRelativeLayout extends RelativeLayout implements Checkable {

    /* JADX INFO: renamed from: a */
    public boolean f1872a;

    public CheckableRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1872a = false;
        int iM1168c = C0439c.m1168c(getContext(), R.attr.colorPrimary);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.setExitFadeDuration(400);
        stateListDrawable.setAlpha(45);
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, new ColorDrawable(iM1168c));
        stateListDrawable.addState(new int[0], new ColorDrawable(0));
        setBackground(stateListDrawable);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1872a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        if (!this.f1872a) {
            return super.onCreateDrawableState(i2);
        }
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        View.mergeDrawableStates(iArrOnCreateDrawableState, new int[]{android.R.attr.state_checked});
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z2) {
        this.f1872a = z2;
        refreshDrawableState();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1872a);
    }
}
