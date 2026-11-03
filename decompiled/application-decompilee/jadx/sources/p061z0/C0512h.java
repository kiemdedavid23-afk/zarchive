package p061z0;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import java.util.Arrays;

/* JADX INFO: renamed from: z0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0512h {

    /* JADX INFO: renamed from: u */
    public static final a f2413u = new a();

    /* JADX INFO: renamed from: a */
    public int f2414a;

    /* JADX INFO: renamed from: b */
    public int f2415b;

    /* JADX INFO: renamed from: d */
    public float[] f2417d;

    /* JADX INFO: renamed from: e */
    public float[] f2418e;

    /* JADX INFO: renamed from: f */
    public float[] f2419f;

    /* JADX INFO: renamed from: g */
    public float[] f2420g;

    /* JADX INFO: renamed from: h */
    public int[] f2421h;

    /* JADX INFO: renamed from: i */
    public int[] f2422i;

    /* JADX INFO: renamed from: j */
    public int[] f2423j;

    /* JADX INFO: renamed from: k */
    public VelocityTracker f2424k;

    /* JADX INFO: renamed from: l */
    public final float f2425l;

    /* JADX INFO: renamed from: m */
    public float f2426m;

    /* JADX INFO: renamed from: n */
    public final int f2427n;

    /* JADX INFO: renamed from: o */
    public final Scroller f2428o;

    /* JADX INFO: renamed from: p */
    public final c f2429p;

    /* JADX INFO: renamed from: q */
    public View f2430q;

    /* JADX INFO: renamed from: r */
    public boolean f2431r;

    /* JADX INFO: renamed from: s */
    public final ViewGroup f2432s;

    /* JADX INFO: renamed from: c */
    public int f2416c = -1;

    /* JADX INFO: renamed from: t */
    public final b f2433t = new b();

    /* JADX INFO: renamed from: z0.h$a */
    public class a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* JADX INFO: renamed from: z0.h$b */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0512h.this.m1225o(0);
        }
    }

    /* JADX INFO: renamed from: z0.h$c */
    public static abstract class c {
        /* JADX INFO: renamed from: a */
        public abstract int mo228a(int i2);
    }

    public C0512h(Context context, ViewGroup viewGroup, SlidingUpPanelLayout.C0058b c0058b) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        this.f2432s = viewGroup;
        this.f2429p = c0058b;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f2427n = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f2415b = viewConfiguration.getScaledTouchSlop();
        this.f2425l = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f2426m = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f2428o = new Scroller(context, f2413u);
    }

    /* JADX INFO: renamed from: a */
    public final void m1211a() {
        m1212b();
        if (this.f2414a == 2) {
            Scroller scroller = this.f2428o;
            scroller.getCurrX();
            scroller.getCurrY();
            scroller.abortAnimation();
            scroller.getCurrX();
            int currY = scroller.getCurrY();
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            SlidingUpPanelLayout.m220b(slidingUpPanelLayout, currY);
            slidingUpPanelLayout.invalidate();
        }
        m1225o(0);
    }

    /* JADX INFO: renamed from: b */
    public final void m1212b() {
        this.f2416c = -1;
        float[] fArr = this.f2417d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f2418e, 0.0f);
            Arrays.fill(this.f2419f, 0.0f);
            Arrays.fill(this.f2420g, 0.0f);
            Arrays.fill(this.f2421h, 0);
            Arrays.fill(this.f2422i, 0);
            Arrays.fill(this.f2423j, 0);
        }
        VelocityTracker velocityTracker = this.f2424k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f2424k = null;
        }
    }

    /* JADX INFO: renamed from: c */
    public final boolean m1213c(float f2, float f3, int i2, int i3) {
        float fAbs = Math.abs(f2);
        float fAbs2 = Math.abs(f3);
        if ((this.f2421h[i2] & i3) != i3 || (0 & i3) == 0 || (this.f2423j[i2] & i3) == i3 || (this.f2422i[i2] & i3) == i3) {
            return false;
        }
        int i4 = this.f2415b;
        if (fAbs <= i4 && fAbs2 <= i4) {
            return false;
        }
        if (fAbs < fAbs2 * 0.5f) {
            this.f2429p.getClass();
        }
        return (this.f2422i[i2] & i3) == 0 && fAbs > ((float) this.f2415b);
    }

    /* JADX INFO: renamed from: d */
    public final boolean m1214d(View view, float f2) {
        if (view == null) {
            return false;
        }
        c cVar = this.f2429p;
        cVar.getClass();
        return (SlidingUpPanelLayout.this.f422n > 0) && Math.abs(f2) > ((float) this.f2415b);
    }

    /* JADX INFO: renamed from: e */
    public final void m1215e(int i2) {
        float[] fArr = this.f2417d;
        if (fArr == null) {
            return;
        }
        fArr[i2] = 0.0f;
        this.f2418e[i2] = 0.0f;
        this.f2419f[i2] = 0.0f;
        this.f2420g[i2] = 0.0f;
        this.f2421h[i2] = 0;
        this.f2422i[i2] = 0;
        this.f2423j[i2] = 0;
    }

    /* JADX INFO: renamed from: f */
    public final int m1216f(int i2, int i3, int i4) {
        if (i2 == 0) {
            return 0;
        }
        int width = this.f2432s.getWidth();
        float f2 = width / 2;
        float fSin = (((float) Math.sin((float) (((double) (Math.min(1.0f, Math.abs(i2) / width) - 0.5f)) * 0.4712389167638204d))) * f2) + f2;
        int iAbs = Math.abs(i3);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i2) / i4) + 1.0f) * 256.0f), 600);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0022  */
    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    /* JADX WARN: Code duplicated, block: B:17:0x0037  */
    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    /* JADX WARN: Code duplicated, block: B:20:0x0044  */
    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Code duplicated, block: B:24:0x0053  */
    /* JADX WARN: Code duplicated, block: B:26:0x0060  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    /* JADX WARN: Code duplicated, block: B:29:0x006b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0070  */
    /* JADX INFO: renamed from: g */
    public final void m1217g(float f2) {
        float f3;
        float f4;
        int iM221c;
        float f5;
        float f6;
        this.f2431r = true;
        View view = this.f2430q;
        SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
        if (slidingUpPanelLayout.f412d) {
            f2 = -f2;
        }
        if (f2 > 0.0f) {
            float f7 = slidingUpPanelLayout.f421m;
            float f8 = slidingUpPanelLayout.f423o;
            if (f7 <= f8) {
                iM221c = slidingUpPanelLayout.m221c(f8);
            } else if (f2 <= 0.0f && slidingUpPanelLayout.f421m > slidingUpPanelLayout.f423o) {
                iM221c = slidingUpPanelLayout.m221c(1.0f);
            } else if (f2 < 0.0f) {
                f5 = slidingUpPanelLayout.f421m;
                f6 = slidingUpPanelLayout.f423o;
                if (f5 >= f6) {
                    iM221c = slidingUpPanelLayout.m221c(f6);
                } else if (f2 < 0.0f || slidingUpPanelLayout.f421m >= slidingUpPanelLayout.f423o) {
                    f3 = slidingUpPanelLayout.f421m;
                    f4 = slidingUpPanelLayout.f423o;
                    if (f3 >= (f4 + 1.0f) / 2.0f) {
                        iM221c = slidingUpPanelLayout.m221c(1.0f);
                    } else if (f3 >= f4 / 2.0f) {
                        iM221c = slidingUpPanelLayout.m221c(f4);
                    } else {
                        iM221c = slidingUpPanelLayout.m221c(0.0f);
                    }
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            } else if (f2 < 0.0f) {
                f3 = slidingUpPanelLayout.f421m;
                f4 = slidingUpPanelLayout.f423o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(f4);
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            } else {
                f3 = slidingUpPanelLayout.f421m;
                f4 = slidingUpPanelLayout.f423o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(f4);
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            }
        } else if (f2 <= 0.0f) {
            if (f2 < 0.0f) {
                f5 = slidingUpPanelLayout.f421m;
                f6 = slidingUpPanelLayout.f423o;
                if (f5 >= f6) {
                    iM221c = slidingUpPanelLayout.m221c(f6);
                } else if (f2 < 0.0f) {
                    f3 = slidingUpPanelLayout.f421m;
                    f4 = slidingUpPanelLayout.f423o;
                    if (f3 >= (f4 + 1.0f) / 2.0f) {
                        iM221c = slidingUpPanelLayout.m221c(1.0f);
                    } else if (f3 >= f4 / 2.0f) {
                        iM221c = slidingUpPanelLayout.m221c(f4);
                    } else {
                        iM221c = slidingUpPanelLayout.m221c(0.0f);
                    }
                } else {
                    f3 = slidingUpPanelLayout.f421m;
                    f4 = slidingUpPanelLayout.f423o;
                    if (f3 >= (f4 + 1.0f) / 2.0f) {
                        iM221c = slidingUpPanelLayout.m221c(1.0f);
                    } else if (f3 >= f4 / 2.0f) {
                        iM221c = slidingUpPanelLayout.m221c(f4);
                    } else {
                        iM221c = slidingUpPanelLayout.m221c(0.0f);
                    }
                }
            } else if (f2 < 0.0f) {
                f3 = slidingUpPanelLayout.f421m;
                f4 = slidingUpPanelLayout.f423o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(f4);
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            } else {
                f3 = slidingUpPanelLayout.f421m;
                f4 = slidingUpPanelLayout.f423o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(f4);
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            }
        } else if (f2 < 0.0f) {
            f5 = slidingUpPanelLayout.f421m;
            f6 = slidingUpPanelLayout.f423o;
            if (f5 >= f6) {
                iM221c = slidingUpPanelLayout.m221c(f6);
            } else if (f2 < 0.0f) {
                f3 = slidingUpPanelLayout.f421m;
                f4 = slidingUpPanelLayout.f423o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(f4);
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            } else {
                f3 = slidingUpPanelLayout.f421m;
                f4 = slidingUpPanelLayout.f423o;
                if (f3 >= (f4 + 1.0f) / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(1.0f);
                } else if (f3 >= f4 / 2.0f) {
                    iM221c = slidingUpPanelLayout.m221c(f4);
                } else {
                    iM221c = slidingUpPanelLayout.m221c(0.0f);
                }
            }
        } else if (f2 < 0.0f) {
            f3 = slidingUpPanelLayout.f421m;
            f4 = slidingUpPanelLayout.f423o;
            if (f3 >= (f4 + 1.0f) / 2.0f) {
                iM221c = slidingUpPanelLayout.m221c(1.0f);
            } else if (f3 >= f4 / 2.0f) {
                iM221c = slidingUpPanelLayout.m221c(f4);
            } else {
                iM221c = slidingUpPanelLayout.m221c(0.0f);
            }
        } else {
            f3 = slidingUpPanelLayout.f421m;
            f4 = slidingUpPanelLayout.f423o;
            if (f3 >= (f4 + 1.0f) / 2.0f) {
                iM221c = slidingUpPanelLayout.m221c(1.0f);
            } else if (f3 >= f4 / 2.0f) {
                iM221c = slidingUpPanelLayout.m221c(f4);
            } else {
                iM221c = slidingUpPanelLayout.m221c(0.0f);
            }
        }
        C0512h c0512h = slidingUpPanelLayout.f432x;
        if (c0512h != null) {
            int left = view.getLeft();
            if (!c0512h.f2431r) {
                throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
            }
            c0512h.m1219i(left, iM221c, (int) c0512h.f2424k.getXVelocity(c0512h.f2416c), (int) c0512h.f2424k.getYVelocity(c0512h.f2416c));
        }
        slidingUpPanelLayout.invalidate();
        this.f2431r = false;
        if (this.f2414a == 1) {
            m1225o(0);
        }
    }

    /* JADX INFO: renamed from: h */
    public final View m1218h(int i2, int i3) {
        ViewGroup viewGroup = this.f2432s;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f2429p.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i2 >= childAt.getLeft() && i2 < childAt.getRight() && i3 >= childAt.getTop() && i3 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m1219i(int i2, int i3, int i4, int i5) {
        float f2;
        float f3;
        float f4;
        float f5;
        int left = this.f2430q.getLeft();
        int top = this.f2430q.getTop();
        int i6 = i2 - left;
        int i7 = i3 - top;
        Scroller scroller = this.f2428o;
        if (i6 == 0 && i7 == 0) {
            scroller.abortAnimation();
            m1225o(0);
            return false;
        }
        int i8 = (int) this.f2426m;
        int i9 = (int) this.f2425l;
        int iAbs = Math.abs(i4);
        if (iAbs < i8) {
            i4 = 0;
        } else if (iAbs > i9) {
            i4 = i4 > 0 ? i9 : -i9;
        }
        int i10 = (int) this.f2426m;
        int iAbs2 = Math.abs(i5);
        if (iAbs2 < i10) {
            i5 = 0;
        } else if (iAbs2 > i9) {
            i5 = i5 > 0 ? i9 : -i9;
        }
        int iAbs3 = Math.abs(i6);
        int iAbs4 = Math.abs(i7);
        int iAbs5 = Math.abs(i4);
        int iAbs6 = Math.abs(i5);
        int i11 = iAbs5 + iAbs6;
        int i12 = iAbs3 + iAbs4;
        if (i4 != 0) {
            f2 = iAbs5;
            f3 = i11;
        } else {
            f2 = iAbs3;
            f3 = i12;
        }
        float f6 = f2 / f3;
        if (i5 != 0) {
            f4 = iAbs6;
            f5 = i11;
        } else {
            f4 = iAbs4;
            f5 = i12;
        }
        float f7 = f4 / f5;
        c cVar = this.f2429p;
        cVar.getClass();
        scroller.startScroll(left, top, i6, i7, (int) ((m1216f(i7, i5, SlidingUpPanelLayout.this.f422n) * f7) + (m1216f(i6, i4, 0) * f6)));
        m1225o(2);
        return true;
    }

    /* JADX INFO: renamed from: j */
    public final void m1220j(MotionEvent motionEvent) {
        int i2;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            m1212b();
        }
        if (this.f2424k == null) {
            this.f2424k = VelocityTracker.obtain();
        }
        this.f2424k.addMovement(motionEvent);
        int i3 = 0;
        c cVar = this.f2429p;
        if (actionMasked == 0) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewM1218h = m1218h((int) x2, (int) y2);
            m1223m(x2, y2, pointerId);
            m1226p(viewM1218h, pointerId);
            if ((this.f2421h[pointerId] & 0) != 0) {
                cVar.getClass();
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f2414a == 1) {
                m1221k();
            }
            m1212b();
            return;
        }
        if (actionMasked == 2) {
            if (this.f2414a != 1) {
                int pointerCount = motionEvent.getPointerCount();
                while (i3 < pointerCount) {
                    int pointerId2 = motionEvent.getPointerId(i3);
                    float x3 = motionEvent.getX(i3);
                    float y3 = motionEvent.getY(i3);
                    float f2 = x3 - this.f2417d[pointerId2];
                    float f3 = y3 - this.f2418e[pointerId2];
                    m1222l(f2, f3, pointerId2);
                    if (this.f2414a != 1) {
                        View viewM1218h2 = m1218h((int) x3, (int) y3);
                        if (m1214d(viewM1218h2, f3) && m1226p(viewM1218h2, pointerId2)) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        break;
                    }
                }
                m1224n(motionEvent);
                return;
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f2416c);
            float x4 = motionEvent.getX(iFindPointerIndex);
            float y4 = motionEvent.getY(iFindPointerIndex);
            float[] fArr = this.f2419f;
            int i4 = this.f2416c;
            int i5 = (int) (x4 - fArr[i4]);
            int i6 = (int) (y4 - this.f2420g[i4]);
            this.f2430q.getLeft();
            int top = this.f2430q.getTop() + i6;
            int left = this.f2430q.getLeft();
            int top2 = this.f2430q.getTop();
            if (i5 != 0) {
                cVar.getClass();
                this.f2430q.offsetLeftAndRight(0 - left);
            }
            if (i6 != 0) {
                top = cVar.mo228a(top);
                this.f2430q.offsetTopAndBottom(top - top2);
            }
            if (i5 != 0 || i6 != 0) {
                SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
                SlidingUpPanelLayout.m220b(slidingUpPanelLayout, top);
                slidingUpPanelLayout.invalidate();
            }
            m1224n(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f2414a == 1) {
                m1217g(0.0f);
            }
            m1212b();
            return;
        }
        if (actionMasked != 5) {
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f2414a == 1 && pointerId3 == this.f2416c) {
                int pointerCount2 = motionEvent.getPointerCount();
                while (true) {
                    if (i3 >= pointerCount2) {
                        i2 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i3);
                    if (pointerId4 != this.f2416c) {
                        View viewM1218h3 = m1218h((int) motionEvent.getX(i3), (int) motionEvent.getY(i3));
                        View view = this.f2430q;
                        if (viewM1218h3 == view && m1226p(view, pointerId4)) {
                            i2 = this.f2416c;
                            break;
                        }
                    }
                    i3++;
                }
                if (i2 == -1) {
                    m1221k();
                }
            }
            m1215e(pointerId3);
            return;
        }
        int pointerId5 = motionEvent.getPointerId(actionIndex);
        float x5 = motionEvent.getX(actionIndex);
        float y5 = motionEvent.getY(actionIndex);
        m1223m(x5, y5, pointerId5);
        if (this.f2414a == 0) {
            m1226p(m1218h((int) x5, (int) y5), pointerId5);
            if ((this.f2421h[pointerId5] & 0) != 0) {
                cVar.getClass();
                return;
            }
            return;
        }
        int i7 = (int) x5;
        int i8 = (int) y5;
        View view2 = this.f2430q;
        if (view2 != null && i7 >= view2.getLeft() && i7 < view2.getRight() && i8 >= view2.getTop() && i8 < view2.getBottom()) {
            i3 = 1;
        }
        if (i3 != 0) {
            m1226p(this.f2430q, pointerId5);
        }
    }

    /* JADX INFO: renamed from: k */
    public final void m1221k() {
        VelocityTracker velocityTracker = this.f2424k;
        float f2 = this.f2425l;
        velocityTracker.computeCurrentVelocity(1000, f2);
        float xVelocity = this.f2424k.getXVelocity(this.f2416c);
        float f3 = this.f2426m;
        float fAbs = Math.abs(xVelocity);
        if (fAbs >= f3) {
            int i2 = (fAbs > f2 ? 1 : (fAbs == f2 ? 0 : -1));
        }
        float yVelocity = this.f2424k.getYVelocity(this.f2416c);
        float f4 = this.f2426m;
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 < f4) {
            yVelocity = 0.0f;
        } else if (fAbs2 > f2) {
            if (yVelocity <= 0.0f) {
                f2 = -f2;
            }
            yVelocity = f2;
        }
        m1217g(yVelocity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX INFO: renamed from: l */
    public final void m1222l(float f2, float f3, int i2) {
        int i3;
        boolean zM1213c = m1213c(f2, f3, i2, 1);
        ?? r1 = zM1213c;
        if (m1213c(f3, f2, i2, 4)) {
            r1 = (zM1213c ? 1 : 0) | 4;
        }
        ?? r2 = r1;
        if (m1213c(f2, f3, i2, 2)) {
            r2 = (r1 == true ? 1 : 0) | 2;
        }
        ?? r3 = r2;
        if (m1213c(f3, f2, i2, 8)) {
            i3 = (r2 == true ? 1 : 0) | 8;
        }
        if (r3 == 0) {
            r3 = i3;
            return;
        }
        r3 = i3;
        int[] iArr = this.f2422i;
        iArr[i2] = (iArr[i2] | r3) == true ? 1 : 0;
        this.f2429p.getClass();
    }

    /* JADX INFO: renamed from: m */
    public final void m1223m(float f2, float f3, int i2) {
        float[] fArr = this.f2417d;
        if (fArr == null || fArr.length <= i2) {
            int i3 = i2 + 1;
            float[] fArr2 = new float[i3];
            float[] fArr3 = new float[i3];
            float[] fArr4 = new float[i3];
            float[] fArr5 = new float[i3];
            int[] iArr = new int[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f2418e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f2419f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f2420g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f2421h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f2422i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f2423j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f2417d = fArr2;
            this.f2418e = fArr3;
            this.f2419f = fArr4;
            this.f2420g = fArr5;
            this.f2421h = iArr;
            this.f2422i = iArr2;
            this.f2423j = iArr3;
        }
        float[] fArr9 = this.f2417d;
        this.f2419f[i2] = f2;
        fArr9[i2] = f2;
        float[] fArr10 = this.f2418e;
        this.f2420g[i2] = f3;
        fArr10[i2] = f3;
        int[] iArr7 = this.f2421h;
        int i4 = (int) f2;
        int i5 = (int) f3;
        ViewGroup viewGroup = this.f2432s;
        int left = viewGroup.getLeft();
        int i6 = this.f2427n;
        int i7 = i4 < left + i6 ? 1 : 0;
        if (i5 < viewGroup.getTop() + i6) {
            i7 |= 4;
        }
        if (i4 > viewGroup.getRight() - i6) {
            i7 |= 2;
        }
        if (i5 > viewGroup.getBottom() - i6) {
            i7 |= 8;
        }
        iArr7[i2] = i7;
    }

    /* JADX INFO: renamed from: n */
    public final void m1224n(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i2 = 0; i2 < pointerCount; i2++) {
            int pointerId = motionEvent.getPointerId(i2);
            float x2 = motionEvent.getX(i2);
            float y2 = motionEvent.getY(i2);
            this.f2419f[pointerId] = x2;
            this.f2420g[pointerId] = y2;
        }
    }

    /* JADX INFO: renamed from: o */
    public final void m1225o(int i2) {
        this.f2432s.removeCallbacks(this.f2433t);
        if (this.f2414a != i2) {
            this.f2414a = i2;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            C0512h c0512h = slidingUpPanelLayout.f432x;
            if (c0512h != null && c0512h.f2414a == 0) {
                float fM222d = slidingUpPanelLayout.m222d(slidingUpPanelLayout.f417i.getTop());
                slidingUpPanelLayout.f421m = fM222d;
                if (fM222d == 1.0f) {
                    slidingUpPanelLayout.m227i();
                    slidingUpPanelLayout.setPanelStateInternal(SlidingUpPanelLayout.EnumC0061e.f439a);
                } else if (fM222d == 0.0f) {
                    slidingUpPanelLayout.setPanelStateInternal(SlidingUpPanelLayout.EnumC0061e.f440b);
                } else if (fM222d < 0.0f) {
                    slidingUpPanelLayout.setPanelStateInternal(SlidingUpPanelLayout.EnumC0061e.f442d);
                    slidingUpPanelLayout.f417i.setVisibility(4);
                } else {
                    slidingUpPanelLayout.m227i();
                    slidingUpPanelLayout.setPanelStateInternal(SlidingUpPanelLayout.EnumC0061e.f441c);
                }
            }
            if (this.f2414a == 0) {
                this.f2430q = null;
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public final boolean m1226p(View view, int i2) {
        if (view == this.f2430q && this.f2416c == i2) {
            return true;
        }
        if (view != null) {
            SlidingUpPanelLayout.C0058b c0058b = (SlidingUpPanelLayout.C0058b) this.f2429p;
            SlidingUpPanelLayout slidingUpPanelLayout = SlidingUpPanelLayout.this;
            if (!slidingUpPanelLayout.f425q && view == slidingUpPanelLayout.f417i) {
                this.f2416c = i2;
                ViewParent parent = view.getParent();
                ViewGroup viewGroup = this.f2432s;
                if (parent != viewGroup) {
                    throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
                }
                this.f2430q = view;
                this.f2416c = i2;
                SlidingUpPanelLayout slidingUpPanelLayout2 = SlidingUpPanelLayout.this;
                int childCount = slidingUpPanelLayout2.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = slidingUpPanelLayout2.getChildAt(i3);
                    if (childAt.getVisibility() == 4) {
                        childAt.setVisibility(0);
                    }
                }
                m1225o(1);
                return true;
            }
        }
        return false;
    }
}
