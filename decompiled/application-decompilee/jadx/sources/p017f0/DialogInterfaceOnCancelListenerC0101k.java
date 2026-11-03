package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import p059y0.ViewOnTouchListenerC0440d;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.p045ui.text.EditPassword;

/* JADX INFO: renamed from: f0.k */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0101k extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f748g;

    /* JADX INFO: renamed from: h */
    public ViewOnTouchListenerC0440d f749h;

    /* JADX INFO: renamed from: i */
    public String f750i;

    public DialogInterfaceOnCancelListenerC0101k(C0307d c0307d, Context context) {
        this.f742f = c0307d;
        this.f749h = null;
        this.f750i = "";
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.PWD_TTL_PASSWORD);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_enter_pwd, (ViewGroup) null, false);
        builder.setView(viewInflate);
        EditPassword editPassword = (EditPassword) viewInflate.findViewById(R.id.edt_text);
        editPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(1024)});
        editPassword.f1921a = true ^ (editPassword.requestFocus() && ((InputMethodManager) editPassword.getContext().getSystemService("input_method")).showSoftInput(editPassword, 1));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setNeutralButton("help", (DialogInterface.OnClickListener) null);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f748g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f748g.setOnShowListener(new DialogInterfaceOnShowListenerC0100j(this, context));
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f748g;
        if (alertDialog != null) {
            EditText editText = (EditText) alertDialog.findViewById(R.id.edt_text);
            if (editText != null) {
                this.f750i = editText.getText().toString();
            }
            this.f748g.dismiss();
            this.f748g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 12;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        ViewOnTouchListenerC0440d viewOnTouchListenerC0440d = this.f749h;
        if (viewOnTouchListenerC0440d != null) {
            viewOnTouchListenerC0440d.m1175a();
            this.f749h = null;
        }
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
        EditText editText;
        AlertDialog alertDialog = this.f748g;
        if (alertDialog != null && (editText = (EditText) alertDialog.findViewById(R.id.edt_text)) != null) {
            this.f750i = editText.getText().toString();
        }
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        } else if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
    }
}
