package p007c;

import java.util.ArrayList;

/* JADX INFO: renamed from: c.f */
/* JADX INFO: loaded from: classes.dex */
public final class C0041f {

    /* JADX INFO: renamed from: a */
    public int f321a;

    /* JADX INFO: renamed from: b */
    public int f322b;

    /* JADX INFO: renamed from: c */
    public int f323c;

    /* JADX INFO: renamed from: d */
    public int f324d;

    /* JADX INFO: renamed from: e */
    public final ArrayList<a> f325e = new ArrayList<>();

    /* JADX INFO: renamed from: c.f$a */
    public static class a {

        /* JADX INFO: renamed from: a */
        public C0037b f326a;

        /* JADX INFO: renamed from: b */
        public C0037b f327b;

        /* JADX INFO: renamed from: c */
        public int f328c;

        /* JADX INFO: renamed from: d */
        public int f329d;

        /* JADX INFO: renamed from: e */
        public int f330e;

        public a(C0037b c0037b) {
            this.f326a = c0037b;
            this.f327b = c0037b.f254c;
            this.f328c = c0037b.m140b();
            this.f329d = c0037b.f257f;
            this.f330e = c0037b.f259h;
        }
    }

    public C0041f(C0042g c0042g) {
        this.f321a = c0042g.f299r;
        this.f322b = c0042g.f300s;
        this.f323c = c0042g.m148e();
        this.f324d = c0042g.m147d();
        ArrayList<C0037b> arrayList = c0042g.f293l;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f325e.add(new a(arrayList.get(i2)));
        }
    }
}
