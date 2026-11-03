package p060z;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import p005b0.C0022d;
import p005b0.C0023e;
import p020g0.C0129h;
import ru.zdevs.zarchiver.ZSelectFile;

/* JADX INFO: renamed from: z.z0 */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0504z0 implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ ZSelectFile f2391a;

    /* JADX INFO: renamed from: z.z0$a */
    public class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ ListPopupWindow f2392a;

        public a(ListPopupWindow listPopupWindow) {
            this.f2392a = listPopupWindow;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            if (adapterView != null) {
                C0023e c0023e = (C0023e) adapterView.getItemAtPosition(i2);
                ZSelectFile zSelectFile = ViewOnClickListenerC0504z0.this.f2391a;
                C0129h c0129h = new C0129h(c0023e.f186c);
                int i3 = ZSelectFile.f1420n;
                zSelectFile.m771y(null, c0129h, false);
            }
            this.f2392a.dismiss();
        }
    }

    public ViewOnClickListenerC0504z0(ZSelectFile zSelectFile) {
        this.f2391a = zSelectFile;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ZSelectFile zSelectFile = this.f2391a;
        DisplayMetrics displayMetrics = zSelectFile.getResources().getDisplayMetrics();
        ListPopupWindow listPopupWindow = new ListPopupWindow(zSelectFile);
        listPopupWindow.setAnchorView(zSelectFile.f1426k);
        listPopupWindow.setContentWidth(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        listPopupWindow.setAdapter(new C0022d(zSelectFile, true, true));
        listPopupWindow.setOnItemClickListener(new a(listPopupWindow));
        try {
            listPopupWindow.setModal(true);
            listPopupWindow.show();
        } catch (WindowManager.BadTokenException unused) {
        }
    }
}
