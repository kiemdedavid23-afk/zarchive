package p021g1;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: g1.f */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0135f implements Runnable {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Context f1027a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Intent f1028b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ String f1029c = null;

    public RunnableC0135f(Context context, Intent intent) {
        this.f1027a = context;
        this.f1028b = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f1027a.startActivity(this.f1028b);
        } catch (ActivityNotFoundException unused) {
            String str = this.f1029c;
            if (str != null) {
                ZApp.m726j(str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
            ZApp.m726j("Failed to start activity: " + th.getMessage());
        }
    }
}
