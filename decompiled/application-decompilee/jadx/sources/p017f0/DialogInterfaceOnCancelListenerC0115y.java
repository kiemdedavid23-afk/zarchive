package p017f0;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import android.widget.TextView;
import p059y0.C0441e;
import p061z0.DialogC0510f;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.y */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0115y extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnKeyListener {

    /* JADX INFO: renamed from: g */
    public Dialog f850g;

    /* JADX INFO: renamed from: h */
    public ProgressBar f851h;

    /* JADX INFO: renamed from: i */
    public final int f852i;

    public DialogInterfaceOnCancelListenerC0115y(C0307d c0307d, Context context, int i2, int i3) {
        this(i3, context, context.getResources().getString(i2), c0307d);
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        Dialog dialog = this.f850g;
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
            this.f850g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 1;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        if ((this.f852i & 1) == 0) {
            return;
        }
        try {
            Window window = this.f850g.getWindow();
            if (window == null) {
                return;
            }
            View viewFindViewById = this.f850g.findViewById(R.id.sup_container);
            if (!C0441e.m1177b(context, true, configuration)) {
                window.setFlags(0, 134217728);
                viewFindViewById.setPadding(0, 0, 0, 0);
            } else {
                window.setFlags(134217728, 134217728);
                int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                viewFindViewById.setPadding(0, 0, 0, identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        onCancel(dialogInterface);
        return false;
    }

    /* JADX INFO: renamed from: r */
    public final void m387r() {
        Dialog dialog = this.f850g;
        if (dialog != null) {
            AbstractC0099i.m354q(dialog);
        }
    }

    public DialogInterfaceOnCancelListenerC0115y(int i2, Context context, String str, C0307d c0307d) {
        this.f742f = c0307d;
        this.f852i = i2;
        if ((i2 & 1) == 0) {
            ProgressDialog progressDialog = new ProgressDialog(context);
            progressDialog.setProgressStyle(1);
            progressDialog.setIndeterminate(true);
            progressDialog.setProgressNumberFormat(null);
            progressDialog.setProgressPercentFormat(null);
            progressDialog.setTitle(R.string.app_name);
            progressDialog.setMessage(str);
            progressDialog.setCancelable(false);
            progressDialog.setOnKeyListener(this);
            progressDialog.setCanceledOnTouchOutside(false);
            this.f850g = progressDialog;
        } else {
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_bottom_process, (ViewGroup) null, false);
            this.f851h = (ProgressBar) viewInflate.findViewById(R.id.progress);
            ((TextView) viewInflate.findViewById(R.id.title)).setText(str);
            DialogC0510f.a aVar = new DialogC0510f.a();
            aVar.f2405a = viewInflate;
            aVar.f2406b = false;
            aVar.f2408d = context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_dlg_width);
            aVar.f2409e = 0;
            aVar.f2410f = C0441e.m1177b(context, true, null);
            aVar.f2411g = false;
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.bottomSheetStyle, typedValue, true);
            DialogC0510f dialogC0510f = new DialogC0510f(context, typedValue.resourceId, aVar);
            this.f850g = dialogC0510f;
            dialogC0510f.setOnKeyListener(this);
        }
        m355a();
    }
}
