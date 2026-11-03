package p008c0;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: c0.b */
/* JADX INFO: loaded from: classes.dex */
public class C0044b extends ArrayList<C0046d> {

    /* JADX INFO: renamed from: a */
    public int f334a;

    /* JADX INFO: renamed from: b */
    public long f335b;

    /* JADX INFO: renamed from: c */
    public int[] f336c;

    public C0044b(int i2) {
        super(i2);
        this.f334a = 0;
        this.f335b = 0L;
        this.f336c = null;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m168a(C0048f c0048f) {
        this.f336c = null;
        super.add(c0048f);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized C0046d get(int i2) {
        return (C0046d) super.get(i2);
    }

    /* JADX INFO: renamed from: c */
    public final synchronized int m170c() {
        int size;
        size = super.size();
        if (size > 0 && ((C0046d) super.get(0)).m186g()) {
            size--;
        }
        return size;
    }

    /* JADX INFO: renamed from: d */
    public final int[] m171d() {
        int[] iArr;
        int[] iArr2 = this.f336c;
        if (iArr2 != null) {
            return iArr2;
        }
        synchronized (this) {
            int i2 = this.f334a;
            this.f336c = new int[i2];
            if (i2 > 0) {
                int size = size();
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    if (((C0046d) super.get(i4)).f358g) {
                        this.f336c[i3] = i4;
                        i3++;
                    }
                }
            }
            iArr = this.f336c;
        }
        return iArr;
    }

    /* JADX INFO: renamed from: e */
    public final synchronized boolean m172e(String str) {
        Iterator<C0046d> it = iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().f352a)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final synchronized boolean m173f(int i2) {
        int i3 = 0;
        if (i2 < size() && this.f334a != 0) {
            int i4 = -1;
            while (true) {
                if (i3 >= size()) {
                    i3 = -1;
                    break;
                }
                if (((C0046d) super.get(i3)).f358g) {
                    if (i3 < i2) {
                        i4 = i3;
                    } else if (i3 > i2) {
                        break;
                    }
                }
                i3++;
            }
            if (i4 == -1) {
                i4 = i2;
            }
            if (i3 != -1) {
                i2 = i3;
            }
            while (i4 <= i2) {
                C0046d c0046d = (C0046d) super.get(i4);
                if (!c0046d.f358g && c0046d.m187h()) {
                    c0046d.f358g = true;
                    this.f334a++;
                    long j2 = c0046d.f355d;
                    if (j2 > 0) {
                        this.f335b += j2;
                    }
                }
                i4++;
            }
            this.f336c = null;
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m174g(int i2) {
        C0046d c0046d = (C0046d) super.get(i2);
        if (c0046d.m187h() && !c0046d.f358g) {
            c0046d.f358g = true;
            this.f334a++;
            long j2 = c0046d.f355d;
            if (j2 > 0) {
                this.f335b += j2;
            }
            this.f336c = null;
        }
    }

    /* JADX INFO: renamed from: h */
    public final synchronized boolean m175h(int i2, int i3) {
        boolean z2;
        if (i2 >= super.size()) {
            return false;
        }
        C0046d c0046d = (C0046d) super.get(i2);
        if (!c0046d.m187h()) {
            return false;
        }
        if (i3 == 2) {
            z2 = !c0046d.f358g;
        } else {
            z2 = i3 == 1;
            if (c0046d.f358g == z2) {
                return false;
            }
        }
        if (z2) {
            this.f334a++;
            long j2 = c0046d.f355d;
            if (j2 > 0) {
                this.f335b += j2;
            }
        } else {
            this.f334a--;
            long j3 = c0046d.f355d;
            if (j3 > 0) {
                this.f335b -= j3;
            }
        }
        c0046d.f358g = z2;
        this.f336c = null;
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final synchronized int size() {
        return super.size();
    }

    public C0044b(C0044b c0044b) {
        super(c0044b);
        this.f334a = c0044b.f334a;
        this.f335b = c0044b.f335b;
        this.f336c = null;
    }
}
