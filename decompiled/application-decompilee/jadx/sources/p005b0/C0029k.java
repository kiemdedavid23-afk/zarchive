package p005b0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import p004b.C0015d;
import p011d0.C0071i;
import p051u0.C0385h;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: b0.k */
/* JADX INFO: loaded from: classes.dex */
public final class C0029k extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f214a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<a> f215b = new ArrayList<>();

    /* JADX INFO: renamed from: b0.k$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final int f216a;

        /* JADX INFO: renamed from: b */
        public final String f217b;

        public a(int i2, String str) {
            this.f216a = i2;
            this.f217b = str;
        }

        public final String toString() {
            int i2 = this.f216a;
            String str = this.f217b;
            if (i2 == -1) {
                return "\n" + str + '\n';
            }
            return "\t" + str.replace("\n", "\n\t") + '\n';
        }
    }

    /* JADX INFO: renamed from: b0.k$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public TextView f218a;

        /* JADX INFO: renamed from: b */
        public TextView f219b;
    }

    public C0029k(ZArchiver zArchiver, C0071i[] c0071iArr) {
        String string;
        this.f214a = (LayoutInflater) zArchiver.getSystemService("layout_inflater");
        for (C0071i c0071i : c0071iArr) {
            if (c0071i != null) {
                this.f215b.add(new a(-1, C0015d.m97y(c0071i.f496a)));
                ArrayList<a> arrayList = this.f215b;
                StringBuilder sb = new StringBuilder();
                sb.append(zArchiver.getString(R.string.FINFO_ARCHIVE_TYPE));
                sb.append(" ");
                sb.append(c0071i.f497b);
                sb.append("\n");
                sb.append(zArchiver.getString(R.string.FINFO_ARCHIVE_FILE_COUNT));
                sb.append(" ");
                sb.append(c0071i.f499d);
                sb.append("\n");
                sb.append(zArchiver.getString(R.string.FINFO_ARCHIVE_SIZE));
                sb.append(" ");
                sb.append(C0385h.m1078b(c0071i.f500e, 2, null));
                if (C0015d.m49K(c0071i.f501f, 3)) {
                    StringBuilder sb2 = new StringBuilder("\n");
                    sb2.append(zArchiver.getString(R.string.FINFO_ARCHIVE_SOLID));
                    sb2.append(" ");
                    sb2.append(C0015d.m49K(c0071i.f501f, 1) ? "+" : "-");
                    string = sb2.toString();
                } else {
                    string = "";
                }
                sb.append(string);
                arrayList.add(new a(0, sb.toString()));
            }
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f215b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f215b.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar = this.f215b.get(i2);
        if (view == null) {
            view = this.f214a.inflate(R.layout.item_error, viewGroup, false);
            b bVar = new b();
            bVar.f218a = (TextView) view.findViewById(R.id.n);
            bVar.f219b = (TextView) view.findViewById(R.id.text);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        if (aVar.f216a == -1) {
            bVar2.f218a.setVisibility(8);
            bVar2.f219b.setTypeface(null, 1);
        } else {
            bVar2.f218a.setVisibility(8);
            bVar2.f219b.setTypeface(null, 0);
        }
        bVar2.f219b.setText(aVar.f217b);
        return view;
    }
}
