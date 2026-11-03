package p060z;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0463f implements AdapterView.OnItemLongClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZArchiver f2285a;

    public C0463f(ZArchiver zArchiver) {
        this.f2285a = zArchiver;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        return ZArchiver.m729v(this.f2285a, adapterView, i2);
    }
}
