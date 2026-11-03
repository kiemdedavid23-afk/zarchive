package ru.zdevs.zarchiver;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p004b.C0015d;
import p011d0.C0070h;
import p020g0.AbstractC0126e;
import p020g0.AbstractC0127f;
import p020g0.C0129h;
import p021g1.InterfaceC0139j;
import p047s0.C0358b;
import p051u0.C0385h;
import p055w0.C0415f;
import p060z.C0449a;
import ru.zdevs.zarchiver.service.InterfaceC0316c;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0306c {

    /* JADX INFO: renamed from: a */
    public WeakReference<InterfaceC0316c> f1616a = new WeakReference<>(null);

    /* JADX INFO: renamed from: c */
    public static boolean m834c(C0129h c0129h) {
        AbstractC0126e.a aVarM453d;
        if (c0129h.m480g()) {
            c0129h = C0015d.m89q(c0129h);
        }
        if ((c0129h.m485l() && !C0358b.m1038i(c0129h.f1015c)) || (aVarM453d = AbstractC0126e.m453d(c0129h)) == null) {
            return false;
        }
        long jMo424o = AbstractC0127f.m463u(c0129h).mo424o();
        long j2 = aVarM453d.f992a;
        if (jMo424o < j2 || j2 <= 0) {
            return false;
        }
        ZApp.m725i(R.string.ERROR_NOT_ENOUGH_DISK_SPACE);
        return true;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m835f(C0129h c0129h, boolean z2) {
        if (c0129h.m480g()) {
            if (c0129h.m481h()) {
                return true;
            }
            if (!z2) {
                return false;
            }
            c0129h = new C0129h(c0129h.f1015c);
        }
        return ((z2 && C0415f.m1136d(c0129h, true) != 1) || (!z2 && C0415f.m1134b(c0129h) == 2)) && C0358b.m1038i(c0129h.f1015c);
    }

    /* JADX INFO: renamed from: a */
    public final void m836a(C0129h c0129h, String str, String str2, C0129h c0129h2, int i2) {
        InterfaceC0316c interfaceC0316c = this.f1616a.get();
        if (interfaceC0316c != null && c0129h.m488o()) {
            String strM65a0 = c0129h2.m480g() ? C0015d.m65a0(c0129h2.f1017e) : null;
            C0129h c0129hM89q = C0015d.m89q(c0129h2);
            String strM478e = c0129hM89q.m478e();
            if (m834c(c0129hM89q)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            if (!C0385h.m1081e(str2)) {
                sb.append(str2);
            }
            if (!C0385h.m1081e(strM65a0)) {
                sb.append("\\-spp");
                sb.append(strM65a0);
                sb.append('/');
            }
            C0015d.m70e(sb, strM478e, c0129hM89q, true);
            if (m835f(c0129h2, true)) {
                i2 |= 1;
            }
            try {
                interfaceC0316c.ArchiveAddFiles(strM478e, c0129hM89q, sb.toString(), str, c0129h, i2);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x009f  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00de  */
    /* JADX WARN: Instruction removed from duplicated block: B:35:0x009f, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX INFO: renamed from: b */
    public final void m837b(C0449a c0449a, C0129h c0129h, boolean z2, boolean z3) {
        ?? r13;
        int i2;
        String str;
        String strM62X;
        InterfaceC0316c interfaceC0316c = this.f1616a.get();
        if (interfaceC0316c == null) {
            return;
        }
        boolean zM1039j = C0358b.m1039j();
        int i3 = 1;
        boolean z4 = (zM1039j && !z3 && m835f(c0129h, true)) ? true : z3;
        int iM1203h = c0449a.m1203h();
        ArrayList arrayList = new ArrayList(iM1203h);
        ArrayList arrayList2 = new ArrayList(iM1203h);
        ArrayList arrayList3 = new ArrayList(iM1203h);
        ArrayList arrayList4 = new ArrayList(iM1203h);
        boolean z5 = false;
        ?? r14 = z4;
        int i4 = 0;
        while (i4 < iM1203h) {
            String strM1197b = c0449a.m1197b(i4);
            C0129h c0129hM1196a = c0449a.m1196a(i4);
            if (zM1039j && r14 == 0) {
                r13 = r14;
                if (m835f(c0129hM1196a, z5)) {
                    r13 = i3;
                }
            }
            r13 = r14;
            r13 = r14;
            if (C0015d.m53O(strM1197b, z5)) {
                i2 = i4;
                if (c0449a.f2256a.get(i4).f355d > 3221225472L) {
                    str = "\\-mmt=1";
                } else if (C0358b.m1030a() > 0) {
                    str = "\\-mmt=" + C0358b.m1030a();
                }
                if (C0070h.m253d().m257e(strM1197b)) {
                    str = str + "\\-p" + C0070h.m253d().m256c(true);
                }
                arrayList.add(c0129hM1196a);
                arrayList2.add(strM1197b);
                arrayList3.add(str);
                if (z2) {
                    strM62X = C0015d.m62X(strM1197b);
                    if (strM1197b.equals(strM62X)) {
                        strM62X = C0015d.m64Z(strM1197b);
                    }
                    arrayList4.add(new C0129h(strM62X, c0129h));
                } else {
                    arrayList4.add(c0129h);
                }
                i4 = i2 + 1;
                i3 = 1;
                z5 = false;
                r14 = r13;
            } else {
                i2 = i4;
            }
            str = "";
            if (C0070h.m253d().m257e(strM1197b)) {
                str = str + "\\-p" + C0070h.m253d().m256c(true);
            }
            arrayList.add(c0129hM1196a);
            arrayList2.add(strM1197b);
            arrayList3.add(str);
            if (z2) {
                strM62X = C0015d.m62X(strM1197b);
                if (strM1197b.equals(strM62X)) {
                    strM62X = C0015d.m64Z(strM1197b);
                }
                arrayList4.add(new C0129h(strM62X, c0129h));
            } else {
                arrayList4.add(c0129h);
            }
            i4 = i2 + 1;
            i3 = 1;
            z5 = false;
            r14 = r13;
        }
        try {
            if (iM1203h == i3) {
                interfaceC0316c.ArchiveExtract((String) arrayList2.get(0), (C0129h) arrayList.get(0), (String) arrayList3.get(0), "", (C0129h) arrayList4.get(0), r14 == true ? 1 : 0 ? 1 : 0);
            } else {
                interfaceC0316c.ArchiveExtractMulti(arrayList2, arrayList, arrayList3, null, arrayList4, r14 == true ? 1 : 0 ? 1 : 0);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: d */
    public final boolean m838d(C0129h c0129h, int i2) {
        InterfaceC0316c interfaceC0316c = this.f1616a.get();
        if (interfaceC0316c == null) {
            return false;
        }
        try {
            return interfaceC0316c.IsLock(c0129h, i2);
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m839e(C0129h c0129h, int i2) {
        InterfaceC0316c interfaceC0316c = this.f1616a.get();
        if (interfaceC0316c == null) {
            return;
        }
        try {
            if (!c0129h.m480g()) {
                if (c0129h.m484k()) {
                    interfaceC0316c.PluginOpenFile(c0129h, i2);
                    return;
                }
                return;
            }
            String strM65a0 = C0015d.m65a0(c0129h.f1017e);
            StringBuilder sb = new StringBuilder();
            if (C0015d.m53O(c0129h.f1015c, false) && C0358b.m1030a() > 0) {
                sb.append("\\-mmt=");
                sb.append(C0358b.m1030a());
            }
            if (C0070h.m253d().m257e(c0129h.f1015c)) {
                sb.append("\\-p");
                sb.append(C0070h.m253d().m256c(true));
            }
            if (strM65a0.indexOf(47) != -1) {
                sb.append("\\-z");
                sb.append(C0015d.m39A(strM65a0));
            }
            if (m835f(c0129h, false)) {
                i2 |= 1;
            }
            int i3 = i2;
            c0129h.f1016d = C0015d.m93u(c0129h.f1015c);
            interfaceC0316c.ArchiveOpenFile(C0015d.m97y(strM65a0), c0129h, sb.toString(), strM65a0, i3);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: ru.zdevs.zarchiver.c$a */
    public static class a implements InterfaceC0139j {
        public static final Parcelable.Creator<a> CREATOR = new C0519a();

        /* JADX INFO: renamed from: a */
        public final C0129h f1617a;

        /* JADX INFO: renamed from: b */
        public final String f1618b;

        /* JADX INFO: renamed from: c */
        public final String f1619c;

        /* JADX INFO: renamed from: d */
        public final boolean f1620d;

        /* JADX INFO: renamed from: e */
        public byte f1621e;

        /* JADX INFO: renamed from: ru.zdevs.zarchiver.c$a$a, reason: collision with other inner class name */
        public class C0519a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i2) {
                return new a[i2];
            }
        }

        public a(C0129h c0129h, String str, String str2, boolean z2, byte b2) {
            this.f1617a = c0129h;
            this.f1618b = str;
            this.f1619c = str2;
            this.f1620d = z2;
            this.f1621e = b2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // p021g1.InterfaceC0139j
        public final int type() {
            return 1;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.f1617a, i2);
            parcel.writeString(this.f1618b);
            parcel.writeString(this.f1619c);
            parcel.writeByte(this.f1620d ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.f1621e);
        }

        public a(Parcel parcel) {
            this.f1617a = (C0129h) parcel.readParcelable(C0129h.class.getClassLoader());
            this.f1618b = parcel.readString();
            this.f1619c = parcel.readString();
            this.f1620d = parcel.readByte() == 1;
            this.f1621e = parcel.readByte();
        }
    }
}
