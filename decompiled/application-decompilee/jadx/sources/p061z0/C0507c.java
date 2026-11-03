package p061z0;

import android.view.View;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import p017f0.DialogInterfaceOnCancelListenerC0112v;
import p059y0.C0442f;
import p059y0.C0447k;
import p059y0.RunnableC0448l;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: z0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0507c implements SlidingUpPanelLayout.InterfaceC0060d {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogC0510f f2397a;

    public C0507c(DialogC0510f dialogC0510f) {
        this.f2397a = dialogC0510f;
    }

    @Override // com.sothree.slidinguppanel.SlidingUpPanelLayout.InterfaceC0060d
    /* JADX INFO: renamed from: a */
    public final void mo12a() {
    }

    @Override // com.sothree.slidinguppanel.SlidingUpPanelLayout.InterfaceC0060d
    /* JADX INFO: renamed from: b */
    public final void mo13b(SlidingUpPanelLayout.EnumC0061e enumC0061e) {
        SlidingUpPanelLayout.EnumC0061e enumC0061e2 = SlidingUpPanelLayout.EnumC0061e.f440b;
        DialogC0510f dialogC0510f = this.f2397a;
        if (enumC0061e == enumC0061e2) {
            dialogC0510f.dismiss();
            return;
        }
        if (enumC0061e == SlidingUpPanelLayout.EnumC0061e.f439a) {
            View viewFindViewById = dialogC0510f.findViewById(R.id.expand);
            if (viewFindViewById != null) {
                viewFindViewById.animate().rotation(180.0f).setDuration(300L).withEndAction(new RunnableC0448l(viewFindViewById, new C0447k(viewFindViewById)));
            }
            InterfaceC0511g interfaceC0511g = dialogC0510f.f2404b;
            if (interfaceC0511g != null) {
                ((DialogInterfaceOnCancelListenerC0112v) interfaceC0511g).m379s(dialogC0510f, 3);
                return;
            }
            return;
        }
        if (enumC0061e == SlidingUpPanelLayout.EnumC0061e.f441c) {
            View viewFindViewById2 = dialogC0510f.findViewById(R.id.expand);
            if (viewFindViewById2 != null) {
                C0442f.m1191b(viewFindViewById2);
            }
            InterfaceC0511g interfaceC0511g2 = dialogC0510f.f2404b;
            if (interfaceC0511g2 != null) {
                ((DialogInterfaceOnCancelListenerC0112v) interfaceC0511g2).m379s(dialogC0510f, 2);
            }
        }
    }
}
