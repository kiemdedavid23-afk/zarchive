package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import p005b0.C0024f;
import p005b0.C0026h;
import p020g0.C0129h;
import p047s0.C0358b;
import p051u0.C0385h;
import p059y0.C0438b;
import p059y0.C0439c;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.a */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0088a extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f684g;

    /* JADX INFO: renamed from: h */
    public final String f685h;

    /* JADX INFO: renamed from: i */
    public String f686i;

    /* JADX INFO: renamed from: j */
    public final C0129h f687j;

    /* JADX INFO: renamed from: k */
    public int f688k;

    public DialogInterfaceOnCancelListenerC0088a(C0307d c0307d, Context context, int i2, String str, C0129h c0129h) {
        this.f742f = c0307d;
        if (C0385h.m1081e(str)) {
            this.f685h = context.getString(R.string.ADDF_TTL_ADD_FAVORITE);
        } else {
            this.f685h = str;
        }
        this.f686i = str;
        this.f687j = c0129h;
        this.f688k = i2;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(this.f685h);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_add_to_favotite, (ViewGroup) null, false);
        builder.setView(viewInflate);
        C0024f c0024f = new C0024f(context);
        Resources resources = context.getResources();
        Resources.Theme themeNewTheme = context.getResources().newTheme();
        themeNewTheme.applyStyle(C0358b.f1987i, true);
        for (int i3 = -2; i3 <= 13; i3++) {
            int iM1033d = C0358b.m1033d();
            int iM1161b = C0438b.m1161b(iM1033d, i3);
            c0024f.f190b.add(new C0026h(iM1033d != 4096 ? C0439c.m1174i(resources, themeNewTheme, iM1161b) : resources.getDrawable(iM1161b)));
        }
        int i4 = this.f688k;
        if (i4 + 2 < 0 || i4 - (-2) > 13) {
            this.f688k = 13;
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_text);
        textView.setText(textView.getText().toString().replace("%1", this.f687j.m493t()));
        ((EditText) viewInflate.findViewById(R.id.edt_text)).setText(this.f686i);
        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spn_icon);
        spinner.setAdapter((SpinnerAdapter) c0024f);
        spinner.setSelection(this.f688k - (-2));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        this.f684g = builder.create();
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        m339r();
        AlertDialog alertDialog = this.f684g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f684g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 11;
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
        m339r();
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    /* JADX INFO: renamed from: r */
    public final void m339r() {
        AlertDialog alertDialog = this.f684g;
        if (alertDialog == null) {
            return;
        }
        this.f686i = ((EditText) alertDialog.findViewById(R.id.edt_text)).getText().toString();
        this.f688k = ((Spinner) this.f684g.findViewById(R.id.spn_icon)).getSelectedItemPosition() - 2;
    }
}
