package p017f0;

import android.app.AlertDialog;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;

/* JADX INFO: renamed from: f0.z */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0116z implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ CheckBox f853a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0089a0 f854b;

    public ViewOnClickListenerC0116z(DialogInterfaceOnCancelListenerC0089a0 dialogInterfaceOnCancelListenerC0089a0, CheckBox checkBox) {
        this.f854b = dialogInterfaceOnCancelListenerC0089a0;
        this.f853a = checkBox;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Window window;
        AlertDialog alertDialog = this.f854b.f689g;
        if (alertDialog == null || (window = alertDialog.getWindow()) == null) {
            return;
        }
        if (this.f853a.isChecked()) {
            window.addFlags(128);
        } else {
            window.clearFlags(128);
        }
    }
}
