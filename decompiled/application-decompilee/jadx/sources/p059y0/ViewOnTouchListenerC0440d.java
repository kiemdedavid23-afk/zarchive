package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: y0.d */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnTouchListenerC0440d implements View.OnTouchListener, ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: a */
    public final View f2236a;

    /* JADX INFO: renamed from: b */
    public final int f2237b;

    /* JADX INFO: renamed from: c */
    public final int f2238c;

    /* JADX INFO: renamed from: d */
    public final int f2239d;

    /* JADX INFO: renamed from: e */
    public final LinearLayout f2240e;

    /* JADX INFO: renamed from: f */
    public final PopupWindow f2241f;

    /* JADX INFO: renamed from: g */
    public float f2242g;

    /* JADX INFO: renamed from: h */
    public float f2243h;

    /* JADX INFO: renamed from: y0.d$a */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            ViewOnTouchListenerC0440d.this.f2241f.dismiss();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003c  */
    public ViewOnTouchListenerC0440d(Context context, View view, int i2, String str, int i3, int i4) throws Exception {
        Activity activity;
        int i5;
        int i6;
        this.f2236a = view;
        this.f2237b = i2;
        this.f2238c = i3;
        this.f2239d = i4;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f2240e = linearLayout;
        linearLayout.setOnTouchListener(this);
        int iM1168c = C0439c.m1168c(context, R.attr.colorPrimaryDark);
        int iM1166a = C0439c.m1166a(8);
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                activity = (Activity) baseContext;
            } else {
                activity = null;
            }
        } else {
            activity = null;
        }
        if (activity != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            i5 = displayMetrics.widthPixels;
            i6 = displayMetrics.heightPixels;
        } else {
            i5 = Integer.MAX_VALUE;
            i6 = Integer.MAX_VALUE;
        }
        TextView textView = new TextView(context);
        textView.setTextAppearance(android.R.style.TextAppearance.Small);
        textView.setPadding(iM1166a, iM1166a, iM1166a, iM1166a);
        textView.setTextColor(C0439c.m1170e(iM1168c));
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setBackgroundColor(iM1168c);
        if (i6 != Integer.MAX_VALUE || i5 != Integer.MAX_VALUE) {
            textView.setMaxWidth((Math.min(i5, i6) * 2) / 3);
        }
        textView.setText(str);
        ImageView imageView = new ImageView(context);
        imageView.setColorFilter(new PorterDuffColorFilter(iM1168c, PorterDuff.Mode.MULTIPLY));
        imageView.setImageResource(R.drawable.ic_arrow_down);
        if (i2 == 48) {
            linearLayout.setOrientation(1);
            linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
        } else {
            if (i2 != 80) {
                throw new Exception("Unsupported gravity");
            }
            linearLayout.setOrientation(1);
            imageView.setRotation(180.0f);
            linearLayout.addView(imageView, new LinearLayout.LayoutParams(-2, -2));
            linearLayout.addView(textView, new LinearLayout.LayoutParams(-2, -2));
        }
        PopupWindow popupWindow = new PopupWindow(linearLayout, -1, -1);
        this.f2241f = popupWindow;
        popupWindow.setOutsideTouchable(true);
    }

    /* JADX INFO: renamed from: a */
    public final void m1175a() {
        if (this.f2241f.isShowing()) {
            LinearLayout linearLayout = this.f2240e;
            linearLayout.setPivotX(this.f2242g);
            linearLayout.setPivotY(this.f2243h);
            linearLayout.animate().setDuration(300L).alpha(0.0f).scaleX(0.0f).scaleY(0.0f).setListener(new a());
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0027  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        Activity activity;
        TextView textView;
        View childAt;
        LinearLayout linearLayout = this.f2240e;
        linearLayout.getViewTreeObserver().removeOnPreDrawListener(this);
        Context context = linearLayout.getContext();
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else if (context instanceof ContextWrapper) {
            Context baseContext = ((ContextWrapper) context).getBaseContext();
            if (baseContext instanceof Activity) {
                activity = (Activity) baseContext;
            } else {
                activity = null;
            }
        } else {
            activity = null;
        }
        if (activity == null) {
            return false;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        int[] iArr = new int[2];
        linearLayout.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        View view = this.f2236a;
        view.getLocationOnScreen(iArr2);
        int i3 = iArr2[1] - iArr[1];
        int i4 = iArr2[0] - iArr[0];
        int width = view.getWidth();
        int height = view.getHeight();
        int i5 = this.f2237b;
        if (i5 == 3 || i5 == 80) {
            View childAt2 = linearLayout.getChildAt(0);
            textView = (TextView) linearLayout.getChildAt(1);
            childAt = childAt2;
        } else {
            childAt = linearLayout.getChildAt(1);
            textView = (TextView) linearLayout.getChildAt(0);
        }
        int width2 = textView.getWidth();
        int height2 = textView.getHeight();
        int width3 = childAt.getWidth();
        int height3 = childAt.getHeight();
        int iM1166a = C0439c.m1166a(20);
        if (i5 == 48 || i5 == 80) {
            int iMax = Math.max(width2, width3);
            int i6 = height2 + height3;
            int i7 = this.f2239d;
            int i8 = i5 == 48 ? (i3 - i6) + i7 : (height + i3) - i7;
            int i9 = (width / 2) + i4;
            int i10 = i9 - (iMax / 2);
            if (i10 + iMax > i2) {
                i10 = (i2 - iMax) - (iM1166a * 2);
            }
            int iMax2 = Math.max(0, i10) + iM1166a;
            linearLayout.setPadding(iMax2, i8, iM1166a, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            marginLayoutParams.leftMargin = ((i9 - iMax2) - (childAt.getWidth() / 2)) - this.f2238c;
            childAt.setLayoutParams(marginLayoutParams);
            this.f2242g = i9;
            this.f2243h = i5 == 48 ? i3 : i8;
        }
        linearLayout.setAlpha(0.0f);
        linearLayout.setPivotX(this.f2242g);
        linearLayout.setPivotY(this.f2243h);
        linearLayout.setScaleX(0.0f);
        linearLayout.setScaleY(0.0f);
        linearLayout.animate().setDuration(300L).alpha(1.0f).scaleX(1.0f).scaleY(1.0f);
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        m1175a();
        return false;
    }
}
