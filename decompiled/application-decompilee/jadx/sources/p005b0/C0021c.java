package p005b0;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import p004b.C0015d;
import p011d0.C0063a;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0021c extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f168a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<a> f169b = new ArrayList<>();

    /* JADX INFO: renamed from: c */
    public final boolean f170c;

    /* JADX INFO: renamed from: b0.c$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final int f171a;

        /* JADX INFO: renamed from: b */
        public final String f172b;

        public a(int i2, String str) {
            this.f171a = i2;
            this.f172b = str;
        }

        public final String toString() {
            String str = this.f172b;
            int i2 = this.f171a;
            if (i2 == -1) {
                return "\n" + str + '\n';
            }
            return (i2 + 1) + "\t" + str + '\n';
        }
    }

    /* JADX INFO: renamed from: b0.c$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public TextView f173a;

        /* JADX INFO: renamed from: b */
        public TextView f174b;
    }

    public C0021c(Context context, C0063a.b[] bVarArr) {
        this.f168a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f170c = false;
        for (C0063a.b bVar : bVarArr) {
            if (bVar != null) {
                this.f169b.add(new a(-1, C0015d.m97y(bVar.f451b)));
                ArrayList<C0063a.a> arrayList = bVar.f452c;
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (arrayList.get(i2).f448a != 0) {
                        this.f170c = true;
                    }
                    ArrayList<a> arrayList2 = this.f169b;
                    C0063a.a aVar = arrayList.get(i2);
                    arrayList2.add(new a(i2, C0063a.m235e(aVar.f448a, aVar.f449b)));
                }
            }
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f169b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f169b.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar = this.f169b.get(i2);
        if (view == null) {
            view = this.f168a.inflate(R.layout.item_error, viewGroup, false);
            b bVar = new b();
            bVar.f173a = (TextView) view.findViewById(R.id.n);
            bVar.f174b = (TextView) view.findViewById(R.id.text);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        if (aVar.f171a == -1) {
            bVar2.f173a.setVisibility(8);
            bVar2.f174b.setTypeface(null, 1);
        } else {
            bVar2.f173a.setVisibility(0);
            bVar2.f173a.setText(String.valueOf(aVar.f171a + 1));
            bVar2.f174b.setTypeface(null, 0);
        }
        bVar2.f174b.setText(aVar.f172b);
        return view;
    }
}
