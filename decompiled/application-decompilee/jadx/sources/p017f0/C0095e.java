package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0095e implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0098h f714a;

    public C0095e(DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h) {
        this.f714a = dialogInterfaceOnCancelListenerC0098h;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        AlertDialog alertDialog;
        DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h = this.f714a;
        if (i2 != dialogInterfaceOnCancelListenerC0098h.f725l || (alertDialog = dialogInterfaceOnCancelListenerC0098h.f720g) == null) {
            return;
        }
        Context context = alertDialog.getContext();
        dialogInterfaceOnCancelListenerC0098h.getClass();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.app_name);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_split_size, (ViewGroup) null, false);
        EditText editText = (EditText) viewInflate.findViewById(R.id.etSplitSize);
        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spSplitSize);
        spinner.setSelection(2);
        builder.setView(viewInflate);
        builder.setPositiveButton(R.string.BTN_OK, new DialogInterfaceOnClickListenerC0097g(dialogInterfaceOnCancelListenerC0098h, editText, context, spinner));
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        alertDialogCreate.setCanceledOnTouchOutside(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
