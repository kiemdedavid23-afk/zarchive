package p059y0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import ru.zdevs.zarchiver.activity.OpenAsDlg;

/* JADX INFO: renamed from: y0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0443g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Runnable f2247a;

    public C0443g(OpenAsDlg.RunnableC0295a runnableC0295a) {
        this.f2247a = runnableC0295a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Runnable runnable = this.f2247a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
