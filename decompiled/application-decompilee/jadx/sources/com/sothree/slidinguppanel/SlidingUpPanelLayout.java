package com.sothree.slidinguppanel;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.Scroller;
import p004b.C0015d;
import p061z0.C0512h;

/* JADX INFO: loaded from: classes.dex */
public class SlidingUpPanelLayout extends ViewGroup {

    /* JADX INFO: renamed from: C */
    public static final int[] f406C = {R.attr.gravity};

    /* JADX INFO: renamed from: A */
    public int f407A;

    /* JADX INFO: renamed from: B */
    public Paint f408B;

    /* JADX INFO: renamed from: a */
    public int f409a;

    /* JADX INFO: renamed from: b */
    public final Paint f410b;

    /* JADX INFO: renamed from: c */
    public int f411c;

    /* JADX INFO: renamed from: d */
    public boolean f412d;

    /* JADX INFO: renamed from: e */
    public View f413e;

    /* JADX INFO: renamed from: f */
    public int f414f;

    /* JADX INFO: renamed from: g */
    public View f415g;

    /* JADX INFO: renamed from: h */
    public final C0015d f416h;

    /* JADX INFO: renamed from: i */
    public View f417i;

    /* JADX INFO: renamed from: j */
    public View f418j;

    /* JADX INFO: renamed from: k */
    public EnumC0061e f419k;

    /* JADX INFO: renamed from: l */
    public EnumC0061e f420l;

    /* JADX INFO: renamed from: m */
    public float f421m;

    /* JADX INFO: renamed from: n */
    public int f422n;

    /* JADX INFO: renamed from: o */
    public float f423o;

    /* JADX INFO: renamed from: p */
    public int f424p;

    /* JADX INFO: renamed from: q */
    public boolean f425q;

    /* JADX INFO: renamed from: r */
    public float f426r;

    /* JADX INFO: renamed from: s */
    public float f427s;

    /* JADX INFO: renamed from: t */
    public float f428t;

    /* JADX INFO: renamed from: u */
    public float f429u;

    /* JADX INFO: renamed from: v */
    public boolean f430v;

    /* JADX INFO: renamed from: w */
    public InterfaceC0060d f431w;

    /* JADX INFO: renamed from: x */
    public final C0512h f432x;

    /* JADX INFO: renamed from: y */
    public boolean f433y;

    /* JADX INFO: renamed from: z */
    public final Rect f434z;

    /* JADX INFO: renamed from: com.sothree.slidinguppanel.SlidingUpPanelLayout$a */
    public class ViewOnClickListenerC0057a implements View.OnClickListener {
        public ViewOnClickListenerC0057a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            EnumC0061e enumC0061e;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            if (!slidingUpPanelLayout.isEnabled() || slidingUpPanelLayout.m223e()) {
                return;
            }
            EnumC0061e enumC0061e2 = slidingUpPanelLayout.f419k;
            EnumC0061e enumC0061e3 = EnumC0061e.f439a;
            if (enumC0061e2 == enumC0061e3 || enumC0061e2 == (enumC0061e = EnumC0061e.f441c)) {
                slidingUpPanelLayout.setPanelState(EnumC0061e.f440b);
            } else if (slidingUpPanelLayout.f423o < 1.0f) {
                slidingUpPanelLayout.setPanelState(enumC0061e);
            } else {
                slidingUpPanelLayout.setPanelState(enumC0061e3);
            }
        }
    }

    /* JADX INFO: renamed from: com.sothree.slidinguppanel.SlidingUpPanelLayout$b */
    public class C0058b extends C0512h.c {
        public C0058b() {
        }

        @Override // p061z0.C0512h.c
        /* JADX INFO: renamed from: a */
        public final int mo228a(int i2) {
            int[] iArr = SlidingUpPanelLayout.f406C;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            int iM221c = slidingUpPanelLayout.m221c(0.0f);
            int iM221c2 = slidingUpPanelLayout.m221c(1.0f);
            return slidingUpPanelLayout.f412d ? Math.min(Math.max(i2, iM221c2), iM221c) : Math.min(Math.max(i2, iM221c), iM221c2);
        }
    }

    /* JADX INFO: renamed from: com.sothree.slidinguppanel.SlidingUpPanelLayout$d */
    public interface InterfaceC0060d {
        /* JADX INFO: renamed from: a */
        void mo12a();

        /* JADX INFO: renamed from: b */
        void mo13b(EnumC0061e enumC0061e);
    }

    /* JADX INFO: renamed from: com.sothree.slidinguppanel.SlidingUpPanelLayout$e */
    public enum EnumC0061e {
        f439a,
        f440b,
        f441c,
        f442d,
        f443e;

        EnumC0061e() {
        }
    }

    public SlidingUpPanelLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f409a = -1728053248;
        this.f410b = new Paint();
        this.f411c = -1;
        this.f414f = -1;
        this.f416h = new C0015d();
        EnumC0061e enumC0061e = EnumC0061e.f440b;
        this.f419k = enumC0061e;
        this.f420l = enumC0061e;
        this.f423o = 1.0f;
        this.f424p = -1;
        this.f430v = false;
        this.f433y = true;
        this.f434z = new Rect();
        this.f407A = -1;
        if (isInEditMode()) {
            this.f432x = null;
            return;
        }
        int i2 = 400;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f406C);
            if (typedArrayObtainStyledAttributes != null) {
                setGravity(typedArrayObtainStyledAttributes.getInt(0, 0));
                typedArrayObtainStyledAttributes.recycle();
            }
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C0015d.f125l);
            if (typedArrayObtainStyledAttributes2 != null) {
                this.f411c = typedArrayObtainStyledAttributes2.getDimensionPixelSize(4, -1);
                i2 = typedArrayObtainStyledAttributes2.getInt(3, 400);
                this.f409a = typedArrayObtainStyledAttributes2.getColor(2, -1728053248);
                this.f414f = typedArrayObtainStyledAttributes2.getResourceId(1, -1);
                this.f424p = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, -1);
                typedArrayObtainStyledAttributes2.recycle();
            }
        }
        float f2 = context.getResources().getDisplayMetrics().density;
        if (this.f411c == -1) {
            this.f411c = (int) ((68.0f * f2) + 0.5f);
        }
        setWillNotDraw(false);
        C0512h c0512h = new C0512h(getContext(), this, new C0058b());
        c0512h.f2415b = (int) (c0512h.f2415b * 3.3333333f);
        this.f432x = c0512h;
        c0512h.f2426m = i2 * f2;
    }

    /* JADX INFO: renamed from: b */
    public static void m220b(SlidingUpPanelLayout slidingUpPanelLayout, int i2) {
        EnumC0061e enumC0061e = slidingUpPanelLayout.f419k;
        EnumC0061e enumC0061e2 = EnumC0061e.f443e;
        if (enumC0061e != enumC0061e2) {
            slidingUpPanelLayout.f420l = enumC0061e;
        }
        slidingUpPanelLayout.setPanelStateInternal(enumC0061e2);
        slidingUpPanelLayout.f421m = slidingUpPanelLayout.m222d(i2);
        InterfaceC0060d interfaceC0060d = slidingUpPanelLayout.f431w;
        if (interfaceC0060d != null) {
            interfaceC0060d.mo12a();
        }
        C0059c c0059c = (C0059c) slidingUpPanelLayout.f418j.getLayoutParams();
        int height = ((slidingUpPanelLayout.getHeight() - slidingUpPanelLayout.getPaddingBottom()) - slidingUpPanelLayout.getPaddingTop()) - slidingUpPanelLayout.f411c;
        if (slidingUpPanelLayout.f421m > 0.0f) {
            if (((ViewGroup.MarginLayoutParams) c0059c).height != -1) {
                ((ViewGroup.MarginLayoutParams) c0059c).height = -1;
                slidingUpPanelLayout.f418j.requestLayout();
                return;
            }
            return;
        }
        int paddingBottom = slidingUpPanelLayout.f412d ? i2 - slidingUpPanelLayout.getPaddingBottom() : ((slidingUpPanelLayout.getHeight() - slidingUpPanelLayout.getPaddingBottom()) - slidingUpPanelLayout.f417i.getMeasuredHeight()) - i2;
        ((ViewGroup.MarginLayoutParams) c0059c).height = paddingBottom;
        if (paddingBottom == height) {
            ((ViewGroup.MarginLayoutParams) c0059c).height = -1;
        }
        slidingUpPanelLayout.f418j.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPanelStateInternal(EnumC0061e enumC0061e) {
        if (this.f419k == enumC0061e) {
            return;
        }
        this.f419k = enumC0061e;
        InterfaceC0060d interfaceC0060d = this.f431w;
        if (interfaceC0060d != null) {
            interfaceC0060d.mo13b(enumC0061e);
        }
        sendAccessibilityEvent(32);
    }

    /* JADX INFO: renamed from: c */
    public final int m221c(float f2) {
        View view = this.f417i;
        int measuredHeight = view != null ? view.getMeasuredHeight() : 0;
        int i2 = (int) (f2 * this.f422n);
        return this.f412d ? ((getMeasuredHeight() - getPaddingBottom()) - this.f411c) - i2 : (getPaddingTop() - measuredHeight) + this.f411c + i2;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0059c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        C0512h c0512h = this.f432x;
        if (c0512h != null) {
            if (c0512h.f2414a == 2) {
                Scroller scroller = c0512h.f2428o;
                boolean zComputeScrollOffset = scroller.computeScrollOffset();
                int currX = scroller.getCurrX();
                int currY = scroller.getCurrY();
                int left = currX - c0512h.f2430q.getLeft();
                int top = currY - c0512h.f2430q.getTop();
                if (left != 0) {
                    c0512h.f2430q.offsetLeftAndRight(left);
                }
                if (top != 0) {
                    c0512h.f2430q.offsetTopAndBottom(top);
                }
                if (left != 0 || top != 0) {
                    SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
                    m220b(slidingUpPanelLayout, currY);
                    slidingUpPanelLayout.invalidate();
                }
                if (zComputeScrollOffset && currX == scroller.getFinalX() && currY == scroller.getFinalY()) {
                    scroller.abortAnimation();
                    zComputeScrollOffset = false;
                }
                if (!zComputeScrollOffset) {
                    c0512h.f2432s.post(c0512h.f2433t);
                }
            }
            if (c0512h.f2414a == 2) {
                if (isEnabled()) {
                    postInvalidateOnAnimation();
                } else {
                    c0512h.m1211a();
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public final float m222d(int i2) {
        float f2;
        int i3;
        int iM221c = m221c(0.0f);
        if (this.f412d) {
            f2 = iM221c - i2;
            i3 = this.f422n;
        } else {
            f2 = i2 - iM221c;
            i3 = this.f422n;
        }
        return f2 / i3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f408B != null) {
            canvas.drawRect(0.0f, getHeight() - this.f407A, getWidth(), getHeight(), this.f408B);
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00ea  */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int height;
        int bottom;
        int bottom2;
        int actionMasked = motionEvent.getActionMasked();
        boolean zIsEnabled = isEnabled();
        C0512h c0512h = this.f432x;
        if (!zIsEnabled || m223e() || (this.f425q && actionMasked != 0)) {
            c0512h.m1211a();
            return super.dispatchTouchEvent(motionEvent);
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        if (actionMasked == 0) {
            this.f430v = false;
            this.f426r = x2;
            this.f427s = y2;
        } else if (actionMasked == 2) {
            float f2 = x2 - this.f426r;
            float f3 = y2 - this.f427s;
            this.f426r = x2;
            this.f427s = y2;
            if (Math.abs(f2) > Math.abs(f3)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            if (!m224f(this.f415g, (int) this.f428t, (int) this.f429u)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            boolean z2 = this.f412d;
            if ((z2 ? 1 : -1) * f3 > 0.0f) {
                View view = this.f415g;
                this.f416h.getClass();
                if (view == null) {
                    height = 0;
                } else if (view instanceof ScrollView) {
                    if (z2) {
                        height = view.getScrollY();
                    } else {
                        ScrollView scrollView = (ScrollView) view;
                        bottom = scrollView.getChildAt(0).getBottom();
                        bottom2 = scrollView.getScrollY() + scrollView.getHeight();
                        height = bottom - bottom2;
                    }
                } else if (view instanceof ListView) {
                    ListView listView = (ListView) view;
                    if (listView.getChildCount() <= 0 || listView.getAdapter() == null) {
                        height = 0;
                    } else if (z2) {
                        View childAt = listView.getChildAt(0);
                        height = (childAt.getHeight() * listView.getFirstVisiblePosition()) - childAt.getTop();
                    } else {
                        View childAt2 = listView.getChildAt(listView.getChildCount() - 1);
                        bottom = childAt2.getBottom() + (childAt2.getHeight() * ((listView.getAdapter().getCount() - listView.getLastVisiblePosition()) - 1));
                        bottom2 = listView.getBottom();
                        height = bottom - bottom2;
                    }
                } else {
                    height = 0;
                }
                if (height > 0) {
                    this.f430v = true;
                    return super.dispatchTouchEvent(motionEvent);
                }
                if (this.f430v) {
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.dispatchTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    motionEvent.setAction(0);
                }
                this.f430v = false;
                return onTouchEvent(motionEvent);
            }
            if (f3 * (z2 ? 1 : -1) < 0.0f) {
                if (this.f421m < 1.0f) {
                    this.f430v = false;
                    return onTouchEvent(motionEvent);
                }
                if (!this.f430v) {
                    if (c0512h.f2414a == 1) {
                        c0512h.m1212b();
                        motionEvent.setAction(0);
                    }
                }
                this.f430v = true;
                return super.dispatchTouchEvent(motionEvent);
            }
        } else if (actionMasked == 1 && this.f430v) {
            c0512h.m1225o(0);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        boolean zDrawChild;
        int iSave = canvas.save();
        View view2 = this.f417i;
        if (view2 == null || view2 == view) {
            zDrawChild = super.drawChild(canvas, view, j2);
        } else {
            Rect rect = this.f434z;
            canvas.getClipBounds(rect);
            if (this.f412d) {
                rect.bottom = Math.min(rect.bottom, this.f417i.getTop());
            } else {
                rect.top = Math.max(rect.top, this.f417i.getBottom());
            }
            canvas.clipRect(rect);
            zDrawChild = super.drawChild(canvas, view, j2);
            int i2 = this.f409a;
            if (i2 != 0) {
                float f2 = this.f421m;
                if (f2 > 0.0f) {
                    int i3 = (i2 & 16777215) | (((int) ((((-16777216) & i2) >>> 24) * f2)) << 24);
                    Paint paint = this.f410b;
                    paint.setColor(i3);
                    canvas.drawRect(rect, paint);
                }
            }
        }
        canvas.restoreToCount(iSave);
        return zDrawChild;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m223e() {
        return this.f417i == null || this.f419k == EnumC0061e.f442d;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m224f(View view, int i2, int i3) {
        int i4;
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        int i5 = iArr2[0] + i2;
        int i6 = iArr2[1] + i3;
        int i7 = iArr[0];
        return i5 >= i7 && i5 < view.getWidth() + i7 && i6 >= (i4 = iArr[1]) && i6 < view.getHeight() + i4;
    }

    /* JADX INFO: renamed from: g */
    public final void m225g(int i2) {
        this.f407A = i2;
        if (i2 <= 0) {
            this.f408B = null;
            return;
        }
        Paint paint = new Paint();
        this.f408B = paint;
        paint.setColor(1711276032);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0059c();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0059c((ViewGroup.MarginLayoutParams) layoutParams) : new C0059c(layoutParams);
    }

    public int getPanelHeight() {
        return this.f411c;
    }

    public EnumC0061e getPanelState() {
        return this.f419k;
    }

    /* JADX INFO: renamed from: h */
    public final void m226h(float f2) {
        if (!isEnabled() || this.f417i == null) {
            return;
        }
        int iM221c = m221c(f2);
        View view = this.f417i;
        int left = view.getLeft();
        C0512h c0512h = this.f432x;
        c0512h.f2430q = view;
        c0512h.f2416c = -1;
        boolean zM1219i = c0512h.m1219i(left, iM221c, 0, 0);
        if (!zM1219i && c0512h.f2414a == 0 && c0512h.f2430q != null) {
            c0512h.f2430q = null;
        }
        if (zM1219i) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() == 4) {
                    childAt.setVisibility(0);
                }
            }
            postInvalidateOnAnimation();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0051  */
    /* JADX INFO: renamed from: i */
    public final void m227i() {
        int left;
        int right;
        int top;
        int bottom;
        if (getChildCount() == 0) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        View view = this.f417i;
        int i2 = 0;
        if (view == null) {
            left = 0;
            right = 0;
            top = 0;
            bottom = 0;
        } else {
            Drawable background = view.getBackground();
            if (background != null && background.getOpacity() == -1) {
                left = this.f417i.getLeft();
                right = this.f417i.getRight();
                top = this.f417i.getTop();
                bottom = this.f417i.getBottom();
            } else {
                left = 0;
                right = 0;
                top = 0;
                bottom = 0;
            }
        }
        View childAt = getChildAt(0);
        int iMax = Math.max(paddingLeft, childAt.getLeft());
        int iMax2 = Math.max(paddingTop, childAt.getTop());
        int iMin = Math.min(width, childAt.getRight());
        int iMin2 = Math.min(height, childAt.getBottom());
        if (iMax >= left && iMax2 >= top && iMin <= right && iMin2 <= bottom) {
            i2 = 4;
        }
        childAt.setVisibility(i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f433y = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f433y = true;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f414f;
        if (i2 != -1) {
            setDragView(findViewById(i2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Code duplicated, block: B:21:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x004e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0051  */
    /* JADX WARN: Code duplicated, block: B:70:0x0125  */
    /* JADX WARN: Code duplicated, block: B:79:0x013d  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        View viewM1218h;
        boolean z2;
        boolean z3 = this.f430v;
        C0512h c0512h = this.f432x;
        if (z3 || m223e()) {
            c0512h.m1211a();
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        float fAbs = Math.abs(x2 - this.f428t);
        float fAbs2 = Math.abs(y2 - this.f429u);
        int i2 = c0512h.f2415b;
        if (actionMasked == 0) {
            this.f425q = false;
            this.f428t = x2;
            this.f429u = y2;
            if (!m224f(this.f413e, (int) x2, (int) y2)) {
                c0512h.m1212b();
                this.f425q = true;
                return false;
            }
        } else if (actionMasked == 1) {
            if (c0512h.f2414a == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                c0512h.m1220j(motionEvent);
                return true;
            }
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (c0512h.f2414a == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    c0512h.m1220j(motionEvent);
                    return true;
                }
            }
        } else if (fAbs2 > i2 && fAbs > fAbs2) {
            c0512h.m1212b();
            this.f425q = true;
            return false;
        }
        int actionMasked2 = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked2 == 0) {
            c0512h.m1212b();
        }
        if (c0512h.f2424k == null) {
            c0512h.f2424k = VelocityTracker.obtain();
        }
        c0512h.f2424k.addMovement(motionEvent);
        C0512h.c cVar = c0512h.f2429p;
        if (actionMasked2 == 0) {
            float x3 = motionEvent.getX();
            float y3 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            c0512h.m1223m(x3, y3, pointerId);
            View viewM1218h2 = c0512h.m1218h((int) x3, (int) y3);
            if (viewM1218h2 == c0512h.f2430q && c0512h.f2414a == 2) {
                c0512h.m1226p(viewM1218h2, pointerId);
            }
            if ((c0512h.f2421h[pointerId] & 0) != 0) {
                cVar.getClass();
            }
        } else if (actionMasked2 == 1) {
            c0512h.m1212b();
        } else if (actionMasked2 != 2) {
            if (actionMasked2 == 3) {
                c0512h.m1212b();
            } else if (actionMasked2 == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x4 = motionEvent.getX(actionIndex);
                float y4 = motionEvent.getY(actionIndex);
                c0512h.m1223m(x4, y4, pointerId2);
                int i3 = c0512h.f2414a;
                if (i3 == 0) {
                    if ((c0512h.f2421h[pointerId2] & 0) != 0) {
                        cVar.getClass();
                    }
                } else if (i3 == 2 && (viewM1218h = c0512h.m1218h((int) x4, (int) y4)) == c0512h.f2430q) {
                    c0512h.m1226p(viewM1218h, pointerId2);
                }
            } else if (actionMasked2 == 6) {
                c0512h.m1215e(motionEvent.getPointerId(actionIndex));
            }
        } else if (c0512h.f2417d != null && c0512h.f2418e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i4 = 0; i4 < pointerCount; i4++) {
                int pointerId3 = motionEvent.getPointerId(i4);
                float x5 = motionEvent.getX(i4);
                float y5 = motionEvent.getY(i4);
                float f2 = x5 - c0512h.f2417d[pointerId3];
                float f3 = y5 - c0512h.f2418e[pointerId3];
                View viewM1218h3 = c0512h.m1218h((int) x5, (int) y5);
                boolean zM1214d = c0512h.m1214d(viewM1218h3, f3);
                if (zM1214d) {
                    viewM1218h3.getLeft();
                    cVar.getClass();
                    int top = viewM1218h3.getTop();
                    int iMo228a = cVar.mo228a(((int) f3) + top);
                    int i5 = SlidingUpPanelLayout.this.f422n;
                    if (i5 == 0 || (i5 > 0 && iMo228a == top)) {
                        break;
                    }
                    c0512h.m1222l(f2, f3, pointerId3);
                    if (c0512h.f2414a != 1 || (zM1214d && c0512h.m1226p(viewM1218h3, pointerId3))) {
                        break;
                    }
                } else {
                    c0512h.m1222l(f2, f3, pointerId3);
                    if (c0512h.f2414a != 1) {
                        break;
                    }
                }
            }
            c0512h.m1224n(motionEvent);
        }
        return c0512h.f2414a == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f433y) {
            int iOrdinal = this.f419k.ordinal();
            if (iOrdinal == 0) {
                this.f421m = 1.0f;
            } else if (iOrdinal == 2) {
                this.f421m = this.f423o;
            } else if (iOrdinal != 3) {
                this.f421m = 0.0f;
            } else {
                this.f421m = m222d(m221c(0.0f) + (this.f412d ? this.f411c : -this.f411c));
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            C0059c c0059c = (C0059c) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || (i6 != 0 && !this.f433y)) {
                int measuredHeight = childAt.getMeasuredHeight();
                int iM221c = childAt == this.f417i ? m221c(this.f421m) : paddingTop;
                if (!this.f412d && childAt == this.f418j) {
                    iM221c = m221c(this.f421m) + this.f417i.getMeasuredHeight();
                }
                int i7 = ((ViewGroup.MarginLayoutParams) c0059c).leftMargin + paddingLeft;
                childAt.layout(i7, iM221c, childAt.getMeasuredWidth() + i7, measuredHeight + iM221c);
            }
        }
        if (this.f433y) {
            m227i();
        }
        this.f433y = false;
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int iMakeMeasureSpec;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824 && mode != Integer.MIN_VALUE) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        }
        if (mode2 != 1073741824 && mode2 != Integer.MIN_VALUE) {
            throw new IllegalStateException("Height must have an exact value or MATCH_PARENT");
        }
        int childCount = getChildCount();
        if (childCount != 2) {
            throw new IllegalStateException("Sliding up panel layout must have exactly 2 children!");
        }
        this.f418j = getChildAt(0);
        View childAt = getChildAt(1);
        this.f417i = childAt;
        if (this.f413e == null) {
            setDragView(childAt);
        }
        int visibility = this.f417i.getVisibility();
        EnumC0061e enumC0061e = EnumC0061e.f442d;
        if (visibility != 0) {
            this.f419k = enumC0061e;
        }
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt2 = getChildAt(i6);
            C0059c c0059c = (C0059c) childAt2.getLayoutParams();
            if (childAt2.getVisibility() != 8 || i6 != 0) {
                if (childAt2 == this.f418j) {
                    i4 = this.f419k != enumC0061e ? paddingTop - this.f411c : paddingTop;
                    i5 = paddingLeft - (((ViewGroup.MarginLayoutParams) c0059c).leftMargin + ((ViewGroup.MarginLayoutParams) c0059c).rightMargin);
                } else {
                    i4 = childAt2 == this.f417i ? paddingTop - ((ViewGroup.MarginLayoutParams) c0059c).topMargin : paddingTop;
                    i5 = paddingLeft;
                }
                int i7 = ((ViewGroup.MarginLayoutParams) c0059c).width;
                int iMakeMeasureSpec2 = i7 == -2 ? View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE) : i7 == -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
                int i8 = ((ViewGroup.MarginLayoutParams) c0059c).height;
                if (i8 == -2) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
                } else {
                    float f2 = c0059c.f438a;
                    if (f2 > 0.0f && f2 < 1.0f) {
                        i4 = (int) (i4 * f2);
                    } else if (i8 != -1) {
                        i4 = i8;
                    }
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                }
                childAt2.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
                View view = this.f417i;
                if (childAt2 == view) {
                    this.f422n = view.getMeasuredHeight() - this.f411c;
                }
            }
        }
        int i9 = this.f424p;
        EnumC0061e enumC0061e2 = EnumC0061e.f439a;
        EnumC0061e enumC0061e3 = EnumC0061e.f440b;
        if (i9 > 0) {
            float measuredHeight = (i9 * 1.0f) / this.f413e.getMeasuredHeight();
            this.f423o = measuredHeight;
            if (measuredHeight > 1.0f) {
                this.f423o = 1.0f;
            }
            if (this.f419k == enumC0061e3) {
                float f3 = this.f423o;
                if (f3 < 1.0f) {
                    this.f419k = EnumC0061e.f441c;
                    this.f421m = f3;
                } else {
                    this.f419k = enumC0061e2;
                    this.f421m = 1.0f;
                }
            }
            this.f424p = 0;
        } else if (i9 < 0 && this.f419k == enumC0061e3) {
            this.f419k = enumC0061e2;
            this.f424p = 0;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            EnumC0061e enumC0061e = (EnumC0061e) bundle.getSerializable("sliding_state");
            this.f419k = enumC0061e;
            if (enumC0061e == null) {
                enumC0061e = EnumC0061e.f440b;
            }
            this.f419k = enumC0061e;
            parcelable = bundle.getParcelable("superState");
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("superState", super.onSaveInstanceState());
        EnumC0061e enumC0061e = this.f419k;
        if (enumC0061e == EnumC0061e.f443e) {
            enumC0061e = this.f420l;
        }
        bundle.putSerializable("sliding_state", enumC0061e);
        return bundle;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i3 != i5) {
            this.f433y = true;
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || m223e()) {
            return super.onTouchEvent(motionEvent);
        }
        try {
            this.f432x.m1220j(motionEvent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void setAnchorOffset(int i2) {
        this.f424p = i2;
        if (this.f433y) {
            return;
        }
        requestLayout();
    }

    public void setCoveredFadeColor(int i2) {
        this.f409a = i2;
        if (this.f433y) {
            return;
        }
        requestLayout();
    }

    public void setDragView(View view) {
        View view2 = this.f413e;
        if (view2 != null) {
            view2.setOnClickListener(null);
        }
        this.f413e = view;
        if (view != null) {
            view.setClickable(true);
            this.f413e.setFocusable(false);
            this.f413e.setFocusableInTouchMode(false);
            this.f413e.setOnClickListener(new ViewOnClickListenerC0057a());
        }
    }

    public void setGravity(int i2) {
        if (i2 != 48 && i2 != 80) {
            throw new IllegalArgumentException("gravity must be set to either top or bottom");
        }
        this.f412d = i2 == 80;
        if (this.f433y) {
            return;
        }
        requestLayout();
    }

    public void setPanelHeight(int i2) {
        if (getPanelHeight() == i2) {
            return;
        }
        this.f411c = i2;
        if (!this.f433y) {
            requestLayout();
        }
        if (getPanelState() == EnumC0061e.f440b) {
            m226h(0.0f);
            invalidate();
        }
    }

    public void setPanelSlideListener(InterfaceC0060d interfaceC0060d) {
        this.f431w = interfaceC0060d;
    }

    public void setPanelState(EnumC0061e enumC0061e) {
        EnumC0061e enumC0061e2;
        EnumC0061e enumC0061e3;
        C0512h c0512h = this.f432x;
        if (c0512h.f2414a == 2) {
            Log.d("SlidingUpPanelLayout", "View is settling. Aborting animation.");
            c0512h.m1211a();
        }
        if (enumC0061e == null || enumC0061e == (enumC0061e2 = EnumC0061e.f443e)) {
            throw new IllegalArgumentException("Panel state cannot be null or DRAGGING.");
        }
        if (isEnabled()) {
            boolean z2 = this.f433y;
            if ((!z2 && this.f417i == null) || enumC0061e == (enumC0061e3 = this.f419k) || enumC0061e3 == enumC0061e2) {
                return;
            }
            if (z2) {
                setPanelStateInternal(enumC0061e);
                return;
            }
            if (enumC0061e3 == EnumC0061e.f442d) {
                this.f417i.setVisibility(0);
                requestLayout();
            }
            int iOrdinal = enumC0061e.ordinal();
            if (iOrdinal == 0) {
                m226h(1.0f);
                return;
            }
            if (iOrdinal == 1) {
                m226h(0.0f);
            } else if (iOrdinal == 2) {
                m226h(this.f423o);
            } else {
                if (iOrdinal != 3) {
                    return;
                }
                m226h(m222d(m221c(0.0f) + (this.f412d ? this.f411c : -this.f411c)));
            }
        }
    }

    public void setScrollableView(View view) {
        this.f415g = view;
    }

    /* JADX INFO: renamed from: com.sothree.slidinguppanel.SlidingUpPanelLayout$c */
    public static class C0059c extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: b */
        public static final int[] f437b = {R.attr.layout_weight};

        /* JADX INFO: renamed from: a */
        public final float f438a;

        public C0059c() {
            super(-1, -1);
            this.f438a = 0.0f;
        }

        public C0059c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f438a = 0.0f;
        }

        public C0059c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f438a = 0.0f;
        }

        public C0059c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f438a = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f437b);
            if (typedArrayObtainStyledAttributes != null) {
                this.f438a = typedArrayObtainStyledAttributes.getFloat(0, 0.0f);
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0059c(getContext(), attributeSet);
    }

    public void setDragView(int i2) {
        this.f414f = i2;
        setDragView(findViewById(i2));
    }
}
