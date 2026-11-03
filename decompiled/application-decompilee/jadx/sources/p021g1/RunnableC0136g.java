package p021g1;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: g1.g */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0136g implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Activity f1030a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Intent f1031b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f1032c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ String f1033d;

    public RunnableC0136g(Activity activity, Intent intent, int i2, String str) {
        this.f1030a = activity;
        this.f1031b = intent;
        this.f1032c = i2;
        this.f1033d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f1030a.startActivityForResult(this.f1031b, this.f1032c);
        } catch (ActivityNotFoundException unused) {
            String str = this.f1033d;
            if (str != null) {
                ZApp.m726j(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            ZApp.m726j("Failed to start activity: " + th.getMessage());
        }
    }
}
