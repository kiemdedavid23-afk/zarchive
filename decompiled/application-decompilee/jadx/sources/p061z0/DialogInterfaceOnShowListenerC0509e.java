package p061z0;

import android.content.DialogInterface;
import android.view.View;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z0.e */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnShowListenerC0509e implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ SlidingUpPanelLayout f2400a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DialogC0510f f2401b;

    /* JADX INFO: renamed from: z0.e$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            DialogInterfaceOnShowListenerC0509e.this.f2400a.setPanelState(SlidingUpPanelLayout.EnumC0061e.f439a);
        }
    }

    public DialogInterfaceOnShowListenerC0509e(DialogC0510f dialogC0510f, SlidingUpPanelLayout slidingUpPanelLayout) {
        this.f2401b = dialogC0510f;
        this.f2400a = slidingUpPanelLayout;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        View viewFindViewById;
        if (this.f2400a.getPanelState() != SlidingUpPanelLayout.EnumC0061e.f441c || (viewFindViewById = this.f2401b.f2403a.f2405a.findViewById(R.id.expand)) == null) {
            return;
        }
        viewFindViewById.setVisibility(0);
        viewFindViewById.setClickable(true);
        viewFindViewById.setOnClickListener(new a());
    }
}
