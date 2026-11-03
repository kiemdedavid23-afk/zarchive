package p005b0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0027i extends BaseAdapter {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f198a;

    /* JADX INFO: renamed from: b */
    public final ArrayList<a> f199b;

    /* JADX INFO: renamed from: b0.i$a */
    public static final class a implements Comparable<a> {

        /* JADX INFO: renamed from: a */
        public final Intent f200a;

        /* JADX INFO: renamed from: b */
        public final ResolveInfo f201b;

        /* JADX INFO: renamed from: c */
        public final String f202c;

        /* JADX INFO: renamed from: d */
        public Drawable f203d;

        /* JADX INFO: renamed from: e */
        public String f204e;

        /* JADX INFO: renamed from: f */
        public String f205f;

        /* JADX INFO: renamed from: g */
        public boolean f206g = false;

        /* JADX INFO: renamed from: h */
        public final PackageManager f207h;

        public a(Intent intent, ResolveInfo resolveInfo, PackageManager packageManager) {
            this.f200a = intent;
            this.f201b = resolveInfo;
            this.f207h = packageManager;
            CharSequence charSequenceLoadLabel = resolveInfo.loadLabel(packageManager);
            this.f202c = charSequenceLoadLabel != null ? charSequenceLoadLabel.toString() : null;
        }

        /* JADX INFO: renamed from: a */
        public final String m127a() {
            int iLastIndexOf;
            if (this.f204e == null) {
                String strSubstring = this.f201b.activityInfo.name;
                if (strSubstring != null && (iLastIndexOf = strSubstring.lastIndexOf(46)) > 0) {
                    strSubstring = strSubstring.substring(iLastIndexOf + 1);
                }
                this.f204e = strSubstring;
            }
            return this.f204e;
        }

        /* JADX INFO: renamed from: b */
        public final synchronized Drawable m128b() {
            if (this.f203d == null) {
                this.f203d = this.f201b.activityInfo.loadIcon(this.f207h);
            }
            return this.f203d;
        }

        /* JADX INFO: renamed from: c */
        public final String m129c() {
            Uri data;
            if (this.f205f == null && (data = this.f200a.getData()) != null) {
                this.f205f = data.getScheme();
            }
            return this.f205f;
        }

        @Override // java.lang.Comparable
        public final int compareTo(a aVar) {
            a aVar2 = aVar;
            boolean z2 = this.f206g;
            int iCompareTo = -1;
            if (z2 && !aVar2.f206g) {
                return -1;
            }
            if (!z2 && aVar2.f206g) {
                return 1;
            }
            String str = aVar2.f202c;
            String str2 = this.f202c;
            if (str2 == null) {
                iCompareTo = str == null ? 0 : 1;
            } else if (str != null) {
                iCompareTo = str2.compareTo(str);
            }
            if (iCompareTo == 0) {
                iCompareTo = m127a().compareTo(aVar2.m127a());
            }
            return iCompareTo == 0 ? m129c().compareTo(aVar2.m129c()) : iCompareTo;
        }
    }

    /* JADX INFO: renamed from: b0.i$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public ImageView f208a;

        /* JADX INFO: renamed from: b */
        public TextView f209b;

        /* JADX INFO: renamed from: c */
        public TextView f210c;
    }

    public C0027i(Context context, ArrayList<a> arrayList) {
        this.f199b = arrayList;
        this.f198a = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f199b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return this.f199b.get(i2);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar = this.f199b.get(i2);
        if (view == null) {
            view = this.f198a.inflate(R.layout.item_application, viewGroup, false);
            b bVar = new b();
            bVar.f208a = (ImageView) view.findViewById(R.id.icon);
            bVar.f209b = (TextView) view.findViewById(R.id.text);
            bVar.f210c = (TextView) view.findViewById(R.id.desc);
            view.setTag(bVar);
        }
        b bVar2 = (b) view.getTag();
        bVar2.f208a.setImageDrawable(aVar.m128b());
        bVar2.f209b.setText(aVar.f202c);
        bVar2.f210c.setText(aVar.m129c() + " / " + aVar.m127a());
        return view;
    }
}
