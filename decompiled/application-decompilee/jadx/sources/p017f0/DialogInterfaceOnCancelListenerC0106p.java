package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import p004b.C0015d;
import p005b0.C0022d;
import p005b0.C0023e;
import p005b0.C0028j;
import p008c0.AbstractViewOnClickListenerC0050h;
import p015e1.C0083a;
import p020g0.C0129h;
import p047s0.C0358b;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.p045ui.FSSelect;
import ru.zdevs.zarchiver.p045ui.text.EditPassword;

/* JADX INFO: renamed from: f0.p */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0106p extends AbstractC0099i implements FSSelect.InterfaceC0319c, AbstractViewOnClickListenerC0050h.a, FSSelect.InterfaceC0318b, DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f796g;

    /* JADX INFO: renamed from: h */
    public int f797h;

    /* JADX INFO: renamed from: i */
    public FrameLayout f798i;

    /* JADX INFO: renamed from: j */
    public ListPopupWindow f799j;

    /* JADX INFO: renamed from: k */
    public final int f800k;

    /* JADX INFO: renamed from: l */
    public final String f801l;

    /* JADX INFO: renamed from: m */
    public String f802m;

    /* JADX INFO: renamed from: n */
    public final boolean f803n;

    /* JADX INFO: renamed from: o */
    public final int f804o;

    /* JADX INFO: renamed from: p */
    public boolean f805p;

    /* JADX INFO: renamed from: f0.p$a */
    public class a implements C0083a.e {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0305b f806a;

        /* JADX INFO: renamed from: b */
        public final /* synthetic */ FSSelect f807b;

        public a(C0305b c0305b, FSSelect fSSelect) {
            this.f806a = c0305b;
            this.f807b = fSSelect;
        }

        @Override // p015e1.C0083a.e
        /* JADX INFO: renamed from: a */
        public final void mo309a(int i2, int i3, boolean z2) {
            C0305b c0305b = this.f806a;
            c0305b.f1598g = i2;
            c0305b.f1600i = z2;
            c0305b.f1599h = i3;
            FSSelect fSSelect = this.f807b;
            fSSelect.setPath(fSSelect.getPath());
        }
    }

    /* JADX INFO: renamed from: f0.p$b */
    public class b implements AdapterView.OnItemClickListener {
        public b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            DialogInterfaceOnCancelListenerC0106p dialogInterfaceOnCancelListenerC0106p;
            FrameLayout frameLayout;
            if (adapterView == null || (frameLayout = (dialogInterfaceOnCancelListenerC0106p = DialogInterfaceOnCancelListenerC0106p.this).f798i) == null) {
                return;
            }
            FSSelect fSSelect = (FSSelect) frameLayout.findViewById(R.id.fss_file_list);
            C0023e c0023e = (C0023e) adapterView.getItemAtPosition(i2);
            if (fSSelect != null && c0023e != null) {
                fSSelect.setPath(new C0129h(c0023e.f186c));
                dialogInterfaceOnCancelListenerC0106p.m375w();
            }
            ListPopupWindow listPopupWindow = dialogInterfaceOnCancelListenerC0106p.f799j;
            if (listPopupWindow != null) {
                listPopupWindow.dismiss();
                dialogInterfaceOnCancelListenerC0106p.f799j = null;
            }
        }
    }

    /* JADX INFO: renamed from: f0.p$c */
    public class c implements PopupWindow.OnDismissListener {
        public c() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            DialogInterfaceOnCancelListenerC0106p.this.f799j = null;
        }
    }

    public DialogInterfaceOnCancelListenerC0106p(C0307d c0307d, Context context, int i2, int i3, boolean z2, int i4) {
        this.f742f = c0307d;
        this.f800k = i3;
        this.f801l = context.getString(R.string.ADD_SELECTED_FILES);
        this.f803n = z2;
        this.f804o = i4;
        m371s(context, i2, false, z2);
        m355a();
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h.a
    /* JADX INFO: renamed from: c */
    public final void mo199c(int i2, int i3, boolean z2) {
        if (this.f796g != null) {
            ((TextView) this.f798i.findViewById(R.id.tv_info)).setText(this.f801l.replace("%1", "" + i3));
        }
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        ListPopupWindow listPopupWindow = this.f799j;
        if (listPopupWindow != null) {
            listPopupWindow.dismiss();
            this.f799j = null;
        }
        AlertDialog alertDialog = this.f796g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f796g = null;
        }
        FrameLayout frameLayout = this.f798i;
        if (frameLayout != null) {
            ((FSSelect) frameLayout.findViewById(R.id.fss_file_list)).m918d();
            this.f798i = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 7;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        if (this.f796g == null) {
            return;
        }
        int i2 = configuration.orientation == 2 ? R.layout.dlg_select_file_land : R.layout.dlg_select_file;
        if (this.f797h != i2) {
            this.f797h = i2;
            View viewInflate = LayoutInflater.from(context).inflate(this.f797h, (ViewGroup) null, false);
            AbstractC0099i.m352l(this.f798i, viewInflate);
            FSSelect fSSelect = (FSSelect) this.f798i.findViewById(R.id.fss_file_list);
            fSSelect.m918d();
            FSSelect fSSelect2 = (FSSelect) viewInflate.findViewById(R.id.fss_file_list);
            fSSelect2.m917c();
            C0305b c0305b = fSSelect.f1677d;
            int i3 = c0305b.f1598g;
            C0305b c0305b2 = fSSelect2.f1677d;
            c0305b2.f1598g = i3;
            c0305b2.f1600i = c0305b.f1600i;
            c0305b2.f1599h = c0305b.f1599h;
            fSSelect2.setPath(fSSelect.getPath());
            ((CheckBox) viewInflate.findViewById(R.id.cb_encrypt)).setOnCheckedChangeListener(this);
            ((CheckBox) viewInflate.findViewById(R.id.cb_level)).setOnCheckedChangeListener(this);
            View viewFindViewById = viewInflate.findViewById(R.id.sv_bar);
            if (viewFindViewById != null && this.f798i.findViewById(R.id.cb_encrypt).getVisibility() == 0 && this.f798i.findViewById(R.id.cb_level).getVisibility() == 0) {
                viewFindViewById.setVisibility(0);
            }
            ((RelativeLayout) viewInflate.findViewById(R.id.rl_pwd)).setVisibility(this.f798i.findViewById(R.id.rl_pwd).getVisibility());
            ((Spinner) viewInflate.findViewById(R.id.spn_level)).setVisibility(this.f798i.findViewById(R.id.spn_level).getVisibility());
            this.f798i.removeAllViews();
            this.f798i.addView(viewInflate);
            m370r();
            if (this.f796g.getWindow() != null) {
                WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                layoutParams.copyFrom(this.f796g.getWindow().getAttributes());
                layoutParams.width = (viewFindViewById == null || viewFindViewById.getVisibility() != 0) ? -2 : -1;
                this.f796g.getWindow().setAttributes(layoutParams);
            }
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

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        if (compoundButton.getId() == R.id.cb_encrypt) {
            ((RelativeLayout) this.f798i.findViewById(R.id.rl_pwd)).setVisibility(z2 ? 0 : 8);
        } else if (compoundButton.getId() == R.id.cb_level) {
            ((Spinner) this.f798i.findViewById(R.id.spn_level)).setVisibility(z2 ? 0 : 8);
        }
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

    @Override // ru.zdevs.zarchiver.p045ui.FSSelect.InterfaceC0318b
    public final void onFileSelect(String str, String str2, int i2) {
        int i3 = this.f800k;
        if ((i3 & 2) == 0) {
            return;
        }
        if ((i3 & 8) == 8) {
            String strM91s = C0015d.m91s(str2);
            if (!(strM91s.equals("gz") || strM91s.equals("bz2") || strM91s.equals("xz") || strM91s.equals("lz4") || strM91s.equals("zstd") ? str2.indexOf(".tar.") > str2.length() + (-10) : strM91s.equals("apk") || strM91s.equals("zip") || strM91s.equals("7z") || strM91s.equals("tar") || strM91s.equals("jar") || strM91s.equals("wim"))) {
                return;
            }
        }
        this.f802m = str2;
        AbstractC0099i.c cVar = this.f738b;
        if (cVar != null) {
            cVar.mo245b(this);
        }
        mo337d();
    }

    @Override // ru.zdevs.zarchiver.p045ui.FSSelect.InterfaceC0319c
    public final void onPathChange(C0129h c0129h) {
        if (this.f798i != null) {
            m375w();
        }
    }

    /* JADX INFO: renamed from: r */
    public final void m370r() {
        FSSelect fSSelect = (FSSelect) this.f798i.findViewById(R.id.fss_file_list);
        int i2 = this.f800k;
        fSSelect.setMultiSelect((i2 & 1) == 1);
        fSSelect.setOnPathChangeListener(this);
        fSSelect.setOnItemSelectChanged(this);
        if ((i2 & 1) == 0 && (i2 & 2) == 2) {
            fSSelect.setOnFileClickListener(this);
        }
        onPathChange(fSSelect.getPath());
        ((RelativeLayout) this.f798i.findViewById(R.id.rlNavigation)).setOnClickListener(this);
        this.f798i.findViewById(R.id.iv_view_mode).setOnClickListener(this);
        fSSelect.setEmptyText((TextView) this.f798i.findViewById(R.id.tv_empty_list));
        TextView textView = (TextView) this.f798i.findViewById(R.id.tv_info);
        if ((i2 & 1) == 0) {
            textView.setText((CharSequence) null);
            textView.setHeight(1);
        }
    }

    /* JADX INFO: renamed from: s */
    public final void m371s(Context context, int i2, boolean z2, boolean z3) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(i2);
        this.f797h = context.getResources().getConfiguration().orientation == 2 ? R.layout.dlg_select_file_land : R.layout.dlg_select_file;
        View viewInflate = LayoutInflater.from(context).inflate(this.f797h, (ViewGroup) null, false);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f798i = frameLayout;
        frameLayout.addView(viewInflate);
        builder.setView(this.f798i);
        ((FSSelect) this.f798i.findViewById(R.id.fss_file_list)).setPath(new C0129h(C0358b.f1980b[0]));
        m370r();
        View viewFindViewById = viewInflate.findViewById(R.id.sv_bar);
        this.f805p = false;
        if (z3) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(0);
                this.f805p = true;
            }
            CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_encrypt);
            checkBox.setVisibility(0);
            checkBox.setOnCheckedChangeListener(this);
            int i3 = this.f804o;
            if (i3 == 1) {
                ((Spinner) viewInflate.findViewById(R.id.spn_encrypt)).setVisibility(8);
                TextView textView = (TextView) viewInflate.findViewById(R.id.tv_enc);
                if (textView != null) {
                    textView.setVisibility(8);
                }
            } else if (i3 == 2) {
                CheckBox checkBox2 = (CheckBox) viewInflate.findViewById(R.id.cb_level);
                checkBox2.setVisibility(0);
                checkBox2.setOnCheckedChangeListener(this);
                C0028j c0028j = new C0028j(context);
                for (String str : context.getResources().getStringArray(R.array.CMP_LIST_LEVELS)) {
                    c0028j.f212b.add(str);
                    c0028j.f213c.add(Boolean.TRUE);
                }
                Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spn_level);
                spinner.setAdapter((SpinnerAdapter) c0028j);
                int i4 = (((C0358b.f1984f & 983040) >> 16) + 1) / 2;
                if (i4 < spinner.getCount() && c0028j.isEnabled(i4)) {
                    spinner.setSelection(i4);
                }
            }
        } else if (viewFindViewById != null) {
            viewFindViewById.setVisibility(8);
        }
        builder.setPositiveButton(z2 ? R.string.BTN_OK : R.string.BTN_ADD, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f796g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        mo199c(0, 0, false);
    }

    /* JADX INFO: renamed from: t */
    public final int m372t() {
        if (this.f804o != 2 || this.f796g == null) {
            return -1;
        }
        Spinner spinner = (Spinner) this.f798i.findViewById(R.id.spn_level);
        if (spinner.getVisibility() != 0) {
            return -1;
        }
        int selectedItemPosition = spinner.getSelectedItemPosition();
        return selectedItemPosition > 0 ? (selectedItemPosition * 2) - 1 : selectedItemPosition;
    }

    /* JADX INFO: renamed from: u */
    public final String m373u(boolean z2) {
        if (!this.f803n || this.f796g == null || !((CheckBox) this.f798i.findViewById(R.id.cb_encrypt)).isChecked()) {
            return "";
        }
        EditPassword editPassword = (EditPassword) this.f798i.findViewById(R.id.edt_password);
        return z2 ? editPassword.getText().toString().replace("\\", "\\\\") : editPassword.getText().toString();
    }

    /* JADX INFO: renamed from: v */
    public final C0129h m374v() {
        if (this.f796g == null) {
            return null;
        }
        return ((FSSelect) this.f798i.findViewById(R.id.fss_file_list)).getPath();
    }

    /* JADX INFO: renamed from: w */
    public final void m375w() {
        int i2;
        FSSelect fSSelect = (FSSelect) this.f798i.findViewById(R.id.fss_file_list);
        String str = fSSelect.getPath().m483j() ? fSSelect.getPath().f1015c : "";
        int iLastIndexOf = str.lastIndexOf(47);
        String strSubstring = "/";
        if (iLastIndexOf >= 0 && str.length() > (i2 = iLastIndexOf + 1)) {
            String strSubstring2 = str.substring(i2);
            strSubstring = iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : "/";
            str = strSubstring2;
        }
        TextView textView = (TextView) this.f798i.findViewById(R.id.nTitle);
        TextView textView2 = (TextView) this.f798i.findViewById(R.id.nSubtitle);
        if (textView2 != null) {
            try {
                textView2.setText(strSubstring);
            } catch (ArrayIndexOutOfBoundsException unused) {
                textView2.setEllipsize(null);
                textView2.setGravity(8388613);
                textView2.setText(strSubstring);
            }
        }
        if (textView != null) {
            textView.setText(str);
        }
    }

    /* JADX INFO: renamed from: x */
    public final void m376x() {
        AlertDialog alertDialog = this.f796g;
        if (alertDialog == null) {
            return;
        }
        if (AbstractC0099i.m354q(alertDialog) && this.f805p) {
            AbstractC0099i.m353o(this.f796g, true);
        }
        ((FSSelect) this.f798i.findViewById(R.id.fss_file_list)).m917c();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view.getId() == R.id.iv_view_mode) {
            if (this.f796g == null) {
                return;
            }
            FSSelect fSSelect = (FSSelect) this.f798i.findViewById(R.id.fss_file_list);
            C0305b c0305b = fSSelect.f1677d;
            C0083a c0083a = new C0083a(view.getContext(), c0305b.f1598g, c0305b.f1600i, c0305b.f1599h, 1);
            c0083a.m310a(this.f796g.getWindow(), view);
            c0083a.f613g = new a(c0305b, fSSelect);
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) this.f798i.findViewById(R.id.rlNavigation);
        ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        this.f799j = listPopupWindow;
        listPopupWindow.setAnchorView(relativeLayout);
        this.f799j.setAdapter(new C0022d(view.getContext(), true, false));
        this.f799j.setContentWidth((relativeLayout.getWidth() - relativeLayout.getPaddingLeft()) - relativeLayout.getPaddingRight());
        this.f799j.setOnItemClickListener(new b());
        this.f799j.setOnDismissListener(new c());
        this.f799j.setModal(true);
        this.f799j.show();
    }

    public DialogInterfaceOnCancelListenerC0106p(C0307d c0307d, Context context) {
        this.f742f = c0307d;
        this.f800k = 14;
        this.f801l = context.getString(R.string.ADD_SELECTED_FILES);
        this.f803n = false;
        this.f804o = 0;
        m371s(context, R.string.CMP_TTL_COMPRESS, true, false);
        m355a();
    }
}
