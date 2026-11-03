package p017f0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.Button;

/* JADX INFO: renamed from: f0.l */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnShowListenerC0102l implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0103m f751a;

    public DialogInterfaceOnShowListenerC0102l(DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m) {
        this.f751a = dialogInterfaceOnCancelListenerC0103m;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC0103m dialogInterfaceOnCancelListenerC0103m = this.f751a;
        AlertDialog alertDialog = dialogInterfaceOnCancelListenerC0103m.f752g;
        Button button = ((AlertDialog) dialogInterface).getButton(-1);
        if (button != null) {
            button.setOnClickListener(dialogInterfaceOnCancelListenerC0103m);
        }
    }
}
