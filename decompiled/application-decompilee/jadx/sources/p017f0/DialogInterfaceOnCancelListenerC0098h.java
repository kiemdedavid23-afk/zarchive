package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.preference.PreferenceManager;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import java.util.ArrayList;
import p004b.C0015d;
import p005b0.C0028j;
import p011d0.C0064b;
import p020g0.C0129h;
import p047s0.C0358b;
import p051u0.C0385h;
import p059y0.C0441e;
import p059y0.ViewOnTouchListenerC0440d;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p045ui.FSSelect;
import ru.zdevs.zarchiver.p045ui.text.BtnEditText;
import ru.zdevs.zarchiver.p045ui.text.EditPassword;

/* JADX INFO: renamed from: f0.h */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0098h extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener, CompoundButton.OnCheckedChangeListener, AbstractC0099i.c {

    /* JADX INFO: renamed from: g */
    public AlertDialog f720g;

    /* JADX INFO: renamed from: h */
    public int f721h;

    /* JADX INFO: renamed from: i */
    public final ScrollView f722i;

    /* JADX INFO: renamed from: j */
    public ViewOnTouchListenerC0440d f723j;

    /* JADX INFO: renamed from: k */
    public final String f724k;

    /* JADX INFO: renamed from: l */
    public int f725l;

    /* JADX INFO: renamed from: m */
    public final C0028j f726m;

    /* JADX INFO: renamed from: n */
    public final C0028j f727n;

    /* JADX INFO: renamed from: o */
    public String f728o;

    /* JADX INFO: renamed from: p */
    public int f729p;

    /* JADX INFO: renamed from: q */
    public boolean f730q;

    /* JADX INFO: renamed from: r */
    public boolean f731r;

    /* JADX INFO: renamed from: s */
    public boolean f732s;

    /* JADX INFO: renamed from: t */
    public String f733t;

    /* JADX INFO: renamed from: u */
    public final int f734u;

    /* JADX INFO: renamed from: v */
    public String f735v;

    /* JADX INFO: renamed from: w */
    public String f736w;

    public DialogInterfaceOnCancelListenerC0098h(int i2, Context context, String str, C0307d c0307d) {
        this.f742f = c0307d;
        this.f724k = str;
        if (C0015d.m49K(i2, 1)) {
            this.f724k = str + ".eXt";
        }
        if (C0015d.m49K(i2, 16) && !this.f724k.startsWith("/") && C0358b.f1979a == null) {
            this.f724k = C0358b.f1980b[c0307d.f1626e] + "/" + this.f724k;
        }
        this.f732s = C0358b.m1035f(2);
        this.f725l = 0;
        this.f729p = -1;
        this.f734u = i2;
        this.f736w = "";
        this.f735v = "";
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        C0441e.m1182g(builder, R.string.CMP_TTL_COMPRESS, R.menu.menu_compression, new C0094d(this)).findItem(R.id.bSolid).setChecked(this.f732s);
        Configuration configuration = context.getResources().getConfiguration();
        this.f721h = (configuration.orientation != 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_compress : R.layout.dlg_compress_land;
        View viewInflate = LayoutInflater.from(context).inflate(this.f721h, (ViewGroup) null, false);
        ScrollView scrollView = new ScrollView(context);
        this.f722i = scrollView;
        scrollView.addView(viewInflate);
        builder.setView(scrollView);
        BtnEditText btnEditText = (BtnEditText) viewInflate.findViewById(R.id.edt_name);
        btnEditText.setInputType(262145);
        btnEditText.setText(this.f724k);
        btnEditText.setOnBtnClickListener(this);
        ((Button) viewInflate.findViewById(R.id.btn_path)).setOnClickListener(this);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cb_deletefile);
        if (C0015d.m49K(i2, 4)) {
            checkBox.setEnabled(false);
            checkBox.setChecked(false);
        }
        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spn_level);
        C0028j c0028j = new C0028j(context);
        this.f726m = c0028j;
        for (String str2 : context.getResources().getStringArray(R.array.CMP_LIST_LEVELS)) {
            c0028j.f212b.add(str2);
            c0028j.f213c.add(Boolean.TRUE);
        }
        spinner.setAdapter((SpinnerAdapter) c0028j);
        Spinner spinner2 = (Spinner) viewInflate.findViewById(R.id.spn_encrypt);
        EditPassword editPassword = (EditPassword) viewInflate.findViewById(R.id.edt_password);
        editPassword.setHint(R.string.CMP_ENTER_PASSWORD);
        editPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(1024)});
        Spinner spinner3 = (Spinner) viewInflate.findViewById(R.id.spn_format);
        if (!C0015d.m49K(i2, 2) || C0015d.m49K(i2, 1)) {
            ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(context, R.array.CMP_LIST_FORMATS_ANY, android.R.layout.simple_spinner_item);
            arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            spinner3.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        } else {
            String str3 = this.f724k;
            int iLastIndexOf = str3.lastIndexOf(46);
            if (".tar".equals(iLastIndexOf > 0 ? C0385h.m1085i(str3.substring(iLastIndexOf)) : null)) {
                ArrayAdapter<CharSequence> arrayAdapterCreateFromResource2 = ArrayAdapter.createFromResource(context, R.array.CMP_LIST_FORMATS_TAR, android.R.layout.simple_spinner_item);
                arrayAdapterCreateFromResource2.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
                spinner3.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource2);
            }
        }
        Spinner spinner4 = (Spinner) viewInflate.findViewById(R.id.spn_split);
        this.f727n = new C0028j(context);
        m348r(context, null);
        spinner4.setOnItemSelectedListener(new C0095e(this));
        CheckBox checkBox2 = (CheckBox) viewInflate.findViewById(R.id.cb_separate);
        checkBox2.setOnCheckedChangeListener(this);
        checkBox2.setEnabled(!C0015d.m49K(i2, 2));
        checkBox.setChecked(false);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        String string = defaultSharedPreferences.getString("sCompressDefType", "7z");
        int i3 = defaultSharedPreferences.getInt("iCompressDefLevel", 3);
        int i4 = defaultSharedPreferences.getInt("iCompressDefEncrypt", 0);
        int count = spinner3.getCount();
        for (int i5 = 0; i5 < count; i5++) {
            if (string.equals(spinner3.getItemAtPosition(i5).toString())) {
                spinner3.setSelection(i5);
                m350u(context, i5);
                break;
            }
        }
        if (i3 < spinner.getCount() && i3 >= 0) {
            spinner.setSelection(i3);
        }
        if (i4 < spinner2.getCount() && i4 >= 0) {
            spinner2.setSelection(i4);
        }
        spinner3.setOnItemSelectedListener(new C0096f(this));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        this.f720g = builder.create();
        m355a();
    }

    /* JADX INFO: renamed from: t */
    public static String m347t(String str) {
        String strM1085i = C0385h.m1085i(str);
        switch (strM1085i) {
            case "tar.zstd":
                return ".tar.zst";
            case "gzip":
                return ".gz";
            case "zstd":
                return ".zst";
            case "bzip2":
                return ".bz2";
            default:
                return ".".concat(strM1085i);
        }
    }

    @Override // p017f0.AbstractC0099i.c
    /* JADX INFO: renamed from: b */
    public final boolean mo245b(AbstractC0099i abstractC0099i) {
        C0129h c0129hM374v;
        if (this.f720g == null) {
            return false;
        }
        if (abstractC0099i.mo338k() != 7) {
            return true;
        }
        DialogInterfaceOnCancelListenerC0106p dialogInterfaceOnCancelListenerC0106p = (DialogInterfaceOnCancelListenerC0106p) abstractC0099i;
        ScrollView scrollView = this.f722i;
        EditText editText = (EditText) scrollView.findViewById(R.id.edt_name);
        if (editText == null || (c0129hM374v = dialogInterfaceOnCancelListenerC0106p.m374v()) == null) {
            return false;
        }
        String str = dialogInterfaceOnCancelListenerC0106p.f802m;
        if (str == null) {
            String str2 = c0129hM374v.m491r() + '/' + C0015d.m97y(editText.getText().toString());
            editText.setText(str2);
            editText.setSelection(str2.length());
            return true;
        }
        String str3 = c0129hM374v.m491r() + '/' + str;
        this.f733t = str3;
        editText.setText(str3);
        Spinner spinner = (Spinner) scrollView.findViewById(R.id.spn_format);
        String strM91s = C0015d.m91s(str);
        int count = spinner.getCount();
        for (int i2 = 0; i2 < count; i2++) {
            if (spinner.getItemAtPosition(i2) != null && strM91s.equals(spinner.getItemAtPosition(i2).toString())) {
                spinner.setSelection(i2);
                return true;
            }
        }
        return true;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f720g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f720g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 5;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        int i2 = (configuration.orientation != 2 || (configuration.screenLayout & 15) >= 3) ? R.layout.dlg_compress : R.layout.dlg_compress_land;
        if (this.f721h == i2) {
            return;
        }
        this.f721h = i2;
        View viewInflate = LayoutInflater.from(context).inflate(this.f721h, (ViewGroup) null, false);
        ScrollView scrollView = this.f722i;
        AbstractC0099i.m352l(scrollView, viewInflate);
        ((CheckBox) viewInflate.findViewById(R.id.cb_separate)).setOnCheckedChangeListener(this);
        ((Button) viewInflate.findViewById(R.id.btn_path)).setOnClickListener(this);
        ((BtnEditText) viewInflate.findViewById(R.id.edt_name)).setOnBtnClickListener(this);
        scrollView.removeAllViews();
        scrollView.addView(viewInflate);
        ViewOnTouchListenerC0440d viewOnTouchListenerC0440d = this.f723j;
        if (viewOnTouchListenerC0440d != null) {
            viewOnTouchListenerC0440d.m1175a();
            this.f723j = null;
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
        this.f720g = null;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        ScrollView scrollView = this.f722i;
        BtnEditText btnEditText = (BtnEditText) scrollView.findViewById(R.id.edt_name);
        Spinner spinner = (Spinner) scrollView.findViewById(R.id.spn_format);
        String str = this.f724k;
        if (z2) {
            int iLastIndexOf = str.lastIndexOf(47);
            String str2 = "<name>";
            if (iLastIndexOf >= 0) {
                str2 = str.substring(0, iLastIndexOf + 1) + "<name>";
            }
            btnEditText.setText(str2);
            btnEditText.setButton(R.drawable.l_help);
        } else {
            btnEditText.setText(str);
            btnEditText.setButton(0);
        }
        this.f729p = -1;
        m350u(null, spinner.getSelectedItemPosition());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:57:0x0127  */
    /* JADX WARN: Code duplicated, block: B:8:0x0029  */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.b bVar;
        boolean z2;
        byte b2;
        int i3;
        if (i2 == -1 && this.f738b != null) {
            ScrollView scrollView = this.f722i;
            int i4 = 1;
            if (((Spinner) scrollView.findViewById(R.id.spn_format)).getSelectedItemId() != 1) {
                z2 = true;
            } else {
                EditPassword editPassword = (EditPassword) scrollView.findViewById(R.id.edt_password);
                if (editPassword.isEnabled()) {
                    String string = editPassword.getText().toString();
                    if (C0385h.m1081e(string)) {
                        z2 = true;
                    } else if (((Spinner) scrollView.findViewById(R.id.spn_encrypt)).getSelectedItemPosition() == 0) {
                        int length = string.length();
                        int i5 = 0;
                        while (true) {
                            if (i5 >= length) {
                                z2 = true;
                            } else {
                                char cCharAt = string.charAt(i5);
                                if (cCharAt < ' ' || cCharAt > 127) {
                                    ZApp.m725i(R.string.MES_SUPPORT_ONLY_ASCII_PWD);
                                    z2 = false;
                                } else {
                                    i5++;
                                }
                            }
                        }
                    } else if (string.length() > 128) {
                        ZApp.m726j("The WinZIP AES format has a password length limit of 128 characters.");
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                } else {
                    z2 = true;
                }
            }
            if (!z2) {
                return;
            }
            EditText editText = (EditText) scrollView.findViewById(R.id.edt_name);
            CheckBox checkBox = (CheckBox) scrollView.findViewById(R.id.cb_separate);
            CheckBox checkBox2 = (CheckBox) scrollView.findViewById(R.id.cb_deletefile);
            this.f735v = "";
            this.f736w = "";
            String string2 = ((EditText) scrollView.findViewById(R.id.edt_name)).getText().toString();
            if (!string2.isEmpty()) {
                Spinner spinner = (Spinner) scrollView.findViewById(R.id.spn_format);
                Spinner spinner2 = (Spinner) scrollView.findViewById(R.id.spn_encrypt);
                EditPassword editPassword2 = (EditPassword) scrollView.findViewById(R.id.edt_password);
                Spinner spinner3 = (Spinner) scrollView.findViewById(R.id.spn_split);
                Spinner spinner4 = (Spinner) scrollView.findViewById(R.id.spn_level);
                String strM1085i = C0385h.m1085i(spinner.getSelectedItem().toString());
                switch (strM1085i) {
                    case "tar.bz2":
                        b2 = 0;
                        break;
                    case "tar.lz4":
                        b2 = 1;
                        break;
                    case "tar.gz":
                        b2 = 2;
                        break;
                    case "tar.xz":
                        b2 = 3;
                        break;
                    case "tar.zstd":
                        b2 = 4;
                        break;
                    default:
                        b2 = -1;
                        break;
                }
                if (b2 == 0) {
                    strM1085i = "tbz";
                } else if (b2 == 1) {
                    strM1085i = "tlz4";
                } else if (b2 == 2) {
                    strM1085i = "tgz";
                } else if (b2 == 3) {
                    strM1085i = "txz";
                } else if (b2 == 4) {
                    strM1085i = "tzstd";
                }
                this.f736w = strM1085i;
                StringBuilder sb = new StringBuilder();
                String string3 = editPassword2.getText().toString();
                if (editPassword2.isEnabled() && !string3.isEmpty()) {
                    sb.append("\\-p");
                    sb.append(string3.replace("\\", "\\\\"));
                    if (spinner.getSelectedItemId() == 0) {
                        if (spinner2.getSelectedItemPosition() == 1) {
                            sb.append("\\-mhe");
                        }
                    } else if (spinner.getSelectedItemId() == 1) {
                        int selectedItemPosition = spinner2.getSelectedItemPosition();
                        if (selectedItemPosition == 1) {
                            sb.append("\\-mem=AES128");
                        } else if (selectedItemPosition == 2) {
                            sb.append("\\-mem=AES192");
                        } else if (selectedItemPosition == 3) {
                            sb.append("\\-mem=AES256");
                        }
                    }
                }
                int selectedItemPosition2 = spinner4.getSelectedItemPosition();
                if (selectedItemPosition2 > 0) {
                    selectedItemPosition2 = (selectedItemPosition2 * 2) - 1;
                }
                if (selectedItemPosition2 > 0 || (!strM1085i.equals("lz4") && !strM1085i.equals("zstd"))) {
                    i4 = selectedItemPosition2;
                }
                if (strM1085i.equals("zstd") || strM1085i.equals("lz4")) {
                    i4 *= 2;
                }
                if (spinner.getSelectedItemId() != 2) {
                    sb.append("\\-mx=");
                    sb.append(i4);
                }
                String str = "m";
                if (spinner.getSelectedItemId() == 0) {
                    C0015d.m72f(sb, i4, this.f732s);
                } else if ("xz".equals(strM1085i) || "txz".equals(strM1085i)) {
                    sb.append("\\-mmt=1\\-mf=off");
                    int iM237a = C0064b.m237a(32, i4);
                    if (iM237a > 0) {
                        sb.append("\\-md=");
                        sb.append(iM237a);
                        sb.append("m");
                    }
                }
                if (spinner3.isEnabled() && spinner3.getSelectedItemId() > 0) {
                    String string4 = spinner3.getSelectedItem().toString();
                    if (!string4.isEmpty()) {
                        String strTrim = string4.trim();
                        if (!strTrim.endsWith(C0385h.f2089b)) {
                            if (strTrim.endsWith(C0385h.f2090c)) {
                                str = "k";
                            } else {
                                str = strTrim.endsWith(C0385h.f2088a) ? "g" : "b";
                            }
                        }
                        String strReplaceAll = strTrim.replaceAll("\\D", "");
                        if (!strReplaceAll.isEmpty() && (i3 = Integer.parseInt(strReplaceAll)) > 0) {
                            sb.append("\\-v");
                            sb.append(i3);
                            sb.append(str);
                        }
                    }
                }
                sb.append("\\-snl\\-snh");
                this.f735v = sb.toString();
                String str2 = this.f733t;
                if (str2 != null && !string2.equals(str2)) {
                    this.f733t = null;
                }
                if (this.f720g != null) {
                    Spinner spinner5 = (Spinner) scrollView.findViewById(R.id.spn_format);
                    Spinner spinner6 = (Spinner) scrollView.findViewById(R.id.spn_level);
                    Spinner spinner7 = (Spinner) scrollView.findViewById(R.id.spn_encrypt);
                    SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(this.f720g.getContext()).edit();
                    editorEdit.putString("sCompressDefType", spinner5.getSelectedItem().toString());
                    editorEdit.putInt("iCompressDefLevel", spinner6.getSelectedItemPosition());
                    editorEdit.putInt("iCompressDefEncrypt", spinner7.getSelectedItemPosition());
                    editorEdit.apply();
                }
            }
            this.f728o = editText.getText().toString();
            this.f730q = checkBox2.isChecked();
            this.f731r = checkBox.isChecked();
            this.f738b.mo245b(this);
        }
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    /* JADX INFO: renamed from: r */
    public final void m348r(Context context, String str) {
        C0028j c0028j = this.f727n;
        c0028j.f212b.clear();
        c0028j.f213c.clear();
        c0028j.m130a(context.getResources().getString(R.string.CMP_SPLIT_NO));
        c0028j.m130a("5" + C0385h.f2089b);
        c0028j.m130a("10" + C0385h.f2089b);
        c0028j.m130a("24" + C0385h.f2089b);
        c0028j.m130a("50" + C0385h.f2089b);
        c0028j.m130a("100" + C0385h.f2089b);
        this.f725l = c0028j.getCount();
        c0028j.m130a(context.getResources().getString(R.string.CMP_SPLIT_OVER_SIZE));
        if (str != null) {
            c0028j.m130a(str);
        }
        Spinner spinner = (Spinner) this.f722i.findViewById(R.id.spn_split);
        spinner.setAdapter((SpinnerAdapter) c0028j);
        if (str != null) {
            spinner.setSelection(c0028j.getCount() - 1);
        } else {
            spinner.setSelection(0);
        }
    }

    /* JADX INFO: renamed from: s */
    public final boolean m349s() {
        return this.f730q && !C0015d.m49K(this.f734u, 4);
    }

    /* JADX INFO: renamed from: u */
    public final void m350u(Context context, int i2) {
        Context context2;
        String strM64Z;
        String str;
        boolean z2;
        if (this.f729p == i2) {
            return;
        }
        if (context == null) {
            AlertDialog alertDialog = this.f720g;
            context2 = alertDialog != null ? alertDialog.getContext() : ZApp.f1375c;
        } else {
            context2 = context;
        }
        EditText editText = (EditText) this.f722i.findViewById(R.id.edt_name);
        Spinner spinner = (Spinner) this.f722i.findViewById(R.id.spn_format);
        Spinner spinner2 = (Spinner) this.f722i.findViewById(R.id.spn_encrypt);
        EditPassword editPassword = (EditPassword) this.f722i.findViewById(R.id.edt_password);
        Spinner spinner3 = (Spinner) this.f722i.findViewById(R.id.spn_split);
        Spinner spinner4 = (Spinner) this.f722i.findViewById(R.id.spn_level);
        if (this.f729p >= 0) {
            String string = editText.getText().toString();
            String strM347t = m347t(spinner.getItemAtPosition(this.f729p).toString());
            strM64Z = string.endsWith(strM347t) ? string.substring(0, string.length() - strM347t.length()) : C0015d.m64Z(editText.getText().toString());
        } else {
            strM64Z = C0015d.m64Z(editText.getText().toString());
        }
        if (strM64Z.equals(this.f724k)) {
            strM64Z = C0015d.m64Z(strM64Z);
        }
        String string2 = spinner.getItemAtPosition(i2).toString();
        String strM347t2 = m347t(string2);
        String strM1085i = C0385h.m1085i(string2);
        if ((strM1085i.equals("xz") || strM1085i.equals("bzip2") || strM1085i.equals("gzip") || strM1085i.equals("lz4") || strM1085i.equals("zstd")) ? false : true) {
            str = strM64Z + strM347t2;
        } else if (C0015d.m64Z(this.f724k).equals(strM64Z)) {
            str = this.f724k + strM347t2;
        } else {
            str = strM64Z + strM347t2;
        }
        editText.setText(str);
        spinner2.setEnabled(i2 <= 1);
        if (i2 <= 1) {
            ArrayAdapter<CharSequence> arrayAdapterCreateFromResource = ArrayAdapter.createFromResource(context2, i2 == 0 ? R.array.CMP_LIST_ENCRYPT_7Z : R.array.CMP_LIST_ENCRYPT_ZIP, android.R.layout.simple_spinner_item);
            arrayAdapterCreateFromResource.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
            spinner2.setAdapter((SpinnerAdapter) arrayAdapterCreateFromResource);
        }
        editPassword.setEnabled(i2 <= 1);
        spinner3.setEnabled(i2 <= 1);
        spinner4.setEnabled(i2 != 2);
        C0028j c0028j = this.f726m;
        int i3 = 3;
        if (c0028j != null) {
            ArrayList arrayList = c0028j.f213c;
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                arrayList.set(i4, Boolean.TRUE);
            }
            String strM1085i2 = C0385h.m1085i(string2);
            if (strM1085i2.equals("lz4")) {
                z2 = false;
                c0028j.m131b(0);
            } else {
                z2 = false;
            }
            boolean z3 = (strM1085i2.equals("xz") || strM1085i2.equals("tar.xz")) ? true : z2;
            if ((z3 || strM1085i2.equals("7z")) && !C0358b.m1035f(1)) {
                int iM242f = C0064b.m242f(z3);
                if (iM242f < 9) {
                    c0028j.m131b(5);
                }
                if (iM242f < 7) {
                    c0028j.m131b(4);
                }
                if (iM242f < 5) {
                    c0028j.m131b(3);
                }
                if (iM242f < 3) {
                    c0028j.m131b(2);
                }
            }
        }
        try {
            if (i2 == 0) {
                i3 = (C0358b.f1984f & 61440) >> 12;
            } else if (i2 == 1) {
                i3 = (C0358b.f1984f & 983040) >> 16;
            }
            spinner4.setSelection((i3 + 1) / 2);
        } catch (Exception unused) {
        }
        this.f729p = i2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f720g == null || view == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.btn_path) {
            DialogInterfaceOnCancelListenerC0106p dialogInterfaceOnCancelListenerC0106p = new DialogInterfaceOnCancelListenerC0106p(this.f742f, this.f720g.getContext());
            boolean zM1039j = C0358b.m1039j();
            if (dialogInterfaceOnCancelListenerC0106p.f796g != null) {
                ((FSSelect) dialogInterfaceOnCancelListenerC0106p.f798i.findViewById(R.id.fss_file_list)).setRootSupport(zM1039j);
            }
            dialogInterfaceOnCancelListenerC0106p.f739c = this.f739c;
            dialogInterfaceOnCancelListenerC0106p.f738b = this;
            dialogInterfaceOnCancelListenerC0106p.m376x();
            return;
        }
        if (id == R.id.edt_name) {
            try {
                Context context = this.f720g.getContext();
                ViewOnTouchListenerC0440d viewOnTouchListenerC0440d = new ViewOnTouchListenerC0440d(context, view, 80, context.getString(R.string.HELP_ARCHIVE_NAME), 0, 0);
                this.f723j = viewOnTouchListenerC0440d;
                viewOnTouchListenerC0440d.f2241f.showAtLocation(view, 80, 0, 0);
                viewOnTouchListenerC0440d.f2240e.getViewTreeObserver().addOnPreDrawListener(viewOnTouchListenerC0440d);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
