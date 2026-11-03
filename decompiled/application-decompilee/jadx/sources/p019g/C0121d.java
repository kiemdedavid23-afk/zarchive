package p019g;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageRegionDecoder;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p022h.C0140a;
import p022h.InterfaceC0141b;
import p022h.InterfaceC0142c;
import p022h.InterfaceC0143d;
import p033m0.C0181d;
import p039p0.C0226d;
import p039p0.C0227e;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZImageViewer;

/* JADX INFO: renamed from: g.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0121d extends View {

    /* JADX INFO: renamed from: q0 */
    public static final List<Integer> f866q0 = Arrays.asList(0, 90, 180, 270, -1);

    /* JADX INFO: renamed from: r0 */
    public static final List<Integer> f867r0 = Arrays.asList(1, 2, 3);

    /* JADX INFO: renamed from: s0 */
    public static final List<Integer> f868s0 = Arrays.asList(2, 1);

    /* JADX INFO: renamed from: t0 */
    public static final List<Integer> f869t0 = Arrays.asList(1, 2, 3);

    /* JADX INFO: renamed from: u0 */
    public static final List<Integer> f870u0 = Arrays.asList(2, 1, 3, 4);

    /* JADX INFO: renamed from: v0 */
    public static Bitmap.Config f871v0;

    /* JADX INFO: renamed from: A */
    public PointF f872A;

    /* JADX INFO: renamed from: B */
    public Float f873B;

    /* JADX INFO: renamed from: C */
    public PointF f874C;

    /* JADX INFO: renamed from: D */
    public PointF f875D;

    /* JADX INFO: renamed from: E */
    public int f876E;

    /* JADX INFO: renamed from: F */
    public int f877F;

    /* JADX INFO: renamed from: G */
    public int f878G;

    /* JADX INFO: renamed from: H */
    public boolean f879H;

    /* JADX INFO: renamed from: I */
    public boolean f880I;

    /* JADX INFO: renamed from: J */
    public boolean f881J;

    /* JADX INFO: renamed from: K */
    public int f882K;

    /* JADX INFO: renamed from: L */
    public GestureDetector f883L;

    /* JADX INFO: renamed from: M */
    public GestureDetector f884M;

    /* JADX INFO: renamed from: N */
    public InterfaceC0143d f885N;

    /* JADX INFO: renamed from: O */
    public final ReentrantReadWriteLock f886O;

    /* JADX INFO: renamed from: P */
    public InterfaceC0141b<? extends InterfaceC0142c> f887P;

    /* JADX INFO: renamed from: Q */
    public InterfaceC0141b<? extends InterfaceC0143d> f888Q;

    /* JADX INFO: renamed from: R */
    public PointF f889R;

    /* JADX INFO: renamed from: S */
    public float f890S;

    /* JADX INFO: renamed from: T */
    public final float f891T;

    /* JADX INFO: renamed from: U */
    public float f892U;

    /* JADX INFO: renamed from: V */
    public boolean f893V;

    /* JADX INFO: renamed from: W */
    public PointF f894W;

    /* JADX INFO: renamed from: a */
    public Bitmap f895a;

    /* JADX INFO: renamed from: a0 */
    public PointF f896a0;

    /* JADX INFO: renamed from: b */
    public boolean f897b;

    /* JADX INFO: renamed from: b0 */
    public PointF f898b0;

    /* JADX INFO: renamed from: c */
    public boolean f899c;

    /* JADX INFO: renamed from: c0 */
    public c f900c0;

    /* JADX INFO: renamed from: d */
    public C0118a f901d;

    /* JADX INFO: renamed from: d0 */
    public boolean f902d0;

    /* JADX INFO: renamed from: e */
    public int f903e;

    /* JADX INFO: renamed from: e0 */
    public boolean f904e0;

    /* JADX INFO: renamed from: f */
    public LinkedHashMap f905f;

    /* JADX INFO: renamed from: f0 */
    public g f906f0;

    /* JADX INFO: renamed from: g */
    public int f907g;

    /* JADX INFO: renamed from: g0 */
    public View.OnLongClickListener f908g0;

    /* JADX INFO: renamed from: h */
    public float f909h;

    /* JADX INFO: renamed from: h0 */
    public final Handler f910h0;

    /* JADX INFO: renamed from: i */
    public float f911i;

    /* JADX INFO: renamed from: i0 */
    public Paint f912i0;

    /* JADX INFO: renamed from: j */
    public int f913j;

    /* JADX INFO: renamed from: j0 */
    public Paint f914j0;

    /* JADX INFO: renamed from: k */
    public int f915k;

    /* JADX INFO: renamed from: k0 */
    public i f916k0;

    /* JADX INFO: renamed from: l */
    public int f917l;

    /* JADX INFO: renamed from: l0 */
    public Matrix f918l0;

    /* JADX INFO: renamed from: m */
    public int f919m;

    /* JADX INFO: renamed from: m0 */
    public RectF f920m0;

    /* JADX INFO: renamed from: n */
    public int f921n;

    /* JADX INFO: renamed from: n0 */
    public final float[] f922n0;

    /* JADX INFO: renamed from: o */
    public Executor f923o;

    /* JADX INFO: renamed from: o0 */
    public final float[] f924o0;

    /* JADX INFO: renamed from: p */
    public boolean f925p;

    /* JADX INFO: renamed from: p0 */
    public final float f926p0;

    /* JADX INFO: renamed from: q */
    public boolean f927q;

    /* JADX INFO: renamed from: r */
    public boolean f928r;

    /* JADX INFO: renamed from: s */
    public boolean f929s;

    /* JADX INFO: renamed from: t */
    public float f930t;

    /* JADX INFO: renamed from: u */
    public int f931u;

    /* JADX INFO: renamed from: v */
    public int f932v;

    /* JADX INFO: renamed from: w */
    public float f933w;

    /* JADX INFO: renamed from: x */
    public float f934x;

    /* JADX INFO: renamed from: y */
    public PointF f935y;

    /* JADX INFO: renamed from: z */
    public PointF f936z;

    /* JADX INFO: renamed from: g.d$a */
    public class a extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Context f937a;

        public a(Context context) {
            this.f937a = context;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            C0121d c0121d = C0121d.this;
            if (!c0121d.f928r || !c0121d.f902d0 || c0121d.f935y == null) {
                return onDoubleTapEvent(motionEvent);
            }
            c0121d.setGestureDetector(this.f937a);
            PointF pointF = null;
            if (!c0121d.f929s) {
                PointF pointF2 = new PointF(motionEvent.getX(), motionEvent.getY());
                float f2 = pointF2.x;
                float f3 = pointF2.y;
                PointF pointF3 = new PointF();
                PointF pointF4 = c0121d.f935y;
                if (pointF4 != null) {
                    float f4 = f2 - pointF4.x;
                    float f5 = c0121d.f933w;
                    pointF3.set(f4 / f5, (f3 - pointF4.y) / f5);
                    pointF = pointF3;
                }
                c0121d.m399i(pointF, new PointF(motionEvent.getX(), motionEvent.getY()));
                return true;
            }
            c0121d.f889R = new PointF(motionEvent.getX(), motionEvent.getY());
            PointF pointF5 = c0121d.f935y;
            c0121d.f936z = new PointF(pointF5.x, pointF5.y);
            c0121d.f934x = c0121d.f933w;
            c0121d.f881J = true;
            c0121d.f879H = true;
            c0121d.f892U = -1.0f;
            PointF pointF6 = c0121d.f889R;
            float f6 = pointF6.x;
            float f7 = pointF6.y;
            PointF pointF7 = new PointF();
            PointF pointF8 = c0121d.f935y;
            if (pointF8 != null) {
                float f8 = f6 - pointF8.x;
                float f9 = c0121d.f933w;
                pointF7.set(f8 / f9, (f7 - pointF8.y) / f9);
                pointF = pointF7;
            }
            c0121d.f896a0 = pointF;
            c0121d.f898b0 = new PointF(motionEvent.getX(), motionEvent.getY());
            PointF pointF9 = c0121d.f896a0;
            c0121d.f894W = new PointF(pointF9.x, pointF9.y);
            c0121d.f893V = false;
            return false;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            C0121d c0121d = C0121d.this;
            if (!c0121d.f927q || !c0121d.f902d0 || c0121d.f935y == null || motionEvent == null || motionEvent2 == null || ((Math.abs(motionEvent.getX() - motionEvent2.getX()) <= 50.0f && Math.abs(motionEvent.getY() - motionEvent2.getY()) <= 50.0f) || ((Math.abs(f2) <= 500.0f && Math.abs(f3) <= 500.0f) || c0121d.f879H))) {
                return super.onFling(motionEvent, motionEvent2, f2, f3);
            }
            PointF pointF = c0121d.f935y;
            PointF pointF2 = new PointF((f2 * 0.25f) + pointF.x, (f3 * 0.25f) + pointF.y);
            d dVar = c0121d.new d(new PointF(((c0121d.getWidth() / 2) - pointF2.x) / c0121d.f933w, ((c0121d.getHeight() / 2) - pointF2.y) / c0121d.f933w));
            if (!C0121d.f868s0.contains(1)) {
                throw new IllegalArgumentException("Unknown easing type: 1");
            }
            dVar.f955e = 1;
            dVar.f958h = false;
            dVar.f956f = 3;
            dVar.m415a();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            C0121d.this.performClick();
            return true;
        }
    }

    /* JADX INFO: renamed from: g.d$b */
    public class b extends GestureDetector.SimpleOnGestureListener {
        public b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            C0121d.this.performClick();
            return true;
        }
    }

    /* JADX INFO: renamed from: g.d$c */
    public static class c {

        /* JADX INFO: renamed from: a */
        public float f940a;

        /* JADX INFO: renamed from: b */
        public float f941b;

        /* JADX INFO: renamed from: c */
        public PointF f942c;

        /* JADX INFO: renamed from: d */
        public PointF f943d;

        /* JADX INFO: renamed from: e */
        public PointF f944e;

        /* JADX INFO: renamed from: f */
        public PointF f945f;

        /* JADX INFO: renamed from: g */
        public long f946g = 500;

        /* JADX INFO: renamed from: h */
        public boolean f947h = true;

        /* JADX INFO: renamed from: i */
        public int f948i = 2;

        /* JADX INFO: renamed from: j */
        public int f949j = 1;

        /* JADX INFO: renamed from: k */
        public long f950k = System.currentTimeMillis();
    }

    /* JADX INFO: renamed from: g.d$e */
    public static class e extends AsyncTask<Void, Void, Integer> {

        /* JADX INFO: renamed from: a */
        public final WeakReference<C0121d> f960a;

        /* JADX INFO: renamed from: b */
        public final WeakReference<Context> f961b;

        /* JADX INFO: renamed from: c */
        public final WeakReference<InterfaceC0141b<? extends InterfaceC0142c>> f962c;

        /* JADX INFO: renamed from: d */
        public final C0118a f963d;

        /* JADX INFO: renamed from: e */
        public final boolean f964e = false;

        /* JADX INFO: renamed from: f */
        public Bitmap f965f;

        /* JADX INFO: renamed from: g */
        public Exception f966g;

        public e(C0121d c0121d, Context context, InterfaceC0141b interfaceC0141b, C0118a c0118a) {
            this.f960a = new WeakReference<>(c0121d);
            this.f961b = new WeakReference<>(context);
            this.f962c = new WeakReference<>(interfaceC0141b);
            this.f963d = c0118a;
        }

        @Override // android.os.AsyncTask
        public final Integer doInBackground(Void[] voidArr) {
            C0118a c0118a = this.f963d;
            try {
                Context context = this.f961b.get();
                InterfaceC0141b<? extends InterfaceC0142c> interfaceC0141b = this.f962c.get();
                C0121d c0121d = this.f960a.get();
                if (context != null && interfaceC0141b != null && c0121d != null) {
                    List<Integer> list = C0121d.f866q0;
                    this.f965f = interfaceC0141b.mo504a().mo209a(context, c0118a);
                    return Integer.valueOf(C0121d.m391d(c0121d, context, c0118a));
                }
            } catch (Exception e2) {
                this.f966g = e2;
            } catch (OutOfMemoryError e3) {
                this.f966g = new RuntimeException(e3);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Integer num) {
            g gVar;
            Integer num2 = num;
            C0121d c0121d = this.f960a.get();
            if (c0121d != null) {
                Bitmap bitmap = this.f965f;
                if (bitmap == null || num2 == null) {
                    Exception exc = this.f966g;
                    if (exc == null || (gVar = c0121d.f906f0) == null || this.f964e) {
                        return;
                    }
                    ((ZImageViewer) gVar).m762b(c0121d, exc);
                    return;
                }
                if (!this.f964e) {
                    c0121d.m406q(bitmap, num2.intValue());
                    return;
                }
                synchronized (c0121d) {
                    if (c0121d.f895a == null && !c0121d.f904e0) {
                        c0121d.f895a = bitmap;
                        c0121d.f897b = true;
                        if (c0121d.m398h()) {
                            c0121d.invalidate();
                            c0121d.requestLayout();
                        }
                        return;
                    }
                    bitmap.recycle();
                }
            }
        }
    }

    /* JADX INFO: renamed from: g.d$f */
    public static class f extends AsyncTask<Void, Void, int[]> {

        /* JADX INFO: renamed from: a */
        public final WeakReference<C0121d> f967a;

        /* JADX INFO: renamed from: b */
        public final WeakReference<Context> f968b;

        /* JADX INFO: renamed from: c */
        public final WeakReference<InterfaceC0141b<? extends InterfaceC0143d>> f969c;

        /* JADX INFO: renamed from: d */
        public final C0118a f970d;

        /* JADX INFO: renamed from: e */
        public InterfaceC0143d f971e;

        public f(C0121d c0121d, Context context, InterfaceC0141b<? extends InterfaceC0143d> interfaceC0141b, C0118a c0118a) {
            this.f967a = new WeakReference<>(c0121d);
            this.f968b = new WeakReference<>(context);
            this.f969c = new WeakReference<>(interfaceC0141b);
            this.f970d = c0118a;
        }

        @Override // android.os.AsyncTask
        public final int[] doInBackground(Void[] voidArr) {
            try {
                Context context = this.f968b.get();
                InterfaceC0141b<? extends InterfaceC0143d> interfaceC0141b = this.f969c.get();
                C0121d c0121d = this.f967a.get();
                if (context == null || interfaceC0141b == null || c0121d == null) {
                    return null;
                }
                List<Integer> list = C0121d.f866q0;
                InterfaceC0143d interfaceC0143dMo504a = interfaceC0141b.mo504a();
                this.f971e = interfaceC0143dMo504a;
                interfaceC0143dMo504a.mo213d(context, this.f970d);
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(int[] iArr) {
            InterfaceC0143d interfaceC0143d;
            C0121d c0121d = this.f967a.get();
            if (c0121d == null || (interfaceC0143d = this.f971e) == null) {
                return;
            }
            synchronized (c0121d) {
                c0121d.f885N = interfaceC0143d;
                c0121d.setEnabled(true);
            }
        }
    }

    /* JADX INFO: renamed from: g.d$g */
    public interface g {
    }

    /* JADX INFO: renamed from: g.d$h */
    public interface h {
    }

    /* JADX INFO: renamed from: g.d$i */
    public static class i {

        /* JADX INFO: renamed from: a */
        public float f972a;

        /* JADX INFO: renamed from: b */
        public final PointF f973b;

        public i(float f2, PointF pointF) {
            this.f972a = f2;
            this.f973b = pointF;
        }
    }

    /* JADX INFO: renamed from: g.d$j */
    public static class j {

        /* JADX INFO: renamed from: a */
        public Rect f974a;

        /* JADX INFO: renamed from: b */
        public int f975b;

        /* JADX INFO: renamed from: c */
        public Bitmap f976c;

        /* JADX INFO: renamed from: d */
        public boolean f977d;

        /* JADX INFO: renamed from: e */
        public boolean f978e;

        /* JADX INFO: renamed from: f */
        public Rect f979f;

        /* JADX INFO: renamed from: g */
        public Rect f980g;
    }

    /* JADX INFO: renamed from: g.d$k */
    public static class k extends AsyncTask<Void, Void, Bitmap> {

        /* JADX INFO: renamed from: a */
        public final WeakReference<C0121d> f981a;

        /* JADX INFO: renamed from: b */
        public final WeakReference<InterfaceC0143d> f982b;

        /* JADX INFO: renamed from: c */
        public final WeakReference<j> f983c;

        /* JADX INFO: renamed from: d */
        public Exception f984d;

        public k(C0121d c0121d, InterfaceC0143d interfaceC0143d, j jVar) {
            this.f981a = new WeakReference<>(c0121d);
            this.f982b = new WeakReference<>(interfaceC0143d);
            this.f983c = new WeakReference<>(jVar);
            jVar.f977d = true;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x006d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:23:0x006f A[Catch: OutOfMemoryError -> 0x0072, Exception -> 0x007b, TRY_LEAVE, TryCatch #3 {Exception -> 0x007b, OutOfMemoryError -> 0x0072, blocks: (B:3:0x0002, B:7:0x0021, B:9:0x0029, B:11:0x002d, B:15:0x0050, B:18:0x005a, B:20:0x0063, B:21:0x006c, B:23:0x006f), top: B:32:0x0002 }] */
        @Override // android.os.AsyncTask
        public final Bitmap doInBackground(Void[] voidArr) {
            try {
                C0121d c0121d = this.f981a.get();
                InterfaceC0143d interfaceC0143d = this.f982b.get();
                j jVar = this.f983c.get();
                if (interfaceC0143d != null && jVar != null && c0121d != null) {
                    ReentrantReadWriteLock reentrantReadWriteLock = c0121d.f886O;
                    if (interfaceC0143d.mo210a() && jVar.f978e) {
                        List<Integer> list = C0121d.f866q0;
                        Objects.toString(jVar.f974a);
                        reentrantReadWriteLock.readLock().lock();
                        try {
                            if (interfaceC0143d.mo210a()) {
                                C0121d.m392e(c0121d, jVar.f974a, jVar.f980g);
                                return interfaceC0143d.mo211b(jVar.f975b, jVar.f980g);
                            }
                            jVar.f977d = false;
                        } finally {
                            c0121d.f886O.readLock().unlock();
                        }
                    } else if (jVar != null) {
                        jVar.f977d = false;
                    }
                } else if (jVar != null) {
                    jVar.f977d = false;
                }
            } catch (Exception e2) {
                this.f984d = e2;
            } catch (OutOfMemoryError e3) {
                this.f984d = new RuntimeException(e3);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2;
            Bitmap bitmap3 = bitmap;
            C0121d c0121d = this.f981a.get();
            j jVar = this.f983c.get();
            if (c0121d == null || jVar == null) {
                return;
            }
            if (bitmap3 == null) {
                Exception exc = this.f984d;
                if (exc == null || c0121d.f906f0 == null) {
                    return;
                }
                ZApp.m726j("Failed to load tile: " + exc.getMessage());
                return;
            }
            jVar.f976c = bitmap3;
            jVar.f977d = false;
            synchronized (c0121d) {
                c0121d.m398h();
                c0121d.m397g();
                if (c0121d.m404o() && (bitmap2 = c0121d.f895a) != null) {
                    if (!c0121d.f899c) {
                        bitmap2.recycle();
                    }
                    c0121d.f895a = null;
                    c0121d.f897b = false;
                    c0121d.f899c = false;
                }
                c0121d.invalidate();
            }
        }
    }

    /* JADX INFO: renamed from: g.d$l */
    public static class l extends AsyncTask<Void, Void, int[]> {

        /* JADX INFO: renamed from: a */
        public final WeakReference<C0121d> f985a;

        /* JADX INFO: renamed from: b */
        public final WeakReference<Context> f986b;

        /* JADX INFO: renamed from: c */
        public final WeakReference<InterfaceC0141b<? extends InterfaceC0143d>> f987c;

        /* JADX INFO: renamed from: d */
        public final C0118a f988d;

        /* JADX INFO: renamed from: e */
        public InterfaceC0143d f989e;

        /* JADX INFO: renamed from: f */
        public Exception f990f;

        public l(C0121d c0121d, Context context, InterfaceC0141b<? extends InterfaceC0143d> interfaceC0141b, C0118a c0118a) {
            this.f985a = new WeakReference<>(c0121d);
            this.f986b = new WeakReference<>(context);
            this.f987c = new WeakReference<>(interfaceC0141b);
            this.f988d = c0118a;
        }

        @Override // android.os.AsyncTask
        public final int[] doInBackground(Void[] voidArr) {
            C0118a c0118a = this.f988d;
            try {
                Context context = this.f986b.get();
                InterfaceC0141b<? extends InterfaceC0143d> interfaceC0141b = this.f987c.get();
                C0121d c0121d = this.f985a.get();
                if (context != null && interfaceC0141b != null && c0121d != null) {
                    int iM391d = C0121d.m391d(c0121d, context, c0118a);
                    InterfaceC0143d interfaceC0143dMo504a = interfaceC0141b.mo504a();
                    this.f989e = interfaceC0143dMo504a;
                    Point pointMo213d = interfaceC0143dMo504a.mo213d(context, c0118a);
                    return new int[]{pointMo213d.x, pointMo213d.y, iM391d};
                }
            } catch (Exception e2) {
                this.f990f = e2;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(int[] iArr) {
            g gVar;
            int i2;
            int i3;
            int i4;
            int[] iArr2 = iArr;
            C0121d c0121d = this.f985a.get();
            if (c0121d != null) {
                InterfaceC0143d interfaceC0143d = this.f989e;
                if (interfaceC0143d == null || iArr2 == null || iArr2.length != 3) {
                    Exception exc = this.f990f;
                    if (exc == null || (gVar = c0121d.f906f0) == null) {
                        return;
                    }
                    ((ZImageViewer) gVar).m762b(c0121d, exc);
                    return;
                }
                int i5 = iArr2[0];
                int i6 = iArr2[1];
                int i7 = iArr2[2];
                synchronized (c0121d) {
                    int i8 = c0121d.f876E;
                    if (i8 > 0 && (i4 = c0121d.f877F) > 0 && (i8 != i5 || i4 != i6)) {
                        c0121d.m409t(false);
                        Bitmap bitmap = c0121d.f895a;
                        if (bitmap != null) {
                            if (!c0121d.f899c) {
                                bitmap.recycle();
                            }
                            c0121d.f895a = null;
                            c0121d.f897b = false;
                            c0121d.f899c = false;
                        }
                    }
                    c0121d.f885N = interfaceC0143d;
                    c0121d.f876E = i5;
                    c0121d.f877F = i6;
                    c0121d.f878G = i7;
                    c0121d.m398h();
                    if (!c0121d.m397g() && (i2 = c0121d.f919m) > 0 && i2 != Integer.MAX_VALUE && (i3 = c0121d.f921n) > 0 && i3 != Integer.MAX_VALUE && c0121d.getWidth() > 0 && c0121d.getHeight() > 0) {
                        c0121d.m402m(new Point(c0121d.f919m, c0121d.f921n));
                    }
                    c0121d.invalidate();
                    c0121d.requestLayout();
                }
            }
        }
    }

    public C0121d(Context context) {
        super(context, null);
        this.f907g = 0;
        this.f909h = 2.0f;
        this.f911i = m405p();
        this.f913j = -1;
        this.f915k = 1;
        this.f917l = 1;
        this.f919m = Integer.MAX_VALUE;
        this.f921n = Integer.MAX_VALUE;
        this.f923o = AsyncTask.THREAD_POOL_EXECUTOR;
        this.f925p = true;
        this.f927q = true;
        this.f928r = true;
        this.f929s = true;
        this.f930t = 1.0f;
        this.f931u = 1;
        this.f932v = 500;
        this.f886O = new ReentrantReadWriteLock(true);
        this.f887P = new C0140a(SkiaImageDecoder.class);
        this.f888Q = new C0140a(SkiaImageRegionDecoder.class);
        this.f922n0 = new float[8];
        this.f924o0 = new float[8];
        this.f926p0 = getResources().getDisplayMetrics().density;
        setMinimumDpi(160);
        setDoubleTapZoomDpi(160);
        setMinimumTileDpi(320);
        setGestureDetector(context);
        this.f910h0 = new Handler(new C0120c(this));
        this.f891T = TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0041 A[DONT_GENERATE, PHI: r0 r8
      0x0041: PHI (r0v5 int) = (r0v0 int), (r0v6 int) binds: [B:20:0x003f, B:14:0x0035] A[DONT_GENERATE, DONT_INLINE]
      0x0041: PHI (r8v7 android.database.Cursor) = (r8v6 android.database.Cursor), (r8v8 android.database.Cursor) binds: [B:20:0x003f, B:14:0x0035] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: d */
    public static int m391d(C0121d c0121d, Context context, C0118a c0118a) {
        C0226d c0226d;
        int iM647h = 0;
        if (c0118a.f859a != null) {
            Cursor cursorQuery = null;
            try {
                cursorQuery = context.getContentResolver().query(c0118a.f859a, new String[]{"orientation"}, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    int i2 = cursorQuery.getInt(0);
                    if (f866q0.contains(Integer.valueOf(i2)) && i2 != -1) {
                        iM647h = i2;
                    }
                }
            } catch (Exception unused) {
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } else {
            ParcelFileDescriptor parcelFileDescriptor = c0118a.f861c;
            String str = c0118a.f860b;
            if (str != null || parcelFileDescriptor != null) {
                try {
                    if (parcelFileDescriptor == null) {
                        c0226d = new C0226d(str);
                    } else if (Build.VERSION.SDK_INT >= 24) {
                        try {
                            Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                        } catch (Exception unused2) {
                        }
                        int i3 = C0226d.f1273b;
                        FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                        c0226d = Build.VERSION.SDK_INT < 28 ? new C0226d(new FileInputStream(fileDescriptor)) : new C0226d(fileDescriptor);
                    }
                    iM647h = C0227e.m647h(c0226d);
                } catch (Exception unused3) {
                }
                if (parcelFileDescriptor != null) {
                    try {
                        Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                    } catch (Exception unused4) {
                    }
                }
            }
        }
        return iM647h;
    }

    /* JADX INFO: renamed from: e */
    public static void m392e(C0121d c0121d, Rect rect, Rect rect2) {
        if (c0121d.getRequiredRotation() == 0) {
            rect2.set(rect);
            return;
        }
        if (c0121d.getRequiredRotation() == 90) {
            int i2 = rect.top;
            int i3 = c0121d.f877F;
            rect2.set(i2, i3 - rect.right, rect.bottom, i3 - rect.left);
        } else if (c0121d.getRequiredRotation() != 180) {
            int i4 = c0121d.f876E;
            rect2.set(i4 - rect.bottom, rect.left, i4 - rect.top, rect.right);
        } else {
            int i5 = c0121d.f876E;
            int i6 = i5 - rect.right;
            int i7 = c0121d.f877F;
            rect2.set(i6, i7 - rect.bottom, i5 - rect.left, i7 - rect.top);
        }
    }

    public static Bitmap.Config getPreferredBitmapConfig() {
        return f871v0;
    }

    private int getRequiredRotation() {
        int i2 = this.f907g;
        return i2 == -1 ? this.f878G : i2;
    }

    /* JADX INFO: renamed from: j */
    public static float m393j(int i2, long j2, float f2, float f3, long j3) {
        float f4;
        if (i2 == 1) {
            float f5 = j2 / j3;
            return ((f5 - 2.0f) * (-f3) * f5) + f2;
        }
        if (i2 != 2) {
            throw new IllegalStateException("Unexpected easing type: " + i2);
        }
        float f6 = j2 / (j3 / 2.0f);
        if (f6 < 1.0f) {
            f4 = (f3 / 2.0f) * f6 * f6;
        } else {
            float f7 = f6 - 1.0f;
            f4 = (((f7 - 2.0f) * f7) - 1.0f) * ((-f3) / 2.0f);
        }
        return f4 + f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setGestureDetector(Context context) {
        this.f883L = new GestureDetector(context, new a(context));
        this.f884M = new GestureDetector(context, new b());
    }

    public static void setPreferredBitmapConfig(Bitmap.Config config) {
        f871v0 = config;
    }

    /* JADX INFO: renamed from: x */
    public static void m394x(float[] fArr, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        fArr[3] = f5;
        fArr[4] = f6;
        fArr[5] = f7;
        fArr[6] = f8;
        fArr[7] = f9;
    }

    /* JADX INFO: renamed from: A */
    public final PointF m395A(float f2, float f3, float f4) {
        int width = (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2) + getPaddingLeft();
        int height = (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2) + getPaddingTop();
        if (this.f916k0 == null) {
            this.f916k0 = new i(0.0f, new PointF(0.0f, 0.0f));
        }
        i iVar = this.f916k0;
        iVar.f972a = f4;
        iVar.f973b.set(width - (f2 * f4), height - (f3 * f4));
        m401l(true, this.f916k0);
        return this.f916k0.f973b;
    }

    /* JADX INFO: renamed from: f */
    public final int m396f(float f2) {
        if (this.f913j > 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            f2 *= this.f913j / ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f);
        }
        int iM411v = (int) (m411v() * f2);
        int iM410u = (int) (m410u() * f2);
        if (iM411v == 0 || iM410u == 0) {
            return 32;
        }
        int i2 = 1;
        int iMin = (m410u() > iM410u || m411v() > iM411v) ? Math.min(Math.round(m410u() / iM410u), Math.round(m411v() / iM411v)) : 1;
        while (true) {
            int i3 = i2 * 2;
            if (i3 >= iMin) {
                return i2;
            }
            i2 = i3;
        }
    }

    /* JADX INFO: renamed from: g */
    public final boolean m397g() {
        int sHeight;
        int sWidth;
        boolean zM404o = m404o();
        if (!this.f904e0 && zM404o) {
            m407r();
            this.f904e0 = true;
            g gVar = this.f906f0;
            if (gVar != null) {
                ZImageViewer zImageViewer = (ZImageViewer) gVar;
                if (getOrientation() == 0 || getOrientation() == 270) {
                    sHeight = getSHeight();
                    sWidth = getSWidth();
                } else {
                    sWidth = getSHeight();
                    sHeight = getSWidth();
                }
                int measuredWidth = zImageViewer.f1405a.getMeasuredWidth();
                if (sWidth * 3 < measuredWidth) {
                    float f2 = measuredWidth;
                    float f3 = sWidth;
                    setMaxScale((2.0f * f2) / f3);
                    setDoubleTapZoomScale(f2 / f3);
                    setMinimumScaleType(3);
                    setMinScale(f2 / (sWidth * 4));
                    float minScale = getMinScale();
                    PointF center = getCenter();
                    this.f900c0 = null;
                    this.f873B = Float.valueOf(minScale);
                    this.f874C = center;
                    this.f875D = center;
                    invalidate();
                } else {
                    float measuredHeight = (zImageViewer.f1405a.getMeasuredHeight() * 2.0f) / (sWidth + sHeight);
                    setMaxScale(8.0f * measuredHeight);
                    if (sWidth < sHeight) {
                        measuredHeight *= 1.5f;
                    }
                    setDoubleTapZoomScale(measuredHeight);
                    setMinimumScaleType(1);
                }
                FrameLayout frameLayout = (FrameLayout) getTag();
                if (frameLayout != null) {
                    frameLayout.removeViewAt(1);
                }
            }
        }
        return zM404o;
    }

    public final int getAppliedOrientation() {
        return getRequiredRotation();
    }

    public final PointF getCenter() {
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        PointF pointF = new PointF();
        PointF pointF2 = this.f935y;
        if (pointF2 == null) {
            return null;
        }
        float f2 = width - pointF2.x;
        float f3 = this.f933w;
        pointF.set(f2 / f3, (height - pointF2.y) / f3);
        return pointF;
    }

    public float getMaxScale() {
        return this.f909h;
    }

    public final float getMinScale() {
        return m405p();
    }

    public final int getOrientation() {
        return this.f907g;
    }

    public final int getSHeight() {
        return this.f877F;
    }

    public final int getSWidth() {
        return this.f876E;
    }

    public final float getScale() {
        return this.f933w;
    }

    public final C0119b getState() {
        if (this.f935y == null || this.f876E <= 0 || this.f877F <= 0) {
            return null;
        }
        return new C0119b(getScale(), getCenter(), getOrientation());
    }

    /* JADX INFO: renamed from: h */
    public final boolean m398h() {
        boolean z2 = getWidth() > 0 && getHeight() > 0 && this.f876E > 0 && this.f877F > 0 && (this.f895a != null || m404o());
        if (!this.f902d0 && z2) {
            m407r();
            this.f902d0 = true;
            g gVar = this.f906f0;
            if (gVar != null) {
                gVar.getClass();
            }
        }
        return z2;
    }

    /* JADX INFO: renamed from: i */
    public final void m399i(PointF pointF, PointF pointF2) {
        if (!this.f927q) {
            PointF pointF3 = this.f875D;
            if (pointF3 != null) {
                pointF.x = pointF3.x;
                pointF.y = pointF3.y;
            } else {
                pointF.x = m411v() / 2;
                pointF.y = m410u() / 2;
            }
        }
        float fMin = Math.min(this.f909h, this.f930t);
        float f2 = this.f933w;
        boolean z2 = ((double) f2) <= ((double) fMin) * 0.9d || f2 == this.f911i;
        if (!z2) {
            fMin = m405p();
        }
        int i2 = this.f931u;
        if (i2 == 3) {
            this.f900c0 = null;
            this.f873B = Float.valueOf(fMin);
            this.f874C = pointF;
            this.f875D = pointF;
            invalidate();
        } else if (i2 == 2 || !z2 || !this.f927q) {
            d dVar = new d(fMin, pointF);
            dVar.f957g = false;
            dVar.f954d = this.f932v;
            dVar.f956f = 4;
            dVar.m415a();
        } else if (i2 == 1) {
            d dVar2 = new d(fMin, pointF, pointF2);
            dVar2.f957g = false;
            dVar2.f954d = this.f932v;
            dVar2.f956f = 4;
            dVar2.m415a();
        }
        invalidate();
    }

    /* JADX INFO: renamed from: k */
    public final void m400k(boolean z2) {
        boolean z3;
        if (this.f935y == null) {
            this.f935y = new PointF(0.0f, 0.0f);
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.f916k0 == null) {
            this.f916k0 = new i(0.0f, new PointF(0.0f, 0.0f));
        }
        i iVar = this.f916k0;
        iVar.f972a = this.f933w;
        iVar.f973b.set(this.f935y);
        m401l(z2, this.f916k0);
        i iVar2 = this.f916k0;
        this.f933w = iVar2.f972a;
        this.f935y.set(iVar2.f973b);
        if (!z3 || this.f917l == 4) {
            return;
        }
        this.f935y.set(m395A(m411v() / 2, m410u() / 2, this.f933w));
    }

    /* JADX INFO: renamed from: l */
    public final void m401l(boolean z2, i iVar) {
        float paddingLeft;
        float fMax;
        int iMax;
        float fMax2;
        if (this.f915k == 2 && this.f902d0) {
            z2 = false;
        }
        PointF pointF = iVar.f973b;
        float fMin = Math.min(this.f909h, Math.max(m405p(), iVar.f972a));
        float fM411v = m411v() * fMin;
        float fM410u = m410u() * fMin;
        if (this.f915k == 3 && this.f902d0) {
            pointF.x = Math.max(pointF.x, (getWidth() / 2) - fM411v);
            pointF.y = Math.max(pointF.y, (getHeight() / 2) - fM410u);
        } else if (z2) {
            pointF.x = Math.max(pointF.x, getWidth() - fM411v);
            pointF.y = Math.max(pointF.y, getHeight() - fM410u);
        } else {
            pointF.x = Math.max(pointF.x, -fM411v);
            pointF.y = Math.max(pointF.y, -fM410u);
        }
        float paddingTop = 0.5f;
        if (getPaddingLeft() > 0 || getPaddingRight() > 0) {
            paddingLeft = getPaddingLeft() / (getPaddingRight() + getPaddingLeft());
        } else {
            paddingLeft = 0.5f;
        }
        if (getPaddingTop() > 0 || getPaddingBottom() > 0) {
            paddingTop = getPaddingTop() / (getPaddingBottom() + getPaddingTop());
        }
        if (this.f915k != 3 || !this.f902d0) {
            if (z2) {
                fMax = Math.max(0.0f, (getWidth() - fM411v) * paddingLeft);
                fMax2 = Math.max(0.0f, (getHeight() - fM410u) * paddingTop);
            } else {
                fMax = Math.max(0, getWidth());
                iMax = Math.max(0, getHeight());
            }
            pointF.x = Math.min(pointF.x, fMax);
            pointF.y = Math.min(pointF.y, fMax2);
            iVar.f972a = fMin;
        }
        fMax = Math.max(0, getWidth() / 2);
        iMax = Math.max(0, getHeight() / 2);
        fMax2 = iMax;
        pointF.x = Math.min(pointF.x, fMax);
        pointF.y = Math.min(pointF.y, fMax2);
        iVar.f972a = fMin;
    }

    /* JADX INFO: renamed from: m */
    public final synchronized void m402m(Point point) {
        i iVar = new i(0.0f, new PointF(0.0f, 0.0f));
        this.f916k0 = iVar;
        m401l(true, iVar);
        int iM396f = m396f(this.f916k0.f972a);
        this.f903e = iM396f;
        if (iM396f > 1) {
            this.f903e = iM396f / 2;
        }
        if (this.f903e != 1 || m411v() >= point.x || m410u() >= point.y) {
            m403n(point);
            Iterator it = ((List) this.f905f.get(Integer.valueOf(this.f903e))).iterator();
            while (it.hasNext()) {
                new k(this, this.f885N, (j) it.next()).executeOnExecutor(this.f923o, new Void[0]);
            }
            m408s(true);
        } else {
            this.f885N.mo212c();
            this.f885N = null;
            new e(this, getContext(), this.f887P, this.f901d).executeOnExecutor(this.f923o, new Void[0]);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: n */
    public final void m403n(Point point) {
        this.f905f = new LinkedHashMap();
        int i2 = this.f903e;
        int i3 = 1;
        int i4 = 1;
        int i5 = 1;
        while (true) {
            int iM411v = m411v() / i4;
            int iM410u = m410u() / i5;
            int i6 = iM411v / i2;
            int i7 = iM410u / i2;
            while (true) {
                if (i6 + i4 + i3 <= point.x && (i6 <= ((double) getWidth()) * 1.25d || i2 >= this.f903e)) {
                    break;
                }
                i4++;
                iM411v = m411v() / i4;
                i6 = iM411v / i2;
            }
            while (true) {
                if (i7 + i5 + i3 <= point.y && (i7 <= ((double) getHeight()) * 1.25d || i2 >= this.f903e)) {
                    break;
                }
                i5++;
                iM410u = m410u() / i5;
                i7 = iM410u / i2;
            }
            ArrayList arrayList = new ArrayList(i4 * i5);
            int i8 = 0;
            while (i8 < i4) {
                int i9 = 0;
                while (i9 < i5) {
                    j jVar = new j();
                    jVar.f975b = i2;
                    jVar.f978e = i2 == this.f903e ? i3 : 0;
                    jVar.f974a = new Rect(i8 * iM411v, i9 * iM410u, i8 == i4 + (-1) ? m411v() : (i8 + 1) * iM411v, i9 == i5 + (-1) ? m410u() : (i9 + 1) * iM410u);
                    jVar.f979f = new Rect(0, 0, 0, 0);
                    jVar.f980g = new Rect(jVar.f974a);
                    arrayList.add(jVar);
                    i9++;
                    i3 = 1;
                }
                i8++;
                i3 = 1;
            }
            this.f905f.put(Integer.valueOf(i2), arrayList);
            i3 = 1;
            if (i2 == 1) {
                return;
            } else {
                i2 /= 2;
            }
        }
    }

    /* JADX INFO: renamed from: o */
    public final boolean m404o() {
        boolean z2 = true;
        if (this.f895a != null && !this.f897b) {
            return true;
        }
        LinkedHashMap linkedHashMap = this.f905f;
        if (linkedHashMap == null) {
            return false;
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((Integer) entry.getKey()).intValue() == this.f903e) {
                for (j jVar : (List) entry.getValue()) {
                    if (jVar.f977d || jVar.f976c == null) {
                        z2 = false;
                    }
                }
            }
        }
        return z2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0108  */
    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float height;
        boolean z2;
        super.onDraw(canvas);
        if (this.f912i0 == null) {
            Paint paint = new Paint();
            this.f912i0 = paint;
            paint.setAntiAlias(true);
            this.f912i0.setFilterBitmap(true);
            this.f912i0.setDither(true);
        }
        if (this.f876E == 0 || this.f877F == 0 || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.f905f == null && this.f885N != null) {
            m402m(new Point(Math.min(canvas.getMaximumBitmapWidth(), this.f919m), Math.min(canvas.getMaximumBitmapHeight(), this.f921n)));
        }
        if (m398h()) {
            m407r();
            c cVar = this.f900c0;
            boolean z3 = false;
            if (cVar != null && cVar.f944e != null) {
                if (this.f872A == null) {
                    this.f872A = new PointF(0.0f, 0.0f);
                }
                this.f872A.set(this.f935y);
                long jCurrentTimeMillis = System.currentTimeMillis();
                c cVar2 = this.f900c0;
                long j2 = jCurrentTimeMillis - cVar2.f950k;
                long j3 = cVar2.f946g;
                boolean z4 = j2 > j3;
                long jMin = Math.min(j2, j3);
                c cVar3 = this.f900c0;
                int i2 = cVar3.f948i;
                float f2 = cVar3.f940a;
                this.f933w = m393j(i2, jMin, f2, cVar3.f941b - f2, cVar3.f946g);
                c cVar4 = this.f900c0;
                int i3 = cVar4.f948i;
                float f3 = cVar4.f944e.x;
                float fM393j = m393j(i3, jMin, f3, cVar4.f945f.x - f3, cVar4.f946g);
                c cVar5 = this.f900c0;
                int i4 = cVar5.f948i;
                float f4 = cVar5.f944e.y;
                float fM393j2 = m393j(i4, jMin, f4, cVar5.f945f.y - f4, cVar5.f946g);
                this.f935y.x -= m413y(this.f900c0.f943d.x) - fM393j;
                this.f935y.y -= m414z(this.f900c0.f943d.y) - fM393j2;
                if (z4) {
                    z2 = true;
                } else {
                    c cVar6 = this.f900c0;
                    if (cVar6.f940a == cVar6.f941b) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                m400k(z2);
                int i5 = this.f900c0.f949j;
                m408s(z4);
                if (z4) {
                    this.f900c0.getClass();
                    this.f900c0 = null;
                }
                invalidate();
            }
            if (this.f905f == null || !m404o()) {
                Bitmap bitmap = this.f895a;
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                float width = this.f933w;
                if (this.f897b) {
                    width *= this.f876E / this.f895a.getWidth();
                    height = this.f933w * (this.f877F / this.f895a.getHeight());
                } else {
                    height = width;
                }
                if (this.f918l0 == null) {
                    this.f918l0 = new Matrix();
                }
                this.f918l0.reset();
                this.f918l0.postScale(width, height);
                this.f918l0.postRotate(getRequiredRotation());
                Matrix matrix = this.f918l0;
                PointF pointF = this.f935y;
                matrix.postTranslate(pointF.x, pointF.y);
                if (getRequiredRotation() == 180) {
                    Matrix matrix2 = this.f918l0;
                    float f5 = this.f933w;
                    matrix2.postTranslate(this.f876E * f5, f5 * this.f877F);
                } else if (getRequiredRotation() == 90) {
                    this.f918l0.postTranslate(this.f933w * this.f877F, 0.0f);
                } else if (getRequiredRotation() == 270) {
                    this.f918l0.postTranslate(0.0f, this.f933w * this.f876E);
                }
                if (this.f914j0 != null) {
                    if (this.f920m0 == null) {
                        this.f920m0 = new RectF();
                    }
                    this.f920m0.set(0.0f, 0.0f, this.f897b ? this.f895a.getWidth() : this.f876E, this.f897b ? this.f895a.getHeight() : this.f877F);
                    this.f918l0.mapRect(this.f920m0);
                    canvas.drawRect(this.f920m0, this.f914j0);
                }
                canvas.drawBitmap(this.f895a, this.f918l0, this.f912i0);
                return;
            }
            int iMin = Math.min(this.f903e, m396f(this.f933w));
            for (Map.Entry entry : this.f905f.entrySet()) {
                if (((Integer) entry.getKey()).intValue() == iMin) {
                    for (j jVar : (List) entry.getValue()) {
                        if (jVar.f978e && (jVar.f977d || jVar.f976c == null)) {
                            z3 = true;
                        }
                    }
                }
            }
            for (Map.Entry entry2 : this.f905f.entrySet()) {
                if (((Integer) entry2.getKey()).intValue() == iMin || z3) {
                    for (j jVar2 : (List) entry2.getValue()) {
                        Rect rect = jVar2.f974a;
                        jVar2.f979f.set((int) m413y(rect.left), (int) m414z(rect.top), (int) m413y(rect.right), (int) m414z(rect.bottom));
                        if (!jVar2.f977d && jVar2.f976c != null) {
                            Paint paint2 = this.f914j0;
                            if (paint2 != null) {
                                canvas.drawRect(jVar2.f979f, paint2);
                            }
                            if (this.f918l0 == null) {
                                this.f918l0 = new Matrix();
                            }
                            this.f918l0.reset();
                            m394x(this.f922n0, 0.0f, 0.0f, jVar2.f976c.getWidth(), 0.0f, jVar2.f976c.getWidth(), jVar2.f976c.getHeight(), 0.0f, jVar2.f976c.getHeight());
                            if (getRequiredRotation() == 0) {
                                float[] fArr = this.f924o0;
                                Rect rect2 = jVar2.f979f;
                                float f6 = rect2.left;
                                float f7 = rect2.top;
                                float f8 = rect2.right;
                                float f9 = rect2.bottom;
                                m394x(fArr, f6, f7, f8, f7, f8, f9, f6, f9);
                            } else if (getRequiredRotation() == 90) {
                                float[] fArr2 = this.f924o0;
                                Rect rect3 = jVar2.f979f;
                                float f10 = rect3.right;
                                float f11 = rect3.top;
                                float f12 = rect3.bottom;
                                float f13 = rect3.left;
                                m394x(fArr2, f10, f11, f10, f12, f13, f12, f13, f11);
                            } else if (getRequiredRotation() == 180) {
                                float[] fArr3 = this.f924o0;
                                Rect rect4 = jVar2.f979f;
                                float f14 = rect4.right;
                                float f15 = rect4.bottom;
                                float f16 = rect4.left;
                                float f17 = rect4.top;
                                m394x(fArr3, f14, f15, f16, f15, f16, f17, f14, f17);
                            } else if (getRequiredRotation() == 270) {
                                float[] fArr4 = this.f924o0;
                                Rect rect5 = jVar2.f979f;
                                float f18 = rect5.left;
                                float f19 = rect5.bottom;
                                float f20 = rect5.top;
                                float f21 = rect5.right;
                                m394x(fArr4, f18, f19, f18, f20, f21, f20, f21, f19);
                            }
                            this.f918l0.setPolyToPoly(this.f922n0, 0, this.f924o0, 0, 4);
                            canvas.drawBitmap(jVar2.f976c, this.f918l0, this.f912i0);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        boolean z2 = mode != 1073741824;
        boolean z3 = mode2 != 1073741824;
        if (this.f876E > 0 && this.f877F > 0) {
            if (z2 && z3) {
                size = m411v();
                size2 = m410u();
            } else if (z3) {
                size2 = (int) ((((double) m410u()) / ((double) m411v())) * ((double) size));
            } else if (z2) {
                size = (int) ((((double) m411v()) / ((double) m410u())) * ((double) size2));
            }
        }
        setMeasuredDimension(Math.max(size, getSuggestedMinimumWidth()), Math.max(size2, getSuggestedMinimumHeight()));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        PointF center = getCenter();
        if (!this.f902d0 || center == null) {
            return;
        }
        this.f900c0 = null;
        this.f873B = Float.valueOf(this.f933w);
        this.f874C = center;
    }

    /* JADX WARN: Code duplicated, block: B:178:0x043b  */
    /* JADX WARN: Code duplicated, block: B:180:0x0441  */
    /* JADX WARN: Code duplicated, block: B:199:0x0496 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:200:0x0498  */
    /* JADX WARN: Code duplicated, block: B:203:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:206:0x04b5  */
    /* JADX WARN: Code duplicated, block: B:208:0x04b9  */
    /* JADX WARN: Code duplicated, block: B:209:0x04ff  */
    /* JADX WARN: Code duplicated, block: B:211:0x0505  */
    /* JADX WARN: Code duplicated, block: B:213:0x0509  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z2;
        boolean z3;
        boolean z4;
        GestureDetector gestureDetector;
        c cVar = this.f900c0;
        if (cVar != null && !cVar.f947h) {
            ViewParent parent2 = getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
            return true;
        }
        PointF pointF = null;
        this.f900c0 = null;
        if (this.f935y == null) {
            GestureDetector gestureDetector2 = this.f884M;
            if (gestureDetector2 != null) {
                gestureDetector2.onTouchEvent(motionEvent);
            }
            return true;
        }
        if (!this.f881J && ((gestureDetector = this.f883L) == null || gestureDetector.onTouchEvent(motionEvent))) {
            this.f879H = false;
            this.f880I = false;
            this.f882K = 0;
            return true;
        }
        float f2 = 0.0f;
        if (this.f936z == null) {
            this.f936z = new PointF(0.0f, 0.0f);
        }
        if (this.f872A == null) {
            this.f872A = new PointF(0.0f, 0.0f);
        }
        if (this.f889R == null) {
            this.f889R = new PointF(0.0f, 0.0f);
        }
        this.f872A.set(this.f935y);
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        Handler handler = this.f910h0;
        if (action == 0) {
            this.f900c0 = null;
            parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            this.f882K = Math.max(this.f882K, pointerCount);
            if (pointerCount >= 2) {
                if (this.f928r) {
                    float x2 = motionEvent.getX(0) - motionEvent.getX(1);
                    float y2 = motionEvent.getY(0) - motionEvent.getY(1);
                    float fSqrt = (float) Math.sqrt((y2 * y2) + (x2 * x2));
                    this.f934x = this.f933w;
                    this.f890S = fSqrt;
                    PointF pointF2 = this.f936z;
                    PointF pointF3 = this.f935y;
                    pointF2.set(pointF3.x, pointF3.y);
                    this.f889R.set((motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f, (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f);
                } else {
                    this.f882K = 0;
                }
                handler.removeMessages(1);
            } else if (!this.f881J) {
                PointF pointF4 = this.f936z;
                PointF pointF5 = this.f935y;
                pointF4.set(pointF5.x, pointF5.y);
                this.f889R.set(motionEvent.getX(), motionEvent.getY());
                handler.sendEmptyMessageDelayed(1, 600L);
            }
            z2 = true;
        } else if (action == 1) {
            handler.removeMessages(1);
            if (this.f881J) {
                this.f881J = false;
                if (!this.f893V) {
                    m399i(this.f896a0, this.f889R);
                }
            }
            if (this.f882K <= 0 && ((z3 = this.f879H) || this.f880I)) {
                if (z3 && pointerCount == 2) {
                    this.f880I = true;
                    PointF pointF6 = this.f936z;
                    PointF pointF7 = this.f935y;
                    pointF6.set(pointF7.x, pointF7.y);
                    if (motionEvent.getActionIndex() == 1) {
                        this.f889R.set(motionEvent.getX(0), motionEvent.getY(0));
                    } else {
                        this.f889R.set(motionEvent.getX(1), motionEvent.getY(1));
                    }
                }
                if (pointerCount < 3) {
                    this.f879H = false;
                }
                if (pointerCount < 2) {
                    this.f880I = false;
                    this.f882K = 0;
                }
                m408s(true);
            } else if (pointerCount == 1) {
                this.f879H = false;
                this.f880I = false;
                this.f882K = 0;
            }
            z2 = true;
        } else {
            if (action != 2) {
                if (action != 5) {
                    if (action != 6) {
                        if (action != 261) {
                            if (action != 262) {
                            }
                        }
                        z2 = true;
                    }
                    handler.removeMessages(1);
                    if (this.f881J) {
                        this.f881J = false;
                        if (!this.f893V) {
                            m399i(this.f896a0, this.f889R);
                        }
                    }
                    if (this.f882K <= 0) {
                        if (pointerCount == 1) {
                            this.f879H = false;
                            this.f880I = false;
                            this.f882K = 0;
                        }
                    } else if (pointerCount == 1) {
                        this.f879H = false;
                        this.f880I = false;
                        this.f882K = 0;
                    }
                    z2 = true;
                }
                this.f900c0 = null;
                parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                this.f882K = Math.max(this.f882K, pointerCount);
                if (pointerCount >= 2) {
                    if (this.f928r) {
                        float x3 = motionEvent.getX(0) - motionEvent.getX(1);
                        float y3 = motionEvent.getY(0) - motionEvent.getY(1);
                        float fSqrt2 = (float) Math.sqrt((y3 * y3) + (x3 * x3));
                        this.f934x = this.f933w;
                        this.f890S = fSqrt2;
                        PointF pointF8 = this.f936z;
                        PointF pointF9 = this.f935y;
                        pointF8.set(pointF9.x, pointF9.y);
                        this.f889R.set((motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f, (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f);
                    } else {
                        this.f882K = 0;
                    }
                    handler.removeMessages(1);
                } else if (!this.f881J) {
                    PointF pointF10 = this.f936z;
                    PointF pointF11 = this.f935y;
                    pointF10.set(pointF11.x, pointF11.y);
                    this.f889R.set(motionEvent.getX(), motionEvent.getY());
                    handler.sendEmptyMessageDelayed(1, 600L);
                }
                z2 = true;
            } else {
                if (this.f882K <= 0) {
                    z4 = false;
                } else if (pointerCount >= 2) {
                    float x4 = motionEvent.getX(0) - motionEvent.getX(1);
                    float y4 = motionEvent.getY(0) - motionEvent.getY(1);
                    float fSqrt3 = (float) Math.sqrt((y4 * y4) + (x4 * x4));
                    float x5 = (motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f;
                    float y5 = (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f;
                    if (this.f928r) {
                        PointF pointF12 = this.f889R;
                        float f3 = pointF12.x - x5;
                        float f4 = pointF12.y - y5;
                        if (((float) Math.sqrt((f4 * f4) + (f3 * f3))) > 5.0f || Math.abs(fSqrt3 - this.f890S) > 5.0f || this.f880I) {
                            this.f879H = true;
                            this.f880I = true;
                            double d2 = this.f933w;
                            float fMin = Math.min(this.f909h, (fSqrt3 / this.f890S) * this.f934x);
                            this.f933w = fMin;
                            if (fMin <= m405p()) {
                                this.f890S = fSqrt3;
                                this.f934x = m405p();
                                this.f889R.set(x5, y5);
                                this.f936z.set(this.f935y);
                            } else if (this.f927q) {
                                PointF pointF13 = this.f889R;
                                float f5 = pointF13.x;
                                PointF pointF14 = this.f936z;
                                float f6 = f5 - pointF14.x;
                                float f7 = pointF13.y - pointF14.y;
                                float f8 = this.f933w / this.f934x;
                                float f9 = f6 * f8;
                                float f10 = f8 * f7;
                                PointF pointF15 = this.f935y;
                                pointF15.x = x5 - f9;
                                pointF15.y = y5 - f10;
                                if ((((double) m410u()) * d2 < getHeight() && this.f933w * m410u() >= getHeight()) || (d2 * ((double) m411v()) < getWidth() && this.f933w * m411v() >= getWidth())) {
                                    m400k(true);
                                    this.f889R.set(x5, y5);
                                    this.f936z.set(this.f935y);
                                    this.f934x = this.f933w;
                                    this.f890S = fSqrt3;
                                }
                            } else if (this.f875D != null) {
                                this.f935y.x = (getWidth() / 2) - (this.f933w * this.f875D.x);
                                this.f935y.y = (getHeight() / 2) - (this.f933w * this.f875D.y);
                            } else {
                                this.f935y.x = (getWidth() / 2) - (this.f933w * (m411v() / 2));
                                this.f935y.y = (getHeight() / 2) - (this.f933w * (m410u() / 2));
                            }
                            m400k(true);
                            m408s(this.f925p);
                            z4 = true;
                        }
                    }
                    z4 = false;
                } else {
                    if (this.f881J) {
                        float fAbs = (Math.abs(this.f898b0.y - motionEvent.getY()) * 2.0f) + this.f891T;
                        if (this.f892U == -1.0f) {
                            this.f892U = fAbs;
                        }
                        float y6 = motionEvent.getY();
                        PointF pointF16 = this.f894W;
                        boolean z5 = y6 > pointF16.y;
                        pointF16.set(0.0f, motionEvent.getY());
                        float f11 = 1.0f;
                        float fAbs2 = Math.abs(1.0f - (fAbs / this.f892U)) * 0.5f;
                        if (fAbs2 > 0.03f || this.f893V) {
                            this.f893V = true;
                            if (this.f892U > 0.0f) {
                                f11 = z5 ? 1.0f + fAbs2 : 1.0f - fAbs2;
                            }
                            double d3 = this.f933w;
                            float fMax = Math.max(m405p(), Math.min(this.f909h, this.f933w * f11));
                            this.f933w = fMax;
                            if (this.f927q) {
                                PointF pointF17 = this.f889R;
                                float f12 = pointF17.x;
                                PointF pointF18 = this.f936z;
                                float f13 = f12 - pointF18.x;
                                float f14 = pointF17.y;
                                float f15 = f14 - pointF18.y;
                                float f16 = fMax / this.f934x;
                                float f17 = f13 * f16;
                                float f18 = f16 * f15;
                                PointF pointF19 = this.f935y;
                                pointF19.x = f12 - f17;
                                pointF19.y = f14 - f18;
                                if ((((double) m410u()) * d3 < getHeight() && this.f933w * m410u() >= getHeight()) || (d3 * ((double) m411v()) < getWidth() && this.f933w * m411v() >= getWidth())) {
                                    m400k(true);
                                    PointF pointF20 = this.f889R;
                                    PointF pointF21 = this.f896a0;
                                    float f19 = pointF21.x;
                                    float f20 = pointF21.y;
                                    PointF pointF22 = new PointF();
                                    if (this.f935y != null) {
                                        pointF22.set(m413y(f19), m414z(f20));
                                        pointF = pointF22;
                                    }
                                    pointF20.set(pointF);
                                    this.f936z.set(this.f935y);
                                    this.f934x = this.f933w;
                                }
                            } else if (this.f875D != null) {
                                this.f935y.x = (getWidth() / 2) - (this.f933w * this.f875D.x);
                                this.f935y.y = (getHeight() / 2) - (this.f933w * this.f875D.y);
                            } else {
                                this.f935y.x = (getWidth() / 2) - (this.f933w * (m411v() / 2));
                                this.f935y.y = (getHeight() / 2) - (this.f933w * (m410u() / 2));
                            }
                            f2 = fAbs;
                        } else {
                            f2 = fAbs;
                        }
                        this.f892U = f2;
                        m400k(true);
                        m408s(this.f925p);
                    } else {
                        if (!this.f879H) {
                            float fAbs3 = Math.abs(motionEvent.getX() - this.f889R.x);
                            float fAbs4 = Math.abs(motionEvent.getY() - this.f889R.y);
                            float f21 = this.f926p0 * 5.0f;
                            if (fAbs3 > f21 || fAbs4 > f21 || this.f880I) {
                                this.f935y.x = (motionEvent.getX() - this.f889R.x) + this.f936z.x;
                                this.f935y.y = (motionEvent.getY() - this.f889R.y) + this.f936z.y;
                                PointF pointF23 = this.f935y;
                                float f22 = pointF23.x;
                                float f23 = pointF23.y;
                                m400k(true);
                                PointF pointF24 = this.f935y;
                                boolean z6 = f22 != pointF24.x;
                                float f24 = pointF24.y;
                                boolean z7 = f23 != f24;
                                boolean z8 = z6 && fAbs3 > fAbs4 && !this.f880I;
                                boolean z9 = z7 && fAbs4 > fAbs3 && !this.f880I;
                                boolean z10 = f23 == f24 && fAbs4 > 3.0f * f21;
                                if (!z8 && !z9 && (!z6 || !z7 || z10 || this.f880I)) {
                                    this.f880I = true;
                                } else if (fAbs3 > f21 || fAbs4 > f21) {
                                    this.f882K = 0;
                                    handler.removeMessages(1);
                                    ViewParent parent3 = getParent();
                                    if (parent3 != null) {
                                        parent3.requestDisallowInterceptTouchEvent(false);
                                    }
                                }
                                if (!this.f927q) {
                                    PointF pointF25 = this.f935y;
                                    PointF pointF26 = this.f936z;
                                    pointF25.x = pointF26.x;
                                    pointF25.y = pointF26.y;
                                    ViewParent parent4 = getParent();
                                    if (parent4 != null) {
                                        parent4.requestDisallowInterceptTouchEvent(false);
                                    }
                                }
                                m408s(this.f925p);
                            }
                        }
                        z4 = false;
                    }
                    z4 = true;
                }
                if (z4) {
                    handler.removeMessages(1);
                    invalidate();
                    z2 = true;
                }
            }
            z2 = false;
        }
        return z2 || super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: renamed from: p */
    public final float m405p() {
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int i2 = this.f917l;
        if (i2 == 2 || i2 == 4) {
            return Math.max((getWidth() - paddingRight) / m411v(), (getHeight() - paddingTop) / m410u());
        }
        if (i2 == 3) {
            float f2 = this.f911i;
            if (f2 > 0.0f) {
                return f2;
            }
        }
        return Math.min((getWidth() - paddingRight) / m411v(), (getHeight() - paddingTop) / m410u());
    }

    /* JADX INFO: renamed from: q */
    public final synchronized void m406q(Bitmap bitmap, int i2) {
        int i3 = this.f876E;
        if (i3 > 0 && this.f877F > 0 && (i3 != bitmap.getWidth() || this.f877F != bitmap.getHeight())) {
            m409t(false);
        }
        Bitmap bitmap2 = this.f895a;
        if (bitmap2 != null && !this.f899c) {
            bitmap2.recycle();
        }
        if (this.f895a != null && this.f899c) {
            g gVar = this.f906f0;
        }
        this.f897b = false;
        this.f899c = false;
        this.f895a = bitmap;
        this.f876E = bitmap.getWidth();
        this.f877F = bitmap.getHeight();
        this.f878G = i2;
        boolean zM398h = m398h();
        boolean zM397g = m397g();
        if (zM398h || zM397g) {
            invalidate();
            requestLayout();
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m407r() {
        Float f2;
        if (getWidth() == 0 || getHeight() == 0 || this.f876E <= 0 || this.f877F <= 0) {
            return;
        }
        if (this.f874C != null && (f2 = this.f873B) != null) {
            this.f933w = f2.floatValue();
            if (this.f935y == null) {
                this.f935y = new PointF();
            }
            this.f935y.x = (getWidth() / 2) - (this.f933w * this.f874C.x);
            this.f935y.y = (getHeight() / 2) - (this.f933w * this.f874C.y);
            this.f874C = null;
            this.f873B = null;
            m400k(true);
            m408s(true);
        }
        m400k(false);
    }

    /* JADX INFO: renamed from: s */
    public final void m408s(boolean z2) {
        if (this.f885N == null || this.f905f == null) {
            return;
        }
        int iMin = Math.min(this.f903e, m396f(this.f933w));
        Iterator it = this.f905f.entrySet().iterator();
        while (it.hasNext()) {
            for (j jVar : (List) ((Map.Entry) it.next()).getValue()) {
                int i2 = jVar.f975b;
                if (i2 < iMin || (i2 > iMin && i2 != this.f903e)) {
                    jVar.f978e = false;
                    Bitmap bitmap = jVar.f976c;
                    if (bitmap != null) {
                        bitmap.recycle();
                        jVar.f976c = null;
                    }
                }
                int i3 = jVar.f975b;
                if (i3 == iMin) {
                    PointF pointF = this.f935y;
                    float f2 = pointF == null ? Float.NaN : (0.0f - pointF.x) / this.f933w;
                    float width = getWidth();
                    PointF pointF2 = this.f935y;
                    float f3 = pointF2 == null ? Float.NaN : (width - pointF2.x) / this.f933w;
                    float f4 = pointF2 == null ? Float.NaN : (0.0f - pointF2.y) / this.f933w;
                    float height = getHeight();
                    PointF pointF3 = this.f935y;
                    float f5 = pointF3 != null ? (height - pointF3.y) / this.f933w : Float.NaN;
                    Rect rect = jVar.f974a;
                    if (f2 <= ((float) rect.right) && ((float) rect.left) <= f3 && f4 <= ((float) rect.bottom) && ((float) rect.top) <= f5) {
                        jVar.f978e = true;
                        if (!jVar.f977d && jVar.f976c == null && z2) {
                            new k(this, this.f885N, jVar).executeOnExecutor(this.f923o, new Void[0]);
                        }
                    } else if (jVar.f975b != this.f903e) {
                        jVar.f978e = false;
                        Bitmap bitmap2 = jVar.f976c;
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                            jVar.f976c = null;
                        }
                    }
                } else if (i3 == this.f903e) {
                    jVar.f978e = true;
                }
            }
        }
    }

    public final void setBitmapDecoderClass(Class<? extends InterfaceC0142c> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.f887P = new C0140a(cls);
    }

    public final void setBitmapDecoderFactory(InterfaceC0141b<? extends InterfaceC0142c> interfaceC0141b) {
        if (interfaceC0141b == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.f887P = interfaceC0141b;
    }

    public final void setDoubleTapZoomDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setDoubleTapZoomScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i2);
    }

    public final void setDoubleTapZoomDuration(int i2) {
        this.f932v = Math.max(0, i2);
    }

    public final void setDoubleTapZoomScale(float f2) {
        this.f930t = f2;
    }

    public final void setDoubleTapZoomStyle(int i2) {
        if (f867r0.contains(Integer.valueOf(i2))) {
            this.f931u = i2;
        } else {
            throw new IllegalArgumentException("Invalid zoom style: " + i2);
        }
    }

    public void setEagerLoadingEnabled(boolean z2) {
        this.f925p = z2;
    }

    public void setExecutor(Executor executor) {
        if (executor == null) {
            throw new NullPointerException("Executor must not be null");
        }
        this.f923o = executor;
    }

    public final void setMaxScale(float f2) {
        this.f909h = f2;
    }

    public void setMaxTileSize(int i2) {
        this.f919m = i2;
        this.f921n = i2;
    }

    public final void setMaximumDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMinScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i2);
    }

    public final void setMinScale(float f2) {
        this.f911i = f2;
    }

    public final void setMinimumDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMaxScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i2);
    }

    public final void setMinimumScaleType(int i2) {
        if (!f870u0.contains(Integer.valueOf(i2))) {
            throw new IllegalArgumentException("Invalid scale type: " + i2);
        }
        this.f917l = i2;
        if (this.f902d0) {
            m400k(true);
            invalidate();
        }
    }

    public void setMinimumTileDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f913j = (int) Math.min((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, i2);
        if (this.f902d0) {
            m409t(false);
            invalidate();
        }
    }

    public void setOnImageEventListener(g gVar) {
        this.f906f0 = gVar;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f908g0 = onLongClickListener;
    }

    public void setOnStateChangedListener(h hVar) {
    }

    public final void setOrientation(int i2) {
        if (!f866q0.contains(Integer.valueOf(i2))) {
            throw new IllegalArgumentException("Invalid orientation: " + i2);
        }
        this.f907g = i2;
        m409t(false);
        invalidate();
        requestLayout();
    }

    public final void setPanEnabled(boolean z2) {
        PointF pointF;
        this.f927q = z2;
        if (z2 || (pointF = this.f935y) == null) {
            return;
        }
        pointF.x = (getWidth() / 2) - (this.f933w * (m411v() / 2));
        this.f935y.y = (getHeight() / 2) - (this.f933w * (m410u() / 2));
        if (this.f902d0) {
            m408s(true);
            invalidate();
        }
    }

    public final void setPanLimit(int i2) {
        if (!f869t0.contains(Integer.valueOf(i2))) {
            throw new IllegalArgumentException("Invalid pan limit: " + i2);
        }
        this.f915k = i2;
        if (this.f902d0) {
            m400k(true);
            invalidate();
        }
    }

    public final void setQuickScaleEnabled(boolean z2) {
        this.f929s = z2;
    }

    public final void setRegionDecoderClass(Class<? extends InterfaceC0143d> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.f888Q = new C0140a(cls);
    }

    public final void setRegionDecoderFactory(InterfaceC0141b<? extends InterfaceC0143d> interfaceC0141b) {
        if (interfaceC0141b == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.f888Q = interfaceC0141b;
    }

    public final void setTileBackgroundColor(int i2) {
        if (Color.alpha(i2) == 0) {
            this.f914j0 = null;
        } else {
            Paint paint = new Paint();
            this.f914j0 = paint;
            paint.setStyle(Paint.Style.FILL);
            this.f914j0.setColor(i2);
        }
        invalidate();
    }

    public final void setZoomEnabled(boolean z2) {
        this.f928r = z2;
    }

    /* JADX INFO: renamed from: t */
    public final void m409t(boolean z2) {
        this.f933w = 0.0f;
        this.f934x = 0.0f;
        this.f935y = null;
        this.f936z = null;
        this.f872A = null;
        this.f873B = Float.valueOf(0.0f);
        this.f874C = null;
        this.f875D = null;
        this.f879H = false;
        this.f880I = false;
        this.f881J = false;
        this.f882K = 0;
        this.f903e = 0;
        this.f889R = null;
        this.f890S = 0.0f;
        this.f892U = 0.0f;
        this.f893V = false;
        this.f896a0 = null;
        this.f894W = null;
        this.f898b0 = null;
        this.f900c0 = null;
        this.f916k0 = null;
        this.f918l0 = null;
        this.f920m0 = null;
        if (z2) {
            C0118a c0118a = this.f901d;
            if (c0118a != null) {
                C0181d.m562c(c0118a.f861c);
                this.f901d = null;
            }
            ReentrantReadWriteLock reentrantReadWriteLock = this.f886O;
            reentrantReadWriteLock.writeLock().lock();
            try {
                InterfaceC0143d interfaceC0143d = this.f885N;
                if (interfaceC0143d != null) {
                    interfaceC0143d.mo212c();
                    this.f885N = null;
                }
                reentrantReadWriteLock.writeLock().unlock();
                Bitmap bitmap = this.f895a;
                if (bitmap != null && !this.f899c) {
                    bitmap.recycle();
                }
                if (this.f895a != null) {
                    boolean z3 = this.f899c;
                }
                this.f876E = 0;
                this.f877F = 0;
                this.f878G = 0;
                this.f902d0 = false;
                this.f904e0 = false;
                this.f895a = null;
                this.f897b = false;
                this.f899c = false;
            } catch (Throwable th) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th;
            }
        }
        LinkedHashMap linkedHashMap = this.f905f;
        if (linkedHashMap != null) {
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                for (j jVar : (List) ((Map.Entry) it.next()).getValue()) {
                    jVar.f978e = false;
                    Bitmap bitmap2 = jVar.f976c;
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                        jVar.f976c = null;
                    }
                }
            }
            this.f905f = null;
        }
        setGestureDetector(getContext());
    }

    /* JADX INFO: renamed from: u */
    public final int m410u() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.f876E : this.f877F;
    }

    /* JADX INFO: renamed from: v */
    public final int m411v() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.f877F : this.f876E;
    }

    /* JADX INFO: renamed from: w */
    public final void m412w(C0118a c0118a, boolean z2) {
        if (z2) {
            setEnabled(false);
        } else {
            m409t(true);
        }
        this.f901d = c0118a;
        if (c0118a.f864f) {
            (z2 ? new f(this, getContext(), this.f888Q, c0118a) : new l(this, getContext(), this.f888Q, c0118a)).executeOnExecutor(this.f923o, new Void[0]);
        } else {
            new e(this, getContext(), this.f887P, c0118a).executeOnExecutor(this.f923o, new Void[0]);
        }
    }

    /* JADX INFO: renamed from: y */
    public final float m413y(float f2) {
        PointF pointF = this.f935y;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f2 * this.f933w) + pointF.x;
    }

    /* JADX INFO: renamed from: z */
    public final float m414z(float f2) {
        PointF pointF = this.f935y;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f2 * this.f933w) + pointF.y;
    }

    /* JADX INFO: renamed from: g.d$d */
    public final class d {

        /* JADX INFO: renamed from: a */
        public final float f951a;

        /* JADX INFO: renamed from: b */
        public final PointF f952b;

        /* JADX INFO: renamed from: c */
        public final PointF f953c;

        /* JADX INFO: renamed from: d */
        public long f954d;

        /* JADX INFO: renamed from: e */
        public int f955e;

        /* JADX INFO: renamed from: f */
        public int f956f;

        /* JADX INFO: renamed from: g */
        public boolean f957g;

        /* JADX INFO: renamed from: h */
        public boolean f958h;

        public d(PointF pointF) {
            this.f954d = 500L;
            this.f955e = 2;
            this.f956f = 1;
            this.f957g = true;
            this.f958h = true;
            this.f951a = C0121d.this.f933w;
            this.f952b = pointF;
            this.f953c = null;
        }

        /* JADX INFO: renamed from: a */
        public final void m415a() {
            C0121d c0121d = C0121d.this;
            c cVar = c0121d.f900c0;
            int width = (((c0121d.getWidth() - c0121d.getPaddingRight()) - c0121d.getPaddingLeft()) / 2) + c0121d.getPaddingLeft();
            int height = (((c0121d.getHeight() - c0121d.getPaddingBottom()) - c0121d.getPaddingTop()) / 2) + c0121d.getPaddingTop();
            float fMin = Math.min(c0121d.f909h, Math.max(c0121d.m405p(), this.f951a));
            boolean z2 = this.f958h;
            PointF pointF = this.f952b;
            if (z2) {
                float f2 = pointF.x;
                float f3 = pointF.y;
                PointF pointF2 = new PointF();
                PointF pointFM395A = c0121d.m395A(f2, f3, fMin);
                pointF2.set((((((c0121d.getWidth() - c0121d.getPaddingRight()) - c0121d.getPaddingLeft()) / 2) + c0121d.getPaddingLeft()) - pointFM395A.x) / fMin, (((((c0121d.getHeight() - c0121d.getPaddingBottom()) - c0121d.getPaddingTop()) / 2) + c0121d.getPaddingTop()) - pointFM395A.y) / fMin);
                pointF = pointF2;
            }
            c cVar2 = new c();
            c0121d.f900c0 = cVar2;
            cVar2.f940a = c0121d.f933w;
            cVar2.f941b = fMin;
            cVar2.f950k = System.currentTimeMillis();
            c0121d.f900c0.getClass();
            c0121d.f900c0.f942c = c0121d.getCenter();
            c cVar3 = c0121d.f900c0;
            cVar3.f943d = pointF;
            float f4 = pointF.x;
            float f5 = pointF.y;
            PointF pointF3 = new PointF();
            if (c0121d.f935y == null) {
                pointF3 = null;
            } else {
                pointF3.set(c0121d.m413y(f4), c0121d.m414z(f5));
            }
            cVar3.f944e = pointF3;
            c0121d.f900c0.f945f = new PointF(width, height);
            c cVar4 = c0121d.f900c0;
            cVar4.f946g = this.f954d;
            cVar4.f947h = this.f957g;
            cVar4.f948i = this.f955e;
            cVar4.f949j = this.f956f;
            cVar4.f950k = System.currentTimeMillis();
            c0121d.f900c0.getClass();
            PointF pointF4 = this.f953c;
            if (pointF4 != null) {
                float f6 = pointF4.x;
                PointF pointF5 = c0121d.f900c0.f942c;
                float f7 = f6 - (pointF5.x * fMin);
                float f8 = pointF4.y - (pointF5.y * fMin);
                PointF pointF6 = new PointF(f7, f8);
                c0121d.m401l(true, new i(fMin, pointF6));
                c0121d.f900c0.f945f = new PointF((pointF6.x - f7) + pointF4.x, (pointF6.y - f8) + pointF4.y);
            }
            c0121d.invalidate();
        }

        public d(float f2, PointF pointF) {
            this.f954d = 500L;
            this.f955e = 2;
            this.f956f = 1;
            this.f957g = true;
            this.f958h = true;
            this.f951a = f2;
            this.f952b = pointF;
            this.f953c = null;
        }

        public d(float f2, PointF pointF, PointF pointF2) {
            this.f954d = 500L;
            this.f955e = 2;
            this.f956f = 1;
            this.f957g = true;
            this.f958h = true;
            this.f951a = f2;
            this.f952b = pointF;
            this.f953c = pointF2;
        }
    }
}
