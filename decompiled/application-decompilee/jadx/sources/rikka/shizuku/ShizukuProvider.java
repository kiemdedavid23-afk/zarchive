package rikka.shizuku;

import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import moe.shizuku.api.BinderContainer;
import p004b.C0015d;
import p058y.C0433a;

/* JADX INFO: loaded from: classes.dex */
public class ShizukuProvider extends ContentProvider {

    /* JADX INFO: renamed from: a */
    public static boolean f1371a = false;

    /* JADX INFO: renamed from: b */
    public static boolean f1372b = false;

    /* JADX INFO: renamed from: rikka.shizuku.ShizukuProvider$a */
    public class C0248a extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            IBinder iBinder;
            BinderContainer binderContainer = (BinderContainer) intent.getParcelableExtra("moe.shizuku.privileged.api.intent.extra.BINDER");
            if (binderContainer == null || (iBinder = binderContainer.f1159a) == null) {
                return;
            }
            Log.i("ShizukuProvider", "binder received from broadcast");
            C0433a.m1156d(iBinder, context.getPackageName());
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m717a(Context context) {
        IBinder iBinder;
        if (f1372b) {
            return;
        }
        Log.d("ShizukuProvider", "request binder in non-provider process");
        C0248a c0248a = new C0248a();
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(c0248a, new IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"), 4);
        } else {
            context.registerReceiver(c0248a, new IntentFilter("moe.shizuku.api.action.BINDER_RECEIVED"));
        }
        Bundle bundleCall = null;
        try {
            bundleCall = context.getContentResolver().call(Uri.parse("content://" + context.getPackageName() + ".shizuku"), "getBinder", (String) null, new Bundle());
        } catch (Throwable unused) {
        }
        if (bundleCall != null) {
            bundleCall.setClassLoader(BinderContainer.class.getClassLoader());
            BinderContainer binderContainer = (BinderContainer) bundleCall.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
            if (binderContainer == null || (iBinder = binderContainer.f1159a) == null) {
                return;
            }
            Log.i("ShizukuProvider", "Binder received from other process");
            C0433a.m1156d(iBinder, context.getPackageName());
        }
    }

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.multiprocess) {
            throw new IllegalStateException("android:multiprocess must be false");
        }
        if (!providerInfo.exported) {
            throw new IllegalStateException("android:exported must be true");
        }
        f1372b = true;
    }

    @Override // android.content.ContentProvider
    public final Bundle call(String str, String str2, Bundle bundle) {
        IBinder iBinder;
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(BinderContainer.class.getClassLoader());
        Bundle bundle2 = new Bundle();
        str.getClass();
        boolean z2 = true;
        if (str.equals("sendBinder")) {
            IBinder iBinder2 = C0433a.f2206a;
            if (iBinder2 != null && iBinder2.pingBinder()) {
                Log.d("ShizukuProvider", "sendBinder is called when already a living binder");
            } else {
                BinderContainer binderContainer = (BinderContainer) bundle.getParcelable("moe.shizuku.privileged.api.intent.extra.BINDER");
                if (binderContainer != null && (iBinder = binderContainer.f1159a) != null) {
                    Log.d("ShizukuProvider", "binder received");
                    C0433a.m1156d(iBinder, getContext().getPackageName());
                    if (f1371a) {
                        Log.d("ShizukuProvider", "broadcast binder");
                        getContext().sendBroadcast(new Intent("moe.shizuku.api.action.BINDER_RECEIVED").putExtra("moe.shizuku.privileged.api.intent.extra.BINDER", binderContainer).setPackage(getContext().getPackageName()));
                    }
                }
            }
        } else if (str.equals("getBinder")) {
            IBinder iBinder3 = C0433a.f2206a;
            if (iBinder3 == null || !iBinder3.pingBinder()) {
                z2 = false;
            } else {
                bundle2.putParcelable("moe.shizuku.privileged.api.intent.extra.BINDER", new BinderContainer(iBinder3));
            }
            if (!z2) {
                return null;
            }
        }
        return bundle2;
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        if (C0015d.f114a) {
            return true;
        }
        Log.d("ShizukuProvider", "Initialize Sui: " + C0015d.m44F(getContext().getPackageName()));
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
