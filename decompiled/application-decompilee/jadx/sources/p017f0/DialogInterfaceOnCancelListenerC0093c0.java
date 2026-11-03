package p017f0;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: renamed from: f0.c0 */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0093c0 extends AbstractC0099i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, AdapterView.OnItemClickListener, AdapterView.OnItemLongClickListener {
    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 13;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        AbstractC0099i.b bVar;
        if (i2 == -2 && (bVar = this.f737a) != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (view == null || this.f742f == null) {
            return;
        }
        m357f();
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        return false;
    }
}
