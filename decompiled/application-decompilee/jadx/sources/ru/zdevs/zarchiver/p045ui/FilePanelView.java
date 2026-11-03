package ru.zdevs.zarchiver.p045ui;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.constraint.ConstraintLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.SectionIndexer;
import android.widget.StackView;
import android.widget.TextView;
import p004b.C0015d;
import p008c0.AbstractViewOnClickListenerC0050h;
import p012d1.InterfaceC0074c;
import p012d1.ViewOnTouchListenerC0072a;
import p012d1.ViewOnTouchListenerC0073b;
import p039p0.C0229g;
import p047s0.C0358b;
import p059y0.C0439c;
import p059y0.C0441e;
import p059y0.C0442f;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: loaded from: classes.dex */
public class FilePanelView extends ViewGroup {

    /* JADX INFO: renamed from: D */
    public static final /* synthetic */ int f1690D = 0;

    /* JADX INFO: renamed from: A */
    public final C0322b f1691A;

    /* JADX INFO: renamed from: B */
    public final C0324d f1692B;

    /* JADX INFO: renamed from: C */
    public final RunnableC0325e f1693C;

    /* JADX INFO: renamed from: a */
    public int f1694a;

    /* JADX INFO: renamed from: b */
    public final int f1695b;

    /* JADX INFO: renamed from: c */
    public final int f1696c;

    /* JADX INFO: renamed from: d */
    public ConstraintLayout f1697d;

    /* JADX INFO: renamed from: e */
    public View f1698e;

    /* JADX INFO: renamed from: f */
    public final TextView f1699f;

    /* JADX INFO: renamed from: g */
    public View[] f1700g;

    /* JADX INFO: renamed from: h */
    public final AbsListView[] f1701h;

    /* JADX INFO: renamed from: i */
    public LayoutAnimationController f1702i;

    /* JADX INFO: renamed from: j */
    public boolean f1703j;

    /* JADX INFO: renamed from: k */
    public boolean f1704k;

    /* JADX INFO: renamed from: l */
    public Rect f1705l;

    /* JADX INFO: renamed from: m */
    public int f1706m;

    /* JADX INFO: renamed from: n */
    public float f1707n;

    /* JADX INFO: renamed from: o */
    public float f1708o;

    /* JADX INFO: renamed from: p */
    public float f1709p;

    /* JADX INFO: renamed from: q */
    public float f1710q;

    /* JADX INFO: renamed from: r */
    public int f1711r;

    /* JADX INFO: renamed from: s */
    public final DecelerateInterpolator f1712s;

    /* JADX INFO: renamed from: t */
    public AdapterView.OnItemClickListener f1713t;

    /* JADX INFO: renamed from: u */
    public AdapterView.OnItemLongClickListener f1714u;

    /* JADX INFO: renamed from: v */
    public AbstractViewOnClickListenerC0050h.a f1715v;

    /* JADX INFO: renamed from: w */
    public InterfaceC0327g f1716w;

    /* JADX INFO: renamed from: x */
    public InterfaceC0326f f1717x;

    /* JADX INFO: renamed from: y */
    public InterfaceC0328h f1718y;

    /* JADX INFO: renamed from: z */
    public int f1719z;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$a */
    public class AnimationAnimationListenerC0321a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ boolean f1720a;

        public AnimationAnimationListenerC0321a(boolean z2) {
            this.f1720a = z2;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            InterfaceC0327g interfaceC0327g;
            FilePanelView filePanelView = FilePanelView.this;
            filePanelView.f1697d.setVisibility(8);
            if (!this.f1720a || (interfaceC0327g = filePanelView.f1716w) == null) {
                return;
            }
            interfaceC0327g.mo757h(filePanelView.f1694a);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$b */
    public class C0322b extends Animation {
        public C0322b() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f2, Transformation transformation) {
            int repeatMode = getRepeatMode();
            int i2 = repeatMode + ((int) ((-repeatMode) * f2));
            int i3 = FilePanelView.f1690D;
            FilePanelView.this.m924f(i2, false);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$c */
    public class AnimationAnimationListenerC0323c implements Animation.AnimationListener {
        public AnimationAnimationListenerC0323c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationEnd(Animation animation) {
            FilePanelView filePanelView = FilePanelView.this;
            View[] viewArr = filePanelView.f1700g;
            if (viewArr != null) {
                viewArr[0].postDelayed(filePanelView.f1693C, 600L);
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public final void onAnimationStart(Animation animation) {
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$d */
    public class C0324d extends Animation {
        public C0324d() {
        }

        @Override // android.view.animation.Animation
        public final void applyTransformation(float f2, Transformation transformation) {
            int repeatMode = getRepeatMode();
            FilePanelView filePanelView = FilePanelView.this;
            filePanelView.m927i(filePanelView.f1694a == 1 ? repeatMode + ((int) ((-repeatMode) * f2)) : (-repeatMode) + ((int) (repeatMode * f2)), false);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$e */
    public class RunnableC0325e implements Runnable {
        public RunnableC0325e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            FilePanelView filePanelView = FilePanelView.this;
            C0442f.m1190a(filePanelView.f1700g[0]);
            C0442f.m1190a(filePanelView.f1700g[1]);
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$f */
    public interface InterfaceC0326f {
        /* JADX INFO: renamed from: f */
        void mo756f();
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$g */
    public interface InterfaceC0327g {
        /* JADX INFO: renamed from: h */
        void mo757h(int i2);
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.FilePanelView$h */
    public interface InterfaceC0328h {
    }

    public FilePanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1703j = true;
        this.f1704k = true;
        this.f1706m = -1;
        this.f1691A = new C0322b();
        this.f1692B = new C0324d();
        this.f1693C = new RunnableC0325e();
        this.f1701h = new AbsListView[2];
        this.f1694a = 0;
        this.f1719z = 256;
        this.f1695b = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f1696c = C0439c.m1166a(12);
        setWillNotDraw(false);
        this.f1712s = new DecelerateInterpolator(2.0f);
        TextView textView = new TextView(context, attributeSet);
        this.f1699f = textView;
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        textView.setGravity(1);
        textView.setTextIsSelectable(false);
        textView.setVisibility(8);
        addView(textView, 0);
        addView(new View(context), 1);
        addView(new View(context), 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setListAnimation(AbsListView absListView) {
        if (absListView == 0) {
            return;
        }
        if (absListView.getLayoutAnimation() != null) {
            absListView.scheduleLayoutAnimation();
            return;
        }
        if (this.f1702i == null) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(100L);
            LayoutAnimationController layoutAnimationController = new LayoutAnimationController(alphaAnimation, 0.1f);
            this.f1702i = layoutAnimationController;
            layoutAnimationController.setInterpolator(new DecelerateInterpolator(2.0f));
        }
        int maxVisibleItemCount = ((InterfaceC0074c) absListView).getMaxVisibleItemCount();
        this.f1702i.setDelay((absListView.getCount() < maxVisibleItemCount ? ((maxVisibleItemCount - absListView.getCount()) * 0.14f) / maxVisibleItemCount : 0.0f) + 0.1f);
        absListView.setLayoutAnimation(this.f1702i);
    }

    /* JADX INFO: renamed from: a */
    public final void m919a() {
        AnimationAnimationListenerC0323c animationAnimationListenerC0323c = new AnimationAnimationListenerC0323c();
        C0324d c0324d = this.f1692B;
        c0324d.reset();
        int i2 = this.f1694a;
        AbsListView[] absListViewArr = this.f1701h;
        c0324d.setRepeatMode(Math.abs(absListViewArr[i2].getLeft()));
        c0324d.setDuration(400L);
        c0324d.setInterpolator(this.f1712s);
        c0324d.setAnimationListener(animationAnimationListenerC0323c);
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.clearAnimation();
            absListViewArr[0].startAnimation(c0324d);
        }
    }

    /* JADX INFO: renamed from: b */
    public final AbstractViewOnClickListenerC0050h m920b(int i2) {
        AbsListView absListView = this.f1701h[i2];
        if (absListView != null) {
            return (AbstractViewOnClickListenerC0050h) absListView.getAdapter();
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public final int m921c(int i2) {
        AbsListView absListView = this.f1701h[i2];
        if (absListView != null) {
            return absListView.getFirstVisiblePosition();
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: d */
    public final void m922d(int i2) {
        int maxVisibleItemCount;
        StackView stackView = this.f1701h[this.f1694a];
        if (stackView == 0) {
            return;
        }
        int count = 0;
        if (i2 == 0 || i2 == 1) {
            maxVisibleItemCount = (((InterfaceC0074c) stackView).getMaxVisibleItemCount() * i2 * (-1)) + stackView.getFirstVisiblePosition();
        } else {
            maxVisibleItemCount = 0;
        }
        if (i2 == 3 || maxVisibleItemCount > stackView.getCount()) {
            count = stackView.getCount();
        } else if (maxVisibleItemCount >= 0) {
            count = maxVisibleItemCount;
        }
        stackView.setSelection(count);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = windowInsets.getSystemWindowInsetTop();
        WindowInsets windowInsetsReplaceSystemWindowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        Rect rect = new Rect(windowInsets.getSystemWindowInsetLeft(), 0, windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        this.f1705l = rect;
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setPadding(rect.left, rect.top, rect.right, rect.bottom);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            Rect rect2 = this.f1705l;
            absListView2.setPadding(rect2.left, rect2.top, rect2.right, rect2.bottom);
        }
        return windowInsetsReplaceSystemWindowInsets;
    }

    /* JADX INFO: renamed from: e */
    public final void m923e(int i2, boolean z2) {
        View view = this.f1698e;
        view.offsetTopAndBottom(((-view.getMeasuredHeight()) + i2) - this.f1698e.getTop());
        if (z2) {
            invalidate();
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m924f(int i2, boolean z2) {
        ConstraintLayout constraintLayout = this.f1697d;
        constraintLayout.offsetTopAndBottom(((-constraintLayout.getMeasuredHeight()) + i2) - this.f1697d.getTop());
        if (z2) {
            invalidate();
        }
    }

    /* JADX INFO: renamed from: g */
    public final boolean m925g(int i2) {
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b;
        int listFocusItem = getListFocusItem();
        if (listFocusItem >= 0 && (abstractViewOnClickListenerC0050hM920b = m920b(this.f1694a)) != null) {
            return abstractViewOnClickListenerC0050hM920b.m196j(listFocusItem, i2);
        }
        return false;
    }

    public Point getClickPoint() {
        int clickRawX;
        int clickRawY;
        int i2 = this.f1694a;
        Object[] objArr = this.f1701h;
        Object obj = objArr[i2];
        if (obj != null) {
            clickRawX = ((InterfaceC0074c) obj).getClickRawX();
            clickRawY = ((InterfaceC0074c) objArr[this.f1694a]).getClickRawY();
        } else {
            clickRawX = -1;
            clickRawY = -1;
        }
        if (clickRawX == -1 || clickRawY == -1) {
            return null;
        }
        return new Point(clickRawX, clickRawY);
    }

    public AbstractViewOnClickListenerC0050h getListAdapter() {
        return m920b(this.f1694a);
    }

    public int getListFocusItem() {
        AbsListView absListView = this.f1701h[this.f1694a];
        if (absListView == null) {
            return -1;
        }
        View selectedView = absListView.getSelectedView();
        if (!(selectedView instanceof ViewGroup)) {
            return -1;
        }
        View viewFindViewById = selectedView.findViewById(R.id.icon);
        if (viewFindViewById.getTag() instanceof Integer) {
            return ((Integer) viewFindViewById.getTag()).intValue();
        }
        return -1;
    }

    public int getListMaxVisibleItemCount() {
        Object obj = this.f1701h[this.f1694a];
        if (obj != null) {
            return ((InterfaceC0074c) obj).getMaxVisibleItemCount();
        }
        return 0;
    }

    public int getListPosition() {
        return m921c(this.f1694a);
    }

    public Point getListSize() {
        int i2 = this.f1694a;
        AbsListView[] absListViewArr = this.f1701h;
        if (absListViewArr[i2] != null) {
            return new Point(absListViewArr[this.f1694a].getWidth() - absListViewArr[this.f1694a].getPaddingRight(), absListViewArr[this.f1694a].getHeight());
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    public final void m926h(int i2, AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050h, boolean z2, boolean z3) {
        AbsListView[] absListViewArr = this.f1701h;
        if (abstractViewOnClickListenerC0050h == null) {
            AbsListView absListView = absListViewArr[i2];
            if (absListView != null) {
                absListView.setAdapter((ListAdapter) null);
                return;
            }
            return;
        }
        AbsListView absListView2 = absListViewArr[i2];
        if (absListView2 != null && (absListView2 instanceof GridView) == abstractViewOnClickListenerC0050h.mo177e()) {
            if (z3) {
                setListAnimation(absListViewArr[i2]);
            }
            absListViewArr[i2].setAdapter((ListAdapter) abstractViewOnClickListenerC0050h);
            return;
        }
        if (abstractViewOnClickListenerC0050h.mo177e()) {
            absListViewArr[i2] = new ViewOnTouchListenerC0072a(getContext());
        } else {
            absListViewArr[i2] = new ViewOnTouchListenerC0073b(getContext());
        }
        if (z2) {
            this.f1694a = i2;
        }
        if (z3) {
            setListAnimation(absListViewArr[i2]);
        }
        absListViewArr[i2].setAdapter((ListAdapter) abstractViewOnClickListenerC0050h);
        int i3 = i2 + 1;
        removeViewAt(i3);
        addView(absListViewArr[i2], i3, new ViewGroup.LayoutParams(-1, -1));
        C0441e.m1185j(absListViewArr[i2]);
        Rect rect = this.f1705l;
        if (rect != null) {
            absListViewArr[i2].setPadding(rect.left, rect.top, rect.right, rect.bottom);
        }
        absListViewArr[i2].setClipToPadding(false);
        absListViewArr[i2].setAnimationCacheEnabled(false);
        if (this.f1703j) {
            absListViewArr[i2].setCacheColorHint(0);
        } else {
            absListViewArr[i2].setDrawingCacheEnabled(true);
        }
        if (this.f1704k) {
            absListViewArr[i2].setVerticalScrollBarEnabled(false);
            absListViewArr[i2].setFastScrollEnabled(true);
        }
        absListViewArr[i2].setOnItemLongClickListener(this.f1714u);
        absListViewArr[i2].setOnItemClickListener(this.f1713t);
        setPageChangeEnable(true);
    }

    /* JADX INFO: renamed from: i */
    public final void m927i(int i2, boolean z2) {
        int measuredWidth;
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null && (measuredWidth = absListView.getMeasuredWidth()) > 0) {
            AbsListView absListView2 = absListViewArr[0];
            if (absListView2 != null) {
                absListView2.offsetLeftAndRight((((this.f1694a == 0 ? 0 : -1) * measuredWidth) + i2) - absListView2.getLeft());
            }
            AbsListView absListView3 = absListViewArr[1];
            if (absListView3 != null) {
                absListView3.offsetLeftAndRight((((this.f1694a == 0 ? 1 : 0) * measuredWidth) + i2) - absListView3.getLeft());
            }
            if (this.f1700g != null) {
                float fAbs = (Math.abs(i2) / measuredWidth) / 2.0f;
                if (fAbs > 0.5f) {
                    fAbs = 0.5f;
                } else if (fAbs < 0.0f) {
                    fAbs = 0.0f;
                }
                char c2 = this.f1694a == 0 ? (char) 1 : (char) 0;
                float f2 = 0.5f + fAbs;
                this.f1700g[c2].setScaleX(f2);
                this.f1700g[c2].setScaleY(f2);
                float f3 = 1.0f - fAbs;
                this.f1700g[this.f1694a].setScaleX(f3);
                this.f1700g[this.f1694a].setScaleY(f3);
            }
            if (z2) {
                invalidate();
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m928j(int i2, int i3) {
        AbsListView absListView = this.f1701h[i2];
        if (absListView != null) {
            absListView.setSelectionFromTop(i3, 0);
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m929k(C0305b c0305b, C0229g c0229g, int i2, int i3) {
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM920b = m920b(c0305b.f1593b);
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050hM821b = c0305b.m821b(getContext(), abstractViewOnClickListenerC0050hM920b);
        abstractViewOnClickListenerC0050hM821b.f379n = this.f1715v;
        boolean z2 = this.f1704k && abstractViewOnClickListenerC0050hM821b.getCount() > getListMaxVisibleItemCount() && (abstractViewOnClickListenerC0050hM821b instanceof SectionIndexer);
        boolean z3 = C0358b.m1041l(32) && C0015d.m49K(i3, 128);
        AbsListView[] absListViewArr = this.f1701h;
        int i4 = c0305b.f1593b;
        if (i2 <= 0 || abstractViewOnClickListenerC0050hM821b != abstractViewOnClickListenerC0050hM920b) {
            abstractViewOnClickListenerC0050hM821b.mo188m(C0015d.m49K(this.f1719z, 256));
            if (c0229g != null) {
                abstractViewOnClickListenerC0050hM821b.f378m = c0229g;
            }
            m926h(i4, abstractViewOnClickListenerC0050hM821b, false, z3);
            if (this.f1704k) {
                absListViewArr[i4].setFastScrollEnabled(z2);
                if (z2) {
                    abstractViewOnClickListenerC0050hM821b.notifyDataSetChanged();
                }
            }
            if (i2 > 0) {
                m928j(i4, i2);
            }
        } else {
            if (this.f1704k) {
                absListViewArr[i4].setFastScrollEnabled(z2);
            }
            if (z3) {
                setListAnimation(absListViewArr[i4]);
            }
            abstractViewOnClickListenerC0050hM821b.notifyDataSetChanged();
            if (Math.abs(i2 - getListPosition()) > 1) {
                m928j(i4, i2);
            }
        }
        if (C0015d.m49K(i3, 1024)) {
            this.f1694a = i4;
            m919a();
        }
        boolean z4 = i4 == this.f1694a;
        if (z4) {
            setMessage(c0305b.m824e());
        }
        if (c0229g != null && c0229g.f1295g && z4) {
            abstractViewOnClickListenerC0050hM821b.mo178n(getListPosition(), getListMaxVisibleItemCount());
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:63:0x00dd  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        float f2;
        float f3;
        if (!isEnabled()) {
            return false;
        }
        AbsListView absListView = this.f1701h[this.f1694a];
        if ((absListView != null && absListView.canScrollList(-1)) || (this.f1697d == null && this.f1698e == null)) {
            this.f1719z &= -33;
        } else {
            this.f1719z |= 32;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1719z &= -4;
            int pointerId = motionEvent.getPointerId(0);
            this.f1706m = pointerId;
            int iFindPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (iFindPointerIndex2 >= 0) {
                this.f1708o = motionEvent.getY(iFindPointerIndex2);
                this.f1710q = motionEvent.getX(iFindPointerIndex2);
            }
            if (this.f1704k && this.f1710q >= getWidth() - this.f1696c) {
                this.f1706m = -1;
                this.f1719z &= -33;
                return false;
            }
            if (C0015d.m49K(this.f1719z, 32)) {
                if (this.f1697d != null) {
                    m924f(0, false);
                }
                if (this.f1698e != null) {
                    m923e(0, false);
                }
            }
            if (C0015d.m49K(this.f1719z, 16)) {
                m927i(0, false);
            }
            return false;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i2 = this.f1706m;
                if (i2 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i2)) < 0) {
                    return false;
                }
                if (C0015d.m50L(this.f1719z, 3)) {
                    return true;
                }
                float y2 = motionEvent.getY(iFindPointerIndex) - this.f1708o;
                float fAbs = Math.abs(motionEvent.getX(iFindPointerIndex) - this.f1710q);
                float fAbs2 = Math.abs(y2) / 2.0f;
                int i3 = this.f1695b;
                if (fAbs2 > fAbs) {
                    float f4 = i3;
                    if (y2 > f4 && C0015d.m49K(this.f1719z, 32)) {
                        this.f1707n = this.f1708o + f4;
                        this.f1719z |= 2;
                        InterfaceC0326f interfaceC0326f = this.f1717x;
                        if (interfaceC0326f != null) {
                            interfaceC0326f.mo756f();
                        }
                    } else if (Math.abs(y2) < fAbs / 2.0f) {
                        f2 = i3;
                        if (fAbs > f2 && Math.abs(y2) < f2 && C0015d.m49K(this.f1719z, 16)) {
                            f3 = this.f1710q;
                            if (f3 >= motionEvent.getX(iFindPointerIndex)) {
                                i3 = -i3;
                            }
                            this.f1709p = f3 + i3;
                            this.f1719z |= 1;
                        }
                    }
                } else if (Math.abs(y2) < fAbs / 2.0f) {
                    f2 = i3;
                    if (fAbs > f2) {
                        f3 = this.f1710q;
                        if (f3 >= motionEvent.getX(iFindPointerIndex)) {
                            i3 = -i3;
                        }
                        this.f1709p = f3 + i3;
                        this.f1719z |= 1;
                    }
                }
            } else if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == this.f1706m) {
                        this.f1706m = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    }
                }
            }
            return C0015d.m50L(this.f1719z, 3);
        }
        this.f1719z &= -4;
        this.f1706m = -1;
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        AbsListView[] absListViewArr = this.f1701h;
        if (absListViewArr[0] == null) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingLeft2 = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int paddingTop2 = (measuredHeight - getPaddingTop()) - getPaddingBottom();
        AbsListView absListView = absListViewArr[0];
        int i6 = this.f1694a;
        int i7 = paddingTop + paddingTop2;
        absListView.layout(paddingLeft - (i6 * paddingLeft2), paddingTop, ((1 - i6) * paddingLeft2) + paddingLeft, i7);
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            int i8 = this.f1694a;
            absListView2.layout(((1 - i8) * paddingLeft2) + paddingLeft, paddingTop, ((2 - i8) * paddingLeft2) + paddingLeft, i7);
        }
        this.f1699f.layout(0, measuredHeight / 2, paddingLeft2, measuredHeight);
        ConstraintLayout constraintLayout = this.f1697d;
        if (constraintLayout != null) {
            int i9 = measuredWidth / 2;
            constraintLayout.layout(i9 - (constraintLayout.getMeasuredWidth() / 2), -this.f1697d.getMeasuredHeight(), (this.f1697d.getMeasuredWidth() / 2) + i9, 0);
            if (absListViewArr[0].getFitsSystemWindows()) {
                ConstraintLayout constraintLayout2 = this.f1697d;
                constraintLayout2.setPadding(constraintLayout2.getPaddingLeft(), absListViewArr[0].getPaddingTop(), this.f1697d.getPaddingRight(), 0);
            }
        }
        View view = this.f1698e;
        if (view != null) {
            int i10 = measuredWidth / 2;
            view.layout(i10 - (view.getMeasuredWidth() / 2), -this.f1698e.getMeasuredHeight(), (this.f1698e.getMeasuredWidth() / 2) + i10, 0);
            if (absListViewArr[0].getFitsSystemWindows()) {
                this.f1698e.setPadding(0, absListViewArr[0].getPaddingTop() + C0439c.m1166a(50), 0, 0);
            }
        }
        if (this.f1700g != null) {
            int iM1166a = C0439c.m1166a(12);
            int i11 = (paddingTop2 - iM1166a) - (iM1166a / 2);
            Rect rect = this.f1705l;
            int i12 = i11 - (rect == null ? 0 : rect.bottom);
            int i13 = paddingLeft2 / 2;
            int i14 = (iM1166a * 5) / 4;
            int i15 = iM1166a / 4;
            int i16 = iM1166a + i12;
            this.f1700g[0].layout(i13 - i14, i12, i13 - i15, i16);
            this.f1700g[1].layout(i15 + i13, i12, i13 + i14, i16);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        AbsListView[] absListViewArr = this.f1701h;
        if (absListViewArr[0] == null) {
            return;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824);
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 0);
        absListViewArr[0].measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        AbsListView absListView = absListViewArr[1];
        if (absListView != null) {
            absListView.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        }
        this.f1699f.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
        ConstraintLayout constraintLayout = this.f1697d;
        if (constraintLayout != null) {
            constraintLayout.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
        }
        View view = this.f1698e;
        if (view != null) {
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
        }
        this.f1711r = getMeasuredWidth() / 3;
        int iM1166a = C0439c.m1166a(72);
        if (this.f1711r > iM1166a) {
            this.f1711r = iM1166a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:117:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:97:0x0172  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        AbsListView[] absListViewArr;
        AbsListView absListView;
        boolean z3;
        InterfaceC0328h interfaceC0328h;
        int measuredHeight;
        if (!isEnabled() || !C0015d.m50L(this.f1719z, 48)) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f1706m);
                    if (iFindPointerIndex < 0) {
                        return false;
                    }
                    if (C0015d.m49K(this.f1719z, 2)) {
                        int y2 = (int) ((motionEvent.getY(iFindPointerIndex) - this.f1707n) * 0.8f);
                        ConstraintLayout constraintLayout = this.f1697d;
                        if (constraintLayout == null) {
                            measuredHeight = 0;
                        } else if (y2 <= constraintLayout.getMeasuredHeight()) {
                            ConstraintLayout constraintLayout2 = this.f1697d;
                            if (constraintLayout2 == null || constraintLayout2.getVisibility() == 0) {
                                View view = this.f1698e;
                                if (view != null && view.getVisibility() != 0) {
                                    m923e(0, false);
                                    this.f1698e.setVisibility(0);
                                }
                            } else {
                                this.f1697d.setVisibility(0);
                            }
                            m924f(y2, true);
                        } else {
                            measuredHeight = this.f1697d.getMeasuredHeight();
                            m924f(measuredHeight, false);
                        }
                        View view2 = this.f1698e;
                        if (view2 != null && y2 <= view2.getMeasuredHeight() + measuredHeight) {
                            if (this.f1698e.getVisibility() != 0) {
                                this.f1698e.setVisibility(0);
                            }
                            m923e(y2, true);
                        }
                    } else {
                        if (!C0015d.m49K(this.f1719z, 1)) {
                            return false;
                        }
                        float x2 = motionEvent.getX(iFindPointerIndex) - this.f1709p;
                        int i2 = this.f1694a;
                        RunnableC0325e runnableC0325e = this.f1693C;
                        if ((i2 == 0 && x2 < 0.0f) || (i2 == 1 && x2 > 0.0f)) {
                            m927i((int) x2, true);
                            this.f1700g[0].removeCallbacks(runnableC0325e);
                        }
                        View[] viewArr = this.f1700g;
                        if (viewArr != null) {
                            if (viewArr[0].getVisibility() != 0) {
                                this.f1700g[0].postDelayed(runnableC0325e, 600L);
                                this.f1700g[0].setVisibility(0);
                            }
                            if (this.f1700g[1].getVisibility() != 0) {
                                this.f1700g[1].setVisibility(0);
                            }
                        }
                    }
                } else if (actionMasked != 3) {
                    if (actionMasked == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        if (actionIndex < 0) {
                            return false;
                        }
                        this.f1706m = motionEvent.getPointerId(actionIndex);
                    } else if (actionMasked == 6) {
                        int actionIndex2 = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex2) == this.f1706m) {
                            this.f1706m = motionEvent.getPointerId(actionIndex2 == 0 ? 1 : 0);
                        }
                    }
                }
            }
            if (C0015d.m49K(this.f1719z, 1) && (absListView = (absListViewArr = this.f1701h)[0]) != null && absListView.getLeft() != 0 && absListViewArr[0].getLeft() != absListViewArr[0].getMeasuredWidth()) {
                if (actionMasked != 3) {
                    if (this.f1694a == 0 && absListViewArr[0].getLeft() < (-this.f1711r)) {
                        this.f1694a = 1;
                    } else if (this.f1694a != 1 || absListViewArr[0].getLeft() <= (-absListViewArr[0].getMeasuredWidth()) + this.f1711r) {
                        z3 = false;
                    } else {
                        this.f1694a = 0;
                    }
                    z3 = true;
                } else {
                    z3 = false;
                }
                m919a();
                if (z3 && (interfaceC0328h = this.f1718y) != null) {
                    ((ZArchiver) interfaceC0328h).m733C(this.f1694a);
                }
            }
            if (C0015d.m49K(this.f1719z, 2)) {
                View view3 = this.f1698e;
                if (view3 == null || actionMasked == 3) {
                    z2 = false;
                } else {
                    if (this.f1716w != null) {
                        int top = view3.getTop();
                        int i3 = (-this.f1698e.getMeasuredHeight()) / 4;
                        ConstraintLayout constraintLayout3 = this.f1697d;
                        z2 = top >= i3 + (constraintLayout3 != null ? constraintLayout3.getMeasuredHeight() : 0);
                    }
                    if (!z2) {
                        this.f1698e.setVisibility(8);
                    }
                }
                if (this.f1697d != null) {
                    AnimationAnimationListenerC0321a animationAnimationListenerC0321a = new AnimationAnimationListenerC0321a(z2);
                    C0322b c0322b = this.f1691A;
                    c0322b.reset();
                    c0322b.setRepeatMode(Math.abs(Math.abs(this.f1697d.getTop()) - this.f1697d.getMeasuredHeight()));
                    c0322b.setDuration(200L);
                    c0322b.setInterpolator(this.f1712s);
                    c0322b.setAnimationListener(animationAnimationListenerC0321a);
                    this.f1697d.clearAnimation();
                    this.f1697d.startAnimation(c0322b);
                } else if (z2) {
                    this.f1716w.mo757h(this.f1694a);
                }
            }
            this.f1719z &= -4;
            this.f1706m = -1;
            return false;
        }
        this.f1706m = motionEvent.getPointerId(0);
        this.f1719z &= -4;
        return true;
    }

    public void setCacheEnabled(boolean z2) {
        this.f1703j = z2;
        AbsListView[] absListViewArr = this.f1701h;
        if (z2) {
            AbsListView absListView = absListViewArr[0];
            if (absListView != null) {
                absListView.setCacheColorHint(0);
            }
            AbsListView absListView2 = absListViewArr[1];
            if (absListView2 != null) {
                absListView2.setCacheColorHint(0);
                return;
            }
            return;
        }
        AbsListView absListView3 = absListViewArr[0];
        if (absListView3 != null) {
            absListView3.setDrawingCacheEnabled(true);
        }
        AbsListView absListView4 = absListViewArr[1];
        if (absListView4 != null) {
            absListView4.setDrawingCacheEnabled(true);
        }
    }

    public void setCircleView(View view) {
        this.f1698e = view;
        view.setVisibility(8);
        addView(this.f1698e);
    }

    public void setExtendView(ConstraintLayout constraintLayout) {
        this.f1697d = constraintLayout;
        constraintLayout.setVisibility(8);
        addView(this.f1697d);
    }

    public void setExtendVisible(boolean z2) {
        ConstraintLayout constraintLayout = this.f1697d;
        if (constraintLayout != null) {
            constraintLayout.setVisibility(z2 ? 0 : 8);
            ConstraintLayout constraintLayout2 = this.f1697d;
            constraintLayout2.setTranslationY(z2 ? constraintLayout2.getMeasuredHeight() : 0.0f);
            this.f1697d.invalidate();
        }
    }

    public void setFastScrollEnabled(boolean z2) {
        this.f1704k = z2;
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setFastScrollEnabled(z2);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            absListView2.setFastScrollEnabled(z2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [boolean] */
    public void setMessage(int i2) {
        AbsListView absListView = this.f1701h[this.f1694a];
        boolean z2 = i2 > 0;
        if (z2 && absListView != null && absListView.getCount() > C0358b.m1036g(1)) {
            z2 = false;
        }
        TextView textView = this.f1699f;
        if (!z2) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(i2);
        }
    }

    public void setOnExtendShowListener(InterfaceC0326f interfaceC0326f) {
        this.f1717x = interfaceC0326f;
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1713t = onItemClickListener;
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setOnItemClickListener(onItemClickListener);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            absListView2.setOnItemClickListener(onItemClickListener);
        }
    }

    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.f1714u = onItemLongClickListener;
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            absListView.setOnItemLongClickListener(onItemLongClickListener);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            absListView2.setOnItemLongClickListener(onItemLongClickListener);
        }
    }

    public void setOnItemSelectChanged(AbstractViewOnClickListenerC0050h.a aVar) {
        this.f1715v = aVar;
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null && absListView.getAdapter() != null) {
            ((AbstractViewOnClickListenerC0050h) absListViewArr[0].getAdapter()).f379n = aVar;
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 == null || absListView2.getAdapter() == null) {
            return;
        }
        ((AbstractViewOnClickListenerC0050h) absListViewArr[1].getAdapter()).f379n = aVar;
    }

    public void setOnListRefreshListener(InterfaceC0327g interfaceC0327g) {
        this.f1716w = interfaceC0327g;
    }

    public void setOnPageChangedListener(InterfaceC0328h interfaceC0328h) {
        this.f1718y = interfaceC0328h;
    }

    public void setPageChangeEnable(boolean z2) {
        AbsListView[] absListViewArr = this.f1701h;
        if (absListViewArr[0] == null || absListViewArr[1] == null || !z2) {
            if (z2) {
                return;
            }
            this.f1719z &= -17;
            return;
        }
        this.f1719z |= 16;
        if (this.f1700g != null) {
            return;
        }
        Context context = getContext();
        Drawable drawableM1172g = C0439c.m1172g(context, R.drawable.bg_page_indicator);
        this.f1700g = new View[2];
        for (int i2 = 0; i2 < 2; i2++) {
            this.f1700g[i2] = new View(context);
            this.f1700g[i2].setBackgroundDrawable(drawableM1172g);
            this.f1700g[i2].setVisibility(8);
            addView(this.f1700g[i2]);
        }
        invalidate();
    }

    public void setSelectByIcon(boolean z2) {
        if (z2) {
            this.f1719z |= 256;
        } else {
            this.f1719z &= -257;
        }
        AbsListView[] absListViewArr = this.f1701h;
        AbsListView absListView = absListViewArr[0];
        if (absListView != null) {
            ((AbstractViewOnClickListenerC0050h) absListView.getAdapter()).mo188m(z2);
        }
        AbsListView absListView2 = absListViewArr[1];
        if (absListView2 != null) {
            ((AbstractViewOnClickListenerC0050h) absListView2.getAdapter()).mo188m(z2);
        }
    }
}
