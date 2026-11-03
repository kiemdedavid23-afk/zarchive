package p001a0;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupMenu;
import android.widget.ProgressBar;
import android.widget.TextView;
import p047s0.C0358b;
import p053v0.C0393a;
import p059y0.C0437a;
import p059y0.C0439c;
import p059y0.C0441e;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: a0.c */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractActivityC0003c extends Activity implements C0393a.c {

    /* JADX INFO: renamed from: a */
    public ProgressBar f2a;

    /* JADX INFO: renamed from: b */
    public ActionMode f3b;

    /* JADX INFO: renamed from: d */
    public Drawable f5d;

    /* JADX INFO: renamed from: c */
    public final C0393a f4c = new C0393a();

    /* JADX INFO: renamed from: e */
    public byte f6e = 1;

    /* JADX INFO: renamed from: a0.c$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractActivityC0003c abstractActivityC0003c = AbstractActivityC0003c.this;
            if (abstractActivityC0003c.f3b instanceof C0437a) {
                abstractActivityC0003c.m2j();
            } else {
                abstractActivityC0003c.onKeyUp(4, null);
            }
        }
    }

    /* JADX INFO: renamed from: a0.c$b */
    public class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a0.c$b$a */
        public class a implements PopupMenu.OnMenuItemClickListener {
            public a() {
            }

            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return AbstractActivityC0003c.this.onOptionsItemSelected(menuItem);
            }
        }

        public b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            PopupMenu popupMenu;
            AbstractActivityC0003c abstractActivityC0003c = AbstractActivityC0003c.this;
            ActionMode actionMode = abstractActivityC0003c.f3b;
            if (actionMode instanceof C0437a) {
                popupMenu = ((C0437a) actionMode).f2227c;
            } else {
                PopupMenu popupMenu2 = new PopupMenu(abstractActivityC0003c, view);
                abstractActivityC0003c.onCreateOptionsMenu(popupMenu2.getMenu());
                popupMenu = popupMenu2;
            }
            popupMenu.setOnMenuItemClickListener(new a());
            popupMenu.show();
        }
    }

    /* JADX INFO: renamed from: r */
    public static void m0r(View view, String str) {
        if (view == null) {
            return;
        }
        int iLastIndexOf = str.lastIndexOf(47);
        String strSubstring = "/";
        if (iLastIndexOf >= 0 && str.length() > 1) {
            String strSubstring2 = str.substring(iLastIndexOf + 1);
            strSubstring = iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : "/";
            str = strSubstring2;
        }
        TextView textView = (TextView) view.findViewById(R.id.nSubtitle);
        if (textView != null) {
            try {
                textView.setText(strSubstring);
            } catch (ArrayIndexOutOfBoundsException unused) {
                textView.setEllipsize(null);
                textView.setGravity(8388613);
                textView.setText(strSubstring);
            }
        }
        TextView textView2 = (TextView) view.findViewById(R.id.nTitle);
        if (textView2 != null) {
            textView2.setText(str);
        }
    }

    @Override // android.app.Activity
    public final void finishAndRemoveTask() {
        super.finishAndRemoveTask();
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        return super.getMenuInflater();
    }

    /* JADX INFO: renamed from: i */
    public final void m1i() {
        if (Build.VERSION.SDK_INT < 24) {
            finishAndRemoveTask();
        } else {
            finish();
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m2j() {
        ActionMode actionMode = this.f3b;
        if (actionMode != null) {
            actionMode.finish();
            this.f3b = null;
        }
    }

    /* JADX INFO: renamed from: k */
    public final int m3k(Configuration configuration) {
        if (C0441e.m1178c(this)) {
            return R.layout.dlg_main_list_tv;
        }
        int i2 = configuration.screenLayout & 15;
        if (configuration.orientation != 2 || C0441e.m1176a(this)) {
            return i2 >= 3 ? R.layout.dlg_main_list_large : R.layout.dlg_main_list;
        }
        if (C0358b.m1041l(2)) {
            return i2 >= 3 ? R.layout.dlg_main_list_land_large : R.layout.dlg_main_list_land;
        }
        return R.layout.dlg_main_list;
    }

    /* JADX INFO: renamed from: l */
    public final void m4l(int i2, Menu menu) {
        int integer;
        try {
            int identifier = Resources.getSystem().getIdentifier("max_action_buttons", "integer", "android");
            if (identifier != 0) {
                integer = getResources().getInteger(identifier);
            } else {
                Configuration configuration = getResources().getConfiguration();
                int i3 = configuration.screenWidthDp;
                int i4 = configuration.screenHeightDp;
                if (configuration.smallestScreenWidthDp > 600 || ((i3 > 960 && i4 > 720) || (i3 > 720 && i4 > 960))) {
                    integer = 5;
                } else if (i3 >= 500 || (i3 > 480 && i4 > 640)) {
                    integer = 4;
                } else {
                    integer = i3 >= 360 ? 3 : 2;
                }
            }
            int i5 = i2 + 1;
            int size = menu.size();
            if (integer <= 1 || size < integer) {
                return;
            }
            for (int i6 = 0; i6 < size; i6++) {
                MenuItem item = menu.getItem(i6);
                if (item.isVisible() && item.getTitle() == null) {
                    i5++;
                }
            }
            for (int i7 = 0; i7 < size; i7++) {
                MenuItem item2 = menu.getItem(i7);
                if (item2.isVisible() && item2.getTitle() != null && (i5 = i5 + 1) > integer) {
                    item2.setShowAsActionFlags(0);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: m */
    public final void m5m(boolean z2) {
        Drawable drawableM1171f;
        int i2;
        if (z2) {
            drawableM1171f = C0439c.m1171f(this, R.attr.menuIconCancel);
            i2 = android.R.string.cancel;
        } else {
            drawableM1171f = this.f5d;
            i2 = android.R.string.ok;
        }
        if (C0441e.m1178c(this)) {
            ImageView imageView = (ImageView) findViewById(R.id.bBack);
            if (this.f5d == null) {
                this.f5d = imageView.getDrawable();
            }
            imageView.setImageDrawable(drawableM1171f);
            return;
        }
        Drawable drawableM1180e = C0441e.m1180e(this, drawableM1171f, i2);
        if (this.f5d == null) {
            this.f5d = drawableM1180e;
        }
    }

    /* JADX INFO: renamed from: n */
    public final void m6n(byte b2) {
        byte b3 = this.f6e;
        if (b3 == b2) {
            return;
        }
        if (b2 == 2 || b3 == 2 || C0358b.m1038i(null)) {
            invalidateOptionsMenu();
        }
        this.f6e = b2;
        int i2 = (b2 == 1 || b2 == 2) ? R.attr.colorPrimary : R.attr.actionBarBackgroundInRoot;
        ActionBar actionBar = getActionBar();
        if (actionBar == null) {
            return;
        }
        int color = (i2 == R.attr.colorPrimary && C0358b.m1040k(1024)) ? getResources().getColor(R.color.ab_background_material_dark_amoled) : C0439c.m1168c(this, i2);
        boolean z2 = (C0358b.f1986h & 255) > 1;
        if (z2) {
            getWindow().setStatusBarColor(color);
        }
        if (i2 != R.attr.colorPrimary || z2 || C0358b.m1040k(1024)) {
            ColorDrawable colorDrawable = new ColorDrawable(color);
            actionBar.setBackgroundDrawable(colorDrawable);
            actionBar.setSplitBackgroundDrawable(colorDrawable);
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = obtainStyledAttributes(new int[]{android.R.attr.actionBarStyle});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId == 0) {
            resourceId = C0439c.m1167b(this, R.attr.isLightActionBar) ? android.R.style.Widget.DeviceDefault.Light.ActionBar.Solid : android.R.style.Widget.DeviceDefault.ActionBar.Solid;
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = obtainStyledAttributes(resourceId, new int[]{android.R.attr.background, android.R.attr.backgroundSplit});
        actionBar.setBackgroundDrawable(typedArrayObtainStyledAttributes2.getDrawable(0));
        actionBar.setSplitBackgroundDrawable(typedArrayObtainStyledAttributes2.getDrawable(1));
        typedArrayObtainStyledAttributes2.recycle();
    }

    /* JADX INFO: renamed from: o */
    public final void m7o(String str, String str2, String str3, String str4, long j2, long j3) {
        TextView textView = (TextView) findViewById(R.id.tvStorage);
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = (TextView) findViewById(R.id.tvStorageSpace);
        if (textView2 != null) {
            textView2.setText(str2);
        }
        TextView textView3 = (TextView) findViewById(R.id.tvFolder);
        if (textView3 != null) {
            textView3.setText(str3);
        }
        TextView textView4 = (TextView) findViewById(R.id.tvFolderSize);
        if (textView4 != null) {
            textView4.setText(str4);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
        if (progressBar != null) {
            if (j2 < 0 || j3 < 0) {
                progressBar.setMax(0);
                progressBar.setProgress(0);
            } else if (j3 > 2147483647L) {
                progressBar.setMax((int) (j3 >> 10));
                progressBar.setProgress((int) (j2 >> 10));
            } else {
                progressBar.setMax((int) j3);
                progressBar.setProgress((int) j2);
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        if (i2 == 8) {
            C0441e.m1186k(menu);
        }
        return super.onMenuOpened(i2, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f4c.m1093d(this);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f4c.m1090a(this, this);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        m11t();
    }

    /* JADX INFO: renamed from: p */
    public final void m8p(String str, long j2, long j3) {
        TextView textView = (TextView) findViewById(R.id.tvStorageSpace);
        if (textView != null) {
            textView.setText(str);
        }
        ProgressBar progressBar = (ProgressBar) findViewById(R.id.pbFree);
        if (progressBar != null) {
            if (j2 < 0 || j3 < 0) {
                progressBar.setMax(0);
                progressBar.setProgress(0);
            } else if (j3 > 2147483647L) {
                progressBar.setMax((int) (j3 >> 10));
                progressBar.setProgress((int) (j2 >> 10));
            } else {
                progressBar.setMax((int) j3);
                progressBar.setProgress((int) j2);
            }
        }
    }

    /* JADX INFO: renamed from: q */
    public final void m9q(ActionBar actionBar) {
        if (actionBar != null) {
            actionBar.hide();
        }
        findViewById(R.id.bBack).setOnClickListener(new a());
        findViewById(R.id.bMenu).setOnClickListener(new b());
    }

    @Override // android.app.Activity
    public final void recreate() {
        if (Build.VERSION.SDK_INT >= 26) {
            super.recreate();
            return;
        }
        Intent intent = getIntent();
        overridePendingTransition(0, 0);
        intent.addFlags(65536);
        System.exit(0);
        startActivity(intent);
    }

    /* JADX INFO: renamed from: s */
    public final void m10s(int i2) {
        if (this.f2a == null) {
            int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, 20);
            ProgressBar progressBar = new ProgressBar(this, null, android.R.attr.progressBarStyleHorizontal);
            this.f2a = progressBar;
            progressBar.setLayoutParams(layoutParams);
            this.f2a.setMax(10000);
            C0441e.m1187l(this, this.f2a, C0439c.m1167b(this, R.attr.isLightActionBar) ? -16777216 : -1);
            ((ViewGroup) getWindow().getDecorView()).addView(this.f2a);
            this.f2a.setY(dimensionPixelSize);
        }
        if (i2 < 0) {
            this.f2a.setIndeterminate(true);
        } else {
            this.f2a.setProgress(i2);
        }
        this.f2a.setVisibility(0);
    }

    @Override // android.app.Activity
    public final ActionMode startActionMode(ActionMode.Callback callback) {
        ActionMode actionMode = this.f3b;
        if (actionMode != null) {
            actionMode.finish();
        }
        if (C0441e.m1178c(this)) {
            this.f3b = new C0437a(this, callback);
        } else {
            this.f3b = super.startActionMode(callback);
        }
        return this.f3b;
    }

    /* JADX INFO: renamed from: t */
    public final void m11t() {
        ProgressBar progressBar = this.f2a;
        if (progressBar != null) {
            progressBar.setVisibility(8);
        }
    }
}
