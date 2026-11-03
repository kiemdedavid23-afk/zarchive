package p017f0;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.io.InvalidObjectException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p004b.C0015d;
import p005b0.C0019a;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p045ui.text.ExEditText;

/* JADX INFO: renamed from: f0.b */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0090b extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, AdapterView.OnItemClickListener, C0393a.c, TextWatcher {

    /* JADX INFO: renamed from: g */
    public AlertDialog f694g;

    /* JADX INFO: renamed from: h */
    public AlertDialog f695h;

    /* JADX INFO: renamed from: i */
    public String f696i;

    /* JADX INFO: renamed from: j */
    public String f697j;

    /* JADX INFO: renamed from: k */
    public final String f698k;

    /* JADX INFO: renamed from: l */
    public final C0393a f699l = new C0393a();

    /* JADX INFO: renamed from: m */
    public b f700m;

    /* JADX INFO: renamed from: f0.b$a */
    public static class a implements C0393a.b {

        /* JADX INFO: renamed from: a */
        public final ArrayList<C0019a.a> f701a;

        public a(ArrayList<C0019a.a> arrayList) {
            this.f701a = arrayList;
        }

        @Override // p053v0.C0393a.b
        /* JADX INFO: renamed from: a */
        public final int mo342a() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: f0.b$b */
    public static class b implements Runnable {

        /* JADX INFO: renamed from: a */
        public final Dialog f702a;

        /* JADX INFO: renamed from: b */
        public final CharSequence f703b;

        public b(Dialog dialog, CharSequence charSequence) {
            this.f702a = dialog;
            this.f703b = charSequence;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListView listView = (ListView) this.f702a.findViewById(R.id.lvPopupList);
            if (listView != null) {
                C0019a c0019a = (C0019a) listView.getAdapter();
                c0019a.getClass();
                CharSequence charSequence = this.f703b;
                int length = charSequence.length();
                ArrayList<C0019a.a> arrayList = c0019a.f149b;
                if (length != 0) {
                    String string = charSequence.toString();
                    ArrayList<C0019a.a> arrayList2 = new ArrayList<>(arrayList.size());
                    for (C0019a.a aVar : arrayList) {
                        if (aVar.f153b.toLowerCase().contains(string) || aVar.f152a.packageName.toLowerCase().contains(string)) {
                            arrayList2.add(aVar);
                        }
                    }
                    c0019a.f150c = arrayList2;
                    c0019a.f151d = string;
                } else {
                    c0019a.f150c = arrayList;
                    c0019a.f151d = null;
                }
                c0019a.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: renamed from: f0.b$c */
    public static class c extends AbstractCallableC0395c {
        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() {
            ZApp zApp;
            Thread threadCurrentThread = Thread.currentThread();
            int priority = threadCurrentThread.getPriority();
            threadCurrentThread.setPriority(10);
            List listM87o = C0015d.m87o();
            if (listM87o == null || (zApp = ZApp.f1375c) == null) {
                return null;
            }
            PackageManager packageManager = zApp.getPackageManager();
            ArrayList arrayList = new ArrayList(listM87o.size());
            Iterator it = listM87o.iterator();
            while (it.hasNext()) {
                arrayList.add(new C0019a.a((PackageInfo) it.next(), packageManager));
            }
            Collections.sort(arrayList);
            threadCurrentThread.setPriority(priority);
            return new a(arrayList);
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: j */
        public final int mo344j() {
            return 0;
        }
    }

    public DialogInterfaceOnCancelListenerC0090b(C0307d c0307d, Context context, String str) {
        this.f742f = c0307d;
        this.f696i = "";
        this.f697j = "";
        this.f698k = str;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.NF_TTL_NEW_FOLDER);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_app_folder_name, (ViewGroup) null, false);
        builder.setView(viewInflate);
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        ExEditText exEditText = (ExEditText) viewInflate.findViewById(R.id.edt_text);
        exEditText.setKeyListener(null);
        exEditText.setText(this.f696i);
        ((Button) viewInflate.findViewById(R.id.btn_select)).setOnClickListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f694g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        m355a();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        try {
            Handler handlerM723f = ZApp.m723f();
            b bVar = this.f700m;
            if (bVar != null) {
                handlerM723f.removeCallbacks(bVar);
            }
            AlertDialog alertDialog = this.f695h;
            if (alertDialog != null && charSequence != null) {
                b bVar2 = new b(alertDialog, charSequence);
                this.f700m = bVar2;
                if (Build.VERSION.SDK_INT >= 29) {
                    handlerM723f.postDelayed(bVar2, 4000L);
                } else {
                    handlerM723f.postDelayed(bVar2, 2000L);
                }
            }
        } catch (InvalidObjectException unused) {
        }
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        C0393a c0393a = this.f699l;
        c0393a.m1093d(this);
        c0393a.m1095f(Integer.MAX_VALUE, 1, -1);
        AlertDialog alertDialog = this.f695h;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f695h = null;
        }
        AlertDialog alertDialog2 = this.f694g;
        if (alertDialog2 != null) {
            EditText editText = (EditText) alertDialog2.findViewById(R.id.edt_text);
            if (editText != null) {
                this.f696i = editText.getText().toString();
            }
            this.f694g.dismiss();
            this.f694g = null;
        }
        m357f();
    }

    @Override // p053v0.C0393a.c
    /* JADX INFO: renamed from: g */
    public final void mo341g(C0393a.b bVar) {
        a aVar = (a) bVar;
        AlertDialog alertDialog = this.f695h;
        if (alertDialog == null) {
            return;
        }
        ListView listView = (ListView) alertDialog.findViewById(R.id.lvPopupList);
        if (listView == null || aVar.f701a == null) {
            this.f695h.dismiss();
            return;
        }
        this.f695h.findViewById(R.id.pbLoading).setVisibility(4);
        ExEditText exEditText = (ExEditText) this.f695h.findViewById(R.id.etFilter);
        boolean z2 = false;
        exEditText.setVisibility(0);
        listView.setAdapter((ListAdapter) new C0019a(this.f695h.getContext(), aVar.f701a));
        if (exEditText.requestFocus() && ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).showSoftInput(exEditText, 1)) {
            z2 = true;
        }
        exEditText.f1921a = !z2;
        exEditText.addTextChangedListener(this);
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 17;
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
        AlertDialog alertDialog = this.f694g;
        if (alertDialog != null && (editText = (EditText) alertDialog.findViewById(R.id.edt_text)) != null) {
            this.f696i = editText.getText().toString();
        }
        if (i2 == -1 && (cVar = this.f738b) != null) {
            cVar.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (i2 < 0 || adapterView == null || i2 >= adapterView.getCount()) {
            return;
        }
        this.f696i = ((C0019a.a) adapterView.getItemAtPosition(i2)).f152a.packageName;
        AlertDialog alertDialog = this.f694g;
        if (alertDialog != null) {
            ((EditText) alertDialog.findViewById(R.id.edt_text)).setText(this.f696i);
        }
        AlertDialog alertDialog2 = this.f695h;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        b bVar;
        Context context;
        if (view.getId() == R.id.etFilter) {
            try {
                Handler handlerM723f = ZApp.m723f();
                if (Build.VERSION.SDK_INT >= 29 && (bVar = this.f700m) != null && handlerM723f.hasCallbacks(bVar)) {
                    handlerM723f.removeCallbacks(this.f700m);
                    handlerM723f.post(this.f700m);
                    this.f700m = null;
                }
            } catch (InvalidObjectException unused) {
            }
            ExEditText exEditText = (ExEditText) view;
            exEditText.f1921a = false;
            ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).hideSoftInputFromWindow(exEditText.getWindowToken(), 0);
            return;
        }
        AlertDialog alertDialog = this.f694g;
        if (alertDialog == null || (context = alertDialog.getContext()) == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.NF_TTL_NEW_FOLDER);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_app_list, (ViewGroup) null, false);
        builder.setView(viewInflate);
        ListView listView = (ListView) viewInflate.findViewById(R.id.lvPopupList);
        listView.setChoiceMode(1);
        listView.setOnItemClickListener(this);
        ExEditText exEditText2 = (ExEditText) viewInflate.findViewById(R.id.etFilter);
        exEditText2.setRawInputType(1);
        exEditText2.setImeOptions(3);
        exEditText2.f1922b = this;
        exEditText2.setOnEditorActionListener(exEditText2);
        exEditText2.f1923c = 0;
        builder.setNegativeButton(R.string.BTN_CANCEL, (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        this.f695h = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f695h.show();
        new c().m1098g(this.f694g.getContext(), this.f699l);
    }
}
