package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.w */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0113w extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f833g;

    public DialogInterfaceOnCancelListenerC0113w(int i2, Context context, String str, C0307d c0307d) {
        this.f742f = c0307d;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.app_name);
        if (str != null) {
            builder.setMessage(str);
        }
        switch (i2) {
            case 1:
            case 6:
                builder.setPositiveButton(R.string.BTN_YES, this);
                builder.setNegativeButton(R.string.BTN_NO, this);
                if (i2 == 6) {
                    builder.setNeutralButton(R.string.BTN_CANCEL, this);
                }
                break;
            case 2:
                builder.setPositiveButton(R.string.BTN_OK, this);
                builder.setNegativeButton(R.string.BTN_CANCEL, this);
                break;
            case 3:
                builder.setPositiveButton(R.string.BTN_YES, this);
                builder.setNegativeButton(R.string.BTN_CANCEL, this);
                break;
            case 4:
                builder.setPositiveButton(R.string.BTN_OK, this);
                break;
            case 5:
                builder.setPositiveButton(R.string.BTN_AGREE, this);
                builder.setNegativeButton(R.string.BTN_CANCEL, this);
                break;
        }
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f833g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f833g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f833g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 4;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.b bVar;
        AbstractC0099i.c cVar;
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    /* JADX INFO: renamed from: r */
    public final void m381r() {
        AlertDialog alertDialog = this.f833g;
        if (alertDialog != null) {
            AbstractC0099i.m354q(alertDialog);
        }
    }
}
