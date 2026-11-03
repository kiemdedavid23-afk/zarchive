package ru.zdevs.zarchiver.p045ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.io.File;
import java.util.Locale;
import p004b.C0015d;
import p005b0.C0022d;
import p005b0.C0023e;
import p020g0.C0129h;
import p051u0.C0379b;
import p051u0.C0385h;
import p055w0.C0412c;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p045ui.FSSelect;

/* JADX INFO: loaded from: classes.dex */
public class FileSelectPreference extends DialogPreference implements FSSelect.InterfaceC0318b, FSSelect.InterfaceC0319c, View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* JADX INFO: renamed from: a */
    public final int f1891a;

    /* JADX INFO: renamed from: b */
    public final String f1892b;

    /* JADX INFO: renamed from: c */
    public View f1893c;

    /* JADX INFO: renamed from: d */
    public FSSelect f1894d;

    /* JADX INFO: renamed from: e */
    public ListPopupWindow f1895e;

    /* JADX INFO: renamed from: f */
    public int f1896f;

    /* JADX INFO: renamed from: g */
    public boolean f1897g;

    /* JADX INFO: renamed from: h */
    public String[] f1898h;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.preference.FileSelectPreference$a */
    public class C0347a implements AdapterView.OnItemClickListener {
        public C0347a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            C0023e c0023e;
            if (adapterView == null || (c0023e = (C0023e) adapterView.getItemAtPosition(i2)) == null) {
                return;
            }
            FileSelectPreference fileSelectPreference = FileSelectPreference.this;
            fileSelectPreference.f1894d.setPath(new C0129h(c0023e.f186c));
            ListPopupWindow listPopupWindow = fileSelectPreference.f1895e;
            if (listPopupWindow != null) {
                listPopupWindow.dismiss();
                fileSelectPreference.f1895e = null;
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.preference.FileSelectPreference$b */
    public class C0348b implements PopupWindow.OnDismissListener {
        public C0348b() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public final void onDismiss() {
            FileSelectPreference.this.f1895e = null;
        }
    }

    public FileSelectPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0015d.f122i);
        if (typedArrayObtainStyledAttributes != null) {
            this.f1891a = typedArrayObtainStyledAttributes.getInteger(1, 3);
            this.f1892b = typedArrayObtainStyledAttributes.getString(0);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.f1891a = 3;
            this.f1892b = null;
        }
        int i2 = this.f1891a;
        if (i2 == 3 || i2 == 0) {
            setPositiveButtonText((CharSequence) null);
        }
        String str = this.f1892b;
        if (str == null || !str.contains("$SD$")) {
            return;
        }
        this.f1892b = this.f1892b.replace("$SD$", C0412c.m1115i().f2153b);
    }

    /* JADX INFO: renamed from: a */
    public final void m1005a(int i2) {
        File file = new File(this.f1898h[i2]);
        if (!file.exists()) {
            this.f1898h[i2] = C0412c.m1115i().f2153b;
            this.f1894d.setPath(new C0129h(this.f1898h[i2]));
        } else if (file.isDirectory()) {
            this.f1894d.setPath(new C0129h(file.getAbsolutePath()));
        } else {
            this.f1894d.setPath(new C0129h(file.getParentFile().getAbsolutePath()));
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1006b(RadioGroup radioGroup, int i2) {
        ((RadioButton) radioGroup.getChildAt(i2)).setText(String.format(Locale.getDefault(), "%d: %s", Integer.valueOf(i2 + 1), this.f1898h[i2]));
    }

    @Override // android.preference.Preference
    public final void onBindView(View view) {
        String persistedString = getPersistedString(this.f1892b);
        if (persistedString != null) {
            setSummary(persistedString.replace(";#;", "\n"));
        }
        super.onBindView(view);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
        RadioGroup radioGroup = (RadioGroup) this.f1893c.findViewById(R.id.tabSelection);
        if (compoundButton.getId() != R.id.samePath) {
            if (z2) {
                for (int i2 = 0; i2 < radioGroup.getChildCount(); i2++) {
                    RadioButton radioButton = (RadioButton) radioGroup.getChildAt(i2);
                    if (radioButton == compoundButton) {
                        this.f1896f = i2;
                        m1005a(i2);
                    } else {
                        radioButton.setChecked(false);
                    }
                }
                return;
            }
            return;
        }
        this.f1897g = z2;
        int i3 = 0;
        while (i3 < radioGroup.getChildCount()) {
            RadioButton radioButton2 = (RadioButton) radioGroup.getChildAt(i3);
            if (this.f1897g) {
                radioButton2.setVisibility(8);
            } else {
                if (i3 != 0) {
                    m1006b(radioGroup, i3);
                }
                radioButton2.setSelected(i3 == 0);
                radioButton2.setVisibility(0);
            }
            i3++;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.rlNavigation);
        ListPopupWindow listPopupWindow = new ListPopupWindow(view.getContext());
        this.f1895e = listPopupWindow;
        listPopupWindow.setAnchorView(relativeLayout);
        this.f1895e.setAdapter(new C0022d(view.getContext(), true, false));
        this.f1895e.setContentWidth((relativeLayout.getWidth() - relativeLayout.getPaddingLeft()) - relativeLayout.getPaddingRight());
        this.f1895e.setOnItemClickListener(new C0347a());
        this.f1895e.setOnDismissListener(new C0348b());
        this.f1895e.setModal(true);
        this.f1895e.show();
    }

    @Override // android.preference.DialogPreference
    public final View onCreateDialogView() {
        super.onCreateDialogView();
        if (this.f1891a == 2 && getSharedPreferences().getBoolean("iTwoTab", false)) {
            this.f1898h = new String[2];
        } else {
            this.f1898h = new String[1];
        }
        this.f1896f = 0;
        this.f1897g = true;
        this.f1898h[0] = getPersistedString(this.f1892b);
        String[] strArr = this.f1898h;
        if (strArr[0] == null) {
            strArr[0] = C0412c.m1115i().f2153b;
        }
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.dialog_select_file, (ViewGroup) null, false);
        this.f1893c = viewInflate;
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.samePath);
        RadioGroup radioGroup = (RadioGroup) this.f1893c.findViewById(R.id.tabSelection);
        String[] strArr2 = this.f1898h;
        if (strArr2.length > 1) {
            if (strArr2[0].contains(";#;")) {
                String[] strArrM1083g = C0385h.m1083g(this.f1898h[0]);
                if (strArrM1083g.length == 2) {
                    String[] strArr3 = this.f1898h;
                    strArr3[0] = strArrM1083g[0];
                    strArr3[1] = strArrM1083g[1];
                    this.f1897g = false;
                }
            }
            String[] strArr4 = this.f1898h;
            if (strArr4[1] == null) {
                strArr4[1] = strArr4[0];
            }
            checkBox.setChecked(this.f1897g);
            checkBox.setOnCheckedChangeListener(this);
            int i2 = 0;
            while (i2 < this.f1898h.length) {
                RadioButton radioButton = new RadioButton(radioGroup.getContext());
                radioButton.setChecked(i2 == 0);
                radioButton.setVisibility(this.f1897g ? 8 : 0);
                radioButton.setOnCheckedChangeListener(this);
                radioGroup.addView(radioButton);
                m1006b(radioGroup, i2);
                i2++;
            }
        } else {
            checkBox.setVisibility(8);
            radioGroup.setVisibility(8);
        }
        ((RelativeLayout) this.f1893c.findViewById(R.id.rlNavigation)).setOnClickListener(this);
        FSSelect fSSelect = (FSSelect) this.f1893c.findViewById(R.id.fs_select);
        this.f1894d = fSSelect;
        fSSelect.setOnFileClickListener(this);
        this.f1894d.setOnPathChangeListener(this);
        this.f1894d.setEmptyText((TextView) this.f1893c.findViewById(R.id.tv_empty_list));
        this.f1894d.m917c();
        m1005a(this.f1896f);
        return this.f1893c;
    }

    @Override // android.preference.DialogPreference
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        ListPopupWindow listPopupWindow = this.f1895e;
        String strM491r = null;
        if (listPopupWindow != null) {
            listPopupWindow.dismiss();
            this.f1895e = null;
        }
        this.f1894d.m918d();
        if (z2) {
            Object[] objArr = this.f1898h;
            if (objArr.length <= 1 || objArr[0].equals(objArr[1]) || this.f1897g) {
                String[] strArr = this.f1898h;
                strM491r = this.f1894d.getPath().m491r();
                strArr[0] = strM491r;
            } else {
                for (String str : this.f1898h) {
                    strM491r = strM491r == null ? str : strM491r + ";#;" + str;
                }
            }
            if (shouldPersist()) {
                persistString(strM491r);
            }
            setSummary(strM491r);
            notifyChanged();
        }
    }

    @Override // ru.zdevs.zarchiver.p045ui.FSSelect.InterfaceC0318b
    public void onFileSelect(String str, String str2, int i2) {
        String strM78i = C0015d.m78i(str, str2);
        int i3 = this.f1891a;
        if (i3 == 1 || i3 == 2) {
            return;
        }
        if (i3 == 0) {
            if (i2 != 9) {
                return;
            }
            try {
                Drawable drawableCreateFromPath = Drawable.createFromPath(strM78i);
                if ((drawableCreateFromPath instanceof BitmapDrawable) && ((BitmapDrawable) drawableCreateFromPath).getBitmap().getByteCount() > Math.max(C0015d.m79i0(104857600, C0379b.m1054a("ro.hwui.max_texture_allocation_size")), 104857600) / 3) {
                    ZApp.m726j("The image is too big!");
                    return;
                }
            } catch (Exception unused) {
                ZApp.m726j("The image is not correct");
                return;
            }
        }
        this.f1898h[0] = strM78i;
        if (shouldPersist()) {
            persistString(this.f1898h[0]);
        }
        setSummary(this.f1898h[0]);
        notifyChanged();
        getDialog().dismiss();
    }

    @Override // ru.zdevs.zarchiver.p045ui.FSSelect.InterfaceC0319c
    public void onPathChange(C0129h c0129h) {
        int i2;
        String strM491r = c0129h.m491r();
        this.f1898h[this.f1896f] = strM491r;
        int iLastIndexOf = strM491r.lastIndexOf(47);
        String strSubstring = "/";
        if (iLastIndexOf >= 0 && strM491r.length() > (i2 = iLastIndexOf + 1)) {
            String strSubstring2 = strM491r.substring(i2);
            strSubstring = iLastIndexOf > 0 ? strM491r.substring(0, iLastIndexOf) : "/";
            strM491r = strSubstring2;
        }
        TextView textView = (TextView) this.f1893c.findViewById(R.id.nTitle);
        TextView textView2 = (TextView) this.f1893c.findViewById(R.id.nSubtitle);
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
            textView.setText(strM491r);
        }
        if (this.f1898h.length > 1) {
            RadioGroup radioGroup = (RadioGroup) this.f1893c.findViewById(R.id.tabSelection);
            if (this.f1896f < radioGroup.getChildCount()) {
                m1006b(radioGroup, this.f1896f);
            }
        }
    }
}
