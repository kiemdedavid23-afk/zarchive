package p016f;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import p011d0.ParcelFileDescriptorC0069g;
import p019g.C0118a;
import p019g.C0121d;
import ru.zdevs.zarchiver.ZImageViewer;

/* JADX INFO: renamed from: f.b */
/* JADX INFO: loaded from: classes.dex */
public class C0086b extends ViewGroup {

    /* JADX INFO: renamed from: S */
    public static final int[] f621S = {R.attr.layout_gravity};

    /* JADX INFO: renamed from: T */
    public static final a f622T = new a();

    /* JADX INFO: renamed from: U */
    public static final b f623U = new b();

    /* JADX INFO: renamed from: A */
    public int f624A;

    /* JADX INFO: renamed from: B */
    public float f625B;

    /* JADX INFO: renamed from: C */
    public float f626C;

    /* JADX INFO: renamed from: D */
    public float f627D;

    /* JADX INFO: renamed from: E */
    public float f628E;

    /* JADX INFO: renamed from: F */
    public int f629F;

    /* JADX INFO: renamed from: G */
    public VelocityTracker f630G;

    /* JADX INFO: renamed from: H */
    public int f631H;

    /* JADX INFO: renamed from: I */
    public int f632I;

    /* JADX INFO: renamed from: J */
    public int f633J;

    /* JADX INFO: renamed from: K */
    public int f634K;

    /* JADX INFO: renamed from: L */
    public EdgeEffect f635L;

    /* JADX INFO: renamed from: M */
    public EdgeEffect f636M;

    /* JADX INFO: renamed from: N */
    public boolean f637N;

    /* JADX INFO: renamed from: O */
    public boolean f638O;

    /* JADX INFO: renamed from: P */
    public int f639P;

    /* JADX INFO: renamed from: Q */
    public final c f640Q;

    /* JADX INFO: renamed from: R */
    public int f641R;

    /* JADX INFO: renamed from: a */
    public int f642a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<e> f643b;

    /* JADX INFO: renamed from: c */
    public final e f644c;

    /* JADX INFO: renamed from: d */
    public final Rect f645d;

    /* JADX INFO: renamed from: e */
    public AbstractC0085a f646e;

    /* JADX INFO: renamed from: f */
    public int f647f;

    /* JADX INFO: renamed from: g */
    public int f648g;

    /* JADX INFO: renamed from: h */
    public Parcelable f649h;

    /* JADX INFO: renamed from: i */
    public Scroller f650i;

    /* JADX INFO: renamed from: j */
    public boolean f651j;

    /* JADX INFO: renamed from: k */
    public i f652k;

    /* JADX INFO: renamed from: l */
    public int f653l;

    /* JADX INFO: renamed from: m */
    public Drawable f654m;

    /* JADX INFO: renamed from: n */
    public int f655n;

    /* JADX INFO: renamed from: o */
    public int f656o;

    /* JADX INFO: renamed from: p */
    public float f657p;

    /* JADX INFO: renamed from: q */
    public float f658q;

    /* JADX INFO: renamed from: r */
    public int f659r;

    /* JADX INFO: renamed from: s */
    public boolean f660s;

    /* JADX INFO: renamed from: t */
    public boolean f661t;

    /* JADX INFO: renamed from: u */
    public boolean f662u;

    /* JADX INFO: renamed from: v */
    public int f663v;

    /* JADX INFO: renamed from: w */
    public boolean f664w;

    /* JADX INFO: renamed from: x */
    public boolean f665x;

    /* JADX INFO: renamed from: y */
    public int f666y;

    /* JADX INFO: renamed from: z */
    public int f667z;

    /* JADX INFO: renamed from: f.b$a */
    public class a implements Comparator<e> {
        @Override // java.util.Comparator
        public final int compare(e eVar, e eVar2) {
            return eVar.f670b - eVar2.f670b;
        }
    }

    /* JADX INFO: renamed from: f.b$b */
    public class b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* JADX INFO: renamed from: f.b$c */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0086b c0086b = C0086b.this;
            c0086b.setScrollState(0);
            c0086b.m328o();
        }
    }

    /* JADX INFO: renamed from: f.b$d */
    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface d {
    }

    /* JADX INFO: renamed from: f.b$e */
    public static class e {

        /* JADX INFO: renamed from: a */
        public FrameLayout f669a;

        /* JADX INFO: renamed from: b */
        public int f670b;

        /* JADX INFO: renamed from: c */
        public boolean f671c;

        /* JADX INFO: renamed from: d */
        public float f672d;

        /* JADX INFO: renamed from: e */
        public float f673e;
    }

    /* JADX INFO: renamed from: f.b$g */
    public class g extends View.AccessibilityDelegate {
        public g() {
        }

        /* JADX WARN: Code duplicated, block: B:7:0x001a  */
        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            boolean z2;
            AbstractC0085a abstractC0085a;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(C0086b.class.getName());
            C0086b c0086b = C0086b.this;
            AbstractC0085a abstractC0085a2 = c0086b.f646e;
            if (abstractC0085a2 != null) {
                z2 = abstractC0085a2.mo312b() > 1;
            }
            accessibilityEvent.setScrollable(z2);
            if (accessibilityEvent.getEventType() != 4096 || (abstractC0085a = c0086b.f646e) == null) {
                return;
            }
            accessibilityEvent.setItemCount(abstractC0085a.mo312b());
            accessibilityEvent.setFromIndex(c0086b.f647f);
            accessibilityEvent.setToIndex(c0086b.f647f);
        }

        @Override // android.view.View.AccessibilityDelegate
        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(C0086b.class.getName());
            C0086b c0086b = C0086b.this;
            AbstractC0085a abstractC0085a = c0086b.f646e;
            accessibilityNodeInfo.setScrollable(abstractC0085a != null && abstractC0085a.mo312b() > 1);
            if (c0086b.canScrollHorizontally(1)) {
                accessibilityNodeInfo.addAction(4096);
            }
            if (c0086b.canScrollHorizontally(-1)) {
                accessibilityNodeInfo.addAction(8192);
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public final boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
            if (super.performAccessibilityAction(view, i2, bundle)) {
                return true;
            }
            C0086b c0086b = C0086b.this;
            if (i2 == 4096) {
                if (!c0086b.canScrollHorizontally(1)) {
                    return false;
                }
                c0086b.setCurrentItem(c0086b.f647f + 1);
                return true;
            }
            if (i2 != 8192 || !c0086b.canScrollHorizontally(-1)) {
                return false;
            }
            c0086b.setCurrentItem(c0086b.f647f - 1);
            return true;
        }
    }

    /* JADX INFO: renamed from: f.b$h */
    public interface h {
        /* JADX INFO: renamed from: a */
        void m334a();

        /* JADX INFO: renamed from: b */
        void m335b();

        /* JADX INFO: renamed from: c */
        void m336c();
    }

    /* JADX INFO: renamed from: f.b$i */
    public class i extends DataSetObserver {
        public i() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            C0086b.this.m318e();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            C0086b.this.m318e();
        }
    }

    /* JADX INFO: renamed from: f.b$j */
    public static class j extends AbsSavedState {
        public static final Parcelable.Creator<j> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        public int f680a;

        /* JADX INFO: renamed from: b */
        public Parcelable f681b;

        /* JADX INFO: renamed from: f.b$j$a */
        public class a implements Parcelable.ClassLoaderCreator<j> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final j createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new j(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new j[i2];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new j(parcel, null);
            }
        }

        public j(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f680a + "}";
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f680a);
            parcel.writeParcelable(this.f681b, i2);
        }

        public j(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? j.class.getClassLoader() : classLoader;
            this.f680a = parcel.readInt();
            this.f681b = parcel.readParcelable(classLoader);
        }
    }

    public C0086b(Context context) {
        super(context);
        this.f643b = new ArrayList<>();
        this.f644c = new e();
        this.f645d = new Rect();
        this.f648g = -1;
        this.f649h = null;
        this.f657p = -3.4028235E38f;
        this.f658q = Float.MAX_VALUE;
        this.f663v = 1;
        this.f629F = -1;
        this.f637N = true;
        this.f640Q = new c();
        this.f641R = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f650i = new Scroller(context2, f623U);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f2 = context2.getResources().getDisplayMetrics().density;
        this.f624A = viewConfiguration.getScaledPagingTouchSlop();
        this.f631H = (int) (400.0f * f2);
        this.f632I = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f635L = new EdgeEffect(context2);
        this.f636M = new EdgeEffect(context2);
        this.f633J = (int) (25.0f * f2);
        this.f634K = (int) (2.0f * f2);
        this.f666y = (int) (f2 * 16.0f);
        setAccessibilityDelegate(new g());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC0087c(this));
    }

    /* JADX INFO: renamed from: c */
    public static boolean m314c(View view, boolean z2, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && m314c(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z2 && view.canScrollHorizontally(-i2);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z2) {
        if (this.f661t != z2) {
            this.f661t = z2;
        }
    }

    /* JADX INFO: renamed from: a */
    public final e m315a(int i2, int i3) {
        e eVar = new e();
        eVar.f670b = i2;
        ZImageViewer.C0263e c0263e = (ZImageViewer.C0263e) this.f646e;
        c0263e.getClass();
        Context context = c0263e.f1416a;
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ProgressBar progressBar = new ProgressBar(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        progressBar.setIndeterminate(true);
        C0121d c0121d = new C0121d(context);
        c0121d.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        ZImageViewer zImageViewer = ZImageViewer.this;
        c0121d.setOnClickListener(zImageViewer);
        c0121d.setOnImageEventListener(zImageViewer);
        c0121d.setOrientation(-1);
        c0121d.setTag(frameLayout);
        if (c0263e.f1417b.mo447c()) {
            c0121d.m412w(c0263e.m764e(i2), false);
        }
        frameLayout.addView(c0121d);
        frameLayout.addView(progressBar);
        addView(frameLayout);
        eVar.f669a = frameLayout;
        this.f646e.getClass();
        eVar.f672d = 1.0f;
        ArrayList<e> arrayList = this.f643b;
        if (i3 < 0 || i3 >= arrayList.size()) {
            arrayList.add(eVar);
        } else {
            arrayList.add(i3, eVar);
        }
        return eVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        e eVarM320g;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (eVarM320g = m320g(childAt)) != null && eVarM320g.f670b == this.f647f) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList<View> arrayList) {
        e eVarM320g;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (eVarM320g = m320g(childAt)) != null && eVarM320g.f670b == this.f647f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = new f();
        }
        f fVar = (f) layoutParams;
        boolean z2 = fVar.f674a | (view.getClass().getAnnotation(d.class) != null);
        fVar.f674a = z2;
        if (!this.f660s) {
            super.addView(view, i2, layoutParams);
        } else {
            if (z2) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            fVar.f677d = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00cf  */
    /* JADX INFO: renamed from: b */
    public final boolean m316b(int i2) {
        boolean zRequestFocus;
        boolean z2;
        View viewFindFocus = findFocus();
        boolean z3 = true;
        boolean zM325l = false;
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    z2 = false;
                    break;
                }
                if (parent == this) {
                    z2 = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z2) {
                StringBuilder sb = new StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(" => ");
                    sb.append(parent2.getClass().getSimpleName());
                }
                Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                viewFindFocus = null;
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.f645d;
            if (i2 == 17) {
                int i3 = m319f(rect, viewFindNextFocus).left;
                int i4 = m319f(rect, viewFindFocus).left;
                if (viewFindFocus == null || i3 < i4) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                } else {
                    int i5 = this.f647f;
                    if (i5 > 0) {
                        this.f662u = false;
                        m333t(i5 - 1, 0, true, false);
                    } else {
                        z3 = false;
                    }
                    zM325l = z3;
                }
            } else if (i2 == 66) {
                zRequestFocus = (viewFindFocus == null || m319f(rect, viewFindNextFocus).left > m319f(rect, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : m325l();
            }
            zM325l = zRequestFocus;
        } else if (i2 == 17 || i2 == 1) {
            int i6 = this.f647f;
            if (i6 > 0) {
                this.f662u = false;
                m333t(i6 - 1, 0, true, false);
            } else {
                z3 = false;
            }
            zM325l = z3;
        } else if (i2 == 66 || i2 == 2) {
            zM325l = m325l();
        }
        if (zM325l) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return zM325l;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i2) {
        if (this.f646e == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i2 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.f657p));
        }
        return i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.f658q));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.f651j = true;
        if (this.f650i.isFinished() || !this.f650i.computeScrollOffset()) {
            m317d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f650i.getCurrX();
        int currY = this.f650i.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m326m(currX)) {
                this.f650i.abortAnimation();
                scrollTo(0, currY);
            }
        }
        super.postInvalidateOnAnimation();
    }

    /* JADX INFO: renamed from: d */
    public final void m317d(boolean z2) {
        boolean z3 = this.f641R == 2;
        if (z3) {
            setScrollingCacheEnabled(false);
            if (!this.f650i.isFinished()) {
                this.f650i.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f650i.getCurrX();
                int currY = this.f650i.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m326m(currX);
                    }
                }
            }
        }
        this.f662u = false;
        int i2 = 0;
        while (true) {
            ArrayList<e> arrayList = this.f643b;
            if (i2 >= arrayList.size()) {
                break;
            }
            e eVar = arrayList.get(i2);
            if (eVar.f671c) {
                eVar.f671c = false;
                z3 = true;
            }
            i2++;
        }
        if (z3) {
            c cVar = this.f640Q;
            if (z2) {
                super.postOnAnimation(cVar);
            } else {
                cVar.run();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0061  */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zM316b;
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (keyEvent.getAction() != 0) {
            zM316b = false;
        } else {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 21) {
                if (keyCode == 22) {
                    zM316b = keyEvent.hasModifiers(2) ? m325l() : m316b(66);
                } else if (keyCode != 61) {
                    zM316b = false;
                } else if (keyEvent.hasNoModifiers()) {
                    zM316b = m316b(2);
                } else if (keyEvent.hasModifiers(1)) {
                    zM316b = m316b(1);
                } else {
                    zM316b = false;
                }
            } else if (keyEvent.hasModifiers(2)) {
                int i2 = this.f647f;
                if (i2 > 0) {
                    this.f662u = false;
                    m333t(i2 - 1, 0, true, false);
                    zM316b = true;
                } else {
                    zM316b = false;
                }
            } else {
                zM316b = m316b(17);
            }
        }
        return zM316b;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e eVarM320g;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (eVarM320g = m320g(childAt)) != null && eVarM320g.f670b == this.f647f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        AbstractC0085a abstractC0085a;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (abstractC0085a = this.f646e) != null && abstractC0085a.mo312b() > 1)) {
            if (!this.f635L.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f657p * width);
                this.f635L.setSize(height, width);
                zDraw = false | this.f635L.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.f636M.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f658q + 1.0f)) * width2);
                this.f636M.setSize(height2, width2);
                zDraw |= this.f636M.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.f635L.finish();
            this.f636M.finish();
        }
        if (zDraw) {
            super.postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f654m;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* JADX INFO: renamed from: e */
    public final void m318e() {
        int iMo312b = this.f646e.mo312b();
        this.f642a = iMo312b;
        ArrayList<e> arrayList = this.f643b;
        boolean z2 = arrayList.size() < (this.f663v * 2) + 1 && arrayList.size() < iMo312b;
        int i2 = this.f647f;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            e eVar = arrayList.get(i3);
            AbstractC0085a abstractC0085a = this.f646e;
            FrameLayout frameLayout = eVar.f669a;
            abstractC0085a.getClass();
        }
        Collections.sort(arrayList, f622T);
        if (z2) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                f fVar = (f) getChildAt(i4).getLayoutParams();
                if (!fVar.f674a) {
                    fVar.f676c = 0.0f;
                }
            }
            m333t(i2, 0, false, true);
            requestLayout();
        }
    }

    /* JADX INFO: renamed from: f */
    public final Rect m319f(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    /* JADX INFO: renamed from: g */
    public final e m320g(View view) {
        int i2 = 0;
        while (true) {
            ArrayList<e> arrayList = this.f643b;
            if (i2 >= arrayList.size()) {
                return null;
            }
            e eVar = arrayList.get(i2);
            AbstractC0085a abstractC0085a = this.f646e;
            FrameLayout frameLayout = eVar.f669a;
            ((ZImageViewer.C0263e) abstractC0085a).getClass();
            if (view == frameLayout) {
                return eVar;
            }
            i2++;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new f();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new f();
    }

    public AbstractC0085a getAdapter() {
        return this.f646e;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i2, int i3) {
        throw null;
    }

    public int getCurrentItem() {
        return this.f647f;
    }

    public int getOffscreenPageLimit() {
        return this.f663v;
    }

    public int getPageMargin() {
        return this.f653l;
    }

    /* JADX INFO: renamed from: h */
    public final e m321h() {
        e eVar;
        int i2;
        int clientWidth = getClientWidth();
        float f2 = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.f653l / clientWidth : 0.0f;
        int i3 = 0;
        boolean z2 = true;
        e eVar2 = null;
        int i4 = -1;
        float f4 = 0.0f;
        while (true) {
            ArrayList<e> arrayList = this.f643b;
            if (i3 >= arrayList.size()) {
                return eVar2;
            }
            e eVar3 = arrayList.get(i3);
            if (z2 || eVar3.f670b == (i2 = i4 + 1)) {
                eVar = eVar3;
            } else {
                float f5 = f2 + f4 + f3;
                e eVar4 = this.f644c;
                eVar4.f673e = f5;
                eVar4.f670b = i2;
                this.f646e.getClass();
                eVar4.f672d = 1.0f;
                i3--;
                eVar = eVar4;
            }
            f2 = eVar.f673e;
            float f6 = eVar.f672d + f2 + f3;
            if (!z2 && scrollX < f2) {
                return eVar2;
            }
            if (scrollX < f6 || i3 == arrayList.size() - 1) {
                return eVar;
            }
            int i5 = eVar.f670b;
            float f7 = eVar.f672d;
            i3++;
            z2 = false;
            e eVar5 = eVar;
            i4 = i5;
            f4 = f7;
            eVar2 = eVar5;
        }
    }

    /* JADX INFO: renamed from: i */
    public final e m322i(int i2) {
        int i3 = 0;
        while (true) {
            ArrayList<e> arrayList = this.f643b;
            if (i3 >= arrayList.size()) {
                return null;
            }
            e eVar = arrayList.get(i3);
            if (eVar.f670b == i2) {
                return eVar;
            }
            i3++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    /* JADX INFO: renamed from: j */
    public final void m323j(int i2, float f2, int i3) {
        int iMax;
        int width;
        int left;
        if (this.f639P > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f674a) {
                    int i5 = fVar.f675b & 7;
                    if (i5 != 1) {
                        if (i5 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i5 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i6 = iMax;
                    width = paddingLeft;
                    paddingLeft = i6;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        this.f638O = true;
    }

    /* JADX INFO: renamed from: k */
    public final void m324k(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f629F) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f625B = motionEvent.getX(i2);
            this.f629F = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.f630G;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public final boolean m325l() {
        AbstractC0085a abstractC0085a = this.f646e;
        if (abstractC0085a == null || this.f647f >= abstractC0085a.mo312b() - 1) {
            return false;
        }
        int i2 = this.f647f + 1;
        this.f662u = false;
        m333t(i2, 0, true, false);
        return true;
    }

    /* JADX INFO: renamed from: m */
    public final boolean m326m(int i2) {
        if (this.f643b.size() == 0) {
            if (this.f637N) {
                return false;
            }
            this.f638O = false;
            m323j(0, 0.0f, 0);
            if (this.f638O) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        e eVarM321h = m321h();
        int clientWidth = getClientWidth();
        int i3 = this.f653l;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = eVarM321h.f670b;
        float f3 = ((i2 / f2) - eVarM321h.f673e) / (eVarM321h.f672d + (i3 / f2));
        this.f638O = false;
        m323j(i5, f3, (int) (i4 * f3));
        if (this.f638O) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* JADX INFO: renamed from: n */
    public final boolean m327n(float f2) {
        boolean z2;
        boolean z3;
        float f3 = this.f625B - f2;
        this.f625B = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.f657p * clientWidth;
        float f5 = this.f658q * clientWidth;
        ArrayList<e> arrayList = this.f643b;
        boolean z4 = false;
        e eVar = arrayList.get(0);
        e eVar2 = arrayList.get(arrayList.size() - 1);
        if (eVar.f670b != 0) {
            f4 = eVar.f673e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (eVar2.f670b != this.f646e.mo312b() - 1) {
            f5 = eVar2.f673e * clientWidth;
            z3 = false;
        } else {
            z3 = true;
        }
        if (scrollX < f4) {
            if (z2) {
                this.f635L.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z4 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z3) {
                this.f636M.onPull(Math.abs(scrollX - f5) / clientWidth);
                z4 = true;
            }
            scrollX = f5;
        }
        int i2 = (int) scrollX;
        this.f625B = (scrollX - i2) + this.f625B;
        scrollTo(i2, getScrollY());
        m326m(i2);
        return z4;
    }

    /* JADX INFO: renamed from: o */
    public final void m328o() {
        m329p(this.f647f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f637N = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f640Q);
        Scroller scroller = this.f650i;
        if (scroller != null && !scroller.isFinished()) {
            this.f650i.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i2;
        float f2;
        super.onDraw(canvas);
        if (this.f653l <= 0 || this.f654m == null) {
            return;
        }
        ArrayList<e> arrayList = this.f643b;
        if (arrayList.size() <= 0 || this.f646e == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f3 = width;
        float f4 = this.f653l / f3;
        int i3 = 0;
        e eVar = arrayList.get(0);
        float f5 = eVar.f673e;
        int size = arrayList.size();
        int i4 = eVar.f670b;
        int i5 = arrayList.get(size - 1).f670b;
        while (i4 < i5) {
            while (true) {
                i2 = eVar.f670b;
                if (i4 <= i2 || i3 >= size) {
                    break;
                }
                i3++;
                eVar = arrayList.get(i3);
            }
            if (i4 == i2) {
                float f6 = eVar.f673e;
                float f7 = eVar.f672d;
                f2 = (f6 + f7) * f3;
                f5 = f6 + f7 + f4;
            } else {
                this.f646e.getClass();
                f2 = (f5 + 1.0f) * f3;
                f5 = 1.0f + f4 + f5;
            }
            if (this.f653l + f2 > scrollX) {
                this.f654m.setBounds(Math.round(f2), this.f655n, Math.round(this.f653l + f2), this.f656o);
                this.f654m.draw(canvas);
            }
            if (f2 > scrollX + width) {
                return;
            }
            i4++;
            arrayList = arrayList;
            f4 = f4;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m331r();
            return false;
        }
        if (action != 0) {
            if (this.f664w) {
                return true;
            }
            if (this.f665x) {
                return false;
            }
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.f627D = x2;
            this.f625B = x2;
            float y2 = motionEvent.getY();
            this.f628E = y2;
            this.f626C = y2;
            this.f629F = motionEvent.getPointerId(0);
            this.f665x = false;
            this.f651j = true;
            this.f650i.computeScrollOffset();
            if (this.f641R != 2 || Math.abs(this.f650i.getFinalX() - this.f650i.getCurrX()) <= this.f634K) {
                m317d(false);
                this.f664w = false;
            } else {
                this.f650i.abortAnimation();
                this.f662u = false;
                m328o();
                this.f664w = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.f629F;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                float x3 = motionEvent.getX(iFindPointerIndex);
                float f2 = x3 - this.f625B;
                float fAbs = Math.abs(f2);
                float y3 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y3 - this.f628E);
                if (f2 != 0.0f) {
                    float f3 = this.f625B;
                    if (!((f3 < ((float) this.f667z) && f2 > 0.0f) || (f3 > ((float) (getWidth() - this.f667z)) && f2 < 0.0f)) && m314c(this, false, (int) f2, (int) x3, (int) y3)) {
                        this.f625B = x3;
                        this.f626C = y3;
                        this.f665x = true;
                        return false;
                    }
                }
                float f4 = this.f624A;
                if (fAbs > f4 && fAbs * 0.5f > fAbs2) {
                    this.f664w = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    this.f625B = f2 > 0.0f ? this.f627D + this.f624A : this.f627D - this.f624A;
                    this.f626C = y3;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f4) {
                    this.f665x = true;
                }
                if (this.f664w && m327n(x3)) {
                    super.postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            m324k(motionEvent);
        }
        if (this.f630G == null) {
            this.f630G = VelocityTracker.obtain();
        }
        this.f630G.addMovement(motionEvent);
        return this.f664w;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0071  */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:26:0x0079  */
    /* JADX WARN: Code duplicated, block: B:27:0x007b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0088  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        boolean z3;
        e eVarM320g;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                f fVar = (f) childAt.getLayoutParams();
                if (fVar.f674a) {
                    int i10 = fVar.f675b;
                    int i11 = i10 & 7;
                    int i12 = i10 & 112;
                    if (i11 != 1) {
                        if (i11 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i11 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i6 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i12 != 16) {
                            if (i12 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i12 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i13 = paddingLeft + scrollX;
                            childAt.layout(i13, paddingTop, childAt.getMeasuredWidth() + i13, childAt.getMeasuredHeight() + paddingTop);
                            i8++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i14 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i14;
                        int i15 = paddingLeft + scrollX;
                        childAt.layout(i15, paddingTop, childAt.getMeasuredWidth() + i15, childAt.getMeasuredHeight() + paddingTop);
                        i8++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i16 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i16;
                    if (i12 != 16) {
                        if (i12 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i12 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i17 = paddingLeft + scrollX;
                        childAt.layout(i17, paddingTop, childAt.getMeasuredWidth() + i17, childAt.getMeasuredHeight() + paddingTop);
                        i8++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i18 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i18;
                    int i19 = paddingLeft + scrollX;
                    childAt.layout(i19, paddingTop, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + paddingTop);
                    i8++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i20 = (i6 - paddingLeft) - paddingRight;
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                f fVar2 = (f) childAt2.getLayoutParams();
                if (!fVar2.f674a && (eVarM320g = m320g(childAt2)) != null) {
                    float f2 = i20;
                    int i22 = ((int) (eVarM320g.f673e * f2)) + paddingLeft;
                    if (fVar2.f677d) {
                        fVar2.f677d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * fVar2.f676c), 1073741824), View.MeasureSpec.makeMeasureSpec((i7 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i22, paddingTop, childAt2.getMeasuredWidth() + i22, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f655n = paddingTop;
        this.f656o = i7 - paddingBottom;
        this.f639P = i8;
        if (this.f637N) {
            z3 = false;
            m332s(this.f647f, 0, false, false);
        } else {
            z3 = false;
        }
        this.f637N = z3;
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        f fVar;
        f fVar2;
        int i4;
        setMeasuredDimension(View.getDefaultSize(0, i2), View.getDefaultSize(0, i3));
        int measuredWidth = getMeasuredWidth();
        this.f667z = Math.min(measuredWidth / 10, this.f666y);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            boolean z2 = true;
            int i6 = 1073741824;
            if (i5 >= childCount) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8 && (fVar2 = (f) childAt.getLayoutParams()) != null && fVar2.f674a) {
                int i7 = fVar2.f675b;
                int i8 = i7 & 7;
                int i9 = i7 & 112;
                boolean z3 = i9 == 48 || i9 == 80;
                if (i8 != 3 && i8 != 5) {
                    z2 = false;
                }
                int i10 = Integer.MIN_VALUE;
                if (z3) {
                    i4 = Integer.MIN_VALUE;
                    i10 = 1073741824;
                } else {
                    i4 = z2 ? 1073741824 : Integer.MIN_VALUE;
                }
                int i11 = ((ViewGroup.LayoutParams) fVar2).width;
                if (i11 != -2) {
                    if (i11 == -1) {
                        i11 = paddingLeft;
                    }
                    i10 = 1073741824;
                } else {
                    i11 = paddingLeft;
                }
                int i12 = ((ViewGroup.LayoutParams) fVar2).height;
                if (i12 == -2) {
                    i12 = measuredHeight;
                    i6 = i4;
                } else if (i12 == -1) {
                    i12 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i10), View.MeasureSpec.makeMeasureSpec(i12, i6));
                if (z3) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z2) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i5++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f659r = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f660s = true;
        m328o();
        this.f660s = false;
        int childCount2 = getChildCount();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8 && ((fVar = (f) childAt2.getLayoutParams()) == null || !fVar.f674a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * fVar.f676c), 1073741824), this.f659r);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int i5;
        e eVarM320g;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i5 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
            i5 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (eVarM320g = m320g(childAt)) != null && eVarM320g.f670b == this.f647f && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i5;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof j)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j jVar = (j) parcelable;
        super.onRestoreInstanceState(jVar.getSuperState());
        if (this.f646e != null) {
            m333t(jVar.f680a, 0, false, true);
        } else {
            this.f648g = jVar.f680a;
            this.f649h = jVar.f681b;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        j jVar = new j(super.onSaveInstanceState());
        jVar.f680a = this.f647f;
        AbstractC0085a abstractC0085a = this.f646e;
        if (abstractC0085a != null) {
            abstractC0085a.getClass();
            jVar.f681b = null;
        }
        return jVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.f653l;
            m330q(i2, i4, i6, i6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:54:0x00dd  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        AbstractC0085a abstractC0085a;
        boolean zM331r = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (abstractC0085a = this.f646e) == null || abstractC0085a.mo312b() == 0) {
            return false;
        }
        if (this.f630G == null) {
            this.f630G = VelocityTracker.obtain();
        }
        this.f630G.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f650i.abortAnimation();
            this.f662u = false;
            m328o();
            float x2 = motionEvent.getX();
            this.f627D = x2;
            this.f625B = x2;
            float y2 = motionEvent.getY();
            this.f628E = y2;
            this.f626C = y2;
            this.f629F = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.f625B = motionEvent.getX(actionIndex);
                        this.f629F = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        m324k(motionEvent);
                        this.f625B = motionEvent.getX(motionEvent.findPointerIndex(this.f629F));
                    }
                } else if (this.f664w) {
                    m332s(this.f647f, 0, true, false);
                    zM331r = m331r();
                }
            } else if (!this.f664w) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f629F);
                if (iFindPointerIndex == -1) {
                    zM331r = m331r();
                } else {
                    float x3 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x3 - this.f625B);
                    float y3 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y3 - this.f626C);
                    if (fAbs > this.f624A && fAbs > fAbs2) {
                        this.f664w = true;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        float f2 = this.f627D;
                        this.f625B = x3 - f2 > 0.0f ? f2 + this.f624A : f2 - this.f624A;
                        this.f626C = y3;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.f664w) {
                        zM331r = false | m327n(motionEvent.getX(motionEvent.findPointerIndex(this.f629F)));
                    }
                }
            } else if (this.f664w) {
                zM331r = false | m327n(motionEvent.getX(motionEvent.findPointerIndex(this.f629F)));
            }
        } else if (this.f664w) {
            VelocityTracker velocityTracker = this.f630G;
            velocityTracker.computeCurrentVelocity(1000, this.f632I);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f629F);
            this.f662u = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            e eVarM321h = m321h();
            float f3 = clientWidth;
            float f4 = this.f653l / f3;
            int iMax = eVarM321h.f670b;
            float f5 = ((scrollX / f3) - eVarM321h.f673e) / (eVarM321h.f672d + f4);
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.f629F)) - this.f627D)) <= this.f633J || Math.abs(xVelocity) <= this.f631H) {
                iMax += (int) (f5 + (iMax >= this.f647f ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                iMax++;
            }
            ArrayList<e> arrayList = this.f643b;
            if (arrayList.size() > 0) {
                iMax = Math.max(arrayList.get(0).f670b, Math.min(iMax, arrayList.get(arrayList.size() - 1).f670b));
            }
            m333t(iMax, xVelocity, true, true);
            zM331r = m331r();
        }
        if (zM331r) {
            super.postInvalidateOnAnimation();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:184:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:188:0x0301  */
    /* JADX WARN: Code duplicated, block: B:197:0x031a  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f0 A[PHI: r6 r8 r15
      0x00f0: PHI (r6v20 int) = (r6v19 int), (r6v8 int), (r6v23 int) binds: [B:59:0x00e5, B:56:0x00cf, B:50:0x00b9] A[DONT_GENERATE, DONT_INLINE]
      0x00f0: PHI (r8v34 int) = (r8v1 int), (r8v33 int), (r8v37 int) binds: [B:59:0x00e5, B:56:0x00cf, B:50:0x00b9] A[DONT_GENERATE, DONT_INLINE]
      0x00f0: PHI (r15v6 float) = (r15v4 float), (r15v5 float), (r15v1 float) binds: [B:59:0x00e5, B:56:0x00cf, B:50:0x00b9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:96:0x0186 A[PHI: r3 r11
      0x0186: PHI (r3v18 float) = (r3v16 float), (r3v17 float), (r3v15 float) binds: [B:94:0x017b, B:91:0x0161, B:85:0x0145] A[DONT_GENERATE, DONT_INLINE]
      0x0186: PHI (r11v30 int) = (r11v28 int), (r11v29 int), (r11v27 int) binds: [B:94:0x017b, B:91:0x0161, B:85:0x0145] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: p */
    public final void m329p(int i2) {
        e eVarM322i;
        String hexString;
        e eVarM315a;
        int i3;
        e eVarM320g;
        e eVarM320g2;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        e eVar;
        e eVar2;
        e eVar3;
        int i6 = this.f647f;
        if (i6 != i2) {
            eVarM322i = m322i(i6);
            this.f647f = i2;
        } else {
            eVarM322i = null;
        }
        if (this.f646e == null || this.f662u || getWindowToken() == null) {
            return;
        }
        this.f646e.getClass();
        int i7 = this.f663v;
        int iMax = Math.max(0, this.f647f - i7);
        int iMo312b = this.f646e.mo312b();
        int iMin = Math.min(iMo312b - 1, this.f647f + i7);
        if (iMo312b != this.f642a) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f642a + ", found: " + iMo312b + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f646e.getClass());
        }
        int i8 = 0;
        while (true) {
            if (i8 < this.f643b.size()) {
                eVarM315a = this.f643b.get(i8);
                int i9 = eVarM315a.f670b;
                int i10 = this.f647f;
                if (i9 >= i10) {
                    if (i9 != i10) {
                        break;
                    } else {
                        break;
                    }
                }
                i8++;
            }
            eVarM315a = null;
            break;
        }
        if (eVarM315a == null && iMo312b > 0) {
            eVarM315a = m315a(this.f647f, i8);
        }
        if (eVarM315a == null) {
            i3 = 0;
        } else {
            int i11 = i8 - 1;
            e eVar4 = i11 >= 0 ? this.f643b.get(i11) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - eVarM315a.f672d) + (getPaddingLeft() / clientWidth);
            boolean z4 = true;
            float f2 = 0.0f;
            for (int i12 = this.f647f - 1; i12 >= 0; i12--) {
                if (f2 < paddingLeft || i12 >= iMax) {
                    if (eVar4 == null || i12 != eVar4.f670b) {
                        f2 += m315a(i12, i11 + 1).f672d;
                        i8++;
                        if (i11 >= 0) {
                            eVar3 = this.f643b.get(i11);
                        } else {
                            eVar3 = null;
                        }
                    } else {
                        f2 += eVar4.f672d;
                        i11--;
                        if (i11 >= 0) {
                            eVar3 = this.f643b.get(i11);
                        } else {
                            eVar3 = null;
                        }
                    }
                    eVar4 = eVar3;
                } else {
                    if (eVar4 == null) {
                        break;
                    }
                    if (i12 == eVar4.f670b && !eVar4.f671c) {
                        this.f643b.remove(i11);
                        this.f646e.mo311a(this, eVar4.f669a);
                        i11--;
                        i8--;
                        if (i11 >= 0) {
                            eVar3 = this.f643b.get(i11);
                        } else {
                            eVar3 = null;
                        }
                        eVar4 = eVar3;
                    }
                }
            }
            float f3 = eVarM315a.f672d;
            int i13 = i8 + 1;
            if (f3 < 2.0f) {
                e eVar5 = i13 < this.f643b.size() ? this.f643b.get(i13) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i14 = i13;
                for (int i15 = this.f647f + 1; i15 < iMo312b; i15++) {
                    if (f3 >= paddingRight && i15 > iMin) {
                        if (eVar5 == null) {
                            break;
                        }
                        if (i15 == eVar5.f670b && !eVar5.f671c) {
                            this.f643b.remove(i14);
                            this.f646e.mo311a(this, eVar5.f669a);
                            if (i14 < this.f643b.size()) {
                                eVar5 = this.f643b.get(i14);
                            } else {
                                eVar5 = null;
                            }
                        }
                    } else if (eVar5 == null || i15 != eVar5.f670b) {
                        e eVarM315a2 = m315a(i15, i14);
                        i14++;
                        f3 += eVarM315a2.f672d;
                        if (i14 < this.f643b.size()) {
                            eVar5 = this.f643b.get(i14);
                        } else {
                            eVar5 = null;
                        }
                    } else {
                        f3 += eVar5.f672d;
                        i14++;
                        if (i14 < this.f643b.size()) {
                            eVar5 = this.f643b.get(i14);
                        } else {
                            eVar5 = null;
                        }
                    }
                }
            }
            int iMo312b2 = this.f646e.mo312b();
            int clientWidth2 = getClientWidth();
            float f4 = clientWidth2 > 0 ? this.f653l / clientWidth2 : 0.0f;
            ArrayList<e> arrayList = this.f643b;
            if (eVarM322i != null) {
                int i16 = eVarM322i.f670b;
                int i17 = eVarM315a.f670b;
                if (i16 < i17) {
                    float f5 = eVarM322i.f673e + eVarM322i.f672d + f4;
                    int i18 = i16 + 1;
                    int i19 = 0;
                    while (i18 <= eVarM315a.f670b && i19 < arrayList.size()) {
                        e eVar6 = arrayList.get(i19);
                        while (true) {
                            eVar2 = eVar6;
                            if (i18 <= eVar2.f670b || i19 >= arrayList.size() - 1) {
                                break;
                            }
                            i19++;
                            eVar6 = arrayList.get(i19);
                        }
                        while (i18 < eVar2.f670b) {
                            this.f646e.getClass();
                            f5 += 1.0f + f4;
                            i18++;
                        }
                        eVar2.f673e = f5;
                        f5 += eVar2.f672d + f4;
                        i18++;
                    }
                } else if (i16 > i17) {
                    int size = arrayList.size() - 1;
                    float f6 = eVarM322i.f673e;
                    int i20 = i16 - 1;
                    while (i20 >= eVarM315a.f670b && size >= 0) {
                        e eVar7 = arrayList.get(size);
                        while (true) {
                            eVar = eVar7;
                            if (i20 >= eVar.f670b || size <= 0) {
                                break;
                            }
                            size--;
                            eVar7 = arrayList.get(size);
                        }
                        while (i20 > eVar.f670b) {
                            this.f646e.getClass();
                            f6 -= 1.0f + f4;
                            i20--;
                        }
                        f6 -= eVar.f672d + f4;
                        eVar.f673e = f6;
                        i20--;
                    }
                }
            }
            int size2 = arrayList.size();
            float f7 = eVarM315a.f673e;
            int i21 = eVarM315a.f670b;
            int i22 = i21 - 1;
            this.f657p = i21 == 0 ? f7 : -3.4028235E38f;
            int i23 = iMo312b2 - 1;
            this.f658q = i21 == i23 ? (eVarM315a.f672d + f7) - 1.0f : Float.MAX_VALUE;
            int i24 = i8 - 1;
            while (i24 >= 0) {
                e eVar8 = arrayList.get(i24);
                while (true) {
                    i5 = eVar8.f670b;
                    if (i22 <= i5) {
                        break;
                    }
                    i22--;
                    this.f646e.getClass();
                    f7 -= 1.0f + f4;
                }
                f7 -= eVar8.f672d + f4;
                eVar8.f673e = f7;
                if (i5 == 0) {
                    this.f657p = f7;
                }
                i24--;
                i22--;
            }
            float f8 = eVarM315a.f673e + eVarM315a.f672d + f4;
            int i25 = eVarM315a.f670b + 1;
            while (i13 < size2) {
                e eVar9 = arrayList.get(i13);
                while (true) {
                    i4 = eVar9.f670b;
                    if (i25 >= i4) {
                        break;
                    }
                    i25++;
                    this.f646e.getClass();
                    f8 += 1.0f + f4;
                }
                if (i4 == i23) {
                    this.f658q = (eVar9.f672d + f8) - 1.0f;
                }
                eVar9.f673e = f8;
                f8 += eVar9.f672d + f4;
                i13++;
                i25++;
            }
            AbstractC0085a abstractC0085a = this.f646e;
            int i26 = this.f647f;
            FrameLayout frameLayout = eVarM315a.f669a;
            ZImageViewer.C0263e c0263e = (ZImageViewer.C0263e) abstractC0085a;
            int i27 = c0263e.f1418c;
            if (i27 == i26 || (i27 == -1 && i26 != c0263e.f1417b.mo445a())) {
                i3 = 0;
            } else {
                c0263e.f1418c = i26;
                ZImageViewer.this.setTitle(c0263e.f1417b.getName(i26));
                if (c0263e.f1417b.mo447c()) {
                    i3 = 0;
                } else {
                    View childAt = frameLayout.getChildAt(0);
                    if (childAt instanceof C0121d) {
                        C0121d c0121d = (C0121d) childAt;
                        if (c0121d.f895a == null) {
                            C0118a c0118a = c0121d.f901d;
                            if (c0118a != null) {
                                ParcelFileDescriptor parcelFileDescriptor = c0118a.f861c;
                                if (parcelFileDescriptor instanceof ParcelFileDescriptorC0069g) {
                                    ParcelFileDescriptorC0069g parcelFileDescriptorC0069g = (ParcelFileDescriptorC0069g) parcelFileDescriptor;
                                    if (parcelFileDescriptorC0069g.f491c || !parcelFileDescriptorC0069g.f490b.isOpen()) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                } else {
                                    z3 = true;
                                }
                                z2 = z3;
                            }
                        }
                        if (z2) {
                            i3 = 0;
                        } else {
                            i3 = 0;
                            c0121d.setEnabled(false);
                            C0118a c0118aM764e = c0263e.m764e(i26);
                            if (c0121d.f901d == null && c0121d.f895a == null) {
                                z4 = false;
                            }
                            c0121d.m412w(c0118aM764e, z4);
                        }
                    } else {
                        i3 = 0;
                    }
                }
            }
        }
        this.f646e.getClass();
        int childCount = getChildCount();
        for (int i28 = i3; i28 < childCount; i28++) {
            View childAt2 = getChildAt(i28);
            f fVar = (f) childAt2.getLayoutParams();
            fVar.getClass();
            if (!fVar.f674a && fVar.f676c == 0.0f && (eVarM320g2 = m320g(childAt2)) != null) {
                fVar.f676c = eVarM320g2.f672d;
                int i29 = eVarM320g2.f670b;
                fVar.getClass();
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == null) {
                eVarM320g = null;
                break;
            }
            while (true) {
                Object parent = viewFindFocus.getParent();
                if (parent == this) {
                    eVarM320g = m320g(viewFindFocus);
                    break;
                } else {
                    if (!(parent instanceof View)) {
                        eVarM320g = null;
                        break;
                    }
                    viewFindFocus = (View) parent;
                }
            }
            if (eVarM320g == null || eVarM320g.f670b != this.f647f) {
                while (i3 < getChildCount()) {
                    View childAt3 = getChildAt(i3);
                    e eVarM320g3 = m320g(childAt3);
                    if (eVarM320g3 != null && eVarM320g3.f670b == this.f647f && childAt3.requestFocus(2)) {
                        return;
                    } else {
                        i3++;
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void postInvalidateOnAnimation() {
        super.postInvalidateOnAnimation();
    }

    @Override // android.view.View
    public final void postOnAnimation(Runnable runnable) {
        super.postOnAnimation(runnable);
    }

    /* JADX INFO: renamed from: q */
    public final void m330q(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.f643b.isEmpty()) {
            if (!this.f650i.isFinished()) {
                this.f650i.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        e eVarM322i = m322i(this.f647f);
        int iMin = (int) ((eVarM322i != null ? Math.min(eVarM322i.f673e, this.f658q) : 0.0f) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            m317d(false);
            scrollTo(iMin, getScrollY());
        }
    }

    /* JADX INFO: renamed from: r */
    public final boolean m331r() {
        this.f629F = -1;
        this.f664w = false;
        this.f665x = false;
        VelocityTracker velocityTracker = this.f630G;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f630G = null;
        }
        this.f635L.onRelease();
        this.f636M.onRelease();
        return this.f635L.isFinished() || this.f636M.isFinished();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f660s) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m332s(int i2, int i3, boolean z2, boolean z3) {
        int iMax;
        int scrollX;
        int iAbs;
        e eVarM322i = m322i(i2);
        if (eVarM322i != null) {
            iMax = (int) (Math.max(this.f657p, Math.min(eVarM322i.f673e, this.f658q)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (!z2) {
            m317d(false);
            scrollTo(iMax, 0);
            m326m(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f650i;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.f651j ? this.f650i.getCurrX() : this.f650i.getStartX();
            this.f650i.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i4 = scrollX;
        int scrollY = getScrollY();
        int i5 = iMax - i4;
        int i6 = 0 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m317d(false);
            m328o();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float f2 = clientWidth;
        float f3 = i7;
        float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i5) * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
        int iAbs2 = Math.abs(i3);
        if (iAbs2 > 0) {
            iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
        } else {
            this.f646e.getClass();
            iAbs = (int) (((Math.abs(i5) / ((f2 * 1.0f) + this.f653l)) + 1.0f) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.f651j = false;
        this.f650i.startScroll(i4, scrollY, i5, i6, iMin);
        super.postInvalidateOnAnimation();
    }

    public void setAdapter(AbstractC0085a abstractC0085a) {
        ArrayList<e> arrayList;
        AbstractC0085a abstractC0085a2 = this.f646e;
        if (abstractC0085a2 != null) {
            synchronized (abstractC0085a2) {
            }
            this.f646e.getClass();
            int i2 = 0;
            while (true) {
                arrayList = this.f643b;
                if (i2 >= arrayList.size()) {
                    break;
                }
                e eVar = arrayList.get(i2);
                AbstractC0085a abstractC0085a3 = this.f646e;
                int i3 = eVar.f670b;
                abstractC0085a3.mo311a(this, eVar.f669a);
                i2++;
            }
            this.f646e.getClass();
            arrayList.clear();
            int i4 = 0;
            while (i4 < getChildCount()) {
                if (!((f) getChildAt(i4).getLayoutParams()).f674a) {
                    removeViewAt(i4);
                    i4--;
                }
                i4++;
            }
            this.f647f = 0;
            scrollTo(0, 0);
        }
        this.f646e = abstractC0085a;
        this.f642a = 0;
        if (abstractC0085a != null) {
            if (this.f652k == null) {
                this.f652k = new i();
            }
            this.f646e.m313c();
            this.f662u = false;
            boolean z2 = this.f637N;
            this.f637N = true;
            this.f642a = this.f646e.mo312b();
            if (this.f648g >= 0) {
                this.f646e.getClass();
                m333t(this.f648g, 0, false, true);
                this.f648g = -1;
                this.f649h = null;
                return;
            }
            if (z2) {
                requestLayout();
            } else {
                m328o();
            }
        }
    }

    public void setCurrentItem(int i2) {
        this.f662u = false;
        m333t(i2, 0, !this.f637N, false);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i2 + " too small; defaulting to 1");
            i2 = 1;
        }
        if (i2 != this.f663v) {
            this.f663v = i2;
            m328o();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(h hVar) {
    }

    public void setPageMargin(int i2) {
        int i3 = this.f653l;
        this.f653l = i2;
        int width = getWidth();
        m330q(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f654m = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i2) {
        if (this.f641R == i2) {
            return;
        }
        this.f641R = i2;
    }

    /* JADX INFO: renamed from: t */
    public final void m333t(int i2, int i3, boolean z2, boolean z3) {
        AbstractC0085a abstractC0085a = this.f646e;
        if (abstractC0085a == null || abstractC0085a.mo312b() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList<e> arrayList = this.f643b;
        if (!z3 && this.f647f == i2 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 >= this.f646e.mo312b()) {
            i2 = this.f646e.mo312b() - 1;
        }
        int i4 = this.f663v;
        int i5 = this.f647f;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                arrayList.get(i6).f671c = true;
            }
        }
        boolean z4 = this.f647f != i2;
        if (this.f637N) {
            this.f647f = i2;
            requestLayout();
        } else {
            m329p(i2);
            m332s(i2, i3, z2, z4);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f654m;
    }

    /* JADX INFO: renamed from: f.b$f */
    public static class f extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a */
        public boolean f674a;

        /* JADX INFO: renamed from: b */
        public final int f675b;

        /* JADX INFO: renamed from: c */
        public float f676c;

        /* JADX INFO: renamed from: d */
        public boolean f677d;

        public f() {
            super(-1, -1);
            this.f676c = 0.0f;
        }

        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f676c = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0086b.f621S);
            this.f675b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new f(getContext(), attributeSet);
    }
}
