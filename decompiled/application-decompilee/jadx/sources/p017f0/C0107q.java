package p017f0;

import android.os.Build;
import android.view.MenuItem;
import android.widget.PopupMenu;
import p051u0.C0378a;
import p055w0.C0416g;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: f0.q */
/* JADX INFO: loaded from: classes.dex */
public final class C0107q implements PopupMenu.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnClickListenerC0109s f810a;

    public C0107q(DialogInterfaceOnClickListenerC0109s dialogInterfaceOnClickListenerC0109s) {
        this.f810a = dialogInterfaceOnClickListenerC0109s;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        DialogInterfaceOnClickListenerC0109s dialogInterfaceOnClickListenerC0109s = this.f810a;
        String strM1140a = C0416g.m1140a(dialogInterfaceOnClickListenerC0109s.f813g.getContext());
        if (menuItem.getItemId() == R.id.bForceSelect) {
            dialogInterfaceOnClickListenerC0109s.f815i = dialogInterfaceOnClickListenerC0109s.f814h;
            if (strM1140a != null) {
                ZApp.m726j(strM1140a);
            }
            dialogInterfaceOnClickListenerC0109s.onClick(dialogInterfaceOnClickListenerC0109s.f813g, -1);
            return true;
        }
        if (strM1140a == null) {
            return true;
        }
        C0378a.m1053a(dialogInterfaceOnClickListenerC0109s.f813g.getContext(), null, strM1140a + "\nOS SECURITY_PATCH:" + Build.VERSION.SECURITY_PATCH);
        return true;
    }
}
