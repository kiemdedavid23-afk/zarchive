package p061z0;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import p017f0.DialogInterfaceOnCancelListenerC0112v;
import p059y0.C0441e;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z0.f */
/* JADX INFO: loaded from: classes.dex */
public final class DialogC0510f extends Dialog {

    /* JADX INFO: renamed from: a */
    public final a f2403a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC0511g f2404b;

    /* JADX INFO: renamed from: z0.f$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public View f2405a;

        /* JADX INFO: renamed from: b */
        public boolean f2406b = true;

        /* JADX INFO: renamed from: c */
        public int f2407c = -1;

        /* JADX INFO: renamed from: d */
        public int f2408d = 0;

        /* JADX INFO: renamed from: e */
        public int f2409e = 1;

        /* JADX INFO: renamed from: f */
        public boolean f2410f = false;

        /* JADX INFO: renamed from: g */
        public boolean f2411g = true;

        /* JADX INFO: renamed from: h */
        public InterfaceC0511g f2412h;
    }

    public DialogC0510f(Context context, int i2, a aVar) {
        super(context, i2);
        this.f2403a = aVar;
        this.f2404b = aVar.f2412h;
    }

    /* JADX INFO: renamed from: a */
    public static int m1210a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point(0, 0);
        defaultDisplay.getSize(point);
        if (point.x < point.y || ((context instanceof Activity) && C0441e.m1176a((Activity) context))) {
            return -1;
        }
        return point.y;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        InterfaceC0511g interfaceC0511g = this.f2404b;
        if (interfaceC0511g != null) {
            ((DialogInterfaceOnCancelListenerC0112v) interfaceC0511g).m379s(this, 1);
        }
        super.dismiss();
    }

    @Override // android.app.Dialog
    public final void onCreate(Bundle bundle) {
        a aVar = this.f2403a;
        if (aVar == null || aVar.f2405a == null) {
            throw new IllegalStateException("Unable to create BottomSheet, missing params");
        }
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = aVar.f2409e | 80;
            attributes.windowAnimations = 0;
            attributes.width = -1;
            if (aVar.f2410f) {
                attributes.flags |= 134217728;
            }
            window.setAttributes(attributes);
        } else {
            Log.e("BottomSheet", "Window came back as null, unable to set defaults");
            aVar.f2410f = false;
        }
        super.onCreate(bundle);
        setCancelable(aVar.f2406b);
        setCanceledOnTouchOutside(aVar.f2406b);
        Context context = getContext();
        int iM1210a = aVar.f2408d;
        if (iM1210a <= 0) {
            iM1210a = context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_width);
        }
        if (iM1210a <= 0) {
            iM1210a = m1210a(context);
        }
        setContentView(aVar.f2405a, new ViewGroup.LayoutParams(iM1210a, -1));
        aVar.f2405a.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserverOnPreDrawListenerC0505a(this));
        if (aVar.f2406b) {
            findViewById(R.id.outside).setOnTouchListener(new ViewOnTouchListenerC0506b(this));
        }
        SlidingUpPanelLayout slidingUpPanelLayout = (SlidingUpPanelLayout) findViewById(R.id.sup_sliding);
        int i2 = aVar.f2407c;
        if (i2 > 0) {
            slidingUpPanelLayout.setAnchorOffset(i2);
        }
        slidingUpPanelLayout.setPanelSlideListener(new C0507c(this));
        if (aVar.f2410f) {
            getWindow().getDecorView().setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC0508d(this, slidingUpPanelLayout));
        }
        if (aVar.f2411g) {
            findViewById(R.id.sup_container).setElevation(12.0f);
        }
        View viewFindViewById = findViewById(android.R.id.list);
        if (viewFindViewById != null) {
            slidingUpPanelLayout.setScrollableView(viewFindViewById);
        }
        setOnShowListener(new DialogInterfaceOnShowListenerC0509e(this, slidingUpPanelLayout));
        InterfaceC0511g interfaceC0511g = this.f2404b;
        if (interfaceC0511g != null) {
            ((DialogInterfaceOnCancelListenerC0112v) interfaceC0511g).m379s(this, 0);
        }
    }

    @Override // android.app.Dialog
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            dismiss();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.app.Dialog
    public final void show() {
        Window window;
        super.show();
        if (this.f2403a.f2411g || (window = getWindow()) == null) {
            return;
        }
        window.clearFlags(2);
    }
}
