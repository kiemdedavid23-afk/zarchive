package p021g1;

import android.util.SparseArray;

/* JADX INFO: renamed from: g1.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0130a<E> extends SparseArray<E> {

    /* JADX INFO: renamed from: a */
    public final Object f1019a;

    public C0130a() {
        super(5);
        this.f1019a = new Object();
    }

    @Override // android.util.SparseArray
    public final void clear() {
        synchronized (this.f1019a) {
            super.clear();
        }
    }

    @Override // android.util.SparseArray
    public final void delete(int i2) {
        synchronized (this.f1019a) {
            super.delete(i2);
        }
    }

    @Override // android.util.SparseArray
    public final E get(int i2) {
        E e2;
        synchronized (this.f1019a) {
            e2 = (E) super.get(i2);
        }
        return e2;
    }

    @Override // android.util.SparseArray
    public final void put(int i2, E e2) {
        synchronized (this.f1019a) {
            super.put(i2, e2);
        }
    }
}
