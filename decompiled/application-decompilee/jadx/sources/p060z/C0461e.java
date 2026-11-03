package p060z;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0461e implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2282a;

    public C0461e(ZArchiver zArchiver) {
        this.f2282a = zArchiver;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        ZArchiver.m728u(this.f2282a, adapterView, i2);
    }
}
