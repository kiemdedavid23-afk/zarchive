package p005b0;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import p020g0.C0129h;
import p047s0.C0357a;
import p047s0.C0358b;
import p059y0.C0438b;
import p059y0.C0439c;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0022d extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f175a;

    /* JADX INFO: renamed from: b */
    public final Resources f176b;

    /* JADX INFO: renamed from: c */
    public final boolean f177c;

    /* JADX INFO: renamed from: d */
    public final ArrayList<C0023e> f178d;

    /* JADX INFO: renamed from: e */
    public final Resources.Theme f179e;

    /* JADX INFO: renamed from: b0.d$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public TextView f180a;

        /* JADX INFO: renamed from: b */
        public ImageView f181b;

        /* JADX INFO: renamed from: c */
        public TextView f182c;

        /* JADX INFO: renamed from: d */
        public TextView f183d;
    }

    public C0022d(Context context, boolean z2, boolean z3) {
        this.f176b = context.getResources();
        this.f175a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f177c = z3;
        ArrayList<C0023e> arrayListM1022d = C0357a.m1022d(z2);
        if (arrayListM1022d.size() == 0 || z2) {
            this.f178d = arrayListM1022d;
        } else {
            ArrayList<C0023e> arrayList = new ArrayList<>(arrayListM1022d.size());
            this.f178d = arrayList;
            arrayList.addAll(arrayListM1022d);
        }
        Resources.Theme themeNewTheme = context.getResources().newTheme();
        this.f179e = themeNewTheme;
        themeNewTheme.applyStyle(C0358b.f1987i, true);
    }

    /* JADX INFO: renamed from: a */
    public final void m123a(int i2) {
        for (C0023e c0023e : this.f178d) {
            if (c0023e.m125b(32)) {
                c0023e.f186c = new C0129h(C0358b.f1980b[i2]);
                notifyDataSetInvalidated();
                return;
            }
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f178d.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f178d.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        C0023e c0023e = this.f178d.get(i2);
        if (view == null) {
            view = this.f175a.inflate(R.layout.item_favorite, viewGroup, false);
            a aVar = new a();
            aVar.f180a = (TextView) view.findViewById(R.id.text);
            aVar.f182c = (TextView) view.findViewById(R.id.desc);
            aVar.f183d = (TextView) view.findViewById(R.id.mark);
            aVar.f181b = (ImageView) view.findViewById(R.id.icon);
            view.setTag(aVar);
        }
        a aVar2 = (a) view.getTag();
        aVar2.f180a.setText(c0023e.f185b);
        ImageView imageView = aVar2.f181b;
        int i3 = c0023e.f184a;
        int iM1033d = C0358b.m1033d();
        int iM1161b = C0438b.m1161b(iM1033d, i3);
        Resources resources = this.f176b;
        imageView.setImageDrawable(iM1033d != 4096 ? C0439c.m1174i(resources, this.f179e, iM1161b) : resources.getDrawable(iM1161b));
        aVar2.f182c.setText(c0023e.f186c.m493t());
        if (this.f177c) {
            TextView textView = aVar2.f183d;
            String str = c0023e.f187d;
            if (str == null) {
                str = "";
            }
            textView.setText(str);
        }
        return view;
    }
}
