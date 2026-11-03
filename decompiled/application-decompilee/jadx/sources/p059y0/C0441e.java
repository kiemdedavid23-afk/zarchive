package p059y0;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Locale;
import p004b.C0015d;
import p047s0.C0358b;
import p051u0.C0379b;
import p051u0.C0385h;

/* JADX INFO: renamed from: y0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0441e {

    /* JADX INFO: renamed from: y0.e$a */
    public class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ PopupMenu f2245a;

        public a(PopupMenu popupMenu) {
            this.f2245a = popupMenu;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f2245a.show();
        }
    }

    /* JADX INFO: renamed from: a */
    public static boolean m1176a(Activity activity) {
        return Build.VERSION.SDK_INT >= 24 && activity.isInMultiWindowMode();
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1177b(Context context, boolean z2, Configuration configuration) {
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        return (configuration.screenLayout & 15) < 3 && (!z2 || configuration.orientation == 1);
    }

    /* JADX INFO: renamed from: c */
    public static boolean m1178c(Context context) {
        return context != null && ((UiModeManager) context.getSystemService("uimode")).getCurrentModeType() == 4;
    }

    /* JADX INFO: renamed from: d */
    public static void m1179d(Activity activity) {
        int identifier;
        ViewGroup viewGroup;
        if (Build.VERSION.SDK_INT < 24) {
            return;
        }
        try {
            TypedArray typedArrayObtainStyledAttributes = activity.obtainStyledAttributes(new int[]{R.attr.actionBarSize});
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            if (dimensionPixelSize <= 0 || (identifier = Resources.getSystem().getIdentifier("action_bar", "id", "android")) == 0 || (viewGroup = (ViewGroup) activity.findViewById(identifier)) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = dimensionPixelSize;
            }
            viewGroup.setMinimumHeight(dimensionPixelSize);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: e */
    public static Drawable m1180e(Activity activity, Drawable drawable, int i2) {
        View viewFindViewById = activity.findViewById(Resources.getSystem().getIdentifier("action_mode_close_button", "id", "android"));
        Drawable drawable2 = null;
        if (viewFindViewById == null) {
            return null;
        }
        try {
            if (viewFindViewById instanceof ImageView) {
                ImageView imageView = (ImageView) viewFindViewById;
                drawable2 = imageView.getDrawable();
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            } else if (viewFindViewById instanceof LinearLayout) {
                LinearLayout linearLayout = (LinearLayout) viewFindViewById;
                if (linearLayout.getChildCount() > 0) {
                    ImageView imageView2 = (ImageView) linearLayout.getChildAt(0);
                    drawable2 = imageView2.getDrawable();
                    if (drawable != null) {
                        imageView2.setImageDrawable(drawable);
                    }
                    if (i2 != 0 && linearLayout.getChildCount() > 1) {
                        ((TextView) linearLayout.getChildAt(1)).setText(i2);
                    }
                }
            }
        } catch (Exception unused) {
        }
        return drawable2;
    }

    /* JADX INFO: renamed from: f */
    public static void m1181f(Activity activity) {
        if (Build.VERSION.SDK_INT > 28) {
            return;
        }
        try {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(activity);
            Field fieldM92t = C0015d.m92t(ViewConfiguration.class, "sHasPermanentMenuKey");
            if (fieldM92t != null) {
                fieldM92t.setAccessible(true);
                fieldM92t.setBoolean(viewConfiguration, false);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: g */
    public static Menu m1182g(AlertDialog.Builder builder, int i2, int i3, PopupMenu.OnMenuItemClickListener onMenuItemClickListener) {
        Context context = builder.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(ru.zdevs.zarchiver.R.layout.ad_title, (ViewGroup) null, false);
        builder.setCustomTitle(viewInflate);
        ((TextView) viewInflate.findViewById(ru.zdevs.zarchiver.R.id.alertTitle)).setText(i2);
        View viewFindViewById = viewInflate.findViewById(ru.zdevs.zarchiver.R.id.titleButton);
        PopupMenu popupMenu = new PopupMenu(context, viewFindViewById, 8388661);
        popupMenu.inflate(i3);
        popupMenu.setOnMenuItemClickListener(onMenuItemClickListener);
        viewFindViewById.setOnClickListener(new a(popupMenu));
        viewFindViewById.setOnTouchListener(popupMenu.getDragToOpenListener());
        return popupMenu.getMenu();
    }

    /* JADX INFO: renamed from: h */
    public static void m1183h(AlertDialog alertDialog, View.OnClickListener onClickListener) {
        Button button;
        if (alertDialog == null || (button = alertDialog.getButton(-3)) == null) {
            return;
        }
        Drawable drawable = alertDialog.getContext().getDrawable(ru.zdevs.zarchiver.R.drawable.l_help);
        if (drawable != null) {
            drawable.setColorFilter(C0439c.m1169d(alertDialog.getContext()), PorterDuff.Mode.SRC_IN);
        }
        button.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        button.setText("");
        button.setOnClickListener(onClickListener);
    }

    /* JADX INFO: renamed from: i */
    public static void m1184i(Context context, String str) {
        Resources resources;
        if (Build.VERSION.SDK_INT >= 33 || context == null || C0385h.m1081e(str) || (resources = context.getResources()) == null) {
            return;
        }
        int iLastIndexOf = str.lastIndexOf(95);
        Locale locale = iLastIndexOf > 0 ? new Locale(str.substring(0, iLastIndexOf), str.substring(iLastIndexOf + 1)) : new Locale(str);
        Configuration configuration = resources.getConfiguration();
        configuration.setLocale(locale);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }

    /* JADX INFO: renamed from: j */
    public static void m1185j(AbsListView absListView) {
        boolean zM1040k = C0358b.m1040k(1536);
        if ((zM1040k || Build.VERSION.SDK_INT > 23) && (absListView instanceof ListView)) {
            ListView listView = (ListView) absListView;
            listView.setDividerHeight(0);
            listView.setDivider(null);
        }
        if (zM1040k) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{R.attr.state_pressed}, new ColorDrawable(-16777216));
            stateListDrawable.addState(new int[]{R.attr.state_focused}, new ColorDrawable(-16777216));
            absListView.setSelector(stateListDrawable);
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m1186k(Menu menu) {
        String str = Build.DISPLAY;
        if (str != null && C0385h.m1085i(str).contains("flyme")) {
            return;
        }
        try {
            if (menu.getClass().getSimpleName().equals("MenuBuilder")) {
                Method declaredMethod = menu.getClass().getDeclaredMethod("setOptionalIconsVisible", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(menu, Boolean.TRUE);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m1187l(Context context, ProgressBar progressBar, int i2) {
        if (i2 == -3) {
            i2 = C0439c.m1168c(context, ru.zdevs.zarchiver.R.attr.colorPrimary);
        }
        if (!C0379b.m1059f()) {
            progressBar.getProgressDrawable().setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            progressBar.getIndeterminateDrawable().setColorFilter(i2, PorterDuff.Mode.SRC_IN);
            return;
        }
        progressBar.setProgressTintMode(PorterDuff.Mode.SRC_ATOP);
        progressBar.setProgressTintList(ColorStateList.valueOf(i2));
        progressBar.setProgressBackgroundTintList(ColorStateList.valueOf(536870912 + i2));
        progressBar.setIndeterminateTintMode(PorterDuff.Mode.SRC_ATOP);
        progressBar.setIndeterminateTintList(ColorStateList.valueOf(i2));
    }

    /* JADX INFO: renamed from: m */
    public static void m1188m(Activity activity, boolean z2) {
        if (z2 && m1177b(activity, false, null)) {
            activity.getWindow().setFlags(134217728, 134217728);
        }
        int iM1032c = C0358b.m1032c();
        activity.setTheme(iM1032c);
        if (Build.VERSION.SDK_INT >= 31) {
            activity.getSplashScreen().setSplashScreenTheme(iM1032c);
        }
    }

    /* JADX INFO: renamed from: n */
    public static void m1189n(Menu menu, int[] iArr, boolean z2) {
        for (int i2 : iArr) {
            MenuItem menuItemFindItem = menu.findItem(i2);
            if (menuItemFindItem != null) {
                menuItemFindItem.setVisible(z2);
            }
        }
    }
}
