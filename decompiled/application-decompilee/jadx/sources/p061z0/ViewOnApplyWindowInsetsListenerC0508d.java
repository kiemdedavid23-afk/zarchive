package p061z0;

import android.view.View;
import android.view.WindowInsets;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z0.d */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnApplyWindowInsetsListenerC0508d implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ SlidingUpPanelLayout f2398a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DialogC0510f f2399b;

    public ViewOnApplyWindowInsetsListenerC0508d(DialogC0510f dialogC0510f, SlidingUpPanelLayout slidingUpPanelLayout) {
        this.f2399b = dialogC0510f;
        this.f2398a = slidingUpPanelLayout;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        int systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
        if (systemWindowInsetBottom > 0) {
            View viewFindViewById = this.f2399b.findViewById(R.id.sup_container);
            if (viewFindViewById != null) {
                viewFindViewById.setPadding(0, 0, 0, systemWindowInsetBottom);
            }
            this.f2398a.m225g(systemWindowInsetBottom);
        }
        return windowInsets.consumeSystemWindowInsets();
    }
}
