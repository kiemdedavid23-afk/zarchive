package p015e1;

import android.content.Context;
import android.view.View;
import p004b.C0015d;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.p045ui.ctrl.MenuToggleButton;

/* JADX INFO: renamed from: e1.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0083a extends C0084b {

    /* JADX INFO: renamed from: j */
    public static final int[] f604j = {R.id.viewListDetail, R.id.viewList, R.id.viewGrid};

    /* JADX INFO: renamed from: k */
    public static final int[] f605k = {R.layout.item_file_detail, R.layout.item_file_compact, R.layout.item_file_grid};

    /* JADX INFO: renamed from: l */
    public static final int[] f606l = {R.id.sortByName, R.id.sortByType, R.id.sortBySize, R.id.sortByDate};

    /* JADX INFO: renamed from: m */
    public static final int[] f607m = {0, 16, 32, 48};

    /* JADX INFO: renamed from: b */
    public int f608b;

    /* JADX INFO: renamed from: c */
    public int f609c;

    /* JADX INFO: renamed from: d */
    public boolean f610d;

    /* JADX INFO: renamed from: e */
    public boolean f611e;

    /* JADX INFO: renamed from: f */
    public boolean f612f;

    /* JADX INFO: renamed from: g */
    public e f613g;

    /* JADX INFO: renamed from: h */
    public final c f614h;

    /* JADX INFO: renamed from: i */
    public final d f615i;

    /* JADX INFO: renamed from: e1.a$a */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean zIsChecked = ((MenuToggleButton) view).isChecked();
            C0083a c0083a = C0083a.this;
            c0083a.f610d = zIsChecked;
            c0083a.f612f = true;
        }
    }

    /* JADX INFO: renamed from: e1.a$b */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            boolean zIsChecked = ((MenuToggleButton) view).isChecked();
            C0083a c0083a = C0083a.this;
            c0083a.f611e = zIsChecked;
            c0083a.f612f = true;
        }
    }

    /* JADX INFO: renamed from: e1.a$c */
    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0083a c0083a = C0083a.this;
            View contentView = c0083a.f620a.getContentView();
            for (int i2 = 0; i2 < 3; i2++) {
                int i3 = C0083a.f604j[i2];
                if (i3 == view.getId()) {
                    ((MenuToggleButton) view).setChecked(true);
                    c0083a.f608b = C0083a.f605k[i2];
                } else {
                    ((MenuToggleButton) contentView.findViewById(i3)).setChecked(false);
                }
            }
            c0083a.f612f = true;
        }
    }

    /* JADX INFO: renamed from: e1.a$d */
    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C0083a c0083a = C0083a.this;
            View contentView = c0083a.f620a.getContentView();
            for (int i2 = 0; i2 < 4; i2++) {
                int i3 = C0083a.f606l[i2];
                if (i3 == view.getId()) {
                    ((MenuToggleButton) view).setChecked(true);
                    c0083a.f609c = C0083a.f607m[i2];
                } else {
                    ((MenuToggleButton) contentView.findViewById(i3)).setChecked(false);
                }
            }
            c0083a.f612f = true;
        }
    }

    /* JADX INFO: renamed from: e1.a$e */
    public interface e {
        /* JADX INFO: renamed from: a */
        void mo309a(int i2, int i3, boolean z2);
    }

    public C0083a(Context context, int i2, boolean z2, int i3) {
        this(context, i2, z2, i3, 0);
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        e eVar;
        if (!this.f612f || (eVar = this.f613g) == null) {
            return;
        }
        eVar.mo309a(this.f608b, this.f609c | (this.f610d ? 8 : 0), this.f611e);
    }

    public C0083a(Context context, int i2, boolean z2, int i3, int i4) {
        super(context);
        this.f612f = false;
        this.f614h = new c();
        this.f615i = new d();
        this.f608b = i2;
        this.f611e = z2;
        this.f609c = i3 & 240;
        this.f610d = C0015d.m49K(i3, 8);
        View contentView = this.f620a.getContentView();
        for (int i5 = 0; i5 < 3; i5++) {
            View viewFindViewById = contentView.findViewById(f604j[i5]);
            viewFindViewById.setOnClickListener(this.f614h);
            if (f605k[i5] == this.f608b) {
                ((MenuToggleButton) viewFindViewById).setChecked(true);
            }
        }
        if (C0015d.m49K(i4, 1)) {
            contentView.findViewById(R.id.viewGrid).setVisibility(4);
            contentView.findViewById(R.id.showGridLabel).setVisibility(4);
        }
        for (int i6 = 0; i6 < 4; i6++) {
            View viewFindViewById2 = contentView.findViewById(f606l[i6]);
            viewFindViewById2.setOnClickListener(this.f615i);
            if (f607m[i6] == this.f609c) {
                ((MenuToggleButton) viewFindViewById2).setChecked(true);
            }
        }
        View viewFindViewById3 = contentView.findViewById(R.id.sortDesc);
        if (this.f610d) {
            ((MenuToggleButton) viewFindViewById3).setChecked(true);
        }
        viewFindViewById3.setOnClickListener(new a());
        View viewFindViewById4 = contentView.findViewById(R.id.showHidden);
        if (this.f611e) {
            ((MenuToggleButton) viewFindViewById4).setChecked(true);
        }
        viewFindViewById4.setOnClickListener(new b());
    }
}
