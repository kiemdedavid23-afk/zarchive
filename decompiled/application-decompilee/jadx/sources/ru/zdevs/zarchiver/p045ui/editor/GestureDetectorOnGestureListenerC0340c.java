package ru.zdevs.zarchiver.p045ui.editor;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.OverScroller;
import p006b1.C0034e;
import p006b1.InterfaceC0030a;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.c */
/* JADX INFO: loaded from: classes.dex */
public final class GestureDetectorOnGestureListenerC0340c implements GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener {

    /* JADX INFO: renamed from: a */
    public final InterfaceC0030a f1834a;

    /* JADX INFO: renamed from: c */
    public final Drawable f1836c;

    /* JADX INFO: renamed from: d */
    public final Drawable[] f1837d;

    /* JADX INFO: renamed from: e */
    public final OverScroller f1838e;

    /* JADX INFO: renamed from: f */
    public final GestureDetector f1839f;

    /* JADX INFO: renamed from: g */
    public int f1840g;

    /* JADX INFO: renamed from: h */
    public int f1841h;

    /* JADX INFO: renamed from: b */
    public a f1835b = null;

    /* JADX INFO: renamed from: i */
    public boolean f1842i = false;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.c$a */
    public interface a extends ViewTreeObserver.OnTouchModeChangeListener {
        /* JADX INFO: renamed from: a */
        void mo997a(Canvas canvas, int i2, int i3, int i4, int i5);

        boolean onTouchEvent(MotionEvent motionEvent);
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.c$b */
    public class b implements a {

        /* JADX INFO: renamed from: a */
        public final RectF f1843a;

        /* JADX INFO: renamed from: b */
        public boolean f1844b;

        /* JADX INFO: renamed from: c */
        public boolean f1845c;

        /* JADX INFO: renamed from: d */
        public long f1846d;

        /* JADX INFO: renamed from: e */
        public final int f1847e;

        public b(int i2) {
            RectF rectF = new RectF();
            this.f1843a = rectF;
            this.f1845c = false;
            this.f1844b = false;
            this.f1847e = i2;
            this.f1846d = i2 == 0 ? 0L : System.currentTimeMillis() + ((long) i2);
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.GestureDetectorOnGestureListenerC0340c.a
        /* JADX INFO: renamed from: a */
        public final void mo997a(Canvas canvas, int i2, int i3, int i4, int i5) {
            long j2 = this.f1846d;
            GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = GestureDetectorOnGestureListenerC0340c.this;
            if (j2 != 0 && j2 < System.currentTimeMillis()) {
                gestureDetectorOnGestureListenerC0340c.m995g(0);
                return;
            }
            RectF rectF = this.f1843a;
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
            if (i2 < 0 || i3 < 0) {
                return;
            }
            int intrinsicWidth = i2 - (gestureDetectorOnGestureListenerC0340c.f1836c.getIntrinsicWidth() / 2);
            float f2 = intrinsicWidth;
            float f3 = i3;
            canvas.translate(f2, f3);
            Drawable drawable = gestureDetectorOnGestureListenerC0340c.f1836c;
            drawable.draw(canvas);
            canvas.translate(-intrinsicWidth, -i3);
            rectF.set(f2, f3, drawable.getIntrinsicWidth() + intrinsicWidth, drawable.getIntrinsicHeight() + i3);
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.GestureDetectorOnGestureListenerC0340c.a
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = GestureDetectorOnGestureListenerC0340c.this;
            if (actionMasked == 0) {
                if (!this.f1843a.contains(motionEvent.getX(), motionEvent.getY())) {
                    return false;
                }
                this.f1845c = true;
                this.f1844b = true;
                this.f1846d = 0L;
                gestureDetectorOnGestureListenerC0340c.f1834a.setCursorBlink(false);
                InterfaceC0030a interfaceC0030a = gestureDetectorOnGestureListenerC0340c.f1834a;
                ((EditableView) interfaceC0030a).m946j(-2);
                ((EditableView) interfaceC0030a).m952p(0, true);
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (!this.f1844b) {
                        return false;
                    }
                    this.f1845c = false;
                    int iM989a = gestureDetectorOnGestureListenerC0340c.m989a(motionEvent);
                    ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m954r(iM989a, iM989a, -1);
                    return true;
                }
                if (actionMasked != 3) {
                    return this.f1844b;
                }
            }
            if (!this.f1844b) {
                return false;
            }
            ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m952p(0, false);
            InterfaceC0030a interfaceC0030a2 = gestureDetectorOnGestureListenerC0340c.f1834a;
            EditableView editableView = (EditableView) interfaceC0030a2;
            if (editableView.f1768m != null && editableView.f1769n == 1) {
                ((EditableView) interfaceC0030a2).m946j(-1);
            } else if (this.f1845c) {
                ((EditableView) interfaceC0030a2).m955s(1);
                return true;
            }
            int i2 = this.f1847e;
            this.f1846d = i2 != 0 ? System.currentTimeMillis() + ((long) i2) : 0L;
            this.f1844b = false;
            interfaceC0030a2.setCursorBlink(true);
            return true;
        }

        @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
        public final void onTouchModeChanged(boolean z2) {
            if (z2) {
                return;
            }
            GestureDetectorOnGestureListenerC0340c.this.f1835b = null;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.editor.c$c */
    public class c implements a {

        /* JADX INFO: renamed from: a */
        public final RectF f1849a;

        /* JADX INFO: renamed from: b */
        public final RectF f1850b;

        /* JADX INFO: renamed from: c */
        public int f1851c;

        public c() {
            RectF rectF = new RectF();
            this.f1850b = rectF;
            RectF rectF2 = new RectF();
            this.f1849a = rectF2;
            this.f1851c = 0;
            rectF2.set(-1.0f, -1.0f, -1.0f, -1.0f);
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.GestureDetectorOnGestureListenerC0340c.a
        /* JADX INFO: renamed from: a */
        public final void mo997a(Canvas canvas, int i2, int i3, int i4, int i5) {
            RectF rectF = this.f1849a;
            rectF.set(-1.0f, -1.0f, -1.0f, -1.0f);
            RectF rectF2 = this.f1850b;
            rectF2.set(-1.0f, -1.0f, -1.0f, -1.0f);
            GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = GestureDetectorOnGestureListenerC0340c.this;
            if (i2 >= 0 && i3 >= 0) {
                int intrinsicWidth = gestureDetectorOnGestureListenerC0340c.f1837d[0].getIntrinsicWidth();
                int i6 = i2 - ((intrinsicWidth / 4) + (intrinsicWidth / 2));
                float f2 = i6;
                float f3 = i3;
                canvas.translate(f2, f3);
                Drawable[] drawableArr = gestureDetectorOnGestureListenerC0340c.f1837d;
                drawableArr[0].draw(canvas);
                canvas.translate(-i6, -i3);
                rectF.set(f2, f3, i6 + intrinsicWidth, drawableArr[0].getIntrinsicHeight() + i3);
            }
            if (i4 < 0 || i5 < 0) {
                return;
            }
            int intrinsicWidth2 = gestureDetectorOnGestureListenerC0340c.f1837d[1].getIntrinsicWidth();
            int i7 = i4 - (intrinsicWidth2 / 4);
            float f4 = i7;
            float f5 = i5;
            canvas.translate(f4, f5);
            Drawable[] drawableArr2 = gestureDetectorOnGestureListenerC0340c.f1837d;
            drawableArr2[1].draw(canvas);
            canvas.translate(-i7, -i5);
            rectF2.set(f4, f5, i7 + intrinsicWidth2, drawableArr2[1].getIntrinsicHeight() + i5);
        }

        @Override // ru.zdevs.zarchiver.p045ui.editor.GestureDetectorOnGestureListenerC0340c.a
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            GestureDetectorOnGestureListenerC0340c gestureDetectorOnGestureListenerC0340c = GestureDetectorOnGestureListenerC0340c.this;
            if (actionMasked == 0) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                if (this.f1849a.contains(x2, y2)) {
                    this.f1851c = 1;
                } else {
                    if (!this.f1850b.contains(x2, y2)) {
                        return false;
                    }
                    this.f1851c = 2;
                }
                ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m946j(-2);
                ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m952p(this.f1851c, true);
                return true;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.f1851c == 0) {
                        return false;
                    }
                    int iM989a = gestureDetectorOnGestureListenerC0340c.m989a(motionEvent);
                    int i2 = this.f1851c;
                    if (i2 == 1) {
                        int selectionEnd = gestureDetectorOnGestureListenerC0340c.f1834a.getSelectionEnd();
                        if (iM989a >= selectionEnd) {
                            iM989a = selectionEnd - 1;
                        }
                        ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m954r(iM989a, selectionEnd, -1);
                    } else if (i2 == 2) {
                        int selectionStart = gestureDetectorOnGestureListenerC0340c.f1834a.getSelectionStart();
                        if (iM989a <= selectionStart) {
                            iM989a = selectionStart + 1;
                        }
                        ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m954r(selectionStart, iM989a, 1);
                    }
                    return true;
                }
                if (actionMasked != 3) {
                    return this.f1851c != 0;
                }
            }
            if (this.f1851c == 0) {
                return false;
            }
            this.f1851c = 0;
            ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m952p(0, false);
            ((EditableView) gestureDetectorOnGestureListenerC0340c.f1834a).m946j(-1);
            return true;
        }

        @Override // android.view.ViewTreeObserver.OnTouchModeChangeListener
        public final void onTouchModeChanged(boolean z2) {
            if (z2) {
                return;
            }
            GestureDetectorOnGestureListenerC0340c.this.f1835b = null;
        }
    }

    public GestureDetectorOnGestureListenerC0340c(Context context, InterfaceC0030a interfaceC0030a, C0034e c0034e) {
        this.f1834a = interfaceC0030a;
        Drawable drawableM1173h = C0439c.m1173h(context, R.drawable.text_select_handle_middle);
        this.f1836c = drawableM1173h;
        drawableM1173h.setBounds(0, 0, drawableM1173h.getIntrinsicWidth(), drawableM1173h.getIntrinsicHeight());
        Drawable[] drawableArr = {drawableM1173h, drawableM1173h};
        this.f1837d = drawableArr;
        Drawable drawableM1173h2 = C0439c.m1173h(context, R.drawable.text_select_handle_left);
        drawableM1173h2.setBounds(0, 0, drawableM1173h2.getIntrinsicWidth(), drawableArr[0].getIntrinsicHeight());
        Drawable drawableM1173h3 = C0439c.m1173h(context, R.drawable.text_select_handle_right);
        drawableM1173h3.setBounds(0, 0, drawableM1173h3.getIntrinsicWidth(), drawableArr[1].getIntrinsicHeight());
        drawableM1173h.setTint(c0034e.m135a((byte) 10));
        drawableArr[0].setTint(c0034e.m135a((byte) 10));
        drawableArr[1].setTint(c0034e.m135a((byte) 10));
        OverScroller overScroller = new OverScroller(context);
        this.f1838e = overScroller;
        overScroller.startScroll(0, 0, 0, 0, 0);
        GestureDetector gestureDetector = new GestureDetector(context, this);
        this.f1839f = gestureDetector;
        gestureDetector.setOnDoubleTapListener(this);
    }

    /* JADX INFO: renamed from: a */
    public final int m989a(MotionEvent motionEvent) {
        int iM990b = m990b();
        int iM991c = m991c();
        float intrinsicHeight = this.f1836c.getIntrinsicHeight();
        float x2 = motionEvent.getX() + iM990b;
        float y2 = motionEvent.getY() + iM991c;
        InterfaceC0030a interfaceC0030a = this.f1834a;
        return ((EditableView) interfaceC0030a).m943g(x2, (y2 - interfaceC0030a.getLineHeight()) - intrinsicHeight);
    }

    /* JADX INFO: renamed from: b */
    public final int m990b() {
        return this.f1838e.getCurrX();
    }

    /* JADX INFO: renamed from: c */
    public final int m991c() {
        return this.f1838e.getCurrY();
    }

    /* JADX INFO: renamed from: d */
    public final void m992d(MotionEvent motionEvent, boolean z2) {
        OverScroller overScroller = this.f1838e;
        float x2 = motionEvent.getX() + overScroller.getCurrX();
        float y2 = motionEvent.getY() + overScroller.getCurrY();
        InterfaceC0030a interfaceC0030a = this.f1834a;
        int iM943g = ((EditableView) interfaceC0030a).m943g(x2, y2);
        int[] iArr = interfaceC0030a.getEditable().f1804g;
        int i2 = iArr[0];
        if (i2 != -1 && i2 <= iM943g && iM943g <= iArr[1]) {
            if (z2) {
                ((EditableView) interfaceC0030a).m955s(2);
                return;
            }
            return;
        }
        C0339b editable = interfaceC0030a.getEditable();
        int[] iArrM972j = editable.m972j(iM943g);
        int i3 = iArrM972j[0];
        int i4 = iArrM972j[1];
        EditableView editableView = (EditableView) interfaceC0030a;
        if (!editableView.hasFocus()) {
            editableView.requestFocus();
            if (!editableView.hasFocus()) {
                editableView.requestFocusFromTouch();
            }
        }
        InputMethodManager inputMethodManager = editableView.f1765j;
        inputMethodManager.viewClicked(editableView);
        inputMethodManager.showSoftInput(editableView, 0);
        interfaceC0030a.getInputConnection().beginBatchEdit();
        editableView.m954r(iArrM972j[0], iArrM972j[1], -1);
        editable.m975n(16);
        interfaceC0030a.getInputConnection().endBatchEdit();
    }

    /* JADX INFO: renamed from: e */
    public final void m993e() {
        OverScroller overScroller = this.f1838e;
        overScroller.forceFinished(true);
        overScroller.startScroll(0, 0, 0, 0, 0);
        this.f1840g = 0;
        this.f1841h = 0;
    }

    /* JADX INFO: renamed from: f */
    public final void m994f(int i2, int i3, boolean z2) {
        int i4 = 0;
        if (i2 < 0) {
            i2 = 0;
        } else {
            int i5 = this.f1840g;
            if (i2 > i5) {
                i2 = i5;
            }
        }
        if (i3 < 0 || i3 > (i4 = this.f1841h)) {
            i3 = i4;
        }
        EditableView editableView = (EditableView) this.f1834a;
        editableView.m946j(800);
        editableView.m946j(-3);
        m996h(i2, i3, z2);
    }

    /* JADX INFO: renamed from: g */
    public final void m995g(int i2) {
        if (i2 == 0) {
            this.f1835b = null;
        } else if (i2 == 1 || i2 == 3) {
            this.f1835b = new b(i2 == 1 ? 0 : 5000);
        } else {
            this.f1835b = new c();
        }
    }

    /* JADX INFO: renamed from: h */
    public final void m996h(int i2, int i3, boolean z2) {
        OverScroller overScroller = this.f1838e;
        overScroller.forceFinished(true);
        overScroller.startScroll(overScroller.getCurrX(), overScroller.getCurrY(), i2 - overScroller.getCurrX(), i3 - overScroller.getCurrY(), z2 ? 100 : 250);
        if (z2) {
            overScroller.abortAnimation();
        }
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        m992d(motionEvent, false);
        return true;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        OverScroller overScroller = this.f1838e;
        if (!overScroller.isFinished()) {
            overScroller.forceFinished(true);
            this.f1834a.postInvalidate();
        }
        this.f1842i = true;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        InterfaceC0030a interfaceC0030a = this.f1834a;
        ((EditableView) interfaceC0030a).m946j(1000);
        OverScroller overScroller = this.f1838e;
        overScroller.forceFinished(true);
        overScroller.fling(overScroller.getCurrX(), overScroller.getCurrY(), (int) (-f2), (int) (-f3), 0, this.f1840g, 0, this.f1841h, 0, 0);
        interfaceC0030a.postInvalidate();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        m992d(motionEvent, true);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
        InterfaceC0030a interfaceC0030a = this.f1834a;
        ((EditableView) interfaceC0030a).m946j(600);
        OverScroller overScroller = this.f1838e;
        overScroller.forceFinished(true);
        int currX = overScroller.getCurrX();
        float f4 = currX + f2;
        int i2 = this.f1840g;
        if (f4 > i2) {
            f2 = i2 - currX;
        } else if (f4 < 0.0f) {
            f2 = 0.0f;
        }
        int currY = overScroller.getCurrY();
        float f5 = currY + f3;
        int i3 = this.f1841h;
        if (f5 > i3) {
            f3 = i3 - currY;
        } else if (f5 < 0.0f) {
            f3 = 0.0f;
        }
        if (f2 == 0.0f && f3 == 0.0f) {
            return false;
        }
        overScroller.startScroll(currX, currY, (int) f2, (int) f3, 0);
        interfaceC0030a.postInvalidate();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        InterfaceC0030a interfaceC0030a = this.f1834a;
        EditableView editableView = (EditableView) interfaceC0030a;
        if (editableView.f1768m != null && editableView.f1769n == 1) {
            editableView.m956t();
        }
        C0339b editable = interfaceC0030a.getEditable();
        OverScroller overScroller = this.f1838e;
        float x2 = motionEvent.getX() + overScroller.getCurrX();
        float y2 = motionEvent.getY() + overScroller.getCurrY();
        EditableView editableView2 = (EditableView) interfaceC0030a;
        int iM943g = editableView2.m943g(x2, y2);
        if (editableView2.f1768m != null && editableView2.f1769n == 0) {
            int[] iArr = editable.f1804g;
            editableView2.m956t();
            if (iM943g >= iArr[0] && iM943g < iArr[1]) {
                return true;
            }
        }
        if (!editableView2.hasFocus()) {
            editableView2.requestFocus();
            if (!editableView2.hasFocus()) {
                editableView2.requestFocusFromTouch();
            }
        }
        InputMethodManager inputMethodManager = editableView2.f1765j;
        inputMethodManager.viewClicked(editableView2);
        inputMethodManager.showSoftInput(editableView2, 0);
        interfaceC0030a.getInputConnection().beginBatchEdit();
        editableView2.m954r(iM943g, iM943g, -1);
        editable.m975n(64);
        interfaceC0030a.getInputConnection().endBatchEdit();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
