package p015e1;

import android.R;
import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.PopupWindow;
import p047s0.C0358b;

/* JADX INFO: renamed from: e1.b */
/* JADX INFO: loaded from: classes.dex */
public class C0084b implements PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: a */
    public final PopupWindow f620a;

    public C0084b(Context context) {
        PopupWindow popupWindow = new PopupWindow(LayoutInflater.from(C0358b.m1040k(768) ? new ContextThemeWrapper(context, R.style.Theme.DeviceDefault.Dialog) : context).inflate(ru.zdevs.zarchiver.R.layout.menu_view_mode, (ViewGroup) null, false), -2, -2, true);
        this.f620a = popupWindow;
        popupWindow.setOutsideTouchable(true);
        popupWindow.setInputMethodMode(1);
        if (!C0358b.m1040k(1536)) {
            popupWindow.setElevation(8.0f);
        }
        popupWindow.setWindowLayoutType(1002);
        popupWindow.setOnDismissListener(this);
    }

    /* JADX INFO: renamed from: a */
    public final void m310a(Window window, View view) {
        View decorView = window.getDecorView();
        PopupWindow popupWindow = this.f620a;
        try {
            if (view == null) {
                popupWindow.showAtLocation(decorView, 8388659, decorView.getWidth(), 0);
            } else {
                int[] iArr = {i, i};
                view.getLocationOnScreen(iArr);
                int[] iArr2 = new int[2];
                decorView.getLocationOnScreen(iArr2);
                int i2 = iArr[0] - iArr2[0];
                int i3 = iArr[1] - iArr2[1];
                popupWindow.showAtLocation(view, 8388659, i2, i3);
            }
        } catch (Exception unused) {
        }
    }
}
