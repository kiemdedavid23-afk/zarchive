package p001a0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.activity.AboutDlg;

/* JADX INFO: renamed from: a0.a */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0001a implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ AboutDlg f0a;

    public ViewOnClickListenerC0001a(AboutDlg aboutDlg) {
        this.f0a = aboutDlg;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f0a);
        builder.setTitle(R.string.ABT_TERM_OF_SERVICE).setPositiveButton(R.string.BTN_OK, (DialogInterface.OnClickListener) null).setMessage("a. You expressly understand and agree that your use of the application is at your sole discretion and risk and that the application is provided as is and as available without warranty of any kind.\nb. You are solely responsible for any damage to your mobile device, or other device, or loss of data that results from such use.\nc. The author further expressly disclaims all warranties and conditions of any kind, whether express or implied, including, but not limited to the implied warranties and conditions of fitness for a particular purpose.");
        builder.show();
    }
}
