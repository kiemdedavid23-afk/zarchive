package p017f0;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.p045ui.text.BtnEditText;

/* JADX INFO: renamed from: f0.i */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0099i {

    /* JADX INFO: renamed from: a */
    public b f737a = null;

    /* JADX INFO: renamed from: b */
    public c f738b = null;

    /* JADX INFO: renamed from: c */
    public int f739c = -1;

    /* JADX INFO: renamed from: d */
    public int f740d = 0;

    /* JADX INFO: renamed from: e */
    public SparseArray<Object> f741e;

    /* JADX INFO: renamed from: f */
    public C0307d f742f;

    /* JADX INFO: renamed from: f0.i$a */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC0099i.this.mo337d();
        }
    }

    /* JADX INFO: renamed from: f0.i$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo246a(AbstractC0099i abstractC0099i);
    }

    /* JADX INFO: renamed from: f0.i$c */
    public interface c {
        /* JADX INFO: renamed from: b */
        boolean mo245b(AbstractC0099i abstractC0099i);
    }

    /* JADX INFO: renamed from: h */
    public static void m351h(ViewGroup viewGroup, ArrayList<View> arrayList) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt instanceof AdapterView) {
                arrayList.add(childAt);
            } else if (childAt instanceof ViewGroup) {
                m351h((ViewGroup) childAt, arrayList);
                if (childAt instanceof LinearLayout) {
                    arrayList.add(childAt);
                }
            } else if (childAt instanceof TextView) {
                arrayList.add(childAt);
            }
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m352l(FrameLayout frameLayout, View view) {
        ArrayList<View> arrayList = new ArrayList();
        if (frameLayout instanceof ViewGroup) {
            m351h(frameLayout, arrayList);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        for (View view2 : arrayList) {
            View viewFindViewById = view.findViewById(view2.getId());
            if (viewFindViewById != null) {
                viewFindViewById.setEnabled(view2.isEnabled());
                viewFindViewById.setVisibility(view2.getVisibility());
                if (viewFindViewById instanceof AdapterView) {
                    AdapterView adapterView = (AdapterView) viewFindViewById;
                    AdapterView adapterView2 = (AdapterView) view2;
                    adapterView.setAdapter(adapterView2.getAdapter());
                    adapterView.setSelection(adapterView2.getSelectedItemPosition());
                    adapterView.setOnItemSelectedListener(adapterView2.getOnItemSelectedListener());
                } else if (viewFindViewById instanceof CheckBox) {
                    ((CheckBox) viewFindViewById).setChecked(((CheckBox) view2).isChecked());
                } else if (viewFindViewById instanceof TextView) {
                    TextView textView = (TextView) viewFindViewById;
                    TextView textView2 = (TextView) view2;
                    textView.setText(textView2.getText());
                    textView.setHint(textView2.getHint());
                    textView.setFilters(textView2.getFilters());
                    textView.setInputType(textView2.getInputType());
                    if (viewFindViewById instanceof BtnEditText) {
                        ((BtnEditText) viewFindViewById).setButton(((BtnEditText) view2).getButton());
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: o */
    public static void m353o(Dialog dialog, boolean z2) {
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(dialog.getWindow().getAttributes());
        layoutParams.width = z2 ? -1 : -2;
        window.setAttributes(layoutParams);
    }

    /* JADX INFO: renamed from: q */
    public static boolean m354q(Dialog dialog) {
        try {
            dialog.show();
            return true;
        } catch (WindowManager.BadTokenException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m355a() {
        C0307d c0307d = this.f742f;
        if (c0307d == null) {
            return;
        }
        synchronized (c0307d.f1625d) {
            this.f742f.f1625d.add(this);
        }
    }

    /* JADX INFO: renamed from: d */
    public abstract void mo337d();

    /* JADX INFO: renamed from: e */
    public final void m356e() {
        try {
            ZApp.m723f().post(new a());
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: f */
    public final void m357f() {
        C0307d c0307d = this.f742f;
        if (c0307d == null) {
            return;
        }
        synchronized (c0307d.f1625d) {
            this.f742f.f1625d.remove(this);
        }
    }

    /* JADX INFO: renamed from: i */
    public final String m358i(int i2) {
        SparseArray<Object> sparseArray = this.f741e;
        if (sparseArray == null) {
            return null;
        }
        return (String) sparseArray.get(i2);
    }

    /* JADX INFO: renamed from: j */
    public final int m359j() {
        return this.f740d & 65535;
    }

    /* JADX INFO: renamed from: k */
    public int mo338k() {
        return 0;
    }

    /* JADX INFO: renamed from: m */
    public void mo346m(Context context, Configuration configuration) {
    }

    /* JADX INFO: renamed from: n */
    public final void m360n(int i2, Object obj) {
        if (this.f741e == null) {
            this.f741e = new SparseArray<>(2);
        }
        this.f741e.append(i2, obj);
    }

    /* JADX INFO: renamed from: p */
    public final void m361p(int i2) {
        this.f740d = (i2 & 65535) | (this.f740d & (-65536));
    }
}
