package p001a0;

import android.view.View;
import android.widget.AdapterView;
import ru.zdevs.zarchiver.activity.OpenAsDlg;

/* JADX INFO: renamed from: a0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0006f implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ OpenAsDlg f14a;

    public C0006f(OpenAsDlg openAsDlg) {
        this.f14a = openAsDlg;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        OpenAsDlg openAsDlg = this.f14a;
        if (openAsDlg.f1535c == null) {
            openAsDlg.f1534b = i2;
        }
        if (openAsDlg.f1534b == i2) {
            openAsDlg.f1537e.onClick(null);
        } else {
            openAsDlg.f1534b = i2;
            openAsDlg.m798b(true);
        }
    }
}
