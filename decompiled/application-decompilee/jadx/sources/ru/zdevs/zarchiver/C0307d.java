package ru.zdevs.zarchiver;

import java.util.ArrayList;
import p004b.C0015d;
import p017f0.AbstractC0099i;
import p020g0.C0129h;
import p039p0.C0229g;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0307d {

    /* JADX INFO: renamed from: b */
    public boolean f1623b;

    /* JADX INFO: renamed from: f */
    public final C0305b[] f1627f;

    /* JADX INFO: renamed from: g */
    public C0229g f1628g;

    /* JADX INFO: renamed from: a */
    public char f1622a = 0;

    /* JADX INFO: renamed from: c */
    public final C0287a f1624c = new C0287a(this);

    /* JADX INFO: renamed from: d */
    public final ArrayList<AbstractC0099i> f1625d = new ArrayList<>(2);

    /* JADX INFO: renamed from: e */
    public int f1626e = 0;

    public C0307d() {
        C0305b[] c0305bArr = new C0305b[2];
        this.f1627f = c0305bArr;
        c0305bArr[0] = new C0305b(0);
        this.f1628g = null;
    }

    /* JADX INFO: renamed from: a */
    public final void m840a(int i2, int i3, boolean z2) {
        int i4;
        AbstractC0099i[] abstractC0099iArr;
        if (this.f1625d.isEmpty()) {
            return;
        }
        synchronized (this.f1625d) {
            abstractC0099iArr = (AbstractC0099i[]) this.f1625d.toArray(new AbstractC0099i[0]);
        }
        for (AbstractC0099i abstractC0099i : abstractC0099iArr) {
            if ((i2 == -1 || abstractC0099i.f739c == i2) && ((i3 == -1 || abstractC0099i.mo338k() == i3) && (!z2 || C0015d.m49K(abstractC0099i.f740d, 65536)))) {
                try {
                    abstractC0099i.mo337d();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final AbstractC0099i m841b(int i2, int i3, int i4) {
        synchronized (this.f1625d) {
            for (AbstractC0099i abstractC0099i : this.f1625d) {
                if (i2 == -1 || abstractC0099i.f739c == i2) {
                    if (i3 == -1 || abstractC0099i.mo338k() == i3) {
                        if (i4 == -1 || abstractC0099i.m359j() == i4) {
                            return abstractC0099i;
                        }
                    }
                }
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public final C0305b m842c() {
        return this.f1627f[this.f1626e];
    }

    /* JADX INFO: renamed from: d */
    public final C0129h m843d() {
        return this.f1627f[this.f1626e].f1594c;
    }

    /* JADX INFO: renamed from: e */
    public final byte m844e() {
        return this.f1627f[this.f1626e].m825f();
    }

    /* JADX INFO: renamed from: f */
    public final boolean m845f(int i2) {
        return this.f1627f[this.f1626e].m826g(i2);
    }

    /* JADX INFO: renamed from: g */
    public final void m846g(char c2) {
        this.f1622a = c2;
        this.f1623b = false;
    }
}
