package ru.zdevs.zarchiver.p045ui.layout;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import p051u0.C0385h;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.layout.a */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0344a extends LinearLayout implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public int f1873a;

    /* JADX INFO: renamed from: b */
    public int f1874b;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.layout.a$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final String f1875a;

        /* JADX INFO: renamed from: b */
        public final int f1876b;

        /* JADX INFO: renamed from: c */
        public final int f1877c;

        /* JADX INFO: renamed from: d */
        public final int f1878d;

        /* JADX INFO: renamed from: e */
        public final int f1879e;

        public a(String str, int i2, int i3, int i4, int i5) {
            this.f1875a = str;
            this.f1876b = i2;
            this.f1877c = i3;
            this.f1878d = i4;
            this.f1879e = i5;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.layout.a$b */
    public static class b extends TextView {

        /* JADX INFO: renamed from: a */
        public String f1880a;

        /* JADX INFO: renamed from: b */
        public final Drawable f1881b;

        /* JADX INFO: renamed from: c */
        public final Drawable f1882c;

        /* JADX INFO: renamed from: d */
        public Drawable f1883d;

        /* JADX INFO: renamed from: e */
        public Drawable f1884e;

        /* JADX INFO: renamed from: f */
        public final int f1885f;

        /* JADX INFO: renamed from: g */
        public final int f1886g;

        public b(Context context, Drawable drawable, int i2, int i3, int i4) {
            super(context, null);
            setClickable(true);
            this.f1881b = drawable;
            this.f1885f = i3;
            if (i2 != 0) {
                this.f1882c = C0439c.m1174i(getResources(), null, i2);
            }
            this.f1886g = i4;
            setTextColor(i4);
            Drawable drawable2 = getResources().getDrawable(R.drawable.bg_chips);
            this.f1883d = drawable2;
            drawable2.setColorFilter(i3, PorterDuff.Mode.MULTIPLY);
            Drawable drawable3 = getResources().getDrawable(R.drawable.bg_chips_select);
            this.f1884e = drawable3;
            drawable3.setColorFilter(i3, PorterDuff.Mode.MULTIPLY);
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{android.R.attr.state_selected}, this.f1884e);
            stateListDrawable.addState(new int[]{android.R.attr.state_enabled}, this.f1883d);
            setBackground(stateListDrawable);
        }

        @Override // android.widget.TextView, android.view.View
        public final void setSelected(boolean z2) {
            Drawable drawable;
            super.setSelected(z2);
            if (!z2 || (drawable = this.f1882c) == null) {
                drawable = this.f1881b;
            }
            drawable.setTint(z2 ? -1 : this.f1885f);
            boolean z3 = getResources().getConfiguration().getLayoutDirection() == 1;
            Drawable drawable2 = z3 ? null : drawable;
            if (!z3) {
                drawable = null;
            }
            setCompoundDrawablesWithIntrinsicBounds(drawable2, (Drawable) null, drawable, (Drawable) null);
            setTextColor(z2 ? -1 : this.f1886g);
        }
    }

    public ViewOnClickListenerC0344a(Context context) {
        super(context, null);
        this.f1873a = 0;
        this.f1874b = 0;
        setOrientation(0);
        int iM1166a = C0439c.m1166a(4);
        setPadding(iM1166a, 0, iM1166a, iM1166a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public final void m1004a(a[] aVarArr, String[] strArr) {
        boolean z2;
        int i2;
        int i3;
        a[] aVarArr2 = aVarArr;
        removeAllViews();
        int i4 = 1;
        this.f1873a = 1;
        this.f1874b = 1;
        Resources resources = getResources();
        int dimension = (int) resources.getDimension(R.dimen.chips_item_height);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, dimension);
        layoutParams.leftMargin = 2;
        layoutParams.rightMargin = 2;
        int iM1168c = C0439c.m1168c(getContext(), android.R.attr.actionMenuTextColor);
        int length = aVarArr2.length;
        int i5 = 0;
        while (i5 < length) {
            a aVar = aVarArr2[i5];
            Drawable drawableM1174i = C0439c.m1174i(resources, null, aVar.f1876b);
            if (drawableM1174i == null) {
                i2 = length;
                i3 = i5;
            } else {
                String str = aVar.f1875a;
                if (strArr != 0) {
                    int length2 = strArr.length;
                    int i6 = 0;
                    while (true) {
                        if (i6 >= length2) {
                            z2 = 0;
                            break;
                        } else {
                            if (C0385h.m1082f(strArr[i6], str)) {
                                z2 = i4;
                                break;
                            }
                            i6++;
                        }
                    }
                } else {
                    z2 = 0;
                    break;
                }
                if (z2 != 0 && getChildCount() >= this.f1873a) {
                    this.f1874b += i4;
                }
                i2 = length;
                i3 = i5;
                b bVar = new b(getContext(), drawableM1174i, aVar.f1877c, aVar.f1879e, iM1168c);
                bVar.setLayoutParams(layoutParams);
                int i7 = dimension / 4;
                bVar.setPadding(i7, 0, i7, 0);
                int i8 = aVar.f1878d;
                bVar.setText(i8 == 0 ? "" : resources.getString(i8));
                bVar.setSelected(z2);
                bVar.setGravity(17);
                bVar.setOnClickListener(this);
                bVar.f1880a = str;
                if (z2 == 0 || getChildCount() < this.f1873a) {
                    addView(bVar);
                } else {
                    addView(bVar, this.f1874b - 1);
                }
            }
            i5 = i3 + 1;
            aVarArr2 = aVarArr;
            length = i2;
            i4 = 1;
        }
    }

    public String[] getChips() {
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3).isSelected()) {
                i2++;
            }
        }
        if (i2 == 0) {
            return null;
        }
        String[] strArr = new String[i2];
        int i4 = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            b bVar = (b) getChildAt(i5);
            if (bVar.isSelected()) {
                strArr[i4] = bVar.f1880a;
                i4++;
            }
        }
        return strArr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2;
        view.setSelected(!view.isSelected());
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild < this.f1873a) {
            return;
        }
        if (view.isSelected()) {
            i2 = this.f1874b;
            int i3 = i2 + 1;
            this.f1874b = i3;
            if (iIndexOfChild < i3) {
                return;
            }
        } else {
            i2 = this.f1874b - 1;
            this.f1874b = i2;
            if (iIndexOfChild > i2) {
                return;
            }
        }
        removeViewAt(iIndexOfChild);
        addView(view, i2);
    }
}
