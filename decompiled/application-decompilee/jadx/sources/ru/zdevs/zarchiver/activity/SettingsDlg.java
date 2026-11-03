package ru.zdevs.zarchiver.activity;

import android.app.ActionBar;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import p004b.C0015d;
import p029k0.C0164a;
import p029k0.C0165b;
import p029k0.C0166c;
import p033m0.C0181d;
import p035n0.AbstractC0194a;
import p047s0.C0358b;
import p051u0.C0379b;
import p053v0.AbstractCallableC0395c;
import p053v0.C0393a;
import p055w0.C0416g;
import p059y0.C0439c;
import p059y0.C0441e;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: loaded from: classes.dex */
public class SettingsDlg extends PreferenceActivity implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a */
    public SharedPreferences f1546a;

    public static class PluginFragment extends PreferenceFragment {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            Activity activity = getActivity();
            String[] strArr = C0166c.f1077a;
            PackageManager packageManager = activity.getPackageManager();
            Intent intent = new Intent("ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION");
            PreferenceScreen preferenceScreenCreatePreferenceScreen = getPreferenceManager().createPreferenceScreen(activity);
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
                Intent intent2 = new Intent(intent);
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                intent2.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name));
                intent2.setPackage(resolveInfo.activityInfo.packageName);
                intent2.putExtra("LOCALE", C0358b.f1983e);
                Preference preference = new Preference(activity);
                preference.setTitle(resolveInfo.loadLabel(packageManager));
                preference.getExtras().putParcelable("intent", intent2);
                preference.setOnPreferenceClickListener(new C0164a());
                preferenceScreenCreatePreferenceScreen.addPreference(preference);
            }
            Preference preference2 = new Preference(activity);
            preference2.setTitle(R.string.OPT_PLUGINS_SEARCH);
            preference2.setOnPreferenceClickListener(new C0165b());
            preferenceScreenCreatePreferenceScreen.addPreference(preference2);
            setPreferenceScreen(preferenceScreenCreatePreferenceScreen);
        }
    }

    public static class SettingsFragment extends PreferenceFragment {
        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public final void onActivityCreated(Bundle bundle) {
            super.onActivityCreated(bundle);
            if (C0379b.m1059f()) {
                C0300a.m799a(getView(), android.R.id.summary, R.attr.defaultTextColorFileListSub);
            }
        }

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public final void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            String string = getArguments().getString("settings");
            if ("general".equals(string)) {
                addPreferencesFromResource(R.xml.pref_general);
                return;
            }
            if ("gui".equals(string)) {
                addPreferencesFromResource(R.xml.pref_gui);
                if (C0441e.m1178c(ZApp.m720c(getContext()))) {
                    findPreference("iTwoTab").setEnabled(false);
                    return;
                }
                return;
            }
            if ("fm".equals(string)) {
                addPreferencesFromResource(R.xml.pref_fm);
            } else if ("compression".equals(string)) {
                addPreferencesFromResource(R.xml.pref_compression);
            } else if ("root".equals(string)) {
                addPreferencesFromResource(R.xml.pref_root);
            }
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.SettingsDlg$a */
    public static class C0300a extends BaseAdapter {

        /* JADX INFO: renamed from: a */
        public final ListAdapter f1547a;

        /* JADX INFO: renamed from: b */
        public final int f1548b;

        /* JADX INFO: renamed from: c */
        public final int f1549c;

        public C0300a(ListAdapter listAdapter, int i2, int i3) {
            this.f1547a = listAdapter;
            this.f1548b = i2;
            this.f1549c = i3;
        }

        /* JADX INFO: renamed from: a */
        public static void m799a(View view, int i2, int i3) {
            ListView listView;
            ListAdapter adapter;
            if (view == null || (listView = (ListView) view.findViewById(android.R.id.list)) == null || (adapter = listView.getAdapter()) == null) {
                return;
            }
            listView.setAdapter((ListAdapter) new C0300a(adapter, i2, C0439c.m1168c(view.getContext(), i3)));
            listView.setItemChecked(0, true);
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f1547a.getCount();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i2) {
            return this.f1547a.getItem(i2);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i2) {
            return this.f1547a.getItemId(i2);
        }

        @Override // android.widget.Adapter
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            View view2 = this.f1547a.getView(i2, view, viewGroup);
            TextView textView = (TextView) view2.findViewById(this.f1548b);
            if (textView != null) {
                textView.setTextColor(this.f1549c);
            }
            return view2;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.SettingsDlg$b */
    public static class C0301b extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final OutputStream f1550e;

        public C0301b(OutputStream outputStream) {
            this.f1550e = outputStream;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() throws Throwable {
            ObjectOutputStream objectOutputStream;
            boolean z2;
            OutputStream outputStream = this.f1550e;
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ZApp.f1375c);
            ObjectOutputStream objectOutputStream2 = null;
            try {
                objectOutputStream = new ObjectOutputStream(outputStream);
                try {
                    objectOutputStream.writeObject("ZA 1.0.10");
                    objectOutputStream.writeObject(defaultSharedPreferences.getAll());
                    objectOutputStream.close();
                    C0181d.m563d(objectOutputStream);
                    C0181d.m563d(outputStream);
                    z2 = true;
                } catch (IOException unused) {
                    C0181d.m563d(objectOutputStream);
                    C0181d.m563d(outputStream);
                    z2 = false;
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream2 = objectOutputStream;
                    C0181d.m563d(objectOutputStream2);
                    C0181d.m563d(outputStream);
                    throw th;
                }
            } catch (IOException unused2) {
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            ZApp.m725i(z2 ? R.string.MES_SUCESSFUL_END : R.string.MES_END_WITH_ERROR);
            return null;
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.activity.SettingsDlg$c */
    public static class C0302c extends AbstractCallableC0395c {

        /* JADX INFO: renamed from: e */
        public final InputStream f1551e;

        public C0302c(InputStream inputStream) {
            this.f1551e = inputStream;
        }

        @Override // p053v0.AbstractCallableC0395c
        /* JADX INFO: renamed from: f */
        public final C0393a.b mo343f() throws Throwable {
            ObjectInputStream objectInputStream;
            int i2;
            char c2;
            InputStream inputStream = this.f1551e;
            ObjectInputStream objectInputStream2 = null;
            boolean z2 = false;
            try {
                objectInputStream = new ObjectInputStream(inputStream);
                try {
                    try {
                        if (((String) objectInputStream.readObject()).startsWith("ZA")) {
                            try {
                                Map map = (Map) objectInputStream.readObject();
                                C0181d.m563d(objectInputStream);
                                C0181d.m563d(inputStream);
                                SharedPreferences.Editor editorEdit = PreferenceManager.getDefaultSharedPreferences(ZApp.f1375c).edit();
                                editorEdit.clear();
                                for (Map.Entry entry : map.entrySet()) {
                                    if (entry.getValue() instanceof Boolean) {
                                        editorEdit.putBoolean((String) entry.getKey(), ((Boolean) entry.getValue()).booleanValue());
                                    } else if (entry.getValue() instanceof String) {
                                        editorEdit.putString((String) entry.getKey(), (String) entry.getValue());
                                    } else if (entry.getValue() instanceof Integer) {
                                        editorEdit.putInt((String) entry.getKey(), ((Integer) entry.getValue()).intValue());
                                    }
                                }
                                i2 = !editorEdit.commit() ? 1 : 0;
                            } catch (Exception unused) {
                                z2 = true;
                                char c3 = z2 ? (char) 1 : (char) 2;
                                C0181d.m563d(objectInputStream);
                                c2 = c3;
                                C0181d.m563d(inputStream);
                                i2 = c2;
                            }
                        } else {
                            C0181d.m563d(objectInputStream);
                            c2 = 2;
                            C0181d.m563d(inputStream);
                            i2 = c2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        objectInputStream2 = objectInputStream;
                        C0181d.m563d(objectInputStream2);
                        C0181d.m563d(inputStream);
                        throw th;
                    }
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                objectInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            if (i2 == 0) {
                ZApp.m725i(R.string.MES_SUCESSFUL_END);
            } else if (i2 == 1) {
                ZApp.m725i(R.string.MES_END_WITH_ERROR);
            } else if (i2 == 2) {
                ZApp.m726j("Invalid format");
            }
            return null;
        }
    }

    @Override // android.app.Activity
    public final void finishAndRemoveTask() {
        super.finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return super.getMenuInflater();
    }

    @Override // android.preference.PreferenceActivity
    public final boolean isValidFragment(String str) {
        return true;
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        if (i3 != -1) {
            return;
        }
        Uri data = intent != null ? intent.getData() : null;
        try {
            if (i2 == 400 && data != null) {
                data.toString();
                new C0301b(getContentResolver().openOutputStream(data)).m1098g(null, null);
            } else {
                if (i2 != 401 || data == null) {
                    return;
                }
                data.toString();
                new C0302c(getContentResolver().openInputStream(data)).m1098g(null, null);
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.preference.PreferenceActivity
    public final void onBuildHeaders(List<PreferenceActivity.Header> list) {
        loadHeadersFromResource(R.xml.pref_header, list);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ListView listView;
        ActionBar actionBar;
        C0441e.m1188m(this, false);
        C0441e.m1184i(this, C0358b.f1983e);
        super.onCreate(bundle);
        setTitle(R.string.OPT_TTL_SETTINGS);
        if (!C0441e.m1178c(this) && (actionBar = getActionBar()) != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
        }
        this.f1546a = PreferenceManager.getDefaultSharedPreferences(this);
        if (C0379b.m1059f()) {
            C0300a.m799a(getWindow().getDecorView(), android.R.id.title, R.attr.defaultTextColorFileList);
        }
        if (C0358b.m1040k(1536) && (listView = (ListView) findViewById(android.R.id.list)) != null) {
            listView.setSelector(android.R.color.transparent);
        }
        Intent intent = getIntent();
        if (bundle == null && intent != null && intent.hasExtra("settings")) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("settings", intent.getStringExtra("settings"));
            switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle2);
            setTitle(intent.getStringExtra("title"));
        }
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        if (menu == null) {
            return false;
        }
        getMenuInflater().inflate(R.menu.menu_settings, menu);
        return true;
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        int i2 = Build.VERSION.SDK_INT;
        if (itemId == R.id.backup) {
            C0416g.m1145f(this, "za_settings.txt", true, 400);
            return true;
        }
        if (itemId == R.id.restore) {
            C0416g.m1145f(this, null, false, 401);
            return true;
        }
        if (i2 >= 26 || itemId != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finishAndRemoveTask();
        return true;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f1546a.unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        this.f1546a.registerOnSharedPreferenceChangeListener(this);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        boolean z2;
        if (("bRoot".equals(str) || "bRootAndroidDir".equals(str)) && sharedPreferences.getBoolean(str, false)) {
            int iM79i0 = C0015d.m79i0(0, sharedPreferences.getString("iRootType", null)) + 1;
            if (AbstractC0194a.m590g(iM79i0)) {
                z2 = false;
            } else {
                if (iM79i0 == 1) {
                    ZApp.m725i(R.string.OPT_ROOT_NOT_FOUND);
                } else if (iM79i0 == 2) {
                    ZApp.m726j("Shizuku v11+ / SUI not found!");
                }
                z2 = true;
            }
            if (z2) {
                sharedPreferences.edit().putBoolean(str, false).apply();
                Bundle bundle = new Bundle();
                bundle.putString("settings", "root");
                switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle);
                return;
            }
        }
        if ("iRootType".equals(str)) {
            sharedPreferences.edit().putBoolean("bRoot", false).putBoolean("bRootAndroidDir", false).apply();
            Bundle bundle2 = new Bundle();
            bundle2.putString("settings", "root");
            switchToHeader("ru.zdevs.zarchiver.activity.SettingsDlg$SettingsFragment", bundle2);
        }
        C0358b.f1981c |= 1;
    }
}
