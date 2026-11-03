package p002a1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageButton;
import p047s0.C0358b;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: a1.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0009a extends ImageButton {

    /* JADX INFO: renamed from: l */
    public static final int f18l;

    /* JADX INFO: renamed from: m */
    public static final int f19m;

    /* JADX INFO: renamed from: n */
    public static final int f20n;

    /* JADX INFO: renamed from: o */
    public static final PorterDuffXfermode f21o;

    /* JADX INFO: renamed from: a */
    public int f22a;

    /* JADX INFO: renamed from: b */
    public final boolean f23b;

    /* JADX INFO: renamed from: c */
    public int f24c;

    /* JADX INFO: renamed from: d */
    public int f25d;

    /* JADX INFO: renamed from: e */
    public int f26e;

    /* JADX INFO: renamed from: f */
    public Drawable f27f;

    /* JADX INFO: renamed from: g */
    public final int f28g;

    /* JADX INFO: renamed from: h */
    public Animation f29h;

    /* JADX INFO: renamed from: i */
    public Animation f30i;

    /* JADX INFO: renamed from: j */
    public View.OnClickListener f31j;

    /* JADX INFO: renamed from: k */
    public Drawable f32k;

    /* JADX INFO: renamed from: a1.a$a */
    public class a extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    /* JADX INFO: renamed from: a1.a$b */
    public class b extends ShapeDrawable {

        /* JADX INFO: renamed from: a */
        public final int f33a;

        /* JADX INFO: renamed from: b */
        public final int f34b;

        public b(OvalShape ovalShape) {
            int iAbs;
            super(ovalShape);
            int iAbs2 = 0;
            if (C0009a.this.f23b) {
                iAbs = Math.abs(C0009a.f18l) + C0009a.f20n;
            } else {
                iAbs = 0;
            }
            this.f33a = iAbs;
            if (C0009a.this.f23b) {
                iAbs2 = Math.abs(C0009a.f19m) + C0009a.f20n;
            }
            this.f34b = iAbs2;
        }

        @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            C0009a c0009a = C0009a.this;
            int iM16c = c0009a.m16c();
            int i2 = this.f33a;
            int iM15b = c0009a.m15b();
            int i3 = this.f34b;
            setBounds(i2, i3, iM16c - i2, iM15b - i3);
            super.draw(canvas);
        }
    }

    /* JADX INFO: renamed from: a1.a$c */
    public class c extends Drawable {

        /* JADX INFO: renamed from: a */
        public final Paint f36a;

        /* JADX INFO: renamed from: b */
        public final Paint f37b;

        /* JADX INFO: renamed from: c */
        public int f38c;

        public c() {
            Paint paint = new Paint(1);
            this.f36a = paint;
            Paint paint2 = new Paint(1);
            this.f37b = paint2;
            C0009a.this.setLayerType(1, null);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(C0009a.this.f24c);
            paint2.setXfermode(C0009a.f21o);
            if (!C0009a.this.isInEditMode()) {
                paint.setShadowLayer(C0009a.f20n, C0009a.f18l, C0009a.f19m, 1711276032);
            }
            this.f38c = C0009a.this.getCircleSize() / 2;
        }

        @Override // android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            C0009a c0009a = C0009a.this;
            canvas.drawCircle(c0009a.getMeasuredWidth() / 2, c0009a.getMeasuredHeight() / 2, this.f38c, this.f36a);
            canvas.drawCircle(c0009a.getMeasuredWidth() / 2, c0009a.getMeasuredHeight() / 2, this.f38c, this.f37b);
        }

        @Override // android.graphics.drawable.Drawable
        public final int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public final void setAlpha(int i2) {
        }

        @Override // android.graphics.drawable.Drawable
        public final void setColorFilter(ColorFilter colorFilter) {
        }
    }

    static {
        int iM1166a = C0439c.m1166a(1);
        f18l = iM1166a;
        f19m = iM1166a * 3;
        f20n = iM1166a * 4;
        f21o = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
    }

    public C0009a(Context context, boolean z2) {
        super(context, null, 0);
        this.f28g = C0439c.m1166a(24);
        this.f23b = z2;
        this.f24c = C0439c.m1168c(context, R.attr.colorPrimary);
        this.f25d = C0439c.m1168c(context, R.attr.colorPrimaryLight);
        this.f26e = -1711276033;
        this.f22a = 0;
        this.f29h = AnimationUtils.loadAnimation(context, R.anim.fab_scale_up);
        this.f30i = AnimationUtils.loadAnimation(context, R.anim.fab_scale_down);
        m20g();
        setClickable(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCircleSize() {
        return getResources().getDimensionPixelSize(this.f22a == 0 ? R.dimen.floating_action_button_size : R.dimen.floating_action_button_size_small);
    }

    private int getShadowX() {
        return Math.abs(f18l) + f20n;
    }

    private int getShadowY() {
        return Math.abs(f19m) + f20n;
    }

    /* JADX INFO: renamed from: b */
    public final int m15b() {
        return getCircleSize() + (this.f23b ? getShadowY() * 2 : 0);
    }

    /* JADX INFO: renamed from: c */
    public final int m16c() {
        return getCircleSize() + (this.f23b ? getShadowX() * 2 : 0);
    }

    /* JADX INFO: renamed from: d */
    public final b m17d(int i2) {
        b bVar = new b(new OvalShape());
        bVar.getPaint().setColor(i2);
        return bVar;
    }

    /* JADX INFO: renamed from: e */
    public final Drawable m18e() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842910}, m17d(-5592406));
        stateListDrawable.addState(new int[]{android.R.attr.state_pressed}, m17d(this.f25d));
        stateListDrawable.addState(new int[0], m17d(this.f24c));
        if (C0358b.m1040k(1536)) {
            this.f32k = stateListDrawable;
            return stateListDrawable;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(new ColorStateList(new int[][]{new int[0]}, new int[]{this.f26e}), stateListDrawable, null);
        setOutlineProvider(new a());
        setClipToOutline(true);
        this.f32k = rippleDrawable;
        return rippleDrawable;
    }

    /* JADX INFO: renamed from: f */
    public final void m19f(boolean z2, boolean z3) {
        if ((getVisibility() == 4) == z2) {
            if (z3) {
                this.f30i.cancel();
                this.f29h.cancel();
                startAnimation(z2 ? this.f29h : this.f30i);
            }
            setVisibility(z2 ? 0 : 4);
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m20g() {
        Drawable iconDrawable = getIconDrawable();
        boolean z2 = this.f23b;
        LayerDrawable layerDrawable = z2 ? new LayerDrawable(new Drawable[]{new c(), m18e(), iconDrawable}) : new LayerDrawable(new Drawable[]{m18e(), iconDrawable});
        int iMax = iconDrawable != null ? Math.max(iconDrawable.getIntrinsicWidth(), iconDrawable.getIntrinsicHeight()) : -1;
        int circleSize = getCircleSize();
        if (iMax <= 0) {
            iMax = this.f28g;
        }
        int i2 = (circleSize - iMax) / 2;
        int i3 = f20n;
        int iAbs = z2 ? Math.abs(f18l) + i3 : 0;
        int i4 = iAbs + i2;
        int iAbs2 = (z2 ? Math.abs(f19m) + i3 : 0) + i2;
        layerDrawable.setLayerInset(z2 ? 2 : 1, i4, iAbs2, i4, iAbs2);
        setBackground(layerDrawable);
    }

    public Drawable getIconDrawable() {
        Drawable drawable = this.f27f;
        return drawable != null ? drawable : new ColorDrawable(0);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i2, int i3) {
        setMeasuredDimension(m16c(), m15b());
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f31j != null && isEnabled()) {
            int action = motionEvent.getAction();
            if (action == 0) {
                Drawable drawable = this.f32k;
                if (drawable instanceof StateListDrawable) {
                    ((StateListDrawable) drawable).setState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed});
                } else {
                    RippleDrawable rippleDrawable = (RippleDrawable) drawable;
                    rippleDrawable.setState(new int[]{android.R.attr.state_enabled, android.R.attr.state_pressed});
                    rippleDrawable.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                    rippleDrawable.setVisible(true, true);
                }
            } else if (action == 1 || action == 3) {
                Drawable drawable2 = this.f32k;
                if (drawable2 instanceof StateListDrawable) {
                    ((StateListDrawable) drawable2).setState(new int[]{android.R.attr.state_enabled});
                } else {
                    RippleDrawable rippleDrawable2 = (RippleDrawable) drawable2;
                    rippleDrawable2.setState(new int[]{android.R.attr.state_enabled});
                    rippleDrawable2.setHotspot(getMeasuredWidth() / 2, getMeasuredHeight() / 2);
                    rippleDrawable2.setVisible(true, true);
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (this.f27f != drawable) {
            this.f27f = drawable;
            m20g();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i2) {
        Resources.Theme themeNewTheme = getResources().newTheme();
        themeNewTheme.applyStyle(R.style.AppTheme_Dark, true);
        Drawable drawableM1174i = C0439c.m1174i(getResources(), themeNewTheme, i2);
        if (this.f27f != drawableM1174i) {
            this.f27f = drawableM1174i;
            m20g();
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.f31j = onClickListener;
    }
}
