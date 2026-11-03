package p005b0;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: b0.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0020b extends BaseAdapter {

    /* JADX INFO: renamed from: c */
    public static final String[] f159c = {"Default", "Dynamic color", "Pink", "Purple", "Deep Purple", "Indigo", "Blue", "Light Blue", "Cyan", "Teal", "Green", "Light Green", "Lime", "Yellow", "Amber", "Orange", "Deep Orange", "Brown", "Grey", "Blue Grey", "Dark Grey", "Red"};

    /* JADX INFO: renamed from: d */
    public static final int[] f160d = {0, 0, -1499549, -6543440, -10011977, -12627531, -14575885, -16537100, -16728876, -16738680, -11751600, -7617718, -3285959, -5317, -16121, -26624, -43230, -8825528, -6381922, -10453621, -12434878, -769226};

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f161a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f162b = new ArrayList();

    /* JADX INFO: renamed from: b0.b$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public final int f163a;

        /* JADX INFO: renamed from: b */
        public final String f164b;

        /* JADX INFO: renamed from: c */
        public final int f165c;

        public a(int i2, int i3, String str) {
            this.f163a = i2;
            this.f164b = str;
            this.f165c = i3;
        }
    }

    /* JADX INFO: renamed from: b0.b$b */
    public static class b {

        /* JADX INFO: renamed from: a */
        public ImageView f166a;

        /* JADX INFO: renamed from: b */
        public TextView f167b;
    }

    public C0020b(Context context, int i2) {
        this.f161a = (LayoutInflater) context.getSystemService("layout_inflater");
        for (int i3 = 0; i3 < 22; i3++) {
            if (((1 << i3) & i2) != 0 && (i3 != 1 || Build.VERSION.SDK_INT >= 31)) {
                this.f162b.add(new a(f160d[i3], i3, m122a(context, i3)));
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static String m122a(Context context, int i2) {
        if (i2 == 0) {
            return context.getString(R.string.OPT_COLOR_DEFAULT);
        }
        return i2 == 1 ? context.getString(R.string.OPT_COLOR_DYNAMIC) : f159c[i2];
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f162b.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i2) {
        return f159c[i2];
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        b bVar;
        if (view == null) {
            view = this.f161a.inflate(R.layout.item_color_select, viewGroup, false);
            bVar = new b();
            bVar.f166a = (ImageView) view.findViewById(R.id.iv_icon);
            bVar.f167b = (TextView) view.findViewById(R.id.tv_text);
            view.setTag(bVar);
        } else {
            bVar = (b) view.getTag();
        }
        a aVar = (a) this.f162b.get(i2);
        bVar.f167b.setText(aVar.f164b);
        bVar.f166a.setImageDrawable(new ColorDrawable(aVar.f163a));
        return view;
    }
}
