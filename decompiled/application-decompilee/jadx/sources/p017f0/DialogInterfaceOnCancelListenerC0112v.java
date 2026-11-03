package p017f0;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.sothree.slidinguppanel.SlidingUpPanelLayout;
import java.util.ArrayList;
import java.util.List;
import p004b.C0015d;
import p005b0.C0026h;
import p047s0.C0358b;
import p051u0.C0379b;
import p059y0.C0439c;
import p059y0.C0441e;
import p061z0.DialogC0510f;
import p061z0.InterfaceC0511g;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: f0.v */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC0112v extends AbstractC0099i implements InterfaceC0511g, AdapterView.OnItemClickListener, DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: m */
    public static int f822m;

    /* JADX INFO: renamed from: g */
    public Dialog f823g;

    /* JADX INFO: renamed from: h */
    public PopupWindow f824h;

    /* JADX INFO: renamed from: i */
    public final int f825i;

    /* JADX INFO: renamed from: j */
    public int f826j;

    /* JADX INFO: renamed from: k */
    public int f827k;

    /* JADX INFO: renamed from: l */
    public Point f828l;

    /* JADX INFO: renamed from: f0.v$a */
    public class a extends BaseAdapter {

        /* JADX INFO: renamed from: a */
        public final List<C0026h> f829a;

        /* JADX INFO: renamed from: b */
        public final LayoutInflater f830b;

        /* JADX INFO: renamed from: f0.v$a$a, reason: collision with other inner class name */
        public class ViewOnClickListenerC0515a implements View.OnClickListener {
            public ViewOnClickListenerC0515a() {
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogInterfaceOnCancelListenerC0112v.this.onItemClick(null, view, 0, ((Integer) view.getTag()).intValue());
            }
        }

        public a(Context context, ArrayList arrayList) {
            context = C0358b.m1040k(768) ? new ContextThemeWrapper(context, R.style.AppTheme_Light) : context;
            this.f829a = arrayList;
            this.f830b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return this.f829a.size();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i2) {
            return this.f829a.get(i2);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i2) {
            return this.f829a.get(i2).f196c;
        }

        @Override // android.widget.Adapter
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = this.f830b.inflate(R.layout.item_bottom_menu, viewGroup, false);
            }
            C0026h c0026h = this.f829a.get(i2);
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            TextView textView = (TextView) view.findViewById(R.id.text);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.more);
            textView.setText(c0026h.f194a);
            imageView.setImageDrawable(c0026h.f195b);
            Drawable drawable = c0026h.f197d;
            if (drawable != null) {
                imageView2.setImageDrawable(drawable);
                imageView2.setVisibility(0);
                imageView2.setTag(Integer.valueOf(c0026h.f196c + 1));
                imageView2.setClickable(true);
                imageView2.setOnClickListener(new ViewOnClickListenerC0515a());
            } else {
                imageView2.setVisibility(8);
            }
            return view;
        }
    }

    public DialogInterfaceOnCancelListenerC0112v(Context context, ArrayList arrayList, String str, int i2) throws Throwable {
        this.f742f = null;
        this.f825i = i2;
        this.f826j = -1;
        this.f827k = -1;
        m378r(context, arrayList, str, i2, null);
        m355a();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        Dialog dialog = this.f823g;
        if (dialog != null) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
            this.f823g = null;
        } else {
            PopupWindow popupWindow = this.f824h;
            if (popupWindow != null) {
                try {
                    popupWindow.dismiss();
                } catch (Exception unused2) {
                }
                this.f824h = null;
            }
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 10;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        Dialog dialog = this.f823g;
        if (dialog == null || this.f827k < 0) {
            return;
        }
        if (this.f824h != null) {
            mo337d();
            return;
        }
        try {
            Window window = dialog.getWindow();
            if (window == null) {
                return;
            }
            if (configuration.orientation == 1 || configuration.screenLayout < 3) {
                window.setGravity(80);
            } else {
                window.setGravity(this.f827k | 80);
            }
            if (C0015d.m49K(this.f825i, 1)) {
                return;
            }
            SlidingUpPanelLayout slidingUpPanelLayout = (SlidingUpPanelLayout) this.f823g.findViewById(R.id.sup_sliding);
            ViewGroup.LayoutParams layoutParams = slidingUpPanelLayout.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = DialogC0510f.m1210a(context);
            }
            if (C0379b.m1056c(context)) {
                View viewFindViewById = this.f823g.findViewById(R.id.sup_container);
                if (!C0441e.m1177b(context, true, configuration)) {
                    window.clearFlags(134217728);
                    viewFindViewById.setPadding(0, 0, 0, 0);
                    slidingUpPanelLayout.m225g(0);
                } else {
                    window.setFlags(134217728, 134217728);
                    int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
                    viewFindViewById.setPadding(0, 0, 0, dimensionPixelSize);
                    slidingUpPanelLayout.m225g(dimensionPixelSize);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        AbstractC0099i.b bVar = this.f737a;
        if (bVar != null) {
            bVar.mo246a(this);
        }
        mo337d();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j2) {
        if (view == null) {
            return;
        }
        this.f826j = (int) j2;
        AbstractC0099i.c cVar = this.f738b;
        if (cVar != null) {
            cVar.mo245b(this);
        }
        this.f737a = null;
        mo337d();
    }

    /* JADX INFO: renamed from: r */
    public final void m378r(Context context, ArrayList arrayList, String str, int i2, Point point) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        int dimensionPixelSize;
        int i3;
        int i4;
        int i5;
        int width;
        TypedArray typedArray = null;
        int height = 0;
        if (C0015d.m49K(i2, 1)) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(str);
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_menu_holo, (ViewGroup) null, false);
            builder.setView(viewInflate);
            ListView listView = (ListView) viewInflate.findViewById(R.id.lvPopupList);
            listView.setAdapter((ListAdapter) new a(context, arrayList));
            listView.setOnItemClickListener(this);
            builder.setView(viewInflate);
            builder.setOnCancelListener(this);
            if (C0015d.m49K(this.f825i, 8)) {
                builder.setNegativeButton(R.string.BTN_CANCEL, new DialogInterfaceOnClickListenerC0111u(this));
            }
            AlertDialog alertDialogCreate = builder.create();
            this.f823g = alertDialogCreate;
            alertDialogCreate.setCanceledOnTouchOutside(true);
            return;
        }
        if (C0015d.m49K(i2, 4) && point != null) {
            ListView listView2 = new ListView(context);
            listView2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            listView2.setAdapter((ListAdapter) new a(context, arrayList));
            listView2.setOnItemClickListener(this);
            listView2.setLongClickable(false);
            C0441e.m1185j(listView2);
            PopupWindow popupWindow = new PopupWindow((View) listView2, C0439c.m1166a(288), -2, true);
            this.f824h = popupWindow;
            popupWindow.setOutsideTouchable(true);
            this.f824h.setInputMethodMode(1);
            this.f824h.setBackgroundDrawable(context.getDrawable(R.drawable.bg_menu));
            if (!C0358b.m1040k(1536)) {
                this.f824h.setElevation(8.0f);
            }
            this.f824h.setWindowLayoutType(1002);
            this.f824h.setOnDismissListener(new C0110t(this));
            this.f828l = point;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (context instanceof Activity) {
                View decorView = ((Activity) context).getWindow().getDecorView();
                height = decorView.getHeight();
                width = decorView.getWidth();
            } else {
                width = 0;
            }
            if (height <= 0) {
                height = defaultDisplay.getHeight();
            }
            if (width <= 0) {
                width = defaultDisplay.getWidth();
            }
            int i6 = height / 2;
            Point point2 = this.f828l;
            int i7 = point2.y;
            if (i6 < i7) {
                this.f827k = 80;
                point2.y = height - i7;
            } else {
                this.f827k = 48;
            }
            int i8 = width / 2;
            int i9 = point2.x;
            if (i8 >= i9) {
                this.f827k |= 8388611;
                return;
            } else {
                this.f827k |= 8388613;
                point2.x = width - i9;
                return;
            }
        }
        View viewInflate2 = LayoutInflater.from(context).inflate(R.layout.dlg_menu, (ViewGroup) null, false);
        ((TextView) viewInflate2.findViewById(R.id.title)).setText(str);
        ListView listView3 = (ListView) viewInflate2.findViewById(android.R.id.list);
        listView3.setAdapter((ListAdapter) new a(context, arrayList));
        listView3.setOnItemClickListener(this);
        listView3.setLongClickable(false);
        C0441e.m1185j(listView3);
        Display defaultDisplay2 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Configuration configuration = context.getResources().getConfiguration();
        int width2 = context instanceof Activity ? ((Activity) context).getWindow().getDecorView().getWidth() : 0;
        if (width2 <= 0) {
            width2 = defaultDisplay2.getWidth();
        }
        if (point == null || (i5 = point.x) <= 0) {
            this.f827k = 1;
        } else if (i5 < width2 / 4) {
            this.f827k = 3;
        } else if (i5 > (width2 * 3) / 4) {
            this.f827k = 5;
        } else {
            this.f827k = 1;
        }
        boolean zM1040k = C0358b.m1040k(1536);
        if ((configuration.orientation == 1 || configuration.screenLayout < 3) && !zM1040k) {
            if (f822m <= 0) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                defaultDisplay2.getRealMetrics(displayMetrics);
                int i10 = (int) (displayMetrics.densityDpi * 3.2f);
                f822m = i10;
                float f2 = displayMetrics.heightPixels;
                float f3 = 0.9f * f2;
                if (f3 < i10) {
                    f822m = (int) f3;
                }
                if (0.1f * f2 > f822m) {
                    f822m = (int) (f2 * 0.6f);
                }
            }
            if (f822m > 0) {
                try {
                    typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{android.R.attr.listPreferredItemHeightSmall});
                    try {
                        dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
                        typedArrayObtainStyledAttributes.recycle();
                    } catch (Exception unused) {
                        if (typedArrayObtainStyledAttributes != null) {
                            typedArrayObtainStyledAttributes.recycle();
                        }
                        dimensionPixelSize = 0;
                    } catch (Throwable th) {
                        th = th;
                        typedArray = typedArrayObtainStyledAttributes;
                        if (typedArray != null) {
                            typedArray.recycle();
                        }
                        throw th;
                    }
                } catch (Exception unused2) {
                    typedArrayObtainStyledAttributes = null;
                } catch (Throwable th2) {
                    th = th2;
                }
                if (dimensionPixelSize > 0) {
                    int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.bottomsheet_header);
                    int i11 = f822m - dimensionPixelSize2;
                    int i12 = ((i11 / dimensionPixelSize) * dimensionPixelSize) + dimensionPixelSize2;
                    f822m = i12;
                    if (i11 % dimensionPixelSize > dimensionPixelSize / 2) {
                        f822m = i12 + dimensionPixelSize;
                    }
                }
            }
            i3 = f822m;
            i4 = 1;
        } else {
            i4 = this.f827k;
            i3 = 0;
        }
        DialogC0510f.a aVar = new DialogC0510f.a();
        aVar.f2405a = viewInflate2;
        aVar.f2407c = i3;
        aVar.f2408d = 0;
        aVar.f2409e = i4;
        aVar.f2410f = C0441e.m1177b(context, true, null);
        aVar.f2411g = !zM1040k;
        aVar.f2412h = this;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.bottomSheetStyle, typedValue, true);
        this.f823g = new DialogC0510f(context, typedValue.resourceId, aVar);
    }

    /* JADX INFO: renamed from: s */
    public final void m379s(DialogC0510f dialogC0510f, int i2) {
        if (i2 == 1) {
            AbstractC0099i.b bVar = this.f737a;
            if (bVar != null) {
                bVar.mo246a(this);
            }
            m357f();
            return;
        }
        if (i2 == 3) {
            View viewFindViewById = dialogC0510f.findViewById(android.R.id.list);
            if (viewFindViewById instanceof ListView) {
                viewFindViewById.setVerticalScrollBarEnabled(true);
                viewFindViewById.scrollTo(0, 0);
                return;
            }
            return;
        }
        if (i2 == 2) {
            View viewFindViewById2 = dialogC0510f.findViewById(android.R.id.list);
            if (viewFindViewById2 instanceof ListView) {
                viewFindViewById2.setVerticalScrollBarEnabled(false);
            }
        }
    }

    /* JADX INFO: renamed from: t */
    public final void m380t() {
        Dialog dialog = this.f823g;
        if (dialog != null) {
            AbstractC0099i.m354q(dialog);
            return;
        }
        PopupWindow popupWindow = this.f824h;
        if (popupWindow != null) {
            Context context = popupWindow.getContentView().getContext();
            if (context instanceof ZArchiver) {
                PopupWindow popupWindow2 = this.f824h;
                View viewFindViewById = ((ZArchiver) context).findViewById(R.id.rlRoot);
                int i2 = this.f827k;
                Point point = this.f828l;
                popupWindow2.showAtLocation(viewFindViewById, i2, point.x, point.y);
            }
        }
    }

    public DialogInterfaceOnCancelListenerC0112v(C0307d c0307d, Context context, ArrayList arrayList, String str, int i2, Point point) throws Throwable {
        this.f742f = c0307d;
        this.f825i = i2;
        this.f826j = -1;
        this.f827k = -1;
        m378r(context, arrayList, str, i2, point);
        m355a();
    }
}
