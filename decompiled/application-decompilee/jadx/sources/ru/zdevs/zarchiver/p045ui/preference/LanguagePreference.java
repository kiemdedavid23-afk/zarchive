package ru.zdevs.zarchiver.p045ui.preference;

import android.R;
import android.app.AlertDialog;
import android.app.LocaleManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.LocaleList;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class LanguagePreference extends DialogPreference {

    /* JADX INFO: renamed from: a */
    public final LocaleManager f1901a;

    /* JADX INFO: renamed from: b */
    public final LocaleList f1902b;

    /* JADX INFO: renamed from: c */
    public Locale f1903c;

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.preference.LanguagePreference$a */
    public class DialogInterfaceOnClickListenerC0349a implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ C0350b f1904a;

        public DialogInterfaceOnClickListenerC0349a(C0350b c0350b) {
            this.f1904a = c0350b;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i2) {
            Locale localeM1008a = this.f1904a.m1008a(i2);
            LanguagePreference languagePreference = LanguagePreference.this;
            languagePreference.f1903c = localeM1008a;
            languagePreference.onClick(dialogInterface, -1);
            dialogInterface.dismiss();
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.preference.LanguagePreference$b */
    public static class C0350b extends BaseAdapter {

        /* JADX INFO: renamed from: a */
        public final LayoutInflater f1906a;

        /* JADX INFO: renamed from: b */
        public final LocaleList f1907b;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.ui.preference.LanguagePreference$b$a */
        public class a {

            /* JADX INFO: renamed from: a */
            public CheckedTextView f1908a;
        }

        public C0350b(Context context, LocaleList localeList) {
            this.f1906a = (LayoutInflater) context.getSystemService("layout_inflater");
            this.f1907b = localeList;
        }

        /* JADX INFO: renamed from: a */
        public final Locale m1008a(int i2) {
            if (i2 == 0) {
                return null;
            }
            return this.f1907b.get(i2 - 1);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1907b.size() + 1;
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i2) {
            if (i2 == 0) {
                return null;
            }
            return this.f1907b.get(i2 - 1);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            a aVar;
            if (view == null) {
                view = this.f1906a.inflate(R.layout.simple_list_item_single_choice, viewGroup, false);
                aVar = new a();
                aVar.f1908a = (CheckedTextView) view.findViewById(R.id.text1);
                view.setTag(aVar);
            } else {
                aVar = (a) view.getTag();
            }
            aVar.f1908a.setText(LanguagePreference.m1007a(m1008a(i2)));
            return view;
        }
    }

    public LanguagePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LocaleManager localeManager = (LocaleManager) context.getSystemService("locale");
        this.f1901a = localeManager;
        this.f1902b = LocaleList.forLanguageTags("ar,az,bg,zh_CN,zh_TW,hr,cs,da,en,fr,ka_GE,de,el,hi,hu,in,it,ja,ky,ko,lt,fa,pl,pt_BR,ru,sr,sk,es,th_TH,tr,ug,uk,uz,vi".replace("_", "-"));
        LocaleList applicationLocales = localeManager.getApplicationLocales();
        this.f1903c = applicationLocales.isEmpty() ? null : applicationLocales.get(0);
    }

    /* JADX INFO: renamed from: a */
    public static String m1007a(Locale locale) {
        return locale == null ? "Default" : locale.getDisplayName(new Locale("en"));
    }

    @Override // android.preference.Preference
    public final void onBindView(View view) {
        setSummary(m1007a(this.f1903c));
        super.onBindView(view);
    }

    @Override // android.preference.DialogPreference
    public final void onDialogClosed(boolean z2) {
        super.onDialogClosed(z2);
        Locale locale = this.f1903c;
        this.f1901a.setApplicationLocales(locale == null ? LocaleList.getEmptyLocaleList() : LocaleList.forLanguageTags(locale.toLanguageTag()));
        setSummary(m1007a(this.f1903c));
        notifyChanged();
    }

    @Override // android.preference.DialogPreference
    public final void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        Context context = getContext();
        LocaleList localeList = this.f1902b;
        C0350b c0350b = new C0350b(context, localeList);
        builder.setSingleChoiceItems(c0350b, localeList.indexOf(this.f1903c) + 1, new DialogInterfaceOnClickListenerC0349a(c0350b));
        builder.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
    }
}
