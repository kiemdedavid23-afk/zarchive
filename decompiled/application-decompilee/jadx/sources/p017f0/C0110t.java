package p017f0;

import android.widget.PopupWindow;

/* JADX INFO: renamed from: f0.t */
/* JADX INFO: loaded from: classes.dex */
public final class C0110t implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0112v f820a;

    public C0110t(DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v) {
        this.f820a = dialogInterfaceOnCancelListenerC0112v;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f820a.mo337d();
    }
}
