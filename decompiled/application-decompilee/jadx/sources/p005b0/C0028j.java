package p005b0;

import android.R;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: renamed from: b0.j */
/* JADX INFO: loaded from: classes.dex */
public final class C0028j extends BaseAdapter implements SpinnerAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f211a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f212b = new ArrayList();

    /* JADX INFO: renamed from: c */
    public final ArrayList f213c = new ArrayList();

    public C0028j(Context context) {
        this.f211a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: renamed from: a */
    public final void m130a(String str) {
        this.f212b.add(str);
        this.f213c.add(Boolean.TRUE);
    }

    /* JADX INFO: renamed from: b */
    public final void m131b(int i2) {
        ArrayList arrayList = this.f213c;
        if (i2 >= arrayList.size()) {
            return;
        }
        arrayList.set(i2, Boolean.FALSE);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f212b.size();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f211a.inflate(R.layout.simple_spinner_dropdown_item, viewGroup, false);
        }
        ((TextView) view).setText((CharSequence) this.f212b.get(i2));
        view.setEnabled(isEnabled(i2));
        return view;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f212b.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f211a.inflate(R.layout.simple_spinner_item, viewGroup, false);
        }
        ((TextView) view).setText((CharSequence) this.f212b.get(i2));
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i2) {
        return ((Boolean) this.f213c.get(i2)).booleanValue();
    }
}
