package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import p047s0.C0358b;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.b0 */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0091b0 extends AbstractC0099i implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f704g;

    public DialogInterfaceOnClickListenerC0091b0(C0307d c0307d, Context context) {
        this.f742f = c0307d;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.RTW_TTL_WARNING);
        builder.setView(LayoutInflater.from(context).inflate(R.layout.dlg_root_wrn, (ViewGroup) null, false));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f704g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f704g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f704g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 15;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        CheckBox checkBox;
        AbstractC0099i.b bVar;
        AbstractC0099i.c cVar;
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        AlertDialog alertDialog = this.f704g;
        if (alertDialog != null && (checkBox = (CheckBox) alertDialog.findViewById(R.id.cbDontShow)) != null && checkBox.isChecked()) {
            C0358b.m1044o(this.f704g.getContext(), 32);
        }
        mo337d();
    }
}
