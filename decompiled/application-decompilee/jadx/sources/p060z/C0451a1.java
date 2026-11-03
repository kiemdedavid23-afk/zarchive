package p060z;

import android.view.View;
import android.widget.AdapterView;
import p005b0.C0023e;
import p020g0.C0129h;
import ru.zdevs.zarchiver.ZSelectFile;

/* JADX INFO: renamed from: z.a1 */
/* JADX INFO: loaded from: classes.dex */
public final class C0451a1 implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZSelectFile f2262a;

    public C0451a1(ZSelectFile zSelectFile) {
        this.f2262a = zSelectFile;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (adapterView == null) {
            return;
        }
        C0129h c0129h = new C0129h(((C0023e) adapterView.getItemAtPosition(i2)).f186c);
        int i3 = ZSelectFile.f1420n;
        this.f2262a.m771y(null, c0129h, false);
    }
}
