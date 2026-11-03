package p008c0;

/* JADX INFO: renamed from: c0.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0051i extends C0044b {
    public C0051i(int i2) {
        super(i2);
    }

    /* JADX INFO: renamed from: i */
    public final synchronized void m200i(C0048f c0048f) {
        this.f336c = null;
        if (c0048f.f358g) {
            this.f334a++;
            this.f335b += c0048f.f355d;
        }
        add(c0048f);
    }

    @Override // p008c0.C0044b, java.util.ArrayList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final synchronized C0048f get(int i2) {
        return (C0048f) super.get(i2);
    }

    public C0051i(C0051i c0051i) {
        super(c0051i);
    }
}
