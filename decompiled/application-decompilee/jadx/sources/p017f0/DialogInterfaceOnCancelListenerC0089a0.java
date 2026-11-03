package p017f0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.util.Locale;
import p051u0.C0385h;
import p059y0.C0442f;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: f0.a0 */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0089a0 extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f689g;

    /* JADX INFO: renamed from: h */
    public ProgressBar f690h;

    /* JADX INFO: renamed from: i */
    public TextView f691i;

    /* JADX INFO: renamed from: j */
    public TextView f692j;

    /* JADX INFO: renamed from: k */
    public TextView f693k;

    public DialogInterfaceOnCancelListenerC0089a0(C0307d c0307d, ZArchiver zArchiver, int i2) {
        this.f742f = c0307d;
        AlertDialog.Builder builder = new AlertDialog.Builder(zArchiver);
        View viewInflate = LayoutInflater.from(zArchiver).inflate(R.layout.dlg_progress, (ViewGroup) null, false);
        builder.setView(viewInflate);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tvProgress);
        if (textView != null) {
            textView.setText(zArchiver.getResources().getString(i2));
        }
        this.f690h = (ProgressBar) viewInflate.findViewById(R.id.pbProgress);
        this.f691i = (TextView) viewInflate.findViewById(R.id.tvProgressPercent);
        this.f692j = (TextView) viewInflate.findViewById(R.id.tvProgressName);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tvProgressCaption);
        this.f693k = textView2;
        textView2.setVisibility(8);
        C0442f.m1193d(this.f691i);
        C0442f.m1193d(this.f692j);
        C0442f.m1193d(this.f693k);
        builder.setPositiveButton(R.string.BTN_HIDE, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f689g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f690h.setIndeterminate(true);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cbKeepScreenOn);
        checkBox.setOnClickListener(new ViewOnClickListenerC0116z(this, checkBox));
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f689g;
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception unused) {
            }
            this.f689g = null;
        }
        this.f690h = null;
        this.f691i = null;
        this.f692j = null;
        this.f693k = null;
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 2;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.b bVar;
        ZArchiver zArchiverM730z;
        ZApp zApp;
        if (i2 == -1) {
            int i3 = Build.VERSION.SDK_INT;
            boolean z2 = true;
            if (i3 >= 33 && (zApp = ZApp.f1375c) != null && zApp.checkSelfPermission("android.permission.POST_NOTIFICATIONS") == -1) {
                z2 = false;
            }
            if (z2) {
                AbstractC0099i.c cVar = this.f738b;
                if (cVar != null) {
                    cVar.mo245b(this);
                }
                mo337d();
            } else if (i3 >= 33 && (zArchiverM730z = ZArchiver.m730z()) != null) {
                zArchiverM730z.requestPermissions(new String[]{"android.permission.POST_NOTIFICATIONS"}, 0);
            }
        }
        if (i2 != -2 || (bVar = this.f737a) == null) {
            return;
        }
        bVar.mo246a(this);
    }

    /* JADX INFO: renamed from: r */
    public final void m340r(int i2, int i3) {
        String str;
        float f2;
        String str2;
        String str3;
        if (this.f689g != null) {
            if (i2 > 0) {
                this.f690h.setIndeterminate(false);
                if (i3 >= 0) {
                    if (i3 > 102400) {
                        f2 = i3 / 102400.0f;
                        str2 = C0385h.f2092e;
                    } else {
                        f2 = i3 / 100.0f;
                        str2 = C0385h.f2093f;
                    }
                    if (i3 < 10) {
                        str3 = "%d%%\n%.2f%s";
                    } else {
                        str3 = i3 < 100 ? "%d%%\n%.1f%s" : "%d%%\n%.0f%s";
                    }
                    str = String.format(Locale.ENGLISH, str3, Integer.valueOf(i2), Float.valueOf(f2), str2);
                } else {
                    str = String.format(Locale.ENGLISH, "%d%%", Integer.valueOf(i2));
                }
                this.f691i.setText(str);
            } else {
                this.f690h.setIndeterminate(false);
                this.f691i.setText("");
            }
            this.f690h.setProgress(i2);
            this.f690h.postInvalidate();
            this.f691i.postInvalidate();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getTag() != null) {
            onClick(this.f689g, ((Integer) view.getTag()).intValue());
        }
    }
}
