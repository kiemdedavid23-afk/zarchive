package p021g1;

import java.util.Comparator;
import p004b.C0015d;
import p008c0.C0046d;

/* JADX INFO: renamed from: g1.d */
/* JADX INFO: loaded from: classes.dex */
public final class C0133d implements Comparator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1024a;

    /* JADX INFO: renamed from: b */
    public final int f1025b;

    public C0133d(int i2, boolean z2) {
        this.f1024a = i2;
        switch (i2) {
            case 1:
                this.f1025b = z2 ? -1 : 1;
                break;
            case 2:
                this.f1025b = z2 ? -1 : 1;
                break;
            case 3:
                this.f1025b = z2 ? -1 : 1;
                break;
            case 4:
                this.f1025b = z2 ? -1 : 1;
                break;
            case 5:
                this.f1025b = z2 ? -1 : 1;
                break;
            case 6:
                this.f1025b = z2 ? -1 : 1;
                break;
            case 7:
                this.f1025b = z2 ? -1 : 1;
                break;
            default:
                this.f1025b = z2 ? -1 : 1;
                break;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x016e, code lost:
    
        if (r6.m181b() > r7.m181b()) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0196, code lost:
    
        if (r6.m181b() > r7.m181b()) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01d7, code lost:
    
        if (r6.m181b() > r7.m181b()) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01ff, code lost:
    
        if (r6.m181b() > r7.m181b()) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:?, code lost:
    
        return -r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:?, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:?, code lost:
    
        return -r2;
     */
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int m498a(C0046d c0046d, C0046d c0046d2) {
        int iM74g;
        int iCompareToIgnoreCase;
        int i2 = this.f1024a;
        int i3 = this.f1025b;
        switch (i2) {
            case 0:
                if (!c0046d.m185f()) {
                    if (!c0046d2.m185f()) {
                        if (c0046d.m181b() == c0046d2.m181b()) {
                            return C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                        }
                        break;
                    }
                    return 1;
                }
                if (!c0046d2.m185f() || c0046d.m186g()) {
                    return -1;
                }
                if (!c0046d2.m186g()) {
                    if (c0046d.m181b() == c0046d2.m181b()) {
                        return C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                    }
                    break;
                }
                return 1;
            case 1:
                if (c0046d.m185f()) {
                    if (!c0046d2.m185f()) {
                        return -1;
                    }
                    if (c0046d.m181b() == c0046d2.m181b()) {
                        return c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                    }
                } else {
                    if (c0046d2.m185f()) {
                        return 1;
                    }
                    if (c0046d.m181b() == c0046d2.m181b()) {
                        return c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                    }
                }
                break;
            case 2:
                if (!c0046d.m185f()) {
                    if (!c0046d2.m185f()) {
                        iM74g = C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                        return iM74g * i3;
                    }
                    return 1;
                }
                if (!c0046d2.m185f() || c0046d.m186g()) {
                    return -1;
                }
                if (!c0046d2.m186g()) {
                    iM74g = C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                    return iM74g * i3;
                }
                return 1;
            case 3:
                if (!c0046d.m185f()) {
                    if (!c0046d2.m185f()) {
                        iCompareToIgnoreCase = c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                        return iCompareToIgnoreCase * i3;
                    }
                    return 1;
                }
                if (!c0046d2.m185f() || c0046d.m186g()) {
                    return -1;
                }
                if (!c0046d2.m186g()) {
                    iCompareToIgnoreCase = c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                    return iCompareToIgnoreCase * i3;
                }
                return 1;
            case 4:
                if (c0046d.m185f()) {
                    if (!c0046d2.m185f() || c0046d.m186g()) {
                        return -1;
                    }
                    if (!c0046d2.m186g()) {
                        return C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                    }
                } else if (!c0046d2.m185f()) {
                    long j2 = c0046d.f355d;
                    long j3 = c0046d2.f355d;
                    if (j2 == j3) {
                        return C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                    }
                    return j2 > j3 ? i3 : -i3;
                }
                return 1;
            case 5:
                if (c0046d.m185f()) {
                    if (!c0046d2.m185f() || c0046d.m186g()) {
                        return -1;
                    }
                    if (!c0046d2.m186g()) {
                        return c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                    }
                } else if (!c0046d2.m185f()) {
                    long j4 = c0046d.f355d;
                    long j5 = c0046d2.f355d;
                    if (j4 == j5) {
                        return c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                    }
                    return j4 > j5 ? i3 : -i3;
                }
                return 1;
            case 6:
                if (c0046d.m185f()) {
                    if (!c0046d2.m185f() || c0046d.m186g()) {
                        return -1;
                    }
                    if (!c0046d2.m186g()) {
                        return C0015d.m74g(c0046d.f352a, c0046d2.f352a);
                    }
                } else if (!c0046d2.m185f()) {
                    int iCompareTo = C0015d.m91s(c0046d.f352a).compareTo(C0015d.m91s(c0046d2.f352a)) * i3;
                    return iCompareTo == 0 ? C0015d.m74g(c0046d.f352a, c0046d2.f352a) : iCompareTo;
                }
                return 1;
            default:
                if (c0046d.m185f()) {
                    if (!c0046d2.m185f() || c0046d.m186g()) {
                        return -1;
                    }
                    if (!c0046d2.m186g()) {
                        return c0046d.f352a.compareToIgnoreCase(c0046d2.f352a);
                    }
                } else if (!c0046d2.m185f()) {
                    int iCompareTo2 = C0015d.m91s(c0046d.f352a).compareTo(C0015d.m91s(c0046d2.f352a)) * i3;
                    return iCompareTo2 == 0 ? c0046d.f352a.compareToIgnoreCase(c0046d2.f352a) : iCompareTo2;
                }
                return 1;
        }
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        switch (this.f1024a) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                break;
        }
        return m498a((C0046d) obj, (C0046d) obj2);
    }
}
