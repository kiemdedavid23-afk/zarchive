package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import p021g1.C0137h;

/* JADX INFO: loaded from: classes.dex */
public class InstallApkDlg extends Activity {
    @Override // android.app.Activity
    public final void finishAndRemoveTask() {
        super.finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        int i4 = -1;
        if (i3 != -1 && !C0137h.m500b()) {
            i4 = 0;
        }
        setResult(i4, getIntent());
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent();
        intent.setAction("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
        intent.setData(Uri.fromParts("package", "ru.zdevs.zarchiver", null));
        try {
            startActivityForResult(intent, 0);
        } catch (Throwable unused) {
            finishAndRemoveTask();
        }
    }
}
