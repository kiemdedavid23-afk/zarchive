package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import p004b.C0015d;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.p045ui.text.ExEditText;

/* JADX INFO: renamed from: f0.m */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0103m extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f752g;

    /* JADX INFO: renamed from: h */
    public String f753h;

    /* JADX INFO: renamed from: i */
    public boolean f754i;

    public DialogInterfaceOnCancelListenerC0103m(C0307d c0307d, Context context, String str, String str2, int i2) {
        this.f742f = c0307d;
        this.f753h = "";
        this.f754i = false;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_enter_text, (ViewGroup) null, false);
        builder.setView(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(str2);
        builder.setPositiveButton(R.string.BTN_OK, (DialogInterface.OnClickListener) null);
        if (C0015d.m49K(i2, 2)) {
            builder.setNegativeButton(R.string.BTN_CANCEL, this);
        }
        builder.setOnCancelListener(this);
        ExEditText exEditText = (ExEditText) viewInflate.findViewById(R.id.edt_text);
        if (C0015d.m49K(i2, 1)) {
            exEditText.setKeyListener(null);
        }
        if (C0015d.m49K(i2, 4)) {
            exEditText.setRawInputType(1);
            exEditText.setImeOptions(67108870);
        }
        exEditText.setText(this.f753h);
        exEditText.f1921a = true ^ (exEditText.requestFocus() && ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).showSoftInput(exEditText, 1));
        AlertDialog alertDialogCreate = builder.create();
        this.f752g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f752g.setOnShowListener(new DialogInterfaceOnShowListenerC0102l(this));
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f752g;
        if (alertDialog != null) {
            m362r((EditText) alertDialog.findViewById(R.id.edt_text));
            this.f752g.dismiss();
            this.f752g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 3;
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
        AlertDialog alertDialog = this.f752g;
        if (alertDialog != null) {
            m362r((EditText) alertDialog.findViewById(R.id.edt_text));
        }
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    /* JADX INFO: renamed from: r */
    public final void m362r(EditText editText) {
        if (editText != null) {
            String string = editText.getText().toString();
            if (this.f753h.equals(string)) {
                return;
            }
            this.f753h = string;
            this.f754i = true;
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m363s(String str) {
        this.f753h = str;
        this.f754i = false;
        AlertDialog alertDialog = this.f752g;
        if (alertDialog != null) {
            EditText editText = (EditText) alertDialog.findViewById(R.id.edt_text);
            editText.setText(str);
            editText.setSelection(str.length());
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AlertDialog alertDialog = this.f752g;
        if (alertDialog != null) {
            m362r((EditText) alertDialog.findViewById(R.id.edt_text));
        }
        AbstractC0099i.c cVar = this.f738b;
        if (cVar == null || cVar.mo245b(this)) {
            mo337d();
        }
    }

    public DialogInterfaceOnCancelListenerC0103m(C0307d c0307d, Context context, String str, int i2, int i3) {
        this(c0307d, context, str, context.getString(i2), i3);
    }

    public DialogInterfaceOnCancelListenerC0103m(C0307d c0307d, Context context, int i2, int i3) {
        this(c0307d, context, context.getString(i2), context.getString(i3), 6);
    }
}
