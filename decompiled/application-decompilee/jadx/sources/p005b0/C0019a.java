package p005b0;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import p059y0.C0442f;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0019a extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f148a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<a> f149b;

    /* JADX INFO: renamed from: c */
    public ArrayList<a> f150c;

    /* JADX INFO: renamed from: d */
    public String f151d;

    /* JADX INFO: renamed from: b0.a$a */
    public static final class a implements Comparable<a> {

        /* JADX INFO: renamed from: a */
        public final PackageInfo f152a;

        /* JADX INFO: renamed from: b */
        public final String f153b;

        /* JADX INFO: renamed from: c */
        public Drawable f154c;

        /* JADX INFO: renamed from: d */
        public final PackageManager f155d;

        public a(PackageInfo packageInfo, PackageManager packageManager) {
            this.f152a = packageInfo;
            this.f155d = packageManager;
            CharSequence charSequenceLoadLabel = packageInfo.applicationInfo.loadLabel(packageManager);
            this.f153b = charSequenceLoadLabel != null ? charSequenceLoadLabel.toString() : null;
        }

        @Override // java.lang.Comparable
        public final int compareTo(a aVar) {
            String str = aVar.f153b;
            String str2 = this.f153b;
            if (str2 == null) {
                return str == null ? 0 : 1;
            }
            if (str == null) {
                return -1;
            }
            return str2.compareTo(str);
        }
    }

    /* JADX INFO: renamed from: b0.a$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public ImageView f156a;

        /* JADX INFO: renamed from: b */
        public TextView f157b;

        /* JADX INFO: renamed from: c */
        public TextView f158c;
    }

    public C0019a(Context context, ArrayList<a> arrayList) {
        this.f149b = arrayList;
        this.f150c = arrayList;
        this.f148a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f150c.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f150c.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        Drawable drawable;
        a aVar = this.f150c.get(i2);
        if (view == null) {
            view = this.f148a.inflate(R.layout.item_simpe_desc, viewGroup, false);
            b bVar = new b();
            bVar.f156a = (ImageView) view.findViewById(R.id.icon);
            bVar.f157b = (TextView) view.findViewById(R.id.text);
            bVar.f158c = (TextView) view.findViewById(R.id.desc);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        ImageView imageView = bVar2.f156a;
        synchronized (aVar) {
            if (aVar.f154c == null) {
                aVar.f154c = aVar.f152a.applicationInfo.loadIcon(aVar.f155d);
            }
            drawable = aVar.f154c;
        }
        imageView.setImageDrawable(drawable);
        C0442f.m1194e(bVar2.f157b, aVar.f153b, this.f151d);
        C0442f.m1194e(bVar2.f158c, aVar.f152a.packageName, this.f151d);
        return view;
    }
}
