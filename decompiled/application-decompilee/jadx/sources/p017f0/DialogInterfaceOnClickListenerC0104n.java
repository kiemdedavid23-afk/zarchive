package p017f0;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import p005b0.C0021c;
import p005b0.C0029k;
import p011d0.C0063a;
import p011d0.C0071i;
import p021g1.C0137h;
import p059y0.C0441e;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: f0.n */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0104n extends AbstractC0099i implements DialogInterface.OnClickListener, View.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f755g;

    /* JADX INFO: renamed from: f0.n$a */
    public class a implements DialogInterface.OnShowListener {

        /* JADX INFO: renamed from: f0.n$a$a, reason: collision with other inner class name */
        public class ViewOnClickListenerC0514a implements View.OnClickListener {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                try {
                    ZArchiver zArchiverM730z = ZArchiver.m730z();
                    if (zArchiverM730z != null) {
                        C0137h.m502d(zArchiverM730z, new Intent("android.intent.action.VIEW", Uri.parse("http://zdevs.ru/za/errors_desc.html")));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }

        public a() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            DialogInterfaceOnClickListenerC0104n dialogInterfaceOnClickListenerC0104n = DialogInterfaceOnClickListenerC0104n.this;
            AlertDialog alertDialog = dialogInterfaceOnClickListenerC0104n.f755g;
            AlertDialog alertDialog2 = (AlertDialog) dialogInterface;
            Button button = alertDialog2.getButton(-2);
            if (button != null) {
                button.setOnClickListener(dialogInterfaceOnClickListenerC0104n);
            }
            C0441e.m1183h(alertDialog2, new ViewOnClickListenerC0514a());
        }
    }

    public DialogInterfaceOnClickListenerC0104n(C0307d c0307d, Context context, C0063a.b[] bVarArr) {
        this.f742f = c0307d;
        m364r(context, R.string.MES_END_WITH_ERROR, new C0021c(context, bVarArr));
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f755g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f755g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 4;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.c cVar;
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        mo337d();
    }

    /* JADX INFO: renamed from: r */
    public final void m364r(Context context, int i2, BaseAdapter baseAdapter) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(i2);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_errors, (ViewGroup) null, false);
        builder.setView(viewInflate);
        ListView listView = (ListView) viewInflate.findViewById(R.id.lvErrors);
        listView.setAdapter((ListAdapter) baseAdapter);
        C0441e.m1185j(listView);
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_COPY, this);
        if ((baseAdapter instanceof C0021c) && ((C0021c) baseAdapter).f170c) {
            builder.setNeutralButton("help", (DialogInterface.OnClickListener) null);
        }
        AlertDialog alertDialogCreate = builder.create();
        this.f755g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f755g.setOnShowListener(new a());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ClipboardManager clipboardManager;
        AlertDialog alertDialog = this.f755g;
        if (alertDialog == null || (clipboardManager = (ClipboardManager) alertDialog.getContext().getSystemService("clipboard")) == null) {
            return;
        }
        BaseAdapter baseAdapter = (BaseAdapter) ((ListView) this.f755g.findViewById(R.id.lvErrors)).getAdapter();
        StringBuilder sb = new StringBuilder();
        int count = baseAdapter.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            sb.append(baseAdapter.getItem(i2).toString());
        }
        try {
            clipboardManager.setPrimaryClip(ClipData.newPlainText("ZA Errors", sb.length() > 1 ? sb.substring(1) : ""));
            if (Build.VERSION.SDK_INT < 33) {
                ZApp.m725i(R.string.MES_COPIED);
            }
        } catch (SecurityException unused) {
            ZApp.m726j("SecurityException");
        }
    }

    public DialogInterfaceOnClickListenerC0104n(C0307d c0307d, ZArchiver zArchiver, C0071i[] c0071iArr) {
        this.f742f = c0307d;
        m364r(zArchiver, c0071iArr.length > 1 ? R.string.MES_SUCESSFUL_TESTS : R.string.MES_SUCESSFUL_TEST, new C0029k(zArchiver, c0071iArr));
        m355a();
    }
}
