package p017f0;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: renamed from: f0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0096f implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0098h f715a;

    public C0096f(DialogInterfaceOnCancelListenerC0098h dialogInterfaceOnCancelListenerC0098h) {
        this.f715a = dialogInterfaceOnCancelListenerC0098h;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        this.f715a.m350u(null, i2);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
