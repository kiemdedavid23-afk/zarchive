package p017f0;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.Spinner;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.g */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0097g implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ EditText f716a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Context f717b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Spinner f718c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0098h f719d;

    public DialogInterfaceOnClickListenerC0097g(DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h, EditText editText, Context context, Spinner spinner) {
        this.f719d = dialogInterfaceOnCancelListenerC0098h;
        this.f716a = editText;
        this.f717b = context;
        this.f718c = spinner;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h = this.f719d;
        if (dialogInterfaceOnCancelListenerC0098h.f720g == null) {
            return;
        }
        try {
            int i3 = Integer.parseInt(this.f716a.getText().toString());
            Spinner spinner = (Spinner) dialogInterfaceOnCancelListenerC0098h.f720g.findViewById(R.id.spn_split);
            if (i3 <= 0 || spinner == null) {
                return;
            }
            dialogInterfaceOnCancelListenerC0098h.m348r(this.f717b, i3 + this.f718c.getSelectedItem().toString());
        } catch (Exception unused) {
        }
    }
}
