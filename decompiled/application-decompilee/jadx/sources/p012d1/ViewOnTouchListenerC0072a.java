package p012d1;

import android.content.Context;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowInsets;
import android.widget.AbsListView;
import android.widget.GridView;
import android.widget.ListAdapter;
import p008c0.AbstractViewOnClickListenerC0050h;
import p047s0.C0358b;

/* JADX INFO: renamed from: d1.a */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC0072a extends GridView implements AbsListView.OnScrollListener, View.OnTouchListener, InterfaceC0074c {

    /* JADX INFO: renamed from: a */
    public int f502a;

    /* JADX INFO: renamed from: b */
    public int f503b;

    /* JADX INFO: renamed from: c */
    public int f504c;

    /* JADX INFO: renamed from: d */
    public int f505d;

    /* JADX INFO: renamed from: e */
    public boolean f506e;

    /* JADX INFO: renamed from: f */
    public int f507f;

    /* JADX INFO: renamed from: g */
    public final a f508g;

    /* JADX INFO: renamed from: d1.a$a */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ViewOnTouchListenerC0072a.this.setFastScrollAlwaysVisible(false);
        }
    }

    public ViewOnTouchListenerC0072a(Context context) {
        super(context);
        this.f508g = new a();
        setOnScrollListener(this);
        setOnTouchListener(this);
        setVerticalSpacing(5);
        setHorizontalSpacing(5);
        setStretchMode(2);
        setGravity(17);
        this.f502a = 0;
        this.f504c = -1;
        this.f503b = -1;
        this.f507f = 8;
        setColumnWidth((int) (((double) (C0358b.f1989k * 1.6f)) * 1.1d));
        setNumColumns(-1);
    }

    @Override // p012d1.InterfaceC0074c
    public int getClickRawX() {
        return this.f503b;
    }

    @Override // p012d1.InterfaceC0074c
    public int getClickRawY() {
        return this.f504c;
    }

    @Override // p012d1.InterfaceC0074c
    public int getMaxVisibleItemCount() {
        return this.f507f;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        fitSystemWindows(new Rect(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()));
        return windowInsets;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        this.f503b = -1;
        this.f504c = -1;
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int measuredWidth = getMeasuredWidth() * getMeasuredHeight();
        int i4 = C0358b.f1989k;
        this.f507f = (((measuredWidth / i4) / i4) * 2) / 3;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i2) {
        boolean z2 = true;
        if (this.f506e) {
            a aVar = this.f508g;
            if (i2 != 0) {
                setFastScrollAlwaysVisible(true);
                removeCallbacks(aVar);
            } else {
                postDelayed(aVar, 1500L);
            }
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        boolean z3 = firstVisiblePosition >= this.f505d;
        if (i2 == 1 || i2 == 2) {
            this.f505d = firstVisiblePosition;
        } else {
            z2 = false;
        }
        AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050h = (AbstractViewOnClickListenerC0050h) getAdapter();
        if (abstractViewOnClickListenerC0050h != null) {
            abstractViewOnClickListenerC0050h.m197k(z2, z3);
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        this.f503b = (int) motionEvent.getRawX();
        this.f504c = (int) motionEvent.getRawY();
        if (motionEvent.getAction() == 0) {
            this.f502a = motionEvent.getButtonState();
        }
        if (this.f502a == 2 && motionEvent.getAction() == 1 && motionEvent.getEventTime() - motionEvent.getDownTime() < ViewConfiguration.getLongPressTimeout()) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            view.performClick();
            if (iPointToPosition >= 0 && getOnItemLongClickListener() != null) {
                getOnItemLongClickListener().onItemLongClick(null, null, iPointToPosition, -7L);
            }
            this.f502a = 0;
            return true;
        }
        if (this.f502a != 4 || motionEvent.getAction() != 1) {
            if (motionEvent.getButtonState() == 4) {
                return true;
            }
            int buttonState = motionEvent.getButtonState();
            int i2 = this.f502a;
            return (buttonState != i2 || i2 == 0 || i2 == 1) ? false : true;
        }
        int iPointToPosition2 = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        view.performClick();
        if (iPointToPosition2 >= 0 && getOnItemClickListener() != null) {
            getOnItemClickListener().onItemClick(null, null, iPointToPosition2, -8L);
        }
        this.f502a = 0;
        return true;
    }

    @Override // android.widget.AbsListView
    public void setFastScrollEnabled(boolean z2) {
        super.setFastScrollEnabled(z2);
        this.f506e = z2;
    }

    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (this.f506e) {
            removeCallbacks(this.f508g);
            setFastScrollAlwaysVisible(false);
        }
        super.setAdapter(listAdapter);
    }
}
