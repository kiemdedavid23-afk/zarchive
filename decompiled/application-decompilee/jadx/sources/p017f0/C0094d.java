package p017f0;

import android.view.MenuItem;
import android.widget.PopupMenu;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: f0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0094d implements PopupMenu.OnMenuItemClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0098h f713a;

    public C0094d(DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h) {
        this.f713a = dialogInterfaceOnCancelListenerC0098h;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == R.id.bSolid) {
            DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h = this.f713a;
            boolean z2 = !dialogInterfaceOnCancelListenerC0098h.f732s;
            dialogInterfaceOnCancelListenerC0098h.f732s = z2;
            menuItem.setChecked(z2);
        }
        return false;
    }
}
