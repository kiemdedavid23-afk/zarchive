package p001a0;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import p021g1.C0137h;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.activity.AboutDlg;

/* JADX INFO: renamed from: a0.b */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0002b implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AboutDlg f1a;

    public ViewOnClickListenerC0002b(AboutDlg aboutDlg) {
        this.f1a = aboutDlg;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        AboutDlg aboutDlg = this.f1a;
        intent.setData(Uri.parse(aboutDlg.getString(R.string.ABT_PRIVATE_POLICY_URL)));
        C0137h.m502d(aboutDlg, intent);
    }
}
