package p017f0;

import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.storage.StorageVolume;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import p004b.C0015d;
import p021g1.C0137h;
import p021g1.RunnableC0136g;
import p047s0.C0358b;
import p053v0.AbstractCallableC0395c;
import p055w0.C0412c;
import p055w0.C0416g;
import p059y0.C0441e;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;
import ru.zdevs.zarchiver.activity.SettingsDlg;

/* JADX INFO: renamed from: f0.s */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0109s extends AbstractC0099i implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: g */
    public AlertDialog f813g;

    /* JADX INFO: renamed from: h */
    public final int f814h;

    /* JADX INFO: renamed from: i */
    public int f815i;

    /* JADX INFO: renamed from: j */
    public final C0412c.a f816j;

    /* JADX INFO: renamed from: k */
    public final String f817k;

    /* JADX INFO: renamed from: l */
    public final int f818l;

    /* JADX INFO: renamed from: m */
    public StorageVolume f819m;

    public DialogInterfaceOnClickListenerC0109s(C0307d c0307d, Context context, int i2, int i3, C0412c.a aVar, int i4, String str) {
        String str2;
        this.f742f = c0307d;
        this.f815i = i4;
        this.f814h = i4;
        this.f816j = aVar;
        this.f817k = str;
        this.f818l = i2 == 0 ? i3 == 0 ? 105 : 106 : i2;
        this.f819m = null;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_fix_sd, (ViewGroup) null, false);
        builder.setView(viewInflate);
        CheckBox checkBox = (CheckBox) viewInflate.findViewById(R.id.cbDontShow);
        TextView textView = (TextView) viewInflate.findViewById(R.id.text);
        builder.setPositiveButton(R.string.BTN_OK, this);
        boolean z2 = true;
        if (i4 == 1 || i4 == 2 || i4 == 3) {
            builder.setNegativeButton(R.string.BTN_CANCEL, this);
            builder.setTitle(R.string.app_name);
            if (i4 == 1) {
                textView.setText(context.getString(R.string.FSD_ACCESS_TO_OBB_FOLDER));
            } else {
                int iM1142c = C0416g.m1142c(context);
                if (iM1142c == 0) {
                    String str3 = (aVar == null || !C0015d.m49K(aVar.f2157f, 2)) ? "PHONE/" : "SD/";
                    textView.setText(context.getString(R.string.FSD_SELECT_PATH_TO_EXT_SD).replace("%1", str3 + str));
                } else {
                    boolean z3 = iM1142c == 2;
                    StringBuilder sb = new StringBuilder();
                    sb.append(context.getString(R.string.FSD_ACCESS_FILES_DENIED));
                    sb.append(" ");
                    sb.append(context.getString(z3 ? R.string.FSD_REMOVE_FILES_UPDATE : R.string.FSD_USE_ROOT));
                    textView.setText(sb.toString());
                    this.f815i = z3 ? 5 : 6;
                }
            }
            if (this.f815i != 3) {
                checkBox.setVisibility(8);
            }
        } else {
            if (i4 != 4 || Build.VERSION.SDK_INT < 30) {
                if (i4 == 0) {
                    int i5 = Build.VERSION.SDK_INT;
                    builder.setNegativeButton(R.string.BTN_CANCEL, this);
                    builder.setTitle(R.string.FSD_TTL_FIX_SD);
                    if (aVar == null) {
                        mo337d();
                    } else {
                        if (i5 >= 24) {
                            Object obj = aVar.f2156e;
                            if (obj instanceof StorageVolume) {
                                this.f819m = (StorageVolume) obj;
                            }
                        }
                        if (aVar.f2152a != null) {
                            str2 = "[" + aVar.f2152a + "]";
                        } else {
                            str2 = "";
                        }
                        if (this.f819m == null || i5 >= 29) {
                            textView.setText(context.getString(R.string.FSD_SELECT_PATH_TO_EXT_SD).replace("%1", str2));
                        } else {
                            textView.setText(context.getString(R.string.FSD_ALLOW_ACCESS_TO_EXT_SD).replace("%1", str2));
                        }
                    }
                }
                m355a();
            }
            checkBox.setVisibility(8);
            builder.setTitle(R.string.app_name);
            textView.setText(context.getString(R.string.FSD_ACCESS_TO_ALL_STORAGE));
        }
        if (Build.VERSION.SDK_INT >= 30 && (i4 == 2 || i4 == 3)) {
            MenuItem menuItemFindItem = C0441e.m1182g(builder, R.string.FSD_TTL_FIX_SD, R.menu.menu_sd_fix, new C0107q(this)).findItem(R.id.bForceSelect);
            int i6 = this.f815i;
            if (i6 != 6 && i6 != 5) {
                z2 = false;
            }
            menuItemFindItem.setVisible(z2);
        }
        builder.setView(viewInflate);
        builder.setCancelable(false);
        builder.setNeutralButton("help", (DialogInterface.OnClickListener) null);
        AlertDialog alertDialogCreate = builder.create();
        this.f813g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f813g.setOnShowListener(new DialogInterfaceOnShowListenerC0108r(this));
        m355a();
    }

    /* JADX INFO: renamed from: r */
    public static void m377r(C0307d c0307d, Context context, int i2, int i3, C0412c.a aVar, int i4, String str) {
        ZArchiver zArchiverM730z;
        if (i4 == 3 && !C0358b.m1037h(256) && C0416g.m1142c(context) == 0 && (zArchiverM730z = ZArchiver.m730z()) != null) {
            if (i2 == 0) {
                i2 = i3 == 0 ? 105 : 106;
            }
            C0416g.m1147h(zArchiverM730z, aVar, str, i2);
        } else {
            AlertDialog alertDialog = new DialogInterfaceOnClickListenerC0109s(c0307d, context, i2, i3, aVar, i4, str).f813g;
            if (alertDialog != null) {
                AbstractC0099i.m354q(alertDialog);
            }
        }
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f813g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f813g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 4;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0132  */
    /* JADX WARN: Code duplicated, block: B:60:0x013d  */
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        CheckBox checkBox;
        boolean z2 = true;
        if (i2 == -1) {
            ZArchiver zArchiverM730z = ZArchiver.m730z();
            if (zArchiverM730z != null) {
                int i3 = this.f815i;
                if ((i3 != 2 && i3 != 1 && i3 != 3) || Build.VERSION.SDK_INT < 26) {
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 30 && i3 == 4) {
                        try {
                            try {
                                zArchiverM730z.startActivityForResult(new Intent("android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION", Uri.fromParts("package", "ru.zdevs.zarchiver", null)), 107);
                            } catch (Exception unused) {
                                zArchiverM730z.startActivity(new Intent("android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"));
                            }
                        } catch (ActivityNotFoundException unused2) {
                            ZApp.m726j("Failed to request the ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION");
                        }
                    } else if (i3 == 5) {
                        PackageInfo packageInfoM1141b = C0416g.m1141b(zArchiverM730z);
                        if (packageInfoM1141b != null) {
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.parse("package:" + packageInfoM1141b.packageName));
                            C0416g.m1149j(zArchiverM730z, intent, 113);
                        }
                    } else if (i3 == 6) {
                        Intent intent2 = new Intent(zArchiverM730z, (Class<?>) SettingsDlg.class);
                        intent2.putExtra("settings", "root");
                        intent2.putExtra("title", zArchiverM730z.getString(R.string.OPT_SECTION_ROOT));
                        C0137h.m502d(zArchiverM730z, intent2);
                    } else {
                        StorageVolume storageVolume = this.f819m;
                        if (storageVolume == null) {
                            C0416g.m1147h(zArchiverM730z, this.f816j, null, this.f818l);
                        } else if (i4 < 29) {
                            C0416g.m1144e(zArchiverM730z, storageVolume, this.f818l);
                        } else {
                            C0416g.m1148i(zArchiverM730z, storageVolume, this.f818l);
                        }
                    }
                } else if (i3 == 1) {
                    AbstractCallableC0395c.m1097h(new RunnableC0136g(zArchiverM730z, new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.fromParts("package", "ru.zdevs.zarchiver", null)), 111, null));
                } else {
                    C0416g.m1147h(zArchiverM730z, this.f816j, this.f817k, this.f818l);
                }
            }
            z2 = false;
        }
        AlertDialog alertDialog = this.f813g;
        if (alertDialog != null && (checkBox = (CheckBox) alertDialog.findViewById(R.id.cbDontShow)) != null && checkBox.isChecked()) {
            if (this.f814h != 3 || z2) {
                C0412c.a aVar = this.f816j;
                if (aVar != null && z2) {
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(ZApp.f1375c);
                    String string = defaultSharedPreferences.getString("sNonRequestPermission", null);
                    if (string != null) {
                        if (!string.contains("~!@" + aVar.m1126a() + "~!@")) {
                            SharedPreferences.Editor editorEdit = defaultSharedPreferences.edit();
                            StringBuilder sb = new StringBuilder();
                            if (string == null) {
                                string = "~!@";
                            }
                            sb.append(string);
                            sb.append(aVar.m1126a());
                            sb.append("~!@");
                            editorEdit.putString("sNonRequestPermission", sb.toString());
                            editorEdit.apply();
                        }
                    } else {
                        SharedPreferences.Editor editorEdit2 = defaultSharedPreferences.edit();
                        StringBuilder sb2 = new StringBuilder();
                        if (string == null) {
                            string = "~!@";
                        }
                        sb2.append(string);
                        sb2.append(aVar.m1126a());
                        sb2.append("~!@");
                        editorEdit2.putString("sNonRequestPermission", sb2.toString());
                        editorEdit2.apply();
                    }
                }
            } else {
                C0358b.m1044o(this.f813g.getContext(), 256);
            }
        }
        mo337d();
    }
}
