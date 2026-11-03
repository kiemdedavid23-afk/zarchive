package p017f0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import p021g1.C0137h;
import p059y0.C0441e;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: f0.r */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnShowListenerC0108r implements DialogInterface.OnShowListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnClickListenerC0109s f811a;

    /* JADX INFO: renamed from: f0.r$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String str;
            DialogInterfaceOnClickListenerC0109s dialogInterfaceOnClickListenerC0109s = DialogInterfaceOnShowListenerC0108r.this.f811a;
            int i2 = dialogInterfaceOnClickListenerC0109s.f815i;
            String str2 = "sd_permissions.html#";
            if (i2 == 5) {
                str = "files12";
            } else if (i2 == 6) {
                str2 = "android_data_obb.html";
                str = "";
            } else {
                int i3 = dialogInterfaceOnClickListenerC0109s.f814h;
                if (i3 == 4 || i3 == 0) {
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 30) {
                        str = "and11";
                    } else if (i4 == 29) {
                        str = "and10";
                    } else {
                        str = i4 >= 26 ? "and7" : "and5";
                    }
                } else if (Build.VERSION.SDK_INT >= 33) {
                    str = i3 == 1 ? "and13obb" : "and13data";
                } else {
                    str = "and11data";
                }
            }
            try {
                ZArchiver zArchiverM730z = ZArchiver.m730z();
                if (zArchiverM730z != null) {
                    C0137h.m502d(zArchiverM730z, new Intent("android.intent.action.VIEW", Uri.parse("http://zdevs.ru/za/" + str2 + str)));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public DialogInterfaceOnShowListenerC0108r(DialogInterfaceOnClickListenerC0109s dialogInterfaceOnClickListenerC0109s) {
        this.f811a = dialogInterfaceOnClickListenerC0109s;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        AlertDialog alertDialog = this.f811a.f813g;
        C0441e.m1183h((AlertDialog) dialogInterface, new a());
    }
}
