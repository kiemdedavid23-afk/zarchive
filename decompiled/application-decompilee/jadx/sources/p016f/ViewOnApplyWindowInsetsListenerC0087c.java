package p016f;

import android.graphics.Rect;
import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: renamed from: f.c */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0087c implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a */
    public final Rect f682a = new Rect();

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C0086b f683b;

    public ViewOnApplyWindowInsetsListenerC0087c(C0086b c0086b) {
        this.f683b = c0086b;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsetsOnApplyWindowInsets.isConsumed()) {
            return windowInsetsOnApplyWindowInsets;
        }
        int systemWindowInsetLeft = windowInsetsOnApplyWindowInsets.getSystemWindowInsetLeft();
        Rect rect = this.f682a;
        rect.left = systemWindowInsetLeft;
        rect.top = windowInsetsOnApplyWindowInsets.getSystemWindowInsetTop();
        rect.right = windowInsetsOnApplyWindowInsets.getSystemWindowInsetRight();
        rect.bottom = windowInsetsOnApplyWindowInsets.getSystemWindowInsetBottom();
        C0086b c0086b = this.f683b;
        int childCount = c0086b.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            WindowInsets windowInsetsDispatchApplyWindowInsets = c0086b.getChildAt(i2).dispatchApplyWindowInsets(windowInsetsOnApplyWindowInsets);
            rect.left = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
            rect.top = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
            rect.right = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
            rect.bottom = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
        }
        return windowInsetsOnApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
    }
}
