package p017f0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Configuration;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ScrollView;
import android.widget.TextView;
import p011d0.C0065c;
import p051u0.C0385h;
import ru.zdevs.zarchiver.C0307d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZArchiver;

/* JADX INFO: renamed from: f0.c */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0092c extends AbstractC0099i implements View.OnClickListener {

    /* JADX INFO: renamed from: n */
    public static final int[] f705n = {R.id.btn_cancel, R.id.btn_rename, R.id.btn_replace, R.id.btn_skip};

    /* JADX INFO: renamed from: g */
    public AlertDialog f706g;

    /* JADX INFO: renamed from: h */
    public int f707h;

    /* JADX INFO: renamed from: i */
    public boolean f708i;

    /* JADX INFO: renamed from: j */
    public ScrollView f709j;

    /* JADX INFO: renamed from: k */
    public boolean f710k;

    /* JADX INFO: renamed from: l */
    public boolean f711l;

    /* JADX INFO: renamed from: m */
    public boolean f712m;

    public ViewOnClickListenerC0092c(C0307d c0307d, ZArchiver zArchiver, C0065c c0065c) {
        this.f742f = c0307d;
        this.f710k = false;
        this.f711l = false;
        this.f712m = false;
        AlertDialog.Builder builder = new AlertDialog.Builder(zArchiver);
        builder.setTitle(zArchiver.getString(R.string.OVERW_TTL_ASK_OVERWRITE));
        Configuration configuration = zArchiver.getResources().getConfiguration();
        int i2 = configuration.orientation;
        this.f707h = (i2 == 2 || (configuration.screenLayout & 15) > 3) ? R.layout.dlg_ask_overwrite_land : R.layout.dlg_ask_overwrite;
        this.f708i = i2 == 2 && (configuration.screenLayout & 15) < 3;
        View viewInflate = LayoutInflater.from(zArchiver).inflate(this.f707h, (ViewGroup) null, false);
        ScrollView scrollView = new ScrollView(zArchiver);
        this.f709j = scrollView;
        scrollView.addView(viewInflate);
        builder.setView(this.f709j);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(zArchiver.getString(R.string.OVERW_TEXT).replace("%1", c0065c.f469d));
        ((TextView) viewInflate.findViewById(R.id.tv_src)).setText(m345r(zArchiver, c0065c.f467b, c0065c.f468c));
        ((TextView) viewInflate.findViewById(R.id.tv_dest)).setText(m345r(zArchiver, c0065c.f470e, c0065c.f471f));
        ((CheckBox) viewInflate.findViewById(R.id.cb_to_all)).setChecked(this.f710k);
        int[] iArr = f705n;
        for (int i3 = 0; i3 < 4; i3++) {
            viewInflate.findViewById(iArr[i3]).setOnClickListener(this);
        }
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f706g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        m355a();
    }

    /* JADX INFO: renamed from: r */
    public static String m345r(ZArchiver zArchiver, long j2, int i2) {
        return C0385h.m1078b(j2, 0, zArchiver.getString(R.string.FINFO_SIZE)) + '\n' + zArchiver.getString(R.string.FINFO_LAST_MOD) + ' ' + DateFormat.getDateFormat(zArchiver).format(Long.valueOf(((long) i2) * 1000)) + ' ' + DateFormat.getTimeFormat(zArchiver).format(Integer.valueOf(i2));
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: d */
    public final void mo337d() {
        AlertDialog alertDialog = this.f706g;
        if (alertDialog != null) {
            this.f710k = ((CheckBox) alertDialog.findViewById(R.id.cb_to_all)).isChecked();
        }
        AlertDialog alertDialog2 = this.f706g;
        if (alertDialog2 != null) {
            alertDialog2.dismiss();
            this.f706g = null;
        }
        m357f();
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: k */
    public final int mo338k() {
        return 9;
    }

    @Override // p017f0.AbstractC0099i
    /* JADX INFO: renamed from: m */
    public final void mo346m(Context context, Configuration configuration) {
        if (this.f706g == null || this.f709j == null) {
            return;
        }
        int i2 = configuration.orientation;
        int i3 = (i2 == 2 || (configuration.screenLayout & 15) > 3) ? R.layout.dlg_ask_overwrite_land : R.layout.dlg_ask_overwrite;
        if (this.f707h == i3) {
            return;
        }
        this.f707h = i3;
        this.f708i = i2 == 2 && (configuration.screenLayout & 15) < 3;
        View viewInflate = LayoutInflater.from(context).inflate(this.f707h, (ViewGroup) null, false);
        AbstractC0099i.m352l(this.f709j, viewInflate);
        AbstractC0099i.m353o(this.f706g, this.f708i);
        int[] iArr = f705n;
        for (int i4 = 0; i4 < 4; i4++) {
            viewInflate.findViewById(iArr[i4]).setOnClickListener(this);
        }
        this.f709j.removeAllViews();
        this.f709j.addView(viewInflate);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AlertDialog alertDialog = this.f706g;
        if (alertDialog != null) {
            this.f710k = ((CheckBox) alertDialog.findViewById(R.id.cb_to_all)).isChecked();
        }
        int id = view.getId();
        if (id == R.id.btn_skip) {
            AbstractC0099i.b bVar = this.f737a;
            if (bVar != null) {
                bVar.mo246a(this);
            }
        } else if (id == R.id.btn_replace) {
            AbstractC0099i.c cVar = this.f738b;
            if (cVar != null) {
                cVar.mo245b(this);
            }
        } else if (id == R.id.btn_rename) {
            this.f712m = true;
            AbstractC0099i.c cVar2 = this.f738b;
            if (cVar2 != null) {
                cVar2.mo245b(this);
            }
        } else if (id == R.id.btn_cancel) {
            this.f711l = true;
            AbstractC0099i.b bVar2 = this.f737a;
            if (bVar2 != null) {
                bVar2.mo246a(this);
            }
        }
        mo337d();
    }
}
