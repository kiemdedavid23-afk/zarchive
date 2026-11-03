package p008c0;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import p020g0.C0129h;
import p047s0.C0358b;
import p051u0.C0385h;
import p059y0.C0438b;
import p059y0.C0442f;
import ru.zdevs.zarchiver.C0305b;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: c0.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0047e extends AbstractViewOnClickListenerC0050h {

    /* JADX INFO: renamed from: c0.e$a */
    public static class a implements InterfaceC0049g {

        /* JADX INFO: renamed from: a */
        public final View f360a;

        /* JADX INFO: renamed from: b */
        public final TextView f361b;

        /* JADX INFO: renamed from: c */
        public final ImageView f362c;

        /* JADX INFO: renamed from: d */
        public final TextView f363d;

        /* JADX INFO: renamed from: e */
        public final TextView f364e;

        public a(View view) {
            this.f360a = view;
            this.f361b = (TextView) view.findViewById(R.id.name);
            this.f364e = (TextView) view.findViewById(R.id.desc);
            this.f363d = (TextView) view.findViewById(R.id.info);
            this.f362c = (ImageView) view.findViewById(R.id.icon);
        }

        @Override // p008c0.InterfaceC0049g
        /* JADX INFO: renamed from: a */
        public final boolean mo179a(C0046d c0046d, Bitmap bitmap, int i2) {
            ImageView imageView = this.f362c;
            if (((Integer) imageView.getTag(R.id.icon)).intValue() != i2 || bitmap == null) {
                return false;
            }
            if (C0358b.m1041l(4)) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            if (C0358b.m1041l(32)) {
                C0442f.m1192c(imageView, bitmap);
                return true;
            }
            imageView.setImageBitmap(bitmap);
            return true;
        }
    }

    public C0047e(Context context, C0305b c0305b) {
        super(context, c0305b);
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h
    /* JADX INFO: renamed from: c */
    public final int mo176c() {
        return R.layout.item_file_search;
    }

    @Override // android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        a aVar;
        String strM493t;
        C0048f c0048f = (C0048f) getItem(i2);
        if (view == null) {
            view = this.f366a.inflate(R.layout.item_file_search, viewGroup, false);
            aVar = new a(view);
            float f2 = C0358b.f1990l;
            TextView textView = aVar.f361b;
            textView.setTextSize(f2);
            textView.setMinHeight(C0358b.f1989k >> 1);
            float f3 = C0358b.f1990l * 0.7f;
            TextView textView2 = aVar.f364e;
            textView2.setTextSize(f3);
            textView2.setMinHeight(C0358b.f1989k >> 1);
            aVar.f363d.setTextSize(C0358b.f1990l * 0.6f);
            ImageView imageView = aVar.f362c;
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            int i3 = C0358b.f1989k;
            layoutParams.height = i3;
            layoutParams.width = i3;
            imageView.setLayoutParams(layoutParams);
            imageView.setOnClickListener(this);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
            aVar.f362c.animate().cancel();
            ImageView imageView2 = aVar.f362c;
            imageView2.setAlpha(1.0f);
            imageView2.setTag(R.id.icon, 0);
        }
        int iHashCode = c0048f.hashCode();
        Bitmap bitmapM190b = m190b(iHashCode, c0048f, aVar, c0048f.f365k, false);
        Integer numValueOf = Integer.valueOf(i2);
        ImageView imageView3 = aVar.f362c;
        imageView3.setTag(numValueOf);
        imageView3.setTag(R.id.icon, Integer.valueOf(iHashCode));
        aVar.f361b.setText(c0048f.f352a);
        if (C0358b.m1041l(4)) {
            imageView3.setScaleType(bitmapM190b == null ? ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP);
        }
        if (bitmapM190b == null) {
            bitmapM190b = C0438b.m1160a(c0048f.m183d());
        }
        imageView3.setImageBitmap(C0438b.m1162c(imageView3.getContext(), bitmapM190b, c0048f.f357f));
        C0129h c0129h = c0048f.f365k;
        if (c0129h.m480g()) {
            strM493t = "~/";
            if (!C0385h.m1081e(c0129h.f1017e)) {
                strM493t = "~/" + c0129h.f1017e;
            }
        } else {
            strM493t = c0129h.m493t();
        }
        aVar.f364e.setText(strM493t);
        StringBuilder sb = new StringBuilder();
        if (C0358b.m1036g(8192)) {
            sb.append(C0046d.f350i.format(Long.valueOf(c0048f.m181b())));
        }
        if (C0358b.m1036g(4096) && c0048f.f356e != 4) {
            if (C0358b.m1036g(8192)) {
                sb.append("\n");
            }
            long j2 = c0048f.f355d;
            if (j2 == -2) {
                sb.append("<LINK>");
            } else {
                sb.append(C0385h.m1078b(j2, 0, null));
            }
        }
        aVar.f363d.setText(sb.toString());
        boolean z2 = c0048f.f358g;
        View view2 = aVar.f360a;
        TextView textView3 = aVar.f364e;
        TextView textView4 = aVar.f363d;
        TextView textView5 = aVar.f361b;
        if (z2) {
            int i4 = this.f369d;
            textView5.setTextColor(i4);
            textView4.setTextColor(i4);
            textView3.setTextColor(i4);
            view2.setBackgroundColor(this.f370e);
        } else {
            int i5 = this.f367b;
            textView5.setTextColor(i5);
            textView4.setTextColor(i5);
            textView3.setTextColor(i5);
            view2.setBackgroundColor(this.f371f);
        }
        int i6 = this.f375j & 4194304;
        ImageView imageView4 = aVar.f362c;
        if (i6 == 0 || c0048f.m186g()) {
            imageView4.setOnLongClickListener(null);
            imageView4.setLongClickable(false);
        } else {
            imageView4.setTag(R.id.info_date, c0048f);
            imageView4.setTag(R.id.info_size, Integer.valueOf(i2));
            imageView4.setOnLongClickListener(this);
        }
        return view;
    }

    @Override // p008c0.AbstractViewOnClickListenerC0050h
    /* JADX INFO: renamed from: m */
    public final void mo188m(boolean z2) {
    }
}
