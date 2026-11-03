package p017f0;

import android.app.Dialog;
import android.content.DialogInterface;

/* JADX INFO: renamed from: f0.u */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0111u implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0112v f821a;

    public DialogInterfaceOnClickListenerC0111u(DialogInterfaceOnCancelListenerC0112v dialogInterfaceOnCancelListenerC0112v) {
        this.f821a = dialogInterfaceOnCancelListenerC0112v;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        Dialog dialog = this.f821a.f823g;
        if (dialog != null) {
            dialog.cancel();
        }
    }
}
