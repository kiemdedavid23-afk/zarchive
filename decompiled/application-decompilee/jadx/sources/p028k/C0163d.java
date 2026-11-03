package p028k;

import java.util.Locale;
import p013e.InterfaceC0077c;
import p036o.AbstractC0201b;
import p038p.C0216g;

/* JADX INFO: renamed from: k.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0163d implements InterfaceC0077c {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1074a = 0;

    /* JADX INFO: renamed from: b */
    public Object f1075b;

    /* JADX INFO: renamed from: c */
    public Object f1076c;

    public C0163d(C0216g c0216g, AbstractC0201b[] abstractC0201bArr) {
        this.f1075b = c0216g;
        this.f1076c = abstractC0201bArr;
    }

    /* JADX INFO: renamed from: a */
    public final int m536a(int i2, int i3) {
        Object obj = this.f1076c;
        return ((AbstractC0201b[]) obj)[i2] != null ? ((AbstractC0201b[]) obj)[i2].mo534b() : i3;
    }

    /* JADX INFO: renamed from: b */
    public final float m537b(float f2, int i2) {
        Object obj = this.f1076c;
        return ((AbstractC0201b[]) obj)[i2] != null ? ((AbstractC0201b[]) obj)[i2].mo533a() : f2;
    }

    /* JADX INFO: renamed from: c */
    public final float m538c(float f2, int i2) {
        Object obj = this.f1076c;
        return ((AbstractC0201b[]) obj)[i2] != null ? ((AbstractC0201b[]) obj)[i2].mo533a() : f2;
    }

    /* JADX INFO: renamed from: d */
    public final int m539d(int i2, int i3) {
        Object obj = this.f1076c;
        return ((AbstractC0201b[]) obj)[i2] != null ? ((AbstractC0201b[]) obj)[i2].mo534b() : i3;
    }

    /* JADX INFO: renamed from: e */
    public final String m540e(int i2) {
        Object obj = this.f1076c;
        if (((AbstractC0201b[]) obj)[i2] != null) {
            return ((AbstractC0201b[]) obj)[i2].mo535c((C0216g) this.f1075b, Locale.ENGLISH);
        }
        return null;
    }

    public final String toString() {
        switch (this.f1074a) {
            case 1:
                return "XmlCData{data='" + ((String) this.f1075b) + "', typedData=" + ((AbstractC0201b) this.f1076c) + '}';
            default:
                return super.toString();
        }
    }
}
