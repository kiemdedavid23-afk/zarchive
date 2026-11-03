package p021g1;

import java.util.Comparator;
import p004b.C0015d;
import p008c0.C0046d;
import p008c0.C0048f;

/* JADX INFO: renamed from: g1.e */
/* JADX INFO: loaded from: classes.dex */
public final class C0134e implements Comparator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1026a;

    public /* synthetic */ C0134e(int i2) {
        this.f1026a = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f1026a) {
            case 0:
                C0046d c0046d = (C0046d) obj;
                C0046d c0046d2 = (C0046d) obj2;
                if (!c0046d.m185f()) {
                    if (c0046d2.m185f()) {
                        return -1;
                    }
                    return c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                }
                if (!c0046d2.m185f()) {
                    return 1;
                }
                int iCompareToIgnoreCase = ((C0048f) c0046d).f365k.f1015c.compareToIgnoreCase(((C0048f) c0046d2).f365k.f1015c);
                return iCompareToIgnoreCase != 0 ? iCompareToIgnoreCase : c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
            default:
                return C0015d.m74g((String) obj, (String) obj2);
        }
    }
}
