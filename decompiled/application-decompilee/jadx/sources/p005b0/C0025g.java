package p005b0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.g */
/* JADX INFO: loaded from: classes.dex */
public final class C0025g extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f191a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f192b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final ArrayList f193c = new ArrayList();

    public C0025g(Context context) {
        this.f191a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: renamed from: a */
    public final void m126a(int i2) {
        ArrayList arrayList = this.f193c;
        if (i2 >= arrayList.size()) {
            return;
        }
        arrayList.set(i2, Boolean.FALSE);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f192b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f192b.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f191a.inflate(R.layout.item_select_dialog_singlechoice, viewGroup, false);
        }
        ((TextView) view).setText((CharSequence) this.f192b.get(i2));
        view.setEnabled(isEnabled(i2));
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i2) {
        return ((Boolean) this.f193c.get(i2)).booleanValue();
    }
}
