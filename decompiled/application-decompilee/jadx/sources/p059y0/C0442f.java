package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.TextView;

/* JADX INFO: renamed from: y0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0442f {

    /* JADX INFO: renamed from: y0.f$a */
    public class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ View f2246a;

        public a(View view) {
            this.f2246a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            this.f2246a.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1190a(View view) {
        view.setAlpha(1.0f);
        view.animate().alpha(0.0f).setInterpolator(new AccelerateInterpolator(2.0f)).setDuration(200).setListener(new C0445i(view));
    }

    /* JADX INFO: renamed from: b */
    public static void m1191b(View view) {
        view.setAlpha(0.0f);
        view.animate().alpha(1.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(300).setListener(new C0444h(view));
    }

    /* JADX INFO: renamed from: c */
    public static void m1192c(ImageView imageView, Bitmap bitmap) {
        imageView.animate().alpha(0.3f).setInterpolator(new AccelerateInterpolator(2.0f)).setDuration(150).setListener(new C0446j(imageView, bitmap));
    }

    /* JADX INFO: renamed from: d */
    public static void m1193d(TextView textView) {
        if (textView == null) {
            return;
        }
        textView.setBreakStrategy(0);
        textView.setHyphenationFrequency(0);
    }

    /* JADX INFO: renamed from: e */
    public static void m1194e(TextView textView, String str, String str2) {
        int iIndexOf;
        if (str2 == null || (iIndexOf = str.toLowerCase().indexOf(str2)) < 0) {
            textView.setText(str);
            return;
        }
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new StyleSpan(1), iIndexOf, str2.length() + iIndexOf, 33);
        textView.setText(spannableString);
    }

    /* JADX INFO: renamed from: f */
    public static void m1195f(View view) {
        view.setTranslationY(((View) view.getParent()).getBottom() - view.getTop());
        view.animate().translationY(0.0f).setInterpolator(new DecelerateInterpolator(2.0f)).setDuration(500L).setListener(new a(view));
    }
}
