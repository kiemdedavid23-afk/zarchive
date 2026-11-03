package ru.zdevs.zarchiver.p045ui.ctrl.fab;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.ImageView;
import p002a1.C0009a;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: loaded from: classes.dex */
public class FloatingActionMenu extends ViewGroup implements View.OnClickListener {

    /* JADX INFO: renamed from: t */
    public static final /* synthetic */ int f1729t = 0;

    /* JADX INFO: renamed from: a */
    public final AnimatorSet f1730a;

    /* JADX INFO: renamed from: b */
    public final AnimatorSet f1731b;

    /* JADX INFO: renamed from: c */
    public C0009a f1732c;

    /* JADX INFO: renamed from: d */
    public int f1733d;

    /* JADX INFO: renamed from: e */
    public int f1734e;

    /* JADX INFO: renamed from: f */
    public int f1735f;

    /* JADX INFO: renamed from: g */
    public Drawable f1736g;

    /* JADX INFO: renamed from: h */
    public OvershootInterpolator f1737h;

    /* JADX INFO: renamed from: i */
    public AnticipateInterpolator f1738i;

    /* JADX INFO: renamed from: j */
    public boolean f1739j;

    /* JADX INFO: renamed from: k */
    public ImageView f1740k;

    /* JADX INFO: renamed from: l */
    public boolean f1741l;

    /* JADX INFO: renamed from: m */
    public boolean f1742m;

    /* JADX INFO: renamed from: n */
    public InterfaceC0331c f1743n;

    /* JADX INFO: renamed from: o */
    public View.OnClickListener f1744o;

    /* JADX INFO: renamed from: p */
    public int f1745p;

    /* JADX INFO: renamed from: q */
    public int f1746q;

    /* JADX INFO: renamed from: r */
    public int f1747r;

    /* JADX INFO: renamed from: s */
    public int f1748s;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu$a */
    public class RunnableC0329a implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ boolean f1749a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ C0009a f1750b;

        /* JADX INFO: renamed from: c */
        public final /* synthetic */ boolean f1751c;

        public RunnableC0329a(boolean z2, C0009a c0009a, boolean z3) {
            this.f1749a = z2;
            this.f1750b = c0009a;
            this.f1751c = z3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            boolean zM933d = floatingActionMenu.m933d();
            boolean z2 = this.f1749a;
            if (zM933d == z2) {
                return;
            }
            C0009a c0009a = floatingActionMenu.f1732c;
            C0009a c0009a2 = this.f1750b;
            if (c0009a2 != c0009a) {
                c0009a2.m19f(z2, this.f1751c);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu$b */
    public class RunnableC0330b implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ boolean f1753a;

        public RunnableC0330b(boolean z2) {
            this.f1753a = z2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            boolean z2 = this.f1753a;
            int i2 = z2 ? 2 : 0;
            FloatingActionMenu floatingActionMenu = FloatingActionMenu.this;
            floatingActionMenu.f1735f = i2;
            InterfaceC0331c interfaceC0331c = floatingActionMenu.f1743n;
            if (interfaceC0331c != null) {
                interfaceC0331c.mo936a(z2);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.ctrl.fab.FloatingActionMenu$c */
    public interface InterfaceC0331c {
        /* JADX INFO: renamed from: a */
        void mo936a(boolean z2);
    }

    public FloatingActionMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1730a = new AnimatorSet();
        this.f1731b = new AnimatorSet();
        this.f1735f = 0;
        this.f1739j = true;
        this.f1745p = -1;
        Resources.Theme themeNewTheme = getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        this.f1736g = C0439c.m1174i(getResources(), themeNewTheme, R.drawable.l_add);
        this.f1737h = new OvershootInterpolator();
        this.f1738i = new AnticipateInterpolator();
        this.f1732c = new C0009a(context, true);
        ImageView imageView = new ImageView(getContext());
        this.f1740k = imageView;
        imageView.setImageDrawable(this.f1736g);
        addView(this.f1732c, super.generateDefaultLayoutParams());
        addView(this.f1740k);
        m930a(1.0f);
    }

    /* JADX INFO: renamed from: a */
    public final void m930a(float f2) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f1740k, "rotation", 135.0f, 0.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f1740k, "rotation", 0.0f, 135.0f);
        AnimatorSet animatorSet = this.f1731b;
        AnimatorSet animatorSet2 = this.f1730a;
        if (f2 < 1.0f) {
            animatorSet2.playTogether(objectAnimatorOfFloat2, ObjectAnimator.ofFloat(this.f1732c, "alpha", f2, 1.0f));
            animatorSet.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofFloat(this.f1732c, "alpha", 1.0f, f2));
        } else {
            animatorSet2.play(objectAnimatorOfFloat2);
            animatorSet.play(objectAnimatorOfFloat);
        }
        animatorSet2.setInterpolator(this.f1737h);
        animatorSet.setInterpolator(this.f1738i);
        animatorSet2.setDuration(300L);
        animatorSet.setDuration(300L);
    }

    /* JADX INFO: renamed from: b */
    public final void m931b(boolean z2) {
        if (m932c()) {
            return;
        }
        this.f1732c.m19f(false, this.f1739j && z2);
        this.f1740k.setVisibility(4);
        this.f1741l = false;
    }

    /* JADX INFO: renamed from: c */
    public final boolean m932c() {
        return this.f1732c.getVisibility() == 4;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m933d() {
        return this.f1735f == 2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
        if (this.f1745p == -1) {
            this.f1745p = marginLayoutParams.topMargin;
            this.f1746q = marginLayoutParams.bottomMargin;
            this.f1747r = marginLayoutParams.rightMargin;
            this.f1748s = marginLayoutParams.leftMargin;
        }
        marginLayoutParams.topMargin = windowInsets.getSystemWindowInsetTop() + this.f1745p;
        marginLayoutParams.bottomMargin = windowInsets.getSystemWindowInsetBottom() + this.f1746q;
        marginLayoutParams.rightMargin = windowInsets.getSystemWindowInsetRight() + this.f1747r;
        marginLayoutParams.leftMargin = windowInsets.getSystemWindowInsetLeft() + this.f1748s;
        setLayoutParams(marginLayoutParams);
        return windowInsets;
    }

    /* JADX INFO: renamed from: e */
    public final void m934e(boolean z2, boolean z3) {
        if (m933d() == z2) {
            return;
        }
        if (this.f1739j && z3) {
            AnimatorSet animatorSet = this.f1731b;
            animatorSet.cancel();
            AnimatorSet animatorSet2 = this.f1730a;
            animatorSet2.cancel();
            if (z2) {
                animatorSet2.start();
            } else {
                animatorSet.start();
            }
        }
        this.f1735f = z2 ? 1 : 0;
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if ((childAt instanceof C0009a) && childAt.getVisibility() != 8) {
                C0009a c0009a = (C0009a) childAt;
                if (this.f1739j) {
                    postDelayed(new RunnableC0329a(z2, c0009a, z3), i2);
                    i2 += 50;
                }
                if (c0009a != this.f1732c) {
                    c0009a.m19f(z2, false);
                }
            }
        }
        postDelayed(new RunnableC0330b(z2), i2);
    }

    /* JADX INFO: renamed from: f */
    public final void m935f(boolean z2) {
        if (m932c() && m932c()) {
            this.f1732c.m19f(true, this.f1739j && z2);
            this.f1740k.setVisibility(0);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public View.OnClickListener getOnMenuButtonClick() {
        return this.f1744o;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        setMenuState(false);
        View.OnClickListener onClickListener = this.f1744o;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        bringChildToFront(this.f1732c);
        bringChildToFront(this.f1740k);
        this.f1734e = getChildCount();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int paddingLeft = getPaddingLeft() + (this.f1733d / 2);
        int measuredHeight = ((i5 - i3) - this.f1732c.getMeasuredHeight()) - getPaddingBottom();
        int measuredWidth = paddingLeft - (this.f1732c.getMeasuredWidth() / 2);
        C0009a c0009a = this.f1732c;
        c0009a.layout(measuredWidth, measuredHeight, c0009a.getMeasuredWidth() + measuredWidth, this.f1732c.getMeasuredHeight() + measuredHeight);
        int measuredWidth2 = paddingLeft - (this.f1740k.getMeasuredWidth() / 2);
        int measuredHeight2 = ((this.f1732c.getMeasuredHeight() / 2) + measuredHeight) - (this.f1740k.getMeasuredHeight() / 2);
        ImageView imageView = this.f1740k;
        imageView.layout(measuredWidth2, measuredHeight2, imageView.getMeasuredWidth() + measuredWidth2, this.f1740k.getMeasuredHeight() + measuredHeight2);
        int measuredHeight3 = this.f1732c.getMeasuredHeight() + measuredHeight + 5;
        for (int i6 = this.f1734e - 1; i6 >= 0; i6--) {
            View childAt = getChildAt(i6);
            if (childAt != this.f1740k) {
                C0009a c0009a2 = (C0009a) childAt;
                if (c0009a2.getVisibility() != 8) {
                    int measuredWidth3 = paddingLeft - (c0009a2.getMeasuredWidth() / 2);
                    int measuredHeight4 = (measuredHeight3 - c0009a2.getMeasuredHeight()) - 5;
                    if (c0009a2 != this.f1732c) {
                        c0009a2.layout(measuredWidth3, measuredHeight4, c0009a2.getMeasuredWidth() + measuredWidth3, c0009a2.getMeasuredHeight() + measuredHeight4);
                        if (this.f1735f == 0) {
                            c0009a2.m19f(false, false);
                        }
                    }
                    measuredHeight3 = measuredHeight4 - 5;
                }
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        int paddingRight;
        measureChildWithMargins(this.f1740k, i2, 0, i3, 0);
        int i5 = 0;
        this.f1733d = 0;
        int measuredHeight = 0;
        while (true) {
            i4 = this.f1734e;
            if (i5 >= i4) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8 && childAt != this.f1740k) {
                measureChildWithMargins(childAt, i2, 0, i3, 0);
                this.f1733d = Math.max(this.f1733d, childAt.getMeasuredWidth());
                measuredHeight = childAt.getMeasuredHeight() + measuredHeight;
            }
            i5++;
        }
        double paddingBottom = getPaddingBottom() + getPaddingTop() + ((i4 - 1) * 5) + measuredHeight;
        int defaultSize = (int) ((0.03d * paddingBottom) + paddingBottom);
        if (getLayoutParams().width == -1) {
            paddingRight = View.getDefaultSize(getSuggestedMinimumWidth(), i2);
        } else {
            paddingRight = getPaddingRight() + getPaddingLeft() + this.f1733d;
        }
        if (getLayoutParams().height == -1) {
            defaultSize = View.getDefaultSize(getSuggestedMinimumHeight(), i3);
        }
        setMeasuredDimension(paddingRight, defaultSize);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f1742m) {
            return super.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            return m933d();
        }
        if (action != 1) {
            return false;
        }
        setMenuState(false);
        return true;
    }

    public void setAnimated(boolean z2) {
        this.f1739j = z2;
    }

    public void setClosedOnTouchOutside(boolean z2) {
        this.f1742m = z2;
    }

    public void setMenuButtonImageResource(int i2) {
        Resources.Theme themeNewTheme = getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        Drawable drawableM1174i = C0439c.m1174i(getResources(), themeNewTheme, i2);
        if (this.f1736g != drawableM1174i) {
            this.f1736g = drawableM1174i;
            this.f1740k.setImageDrawable(drawableM1174i);
        }
    }

    public void setMenuState(boolean z2) {
        m934e(z2, this.f1739j);
    }

    public void setOnMenuButtonClick(View.OnClickListener onClickListener) {
        this.f1744o = onClickListener;
    }

    public void setOnMenuButtonClickListener(View.OnClickListener onClickListener) {
        this.f1732c.setOnClickListener(onClickListener);
    }

    public void setOnMenuToggleListener(InterfaceC0331c interfaceC0331c) {
        this.f1743n = interfaceC0331c;
    }

    public void setTransparent(boolean z2) {
        float f2 = z2 ? 0.7f : 1.0f;
        this.f1732c.setAlpha(f2);
        m930a(f2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }
}
