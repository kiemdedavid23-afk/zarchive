package p005b0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0024f extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f189a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f190b = new ArrayList();

    public C0024f(Context context) {
        this.f189a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f190b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return (C0026h) this.f190b.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        ImageView imageView;
        C0026h c0026h = (C0026h) this.f190b.get(i2);
        if (view == null) {
            view = this.f189a.inflate(R.layout.item_icon, viewGroup, false);
            imageView = (ImageView) view.findViewById(R.id.icon);
            view.setTag(imageView);
        } else {
            imageView = (ImageView) view.getTag();
        }
        imageView.setImageDrawable(c0026h.f195b);
        return view;
    }
}
