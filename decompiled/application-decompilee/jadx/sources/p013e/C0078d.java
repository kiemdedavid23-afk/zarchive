package p013e;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.ArrayMap;
import android.util.AttributeSet;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import p010d.C0062a;

/* JADX INFO: renamed from: e.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0078d extends Drawable {

    /* JADX INFO: renamed from: f */
    public static final /* synthetic */ int f527f = 0;

    /* JADX INFO: renamed from: a */
    public f f528a;

    /* JADX INFO: renamed from: b */
    public boolean f529b;

    /* JADX INFO: renamed from: c */
    public final float[] f530c;

    /* JADX INFO: renamed from: d */
    public final Matrix f531d;

    /* JADX INFO: renamed from: e */
    public final Rect f532e;

    /* JADX INFO: renamed from: e.d$a */
    public static class a extends d {
        public a() {
        }

        public a(a aVar) {
            super(aVar);
        }
    }

    /* JADX INFO: renamed from: e.d$f */
    public static class f extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a */
        public int f575a;

        /* JADX INFO: renamed from: b */
        public e f576b;

        /* JADX INFO: renamed from: c */
        public Bitmap f577c;

        /* JADX INFO: renamed from: d */
        public int f578d;

        /* JADX INFO: renamed from: e */
        public boolean f579e;

        /* JADX INFO: renamed from: f */
        public Paint f580f;

        public f(f fVar) {
            if (fVar != null) {
                this.f575a = fVar.f575a;
                e eVar = new e(fVar.f576b);
                this.f576b = eVar;
                if (fVar.f576b.f565e != null) {
                    eVar.f565e = new Paint(fVar.f576b.f565e);
                }
                if (fVar.f576b.f564d != null) {
                    this.f576b.f564d = new Paint(fVar.f576b.f564d);
                }
            }
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return this.f575a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            return new C0078d(this);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable(Resources resources) {
            return new C0078d(this);
        }

        public f() {
            this.f576b = new e();
        }
    }

    public C0078d() {
        this.f530c = new float[9];
        this.f531d = new Matrix();
        this.f532e = new Rect();
        this.f528a = new f();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008c  */
    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Rect rect = this.f532e;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        Matrix matrix = this.f531d;
        canvas.getMatrix(matrix);
        float[] fArr = this.f530c;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iHeight = (int) (rect.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        rect.offsetTo(0, 0);
        f fVar = this.f528a;
        Bitmap bitmap = fVar.f577c;
        if (bitmap == null) {
            fVar.f577c = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            fVar.f579e = true;
        } else {
            if (!(iMin == bitmap.getWidth() && iMin2 == fVar.f577c.getHeight())) {
                fVar.f577c = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
                fVar.f579e = true;
            }
        }
        f fVar2 = this.f528a;
        if (!(!fVar2.f579e && fVar2.f578d == fVar2.f576b.f572l)) {
            fVar2.f577c.eraseColor(0);
            Canvas canvas2 = new Canvas(fVar2.f577c);
            e eVar = fVar2.f576b;
            eVar.m264a(eVar.f567g, e.f560o, canvas2, iMin, iMin2);
            f fVar3 = this.f528a;
            fVar3.f578d = fVar3.f576b.f572l;
            fVar3.f579e = false;
        }
        f fVar4 = this.f528a;
        if (fVar4.f576b.f572l < 255) {
            if (fVar4.f580f == null) {
                Paint paint2 = new Paint();
                fVar4.f580f = paint2;
                paint2.setFilterBitmap(true);
            }
            fVar4.f580f.setAlpha(fVar4.f576b.f572l);
            paint = fVar4.f580f;
        } else {
            paint = null;
        }
        canvas.drawBitmap(fVar4.f577c, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f528a.f576b.f572l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f528a.f575a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        this.f528a.f575a = getChangingConfigurations();
        return this.f528a;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f528a.f576b.f569i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) this.f528a.f576b.f568h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f529b && super.mutate() == this) {
            this.f528a = new f(this.f528a);
            this.f529b = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i2) {
        e eVar = this.f528a.f576b;
        if (eVar.f572l != i2) {
            eVar.f572l = i2;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i2) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
    }

    /* JADX INFO: renamed from: e.d$d */
    public static class d {

        /* JADX INFO: renamed from: a */
        public C0062a.a[] f557a;

        /* JADX INFO: renamed from: b */
        public String f558b;

        /* JADX INFO: renamed from: c */
        public final int f559c;

        public d() {
            this.f557a = null;
        }

        public d(d dVar) {
            C0062a.a[] aVarArr = null;
            this.f557a = null;
            this.f558b = dVar.f558b;
            this.f559c = dVar.f559c;
            C0062a.a[] aVarArr2 = dVar.f557a;
            if (aVarArr2 != null) {
                aVarArr = new C0062a.a[aVarArr2.length];
                for (int i2 = 0; i2 < aVarArr2.length; i2++) {
                    aVarArr[i2] = new C0062a.a(aVarArr2[i2]);
                }
            }
            this.f557a = aVarArr;
        }
    }

    public C0078d(f fVar) {
        this.f530c = new float[9];
        this.f531d = new Matrix();
        this.f532e = new Rect();
        this.f528a = fVar;
    }

    /* JADX INFO: renamed from: e.d$e */
    public static class e {

        /* JADX INFO: renamed from: o */
        public static final Matrix f560o = new Matrix();

        /* JADX INFO: renamed from: a */
        public final Path f561a;

        /* JADX INFO: renamed from: b */
        public final Path f562b;

        /* JADX INFO: renamed from: c */
        public final Matrix f563c;

        /* JADX INFO: renamed from: d */
        public Paint f564d;

        /* JADX INFO: renamed from: e */
        public Paint f565e;

        /* JADX INFO: renamed from: f */
        public PathMeasure f566f;

        /* JADX INFO: renamed from: g */
        public final c f567g;

        /* JADX INFO: renamed from: h */
        public float f568h;

        /* JADX INFO: renamed from: i */
        public float f569i;

        /* JADX INFO: renamed from: j */
        public float f570j;

        /* JADX INFO: renamed from: k */
        public float f571k;

        /* JADX INFO: renamed from: l */
        public int f572l;

        /* JADX INFO: renamed from: m */
        public String f573m;

        /* JADX INFO: renamed from: n */
        public final ArrayMap f574n;

        public e() {
            this.f563c = new Matrix();
            this.f568h = 0.0f;
            this.f569i = 0.0f;
            this.f570j = 0.0f;
            this.f571k = 0.0f;
            this.f572l = 255;
            this.f573m = null;
            this.f574n = new ArrayMap();
            this.f567g = new c();
            this.f561a = new Path();
            this.f562b = new Path();
        }

        /* JADX INFO: renamed from: a */
        public final void m264a(c cVar, Matrix matrix, Canvas canvas, int i2, int i3) {
            int i4;
            Matrix matrix2;
            e eVar;
            Canvas canvas2;
            char c2;
            float f2;
            int i5;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            float f15;
            float f16;
            float f17;
            float f18;
            e eVar2 = this;
            c cVar2 = cVar;
            Canvas canvas3 = canvas;
            cVar2.f545a.set(matrix);
            Matrix matrix3 = cVar2.f545a;
            matrix3.preConcat(cVar2.f554j);
            canvas.save();
            char c3 = 0;
            e eVar3 = eVar2;
            int i6 = 0;
            while (true) {
                ArrayList<Object> arrayList = cVar2.f546b;
                if (i6 >= arrayList.size()) {
                    canvas.restore();
                    return;
                }
                Object obj = arrayList.get(i6);
                if (obj instanceof c) {
                    m264a((c) obj, matrix3, canvas, i2, i3);
                } else {
                    if (obj instanceof d) {
                        d dVar = (d) obj;
                        float f19 = i2 / eVar3.f570j;
                        float f20 = i3 / eVar3.f571k;
                        float fMin = Math.min(f19, f20);
                        Matrix matrix4 = eVar3.f563c;
                        matrix4.set(matrix3);
                        matrix4.postScale(f19, f20);
                        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                        matrix3.mapVectors(fArr);
                        float fHypot = (float) Math.hypot(fArr[c3], fArr[1]);
                        i4 = i6;
                        float fHypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                        float f21 = (fArr[0] * fArr[3]) - (fArr[1] * fArr[2]);
                        float fMax = Math.max(fHypot, fHypot2);
                        float fAbs = fMax > 0.0f ? Math.abs(f21) / fMax : 0.0f;
                        if (fAbs == 0.0f) {
                            eVar = eVar2;
                            canvas2 = canvas3;
                            matrix2 = matrix3;
                        } else {
                            dVar.getClass();
                            Path path = eVar3.f561a;
                            path.reset();
                            C0062a.a[] aVarArr = dVar.f557a;
                            if (aVarArr != null) {
                                float[] fArr2 = new float[6];
                                int length = aVarArr.length;
                                int i7 = 0;
                                char c4 = 'm';
                                while (i7 < length) {
                                    C0062a.a aVar = aVarArr[i7];
                                    char c5 = aVar.f445a;
                                    float f22 = fArr2[0];
                                    float f23 = fArr2[1];
                                    float f24 = fArr2[2];
                                    float f25 = fArr2[3];
                                    float f26 = fArr2[4];
                                    float f27 = fArr2[5];
                                    switch (c5) {
                                        case 'A':
                                        case 'a':
                                            i5 = 7;
                                            break;
                                        case 'C':
                                        case 'c':
                                            i5 = 6;
                                            break;
                                        case 'H':
                                        case 'V':
                                        case 'h':
                                        case 'v':
                                            i5 = 1;
                                            break;
                                        case 'Q':
                                        case 'S':
                                        case 'q':
                                        case 's':
                                            i5 = 4;
                                            break;
                                        case 'Z':
                                        case 'z':
                                            path.close();
                                            path.moveTo(f26, f27);
                                            f22 = f26;
                                            f24 = f22;
                                            f23 = f27;
                                            f25 = f23;
                                        default:
                                            i5 = 2;
                                            break;
                                    }
                                    float f28 = fAbs;
                                    float f29 = fMin;
                                    Matrix matrix5 = matrix3;
                                    C0062a.a[] aVarArr2 = aVarArr;
                                    int i8 = length;
                                    char c6 = c4;
                                    float f30 = f22;
                                    float f31 = f23;
                                    int i9 = 0;
                                    while (true) {
                                        float[] fArr3 = aVar.f446b;
                                        if (i9 < fArr3.length) {
                                            if (c5 != 'A') {
                                                if (c5 != 'C') {
                                                    if (c5 == 'H') {
                                                        dVar = dVar;
                                                        matrix4 = matrix4;
                                                        c5 = c5;
                                                        path.lineTo(fArr3[i9], f31);
                                                        f30 = fArr3[i9];
                                                    } else if (c5 == 'Q') {
                                                        int i10 = i9 + 1;
                                                        int i11 = i9 + 2;
                                                        int i12 = i9 + 3;
                                                        path.quadTo(fArr3[i9], fArr3[i10], fArr3[i11], fArr3[i12]);
                                                        f3 = fArr3[i9];
                                                        f4 = fArr3[i10];
                                                        float f32 = fArr3[i11];
                                                        f5 = fArr3[i12];
                                                        f30 = f32;
                                                    } else if (c5 == 'V') {
                                                        dVar = dVar;
                                                        matrix4 = matrix4;
                                                        c5 = c5;
                                                        path.lineTo(f30, fArr3[i9]);
                                                        f31 = fArr3[i9];
                                                    } else if (c5 != 'a') {
                                                        if (c5 != 'c') {
                                                            if (c5 != 'h') {
                                                                if (c5 != 'q') {
                                                                    if (c5 != 'v') {
                                                                        if (c5 != 'L') {
                                                                            if (c5 != 'M') {
                                                                                matrix4 = matrix4;
                                                                                if (c5 == 'S') {
                                                                                    c5 = c5;
                                                                                    if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                                                        f30 = (f30 * 2.0f) - f24;
                                                                                        f31 = (f31 * 2.0f) - f25;
                                                                                    }
                                                                                    int i13 = i9 + 1;
                                                                                    int i14 = i9 + 2;
                                                                                    int i15 = i9 + 3;
                                                                                    path.cubicTo(f30, f31, fArr3[i9], fArr3[i13], fArr3[i14], fArr3[i15]);
                                                                                    float f33 = fArr3[i9];
                                                                                    float f34 = fArr3[i13];
                                                                                    f30 = fArr3[i14];
                                                                                    f25 = f34;
                                                                                    f31 = fArr3[i15];
                                                                                    f24 = f33;
                                                                                } else if (c5 == 'T') {
                                                                                    c5 = c5;
                                                                                    if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                                                        f30 = (f30 * 2.0f) - f24;
                                                                                        f31 = (f31 * 2.0f) - f25;
                                                                                    }
                                                                                    int i16 = i9 + 1;
                                                                                    path.quadTo(f30, f31, fArr3[i9], fArr3[i16]);
                                                                                    f9 = fArr3[i9];
                                                                                    f10 = fArr3[i16];
                                                                                    dVar = dVar;
                                                                                } else if (c5 == 'l') {
                                                                                    int i17 = i9 + 1;
                                                                                    path.rLineTo(fArr3[i9], fArr3[i17]);
                                                                                    f30 += fArr3[i9];
                                                                                    f8 = fArr3[i17];
                                                                                } else if (c5 == 'm') {
                                                                                    c5 = c5;
                                                                                    float f35 = fArr3[i9];
                                                                                    f30 += f35;
                                                                                    float f36 = fArr3[i9 + 1];
                                                                                    f31 += f36;
                                                                                    if (i9 > 0) {
                                                                                        path.rLineTo(f35, f36);
                                                                                    } else {
                                                                                        path.rMoveTo(f35, f36);
                                                                                        f27 = f31;
                                                                                        f11 = f30;
                                                                                    }
                                                                                } else if (c5 == 's') {
                                                                                    if (c6 == 'c' || c6 == 's' || c6 == 'C' || c6 == 'S') {
                                                                                        f15 = f30 - f24;
                                                                                        f16 = f31 - f25;
                                                                                    } else {
                                                                                        f15 = 0.0f;
                                                                                        f16 = 0.0f;
                                                                                    }
                                                                                    int i18 = i9 + 1;
                                                                                    int i19 = i9 + 2;
                                                                                    int i20 = i9 + 3;
                                                                                    path.rCubicTo(f15, f16, fArr3[i9], fArr3[i18], fArr3[i19], fArr3[i20]);
                                                                                    f24 = fArr3[i9] + f30;
                                                                                    f25 = fArr3[i18] + f31;
                                                                                    f30 += fArr3[i19];
                                                                                    f8 = fArr3[i20];
                                                                                } else if (c5 != 't') {
                                                                                    c5 = c5;
                                                                                } else {
                                                                                    if (c6 == 'q' || c6 == 't' || c6 == 'Q' || c6 == 'T') {
                                                                                        f17 = f30 - f24;
                                                                                        f18 = f31 - f25;
                                                                                    } else {
                                                                                        f17 = 0.0f;
                                                                                        f18 = 0.0f;
                                                                                    }
                                                                                    int i21 = i9 + 1;
                                                                                    c5 = c5;
                                                                                    path.rQuadTo(f17, f18, fArr3[i9], fArr3[i21]);
                                                                                    float f37 = f17 + f30;
                                                                                    float f38 = f18 + f31;
                                                                                    f30 += fArr3[i9];
                                                                                    f31 += fArr3[i21];
                                                                                    f24 = f37;
                                                                                    f25 = f38;
                                                                                }
                                                                                dVar = dVar;
                                                                                f12 = f26;
                                                                                f11 = f30;
                                                                            } else {
                                                                                matrix4 = matrix4;
                                                                                c5 = c5;
                                                                                f13 = fArr3[i9];
                                                                                f14 = fArr3[i9 + 1];
                                                                                if (i9 > 0) {
                                                                                    path.lineTo(f13, f14);
                                                                                } else {
                                                                                    path.moveTo(f13, f14);
                                                                                    f11 = f13;
                                                                                    f27 = f14;
                                                                                }
                                                                            }
                                                                            dVar = dVar;
                                                                            f12 = f11;
                                                                            f31 = f27;
                                                                        } else {
                                                                            matrix4 = matrix4;
                                                                            c5 = c5;
                                                                            int i22 = i9 + 1;
                                                                            path.lineTo(fArr3[i9], fArr3[i22]);
                                                                            f13 = fArr3[i9];
                                                                            f14 = fArr3[i22];
                                                                        }
                                                                        f30 = f13;
                                                                        f31 = f14;
                                                                        dVar = dVar;
                                                                        f12 = f26;
                                                                        f11 = f30;
                                                                    } else {
                                                                        matrix4 = matrix4;
                                                                        path.rLineTo(0.0f, fArr3[i9]);
                                                                        f8 = fArr3[i9];
                                                                    }
                                                                    dVar = dVar;
                                                                    f31 += f8;
                                                                    f12 = f26;
                                                                    f11 = f30;
                                                                } else {
                                                                    int i23 = i9 + 1;
                                                                    int i24 = i9 + 2;
                                                                    int i25 = i9 + 3;
                                                                    path.rQuadTo(fArr3[i9], fArr3[i23], fArr3[i24], fArr3[i25]);
                                                                    f6 = fArr3[i9] + f30;
                                                                    f7 = fArr3[i23] + f31;
                                                                    f30 += fArr3[i24];
                                                                    f8 = fArr3[i25];
                                                                }
                                                                f25 = f31;
                                                                f31 = f10;
                                                                f24 = f30;
                                                                f30 = f9;
                                                            } else {
                                                                dVar = dVar;
                                                                matrix4 = matrix4;
                                                                c5 = c5;
                                                                path.rLineTo(fArr3[i9], 0.0f);
                                                                float f39 = f26;
                                                                f11 = fArr3[i9] + f30;
                                                                f12 = f39;
                                                            }
                                                            f9 = f11;
                                                            f10 = f31;
                                                            f30 = f24;
                                                            f31 = f25;
                                                            f26 = f12;
                                                            f25 = f31;
                                                            f31 = f10;
                                                            f24 = f30;
                                                            f30 = f9;
                                                        } else {
                                                            int i26 = i9 + 2;
                                                            int i27 = i9 + 3;
                                                            int i28 = i9 + 4;
                                                            int i29 = i9 + 5;
                                                            path.rCubicTo(fArr3[i9], fArr3[i9 + 1], fArr3[i26], fArr3[i27], fArr3[i28], fArr3[i29]);
                                                            f6 = fArr3[i26] + f30;
                                                            f7 = fArr3[i27] + f31;
                                                            f30 += fArr3[i28];
                                                            f8 = fArr3[i29];
                                                        }
                                                        f24 = f6;
                                                        f25 = f7;
                                                        f31 += f8;
                                                        f12 = f26;
                                                        f11 = f30;
                                                        f9 = f11;
                                                        f10 = f31;
                                                        f30 = f24;
                                                        f31 = f25;
                                                        f26 = f12;
                                                        f25 = f31;
                                                        f31 = f10;
                                                        f24 = f30;
                                                        f30 = f9;
                                                    } else {
                                                        int i30 = i9 + 5;
                                                        int i31 = i9 + 6;
                                                        C0062a.a.m230a(path, f30, f31, fArr3[i30] + f30, fArr3[i31] + f31, fArr3[i9], fArr3[i9 + 1], fArr3[i9 + 2], fArr3[i9 + 3] != 0.0f, fArr3[i9 + 4] != 0.0f);
                                                        f30 += fArr3[i30];
                                                        f31 += fArr3[i31];
                                                    }
                                                    i9 += i5;
                                                    matrix4 = matrix4;
                                                    c6 = c5;
                                                    c5 = c6;
                                                    dVar = dVar;
                                                } else {
                                                    int i32 = i9 + 2;
                                                    int i33 = i9 + 3;
                                                    int i34 = i9 + 4;
                                                    int i35 = i9 + 5;
                                                    path.cubicTo(fArr3[i9], fArr3[i9 + 1], fArr3[i32], fArr3[i33], fArr3[i34], fArr3[i35]);
                                                    float f40 = fArr3[i34];
                                                    float f41 = fArr3[i35];
                                                    f3 = fArr3[i32];
                                                    f4 = fArr3[i33];
                                                    f30 = f40;
                                                    f5 = f41;
                                                }
                                                f24 = f3;
                                                f25 = f4;
                                                f31 = f5;
                                                i9 += i5;
                                                matrix4 = matrix4;
                                                c6 = c5;
                                                c5 = c6;
                                                dVar = dVar;
                                            } else {
                                                int i36 = i9 + 5;
                                                int i37 = i9 + 6;
                                                C0062a.a.m230a(path, f30, f31, fArr3[i36], fArr3[i37], fArr3[i9], fArr3[i9 + 1], fArr3[i9 + 2], fArr3[i9 + 3] != 0.0f, fArr3[i9 + 4] != 0.0f);
                                                float f42 = fArr3[i36];
                                                f31 = fArr3[i37];
                                                f30 = f42;
                                            }
                                            f25 = f31;
                                            f24 = f30;
                                            i9 += i5;
                                            matrix4 = matrix4;
                                            c6 = c5;
                                            c5 = c6;
                                            dVar = dVar;
                                        }
                                    }
                                    fArr2[0] = f30;
                                    fArr2[1] = f31;
                                    fArr2[2] = f24;
                                    fArr2[3] = f25;
                                    fArr2[4] = f26;
                                    fArr2[5] = f27;
                                    i7++;
                                    c4 = aVar.f445a;
                                    matrix3 = matrix5;
                                    aVarArr = aVarArr2;
                                    length = i8;
                                    fAbs = f28;
                                    fMin = f29;
                                    dVar = dVar;
                                }
                            }
                            d dVar2 = dVar;
                            float f43 = fAbs;
                            float f44 = fMin;
                            matrix2 = matrix3;
                            Matrix matrix6 = matrix4;
                            eVar = this;
                            Path path2 = eVar.f562b;
                            path2.reset();
                            if (dVar2 instanceof a) {
                                path2.addPath(path, matrix6);
                                canvas2 = canvas;
                                canvas2.clipPath(path2);
                                eVar3 = eVar;
                            } else {
                                canvas2 = canvas;
                                b bVar = (b) dVar2;
                                float f45 = bVar.f539j;
                                if (f45 == 0.0f && bVar.f540k == 1.0f) {
                                    c2 = 0;
                                } else {
                                    float f46 = bVar.f541l;
                                    float f47 = (f45 + f46) % 1.0f;
                                    float f48 = (bVar.f540k + f46) % 1.0f;
                                    if (eVar.f566f == null) {
                                        eVar.f566f = new PathMeasure();
                                    }
                                    c2 = 0;
                                    eVar.f566f.setPath(path, false);
                                    float length2 = eVar.f566f.getLength();
                                    float f49 = f47 * length2;
                                    float f50 = f48 * length2;
                                    path.reset();
                                    if (f49 > f50) {
                                        eVar.f566f.getSegment(f49, length2, path, true);
                                        f2 = 0.0f;
                                        eVar.f566f.getSegment(0.0f, f50, path, true);
                                    } else {
                                        f2 = 0.0f;
                                        eVar.f566f.getSegment(f49, f50, path, true);
                                    }
                                    path.rLineTo(f2, f2);
                                }
                                path2.addPath(path, matrix6);
                                if (bVar.f535f != 0) {
                                    if (eVar.f565e == null) {
                                        Paint paint = new Paint();
                                        eVar.f565e = paint;
                                        paint.setStyle(Paint.Style.FILL);
                                        eVar.f565e.setAntiAlias(true);
                                    }
                                    Paint paint2 = eVar.f565e;
                                    int i38 = bVar.f535f;
                                    float f51 = bVar.f538i;
                                    int i39 = C0078d.f527f;
                                    paint2.setColor((i38 & 16777215) | (((int) (Color.alpha(i38) * f51)) << 24));
                                    paint2.setColorFilter(null);
                                    path2.setFillType(bVar.f537h == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                                    canvas2.drawPath(path2, paint2);
                                }
                                if (bVar.f533d != 0) {
                                    if (eVar.f564d == null) {
                                        Paint paint3 = new Paint();
                                        eVar.f564d = paint3;
                                        paint3.setStyle(Paint.Style.STROKE);
                                        eVar.f564d.setAntiAlias(true);
                                    }
                                    Paint paint4 = eVar.f564d;
                                    Paint.Join join = bVar.f543n;
                                    if (join != null) {
                                        paint4.setStrokeJoin(join);
                                    }
                                    Paint.Cap cap = bVar.f542m;
                                    if (cap != null) {
                                        paint4.setStrokeCap(cap);
                                    }
                                    paint4.setStrokeMiter(bVar.f544o);
                                    int i40 = bVar.f533d;
                                    float f52 = bVar.f536g;
                                    int i41 = C0078d.f527f;
                                    paint4.setColor((16777215 & i40) | (((int) (Color.alpha(i40) * f52)) << 24));
                                    paint4.setColorFilter(null);
                                    paint4.setStrokeWidth(bVar.f534e * f44 * f43);
                                    canvas2.drawPath(path2, paint4);
                                }
                                eVar3 = eVar;
                            }
                        }
                        c2 = 0;
                    }
                    i6 = i4 + 1;
                    cVar2 = cVar;
                    eVar2 = eVar;
                    c3 = c2;
                    matrix3 = matrix2;
                    canvas3 = canvas2;
                }
                eVar = eVar2;
                canvas2 = canvas3;
                matrix2 = matrix3;
                c2 = c3;
                i4 = i6;
                i6 = i4 + 1;
                cVar2 = cVar;
                eVar2 = eVar;
                c3 = c2;
                matrix3 = matrix2;
                canvas3 = canvas2;
            }
        }

        public e(e eVar) {
            this.f563c = new Matrix();
            this.f568h = 0.0f;
            this.f569i = 0.0f;
            this.f570j = 0.0f;
            this.f571k = 0.0f;
            this.f572l = 255;
            this.f573m = null;
            ArrayMap arrayMap = new ArrayMap();
            this.f574n = arrayMap;
            this.f567g = new c(eVar.f567g, arrayMap);
            this.f561a = new Path(eVar.f561a);
            this.f562b = new Path(eVar.f562b);
            this.f568h = eVar.f568h;
            this.f569i = eVar.f569i;
            this.f570j = eVar.f570j;
            this.f571k = eVar.f571k;
            this.f572l = eVar.f572l;
            this.f573m = eVar.f573m;
            String str = eVar.f573m;
            if (str != null) {
                arrayMap.put(str, this);
            }
        }
    }

    /* JADX INFO: renamed from: e.d$b */
    public static class b extends d {

        /* JADX INFO: renamed from: d */
        public int f533d;

        /* JADX INFO: renamed from: e */
        public float f534e;

        /* JADX INFO: renamed from: f */
        public int f535f;

        /* JADX INFO: renamed from: g */
        public float f536g;

        /* JADX INFO: renamed from: h */
        public int f537h;

        /* JADX INFO: renamed from: i */
        public float f538i;

        /* JADX INFO: renamed from: j */
        public float f539j;

        /* JADX INFO: renamed from: k */
        public float f540k;

        /* JADX INFO: renamed from: l */
        public float f541l;

        /* JADX INFO: renamed from: m */
        public Paint.Cap f542m;

        /* JADX INFO: renamed from: n */
        public Paint.Join f543n;

        /* JADX INFO: renamed from: o */
        public float f544o;

        public b() {
            this.f533d = 0;
            this.f534e = 0.0f;
            this.f535f = 0;
            this.f536g = 1.0f;
            this.f537h = 0;
            this.f538i = 1.0f;
            this.f539j = 0.0f;
            this.f540k = 1.0f;
            this.f541l = 0.0f;
            this.f542m = Paint.Cap.BUTT;
            this.f543n = Paint.Join.MITER;
            this.f544o = 4.0f;
        }

        public b(b bVar) {
            super(bVar);
            this.f533d = 0;
            this.f534e = 0.0f;
            this.f535f = 0;
            this.f536g = 1.0f;
            this.f537h = 0;
            this.f538i = 1.0f;
            this.f539j = 0.0f;
            this.f540k = 1.0f;
            this.f541l = 0.0f;
            this.f542m = Paint.Cap.BUTT;
            this.f543n = Paint.Join.MITER;
            this.f544o = 4.0f;
            this.f533d = bVar.f533d;
            this.f534e = bVar.f534e;
            this.f536g = bVar.f536g;
            this.f535f = bVar.f535f;
            this.f537h = bVar.f537h;
            this.f538i = bVar.f538i;
            this.f539j = bVar.f539j;
            this.f540k = bVar.f540k;
            this.f541l = bVar.f541l;
            this.f542m = bVar.f542m;
            this.f543n = bVar.f543n;
            this.f544o = bVar.f544o;
        }
    }

    /* JADX INFO: renamed from: e.d$c */
    public static class c {

        /* JADX INFO: renamed from: a */
        public final Matrix f545a;

        /* JADX INFO: renamed from: b */
        public final ArrayList<Object> f546b;

        /* JADX INFO: renamed from: c */
        public float f547c;

        /* JADX INFO: renamed from: d */
        public float f548d;

        /* JADX INFO: renamed from: e */
        public float f549e;

        /* JADX INFO: renamed from: f */
        public float f550f;

        /* JADX INFO: renamed from: g */
        public float f551g;

        /* JADX INFO: renamed from: h */
        public float f552h;

        /* JADX INFO: renamed from: i */
        public float f553i;

        /* JADX INFO: renamed from: j */
        public final Matrix f554j;

        /* JADX INFO: renamed from: k */
        public final int f555k;

        /* JADX INFO: renamed from: l */
        public String f556l;

        public c(c cVar, ArrayMap arrayMap) {
            d aVar;
            this.f545a = new Matrix();
            this.f546b = new ArrayList<>();
            this.f547c = 0.0f;
            this.f548d = 0.0f;
            this.f549e = 0.0f;
            this.f550f = 1.0f;
            this.f551g = 1.0f;
            this.f552h = 0.0f;
            this.f553i = 0.0f;
            Matrix matrix = new Matrix();
            this.f554j = matrix;
            this.f556l = null;
            this.f547c = cVar.f547c;
            this.f548d = cVar.f548d;
            this.f549e = cVar.f549e;
            this.f550f = cVar.f550f;
            this.f551g = cVar.f551g;
            this.f552h = cVar.f552h;
            this.f553i = cVar.f553i;
            String str = cVar.f556l;
            this.f556l = str;
            this.f555k = cVar.f555k;
            if (str != null) {
                arrayMap.put(str, this);
            }
            matrix.set(cVar.f554j);
            ArrayList<Object> arrayList = cVar.f546b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Object obj = arrayList.get(i2);
                if (obj instanceof c) {
                    this.f546b.add(new c((c) obj, arrayMap));
                } else {
                    if (obj instanceof b) {
                        aVar = new b((b) obj);
                    } else {
                        if (!(obj instanceof a)) {
                            throw new IllegalStateException("Unknown object in the tree!");
                        }
                        aVar = new a((a) obj);
                    }
                    this.f546b.add(aVar);
                    String str2 = aVar.f558b;
                    if (str2 != null) {
                        arrayMap.put(str2, aVar);
                    }
                }
            }
        }

        public c() {
            this.f545a = new Matrix();
            this.f546b = new ArrayList<>();
            this.f547c = 0.0f;
            this.f548d = 0.0f;
            this.f549e = 0.0f;
            this.f550f = 1.0f;
            this.f551g = 1.0f;
            this.f552h = 0.0f;
            this.f553i = 0.0f;
            this.f554j = new Matrix();
            this.f556l = null;
        }
    }
}
