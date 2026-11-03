package p008c0;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import java.text.DateFormat;
import java.util.ArrayList;
import p004b.C0015d;
import p020g0.C0129h;
import p039p0.C0229g;
import p047s0.C0358b;
import p059y0.C0438b;
import p059y0.C0439c;
import p059y0.C0442f;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: c0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0045c extends AbstractViewOnClickListenerC0050h implements SectionIndexer {

    /* JADX INFO: renamed from: t */
    public static final Object[] f337t = new Object[0];

    /* JADX INFO: renamed from: o */
    public final int f338o;

    /* JADX INFO: renamed from: p */
    public final int f339p;

    /* JADX INFO: renamed from: q */
    public final boolean f340q;

    /* JADX INFO: renamed from: r */
    public C0129h f341r;

    /* JADX INFO: renamed from: s */
    public C0043a f342s;

    /* JADX INFO: renamed from: c0.c$a */
    public static class a implements InterfaceC0049g {

        /* JADX INFO: renamed from: a */
        public final View f343a;

        /* JADX INFO: renamed from: b */
        public final TextView f344b;

        /* JADX INFO: renamed from: c */
        public final ImageView f345c;

        /* JADX INFO: renamed from: d */
        public final TextView f346d;

        /* JADX INFO: renamed from: e */
        public final TextView f347e;

        /* JADX INFO: renamed from: f */
        public final int f348f;

        /* JADX INFO: renamed from: g */
        public final boolean f349g;

        public a(View view, int i2, boolean z2) {
            this.f343a = view;
            TextView textView = (TextView) view.findViewById(R.id.label);
            this.f344b = textView;
            C0442f.m1193d(textView);
            TextView textView2 = (TextView) view.findViewById(R.id.info_size);
            C0442f.m1193d(textView2);
            if (textView2 == null || i2 == R.layout.item_file_detail || C0358b.m1036g(4096)) {
                this.f347e = textView2;
            } else {
                textView2.setVisibility(8);
                this.f347e = null;
            }
            TextView textView3 = (TextView) view.findViewById(R.id.info_date);
            C0442f.m1193d(textView3);
            if (textView3 == null || i2 == R.layout.item_file_detail || C0358b.m1036g(8192)) {
                this.f346d = textView3;
            } else {
                textView3.setVisibility(8);
                this.f346d = null;
            }
            this.f345c = (ImageView) view.findViewById(R.id.icon);
            this.f348f = i2;
            this.f349g = z2;
        }

        @Override // p008c0.InterfaceC0049g
        /* JADX INFO: renamed from: a */
        public final boolean mo179a(C0046d c0046d, Bitmap bitmap, int i2) {
            ImageView imageView = this.f345c;
            if (((Integer) imageView.getTag(R.id.icon)).intValue() != i2) {
                return false;
            }
            if (bitmap != null) {
                if (C0358b.m1041l(4)) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                }
                if (c0046d.m183d() == 4 || !C0358b.m1041l(32)) {
                    imageView.setImageBitmap(bitmap);
                } else {
                    C0442f.m1192c(imageView, bitmap);
                }
            }
            TextView textView = this.f347e;
            if (textView != null && this.f348f == R.layout.item_file_detail) {
                textView.setText(c0046d.m182c(true));
            }
            return true;
        }
    }

    public C0045c(Context context, C0305b c0305b, AbstractViewOnClickListenerC0050h abstractViewOnClickListenerC0050h) {
        super(context, c0305b);
        if (abstractViewOnClickListenerC0050h instanceof C0045c) {
            this.f341r = ((C0045c) abstractViewOnClickListenerC0050h).f341r;
        } else {
            this.f341r = new C0129h("");
        }
        this.f342s = null;
        int i2 = c0305b.f1598g;
        this.f338o = i2;
        int i3 = C0358b.f1989k;
        this.f339p = i3;
        if (i2 == R.layout.item_file_grid) {
            this.f339p = (int) (i3 * 1.6f);
        }
        this.f340q = i2 == R.layout.item_file_detail || (i2 == R.layout.item_file_compact && i3 < C0439c.m1166a(((int) (((float) C0358b.f1990l) * 2.2f)) + 2));
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h
    /* JADX INFO: renamed from: c */
    public final int mo176c() {
        return this.f338o;
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h
    /* JADX INFO: renamed from: e */
    public final boolean mo177e() {
        return this.f338o == R.layout.item_file_grid;
    }

    @Override // android.widget.SectionIndexer
    public final int getPositionForSection(int i2) {
        Integer num;
        C0043a c0043a = this.f342s;
        if (c0043a == null) {
            return 0;
        }
        Integer[] numArr = c0043a.f332a;
        if (i2 < numArr.length && (num = numArr[i2]) != null) {
            return num.intValue();
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public final int getSectionForPosition(int i2) {
        if (this.f342s == null) {
            return 0;
        }
        int i3 = 1;
        while (true) {
            Integer[] numArr = this.f342s.f332a;
            if (i3 >= numArr.length) {
                return 0;
            }
            if (numArr[i3].intValue() > i2) {
                return i3 - 1;
            }
            i3++;
        }
    }

    @Override // android.widget.SectionIndexer
    public final Object[] getSections() {
        C0043a c0043a = this.f342s;
        return c0043a == null ? f337t : c0043a.f333b;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x014d  */
    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        String string;
        C0046d c0046dM189a = getItem(i2);
        if (view == null) {
            LayoutInflater layoutInflater = this.f366a;
            int i3 = this.f338o;
            view = layoutInflater.inflate(i3, viewGroup, false);
            aVar = new a(view, i3, this.f340q);
            ImageView imageView = aVar.f345c;
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            int i4 = this.f339p;
            layoutParams.width = i4;
            layoutParams.height = i4;
            TextView textView = aVar.f344b;
            if (i3 != R.layout.item_file_grid) {
                textView.setTextSize(C0358b.f1990l);
                if (i3 == R.layout.item_file_detail) {
                    textView.setMinHeight(C0358b.f1989k - C0439c.m1166a(C0358b.f1990l));
                } else {
                    textView.setMinHeight(C0358b.f1989k);
                }
                TextView textView2 = aVar.f347e;
                if (textView2 != null) {
                    textView2.setTextSize(C0358b.f1990l * 0.62f);
                }
                TextView textView3 = aVar.f346d;
                if (textView3 != null) {
                    textView3.setTextSize(C0358b.f1990l * 0.6f);
                }
                imageView.setOnClickListener(this);
            } else {
                textView.setTextSize(C0358b.f1990l * 0.8f);
                imageView.setClickable(false);
            }
            imageView.setLayoutParams(layoutParams);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
            aVar.f345c.animate().cancel();
            ImageView imageView2 = aVar.f345c;
            imageView2.setAlpha(1.0f);
            imageView2.setTag(R.id.icon, 0);
        }
        int iM184e = c0046dM189a.m184e(this.f341r);
        Bitmap bitmapM190b = m190b(iM184e, c0046dM189a, aVar, this.f341r, true);
        Integer numValueOf = Integer.valueOf(i2);
        ImageView imageView3 = aVar.f345c;
        imageView3.setTag(numValueOf);
        imageView3.setTag(R.id.icon, Integer.valueOf(iM184e));
        aVar.f344b.setText(c0046dM189a.f352a);
        if (C0358b.m1041l(4)) {
            imageView3.setScaleType(bitmapM190b == null ? ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP);
        }
        if (bitmapM190b == null) {
            imageView3.setImageBitmap(C0438b.m1162c(imageView3.getContext(), C0438b.m1160a(c0046dM189a.m183d()), c0046dM189a.f357f));
        } else {
            imageView3.setImageBitmap(bitmapM190b);
        }
        int i5 = aVar.f348f;
        if (i5 != R.layout.item_file_grid) {
            imageView3.setClickable(c0046dM189a.m187h());
            TextView textView4 = aVar.f346d;
            if (textView4 != null) {
                boolean zM1036g = C0358b.m1036g(16384);
                if (c0046dM189a.m186g()) {
                    string = "";
                } else {
                    long j2 = c0046dM189a.f354c;
                    if (j2 == -1) {
                        string = "";
                    } else {
                        DateFormat dateFormat = C0046d.f350i;
                        if (zM1036g) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(dateFormat.format(Long.valueOf(j2)));
                            sb.append(aVar.f349g ? " " : "\n");
                            sb.append(C0046d.f351j.format(Long.valueOf(j2)));
                            string = sb.toString();
                        } else {
                            string = dateFormat.format(Long.valueOf(j2));
                        }
                    }
                }
                textView4.setText(string);
            }
            TextView textView5 = aVar.f347e;
            if (textView5 != null) {
                textView5.setText(c0046dM189a.m182c(i5 == R.layout.item_file_detail));
            }
        }
        boolean z2 = c0046dM189a.f358g;
        TextView textView6 = aVar.f347e;
        TextView textView7 = aVar.f346d;
        View view2 = aVar.f343a;
        TextView textView8 = aVar.f344b;
        if (z2) {
            int i6 = this.f369d;
            textView8.setTextColor(i6);
            view2.setBackgroundColor(this.f370e);
            if (textView7 != null) {
                textView7.setTextColor(i6);
            }
            if (textView6 != null) {
                textView6.setTextColor(i6);
            }
        } else {
            textView8.setTextColor(this.f367b);
            view2.setBackgroundColor(this.f371f);
            int i7 = this.f368c;
            if (textView7 != null) {
                textView7.setTextColor(i7);
            }
            if (textView6 != null) {
                textView6.setTextColor(i7);
            }
        }
        int i8 = this.f375j & 4194304;
        ImageView imageView4 = aVar.f345c;
        if (i8 == 0 || c0046dM189a.m186g()) {
            imageView4.setOnLongClickListener(null);
            imageView4.setLongClickable(false);
        } else {
            imageView4.setTag(R.id.info_date, c0046dM189a);
            imageView4.setTag(R.id.info_size, Integer.valueOf(i2));
            imageView4.setOnLongClickListener(this);
        }
        return view;
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h
    /* JADX INFO: renamed from: n */
    public final void mo178n(int i2, int i3) {
        ArrayList<C0046d> arrayList;
        super.mo178n(i2, i3);
        if (i2 < 0 || this.f378m == null) {
            return;
        }
        int i4 = C0015d.m49K(this.f376k, 4) ? -1 : 1;
        if (this.f378m == null || this.f375j == 0 || i3 + i2 >= getCount()) {
            arrayList = null;
        } else {
            C0044b c0044b = this.f373h;
            synchronized (c0044b) {
                int size = c0044b.size();
                int iMin = Math.min(this.f378m.f1293e / 2, i4 > 0 ? size - i2 : i2);
                arrayList = new ArrayList(iMin);
                while (i2 >= 0 && i2 < size && iMin > 0) {
                    C0046d c0046d = c0044b.get(i2);
                    if (m192f(c0046d.m183d(), c0046d.f357f, c0046d.f355d)) {
                        arrayList.add(c0046d);
                        iMin--;
                    }
                    i2 += i4;
                }
            }
        }
        if (arrayList != null) {
            C0229g c0229g = this.f378m;
            C0129h c0129h = this.f341r;
            C0229g.a aVar = c0229g.f1294f;
            if (aVar == null || !c0229g.f1295g) {
                return;
            }
            try {
                if (aVar.getState() == Thread.State.NEW) {
                    c0229g.f1294f.start();
                }
                ArrayList<C0229g.b> arrayList2 = new ArrayList<>(arrayList.size());
                for (C0046d c0046d2 : arrayList) {
                    arrayList2.add(new C0229g.b(c0046d2, c0129h, 5, null, c0046d2.m184e(c0129h)));
                }
                c0229g.f1294f.m659a(arrayList2);
            } catch (Exception unused) {
            }
        }
    }
}
