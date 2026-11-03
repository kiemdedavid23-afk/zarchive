package p060z;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import java.lang.reflect.Field;
import p004b.C0015d;
import p005b0.C0022d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: z.d */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0458d implements View.OnClickListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ View f2273a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ ZArchiver f2274b;

    /* JADX INFO: renamed from: z.d$a */
    public class a implements AdapterView.OnItemClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ ListPopupWindow f2275a;

        public a(ListPopupWindow listPopupWindow) {
            this.f2275a = listPopupWindow;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            ZArchiver.m728u(ViewOnClickListenerC0458d.this.f2274b, adapterView, i2);
            this.f2275a.dismiss();
        }
    }

    /* JADX INFO: renamed from: z.d$b */
    public class b implements AdapterView.OnItemLongClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ ListPopupWindow f2277a;

        public b(ListPopupWindow listPopupWindow) {
            this.f2277a = listPopupWindow;
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public final boolean onItemLongClick(AdapterView<?> adapterView, View view, int i2, long j2) {
            if (!ZArchiver.m729v(ViewOnClickListenerC0458d.this.f2274b, adapterView, i2)) {
                return false;
            }
            this.f2277a.dismiss();
            return true;
        }
    }

    public ViewOnClickListenerC0458d(ZArchiver zArchiver, View view) {
        this.f2274b = zArchiver;
        this.f2273a = view;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        ListView listView;
        View view2 = this.f2273a;
        view2.setClickable(false);
        ZArchiver zArchiver = this.f2274b;
        C0022d c0022d = new C0022d(zArchiver, false, true);
        c0022d.m123a(zArchiver.f1386h.f1626e);
        DisplayMetrics displayMetrics = zArchiver.getResources().getDisplayMetrics();
        ListPopupWindow listPopupWindow = new ListPopupWindow(zArchiver);
        listPopupWindow.setAnchorView(zArchiver.f1388j);
        listPopupWindow.setContentWidth(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        listPopupWindow.setAdapter(c0022d);
        listPopupWindow.setBackgroundDrawable(zArchiver.getDrawable(R.drawable.bg_title_menu));
        listPopupWindow.setOnItemClickListener(new a(listPopupWindow));
        try {
            listPopupWindow.setModal(true);
            listPopupWindow.show();
            b bVar = new b(listPopupWindow);
            Field fieldM92t = C0015d.m92t(ListPopupWindow.class, "mDropDownList");
            if (fieldM92t != null) {
                fieldM92t.setAccessible(true);
                try {
                    listView = (ListView) fieldM92t.get(listPopupWindow);
                } catch (Exception unused) {
                    listView = null;
                }
                if (listView != null) {
                    listView.setOnItemLongClickListener(bVar);
                }
            }
            view2.setClickable(true);
        } catch (Exception unused2) {
        }
    }
}
