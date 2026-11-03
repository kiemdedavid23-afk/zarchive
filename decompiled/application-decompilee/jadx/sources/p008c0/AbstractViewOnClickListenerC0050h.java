package p008c0;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import p004b.C0015d;
import p020g0.C0129h;
import p039p0.C0229g;
import p047s0.C0358b;
import p051u0.C0382e;
import p059y0.C0439c;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: c0.h */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractViewOnClickListenerC0050h extends BaseAdapter implements View.OnClickListener, View.OnLongClickListener {

    /* JADX INFO: renamed from: a */
    public final LayoutInflater f366a;

    /* JADX INFO: renamed from: b */
    public final int f367b;

    /* JADX INFO: renamed from: c */
    public final int f368c;

    /* JADX INFO: renamed from: d */
    public final int f369d;

    /* JADX INFO: renamed from: e */
    public final int f370e;

    /* JADX INFO: renamed from: f */
    public final int f371f;

    /* JADX INFO: renamed from: g */
    public final int f372g;

    /* JADX INFO: renamed from: h */
    public C0044b f373h;

    /* JADX INFO: renamed from: i */
    public C0129h f374i;

    /* JADX INFO: renamed from: j */
    public int f375j;

    /* JADX INFO: renamed from: k */
    public int f376k;

    /* JADX INFO: renamed from: l */
    public boolean f377l;

    /* JADX INFO: renamed from: m */
    public C0229g f378m;

    /* JADX INFO: renamed from: n */
    public a f379n;

    /* JADX INFO: renamed from: c0.h$a */
    public interface a {
        /* JADX INFO: renamed from: c */
        void mo199c(int i2, int i3, boolean z2);
    }

    /* JADX INFO: renamed from: c0.h$b */
    public static class b extends View.DragShadowBuilder {

        /* JADX INFO: renamed from: a */
        public final Drawable f380a;

        public b(ImageView imageView) {
            super(imageView);
            this.f380a = imageView.getDrawable();
        }

        @Override // android.view.View.DragShadowBuilder
        public final void onDrawShadow(Canvas canvas) {
            this.f380a.draw(canvas);
        }

        @Override // android.view.View.DragShadowBuilder
        public final void onProvideShadowMetrics(Point point, Point point2) {
            int width = getView().getWidth();
            int height = getView().getHeight();
            this.f380a.setBounds(0, 0, width, height);
            point.set(width, height);
            point2.set(width, height);
        }
    }

    public AbstractViewOnClickListenerC0050h(Context context, C0305b c0305b) {
        this.f366a = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f367b = C0439c.m1168c(context, R.attr.defaultTextColorFileList);
        this.f368c = C0439c.m1168c(context, R.attr.defaultTextColorFileListSub);
        this.f371f = C0439c.m1168c(context, R.attr.backgroundColorFileListItem);
        int iM1168c = C0439c.m1168c(context, R.attr.colorSelectHighlight);
        this.f370e = iM1168c;
        if (C0358b.m1040k(1536)) {
            this.f369d = -1;
        } else {
            this.f369d = (C0439c.m1170e(iM1168c) & 16777215) | (-301989888);
        }
        this.f372g = c0305b.f1593b;
        this.f373h = new C0044b(0);
        this.f374i = new C0129h("/");
        this.f378m = null;
        this.f375j = 0;
        this.f376k = 1;
        this.f377l = false;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0046d getItem(int i2) {
        return this.f373h.get(i2);
    }

    /* JADX INFO: renamed from: b */
    public final Bitmap m190b(int i2, C0046d c0046d, InterfaceC0049g interfaceC0049g, C0129h c0129h, boolean z2) {
        byte bM183d = c0046d.m183d();
        byte b2 = c0046d.f357f;
        C0229g c0229g = this.f378m;
        if (c0229g == null) {
            return null;
        }
        if (bM183d == 4) {
            if (b2 != 126) {
                return null;
            }
            Bitmap bitmapM654a = c0229g.m654a(c0046d, c0129h, interfaceC0049g, i2, z2, this.f377l);
            if (this.f377l && bitmapM654a == null) {
                this.f376k |= 2;
            }
            return bitmapM654a;
        }
        if (!m192f(bM183d, b2, c0046d.f355d)) {
            return null;
        }
        Bitmap bitmapM654a2 = this.f378m.m654a(c0046d, c0129h, interfaceC0049g, i2, z2, this.f377l);
        if (this.f377l && bitmapM654a2 == null) {
            this.f376k |= 2;
        }
        return bitmapM654a2;
    }

    /* JADX INFO: renamed from: c */
    public abstract int mo176c();

    /* JADX INFO: renamed from: d */
    public final int[] m191d() {
        return this.f373h.m171d();
    }

    /* JADX INFO: renamed from: e */
    public boolean mo177e() {
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final boolean m192f(byte b2, byte b3, long j2) {
        if (b2 == 9 && (this.f375j & 65536) != 0) {
            return j2 > 10;
        }
        if (b2 == 14 && (this.f375j & 524288) != 0) {
            return j2 > 10 && ((double) j2) < 5.0E9d;
        }
        if (b2 == 7 && (this.f375j & 1048576) != 0) {
            return j2 > 512;
        }
        if (((b2 == 13 || b2 == 15) && (this.f375j & 262144) != 0) || ((b2 == 6 || b2 == 20) && (this.f375j & 131072) != 0)) {
            return ((double) j2) > 10.0d;
        }
        return b2 == 4 && b3 == 126;
    }

    /* JADX INFO: renamed from: g */
    public final void m193g() {
        boolean z2;
        C0044b c0044b = this.f373h;
        synchronized (c0044b) {
            z2 = c0044b.f334a <= 0;
            c0044b.f335b = 0L;
            c0044b.f334a = c0044b.size();
            for (C0046d c0046d : c0044b) {
                if (c0046d.m187h()) {
                    c0046d.f358g = true;
                    long j2 = c0046d.f355d;
                    if (j2 > 0) {
                        c0044b.f335b += j2;
                    }
                } else {
                    c0044b.f334a--;
                }
            }
            c0044b.f336c = null;
        }
        a aVar = this.f379n;
        if (aVar != null && z2) {
            aVar.mo199c(this.f372g, 1, true);
        }
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f373h.size();
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    /* JADX INFO: renamed from: h */
    public final void m194h() {
        boolean z2;
        C0044b c0044b = this.f373h;
        synchronized (c0044b) {
            z2 = c0044b.f334a > 0;
            for (C0046d c0046d : c0044b) {
                if (c0046d.f358g) {
                    c0046d.f358g = false;
                }
            }
            c0044b.f334a = 0;
            c0044b.f335b = 0L;
            c0044b.f336c = null;
        }
        a aVar = this.f379n;
        if (aVar != null && z2) {
            aVar.mo199c(this.f372g, 0, false);
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: i */
    public final void m195i() {
        boolean z2;
        C0044b c0044b = this.f373h;
        int i2 = c0044b.f334a > 0 ? 1 : 0;
        synchronized (c0044b) {
            boolean z3 = c0044b.f334a > 0;
            c0044b.f334a = 0;
            c0044b.f335b = 0L;
            for (C0046d c0046d : c0044b) {
                if (c0046d.m187h()) {
                    boolean z4 = !c0046d.f358g;
                    c0046d.f358g = z4;
                    if (z4) {
                        c0044b.f334a++;
                        long j2 = c0046d.f355d;
                        if (j2 > 0) {
                            c0044b.f335b += j2;
                        }
                    }
                }
            }
            c0044b.f336c = null;
            z2 = z3 != (c0044b.f334a > 0);
        }
        a aVar = this.f379n;
        if (aVar != null && z2) {
            aVar.mo199c(this.f372g, i2 ^ 1, i2 ^ 1);
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: renamed from: j */
    public final boolean m196j(int i2, int i3) {
        C0044b c0044b = this.f373h;
        int i4 = c0044b.f334a;
        if (!c0044b.m175h(i2, i3)) {
            return false;
        }
        a aVar = this.f379n;
        if (aVar != null) {
            int i5 = this.f373h.f334a;
            aVar.mo199c(this.f372g, i5, i5 > i4);
        }
        notifyDataSetChanged();
        return true;
    }

    /* JADX INFO: renamed from: k */
    public final void m197k(boolean z2, boolean z3) {
        this.f377l = z2;
        if (z2) {
            if (z3) {
                this.f376k &= -5;
                return;
            } else {
                this.f376k |= 4;
                return;
            }
        }
        if (C0015d.m49K(this.f376k, 2)) {
            this.f376k &= -3;
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: renamed from: l */
    public final void m198l(C0044b c0044b, C0129h c0129h, boolean z2) {
        this.f373h = c0044b;
        this.f374i = c0129h;
        if (c0129h.m488o()) {
            int i2 = C0358b.f1988j & 4128768 & 2031616;
            this.f375j = i2;
            if (Build.VERSION.SDK_INT >= 24 && z2) {
                this.f375j = i2 | 4194304;
            }
        } else if (c0129h.m484k()) {
            this.f375j = C0358b.f1988j & 4128768 & 65536;
        } else if (c0129h.m480g() && C0358b.m1036g(2097152)) {
            this.f375j = C0358b.f1988j & 4128768 & 458752;
        } else {
            this.f375j = 0;
        }
        this.f377l = false;
        this.f376k &= -7;
    }

    /* JADX INFO: renamed from: m */
    public void mo188m(boolean z2) {
        if (z2) {
            this.f376k |= 1;
        } else {
            this.f376k &= -2;
        }
    }

    /* JADX INFO: renamed from: n */
    public void mo178n(int i2, int i3) {
        C0229g c0229g = this.f378m;
        if (c0229g != null) {
            int i4 = 6;
            if (i3 < 6 || i3 > (i4 = c0229g.f1293e)) {
                i3 = i4;
            }
            c0229g.f1290b = i3;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (view == null || view.getTag() == null || this.f377l || (this.f376k & 1) == 0) {
            return;
        }
        m196j(((Integer) view.getTag()).intValue(), 2);
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        String quantityString;
        boolean z2;
        ImageView imageView = (ImageView) view;
        int iIntValue = ((Integer) view.getTag(R.id.info_size)).intValue();
        C0046d c0046d = (C0046d) view.getTag(R.id.info_date);
        int[] iArrM191d = m191d();
        if (iArrM191d.length > 0) {
            int length = iArrM191d.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    z2 = true;
                    break;
                }
                if (iArrM191d[i2] == iIntValue) {
                    z2 = false;
                    break;
                }
                i2++;
            }
            if (z2) {
                return false;
            }
            quantityString = view.getContext().getResources().getQuantityString(R.plurals.FINFO_ITEM_COUNT, iArrM191d.length, Integer.valueOf(iArrM191d.length));
        } else {
            iArrM191d = new int[]{iIntValue};
            quantityString = c0046d.f352a;
        }
        boolean z3 = c0046d instanceof C0048f;
        String[] strArr = new String[iArrM191d.length];
        int length2 = iArrM191d.length;
        ClipData.Item[] itemArr = new ClipData.Item[length2];
        for (int i3 = 0; i3 < iArrM191d.length; i3++) {
            C0046d item = getItem(iArrM191d[i3]);
            String str = item.f352a;
            Uri uriM1064b = C0382e.m1064b(view.getContext(), new C0129h(str, z3 ? ((C0048f) item).f365k : this.f374i, item.f353b), 0L, null);
            strArr[i3] = item.m185f() ? "vnd.android.document/directory" : C0015d.m96x(str);
            itemArr[i3] = new ClipData.Item(uriM1064b);
        }
        ClipData clipData = new ClipData(new ClipDescription(quantityString, strArr), itemArr[0]);
        for (int i4 = 1; i4 < length2; i4++) {
            clipData.addItem(itemArr[i4]);
        }
        imageView.startDrag(clipData, new b(imageView), null, 259);
        return true;
    }
}
