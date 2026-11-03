package p060z;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import p004b.C0015d;
import p008c0.C0044b;
import p008c0.C0046d;
import p008c0.C0048f;
import p008c0.C0051i;
import p020g0.C0129h;

/* JADX INFO: renamed from: z.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0449a implements Parcelable {
    public static final Parcelable.Creator<C0449a> CREATOR = new a();

    /* JADX INFO: renamed from: a */
    public final ArrayList<C0046d> f2256a;

    /* JADX INFO: renamed from: b */
    public final C0129h f2257b;

    /* JADX INFO: renamed from: c */
    public boolean f2258c;

    /* JADX INFO: renamed from: z.a$a */
    public class a implements Parcelable.Creator<C0449a> {
        @Override // android.os.Parcelable.Creator
        public final C0449a createFromParcel(Parcel parcel) {
            return new C0449a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0449a[] newArray(int i2) {
            return new C0449a[i2];
        }
    }

    public C0449a(C0044b c0044b, C0129h c0129h, int[] iArr) throws Exception {
        if (iArr.length == 0 || c0044b == null || c0044b.size() < 1 || c0129h == null) {
            throw new Exception("Fill failed");
        }
        this.f2258c = false;
        this.f2257b = new C0129h(c0129h);
        this.f2256a = new ArrayList<>(iArr.length);
        for (int i2 : iArr) {
            this.f2256a.add(c0044b.get(i2));
        }
    }

    /* JADX INFO: renamed from: a */
    public final C0129h m1196a(int i2) {
        C0046d c0046d = this.f2256a.get(i2);
        C0129h c0129h = this.f2257b;
        if (c0129h == null) {
            c0129h = ((C0048f) c0046d).f365k;
        }
        return new C0129h(c0046d.f352a, c0129h, c0046d.f353b);
    }

    /* JADX INFO: renamed from: b */
    public final String m1197b(int i2) {
        return this.f2256a.get(i2).f352a;
    }

    /* JADX INFO: renamed from: c */
    public final C0129h[] m1198c() {
        ArrayList<C0046d> arrayList = this.f2256a;
        int size = arrayList.size();
        C0129h[] c0129hArr = new C0129h[size];
        int i2 = 0;
        C0129h c0129h = this.f2257b;
        if (c0129h != null) {
            while (i2 < size) {
                c0129hArr[i2] = c0129h;
                i2++;
            }
        } else {
            while (i2 < size) {
                c0129hArr[i2] = ((C0048f) arrayList.get(i2)).f365k;
                i2++;
            }
        }
        return c0129hArr;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m1199d(String str) {
        C0129h c0129h;
        if (str != null && (c0129h = this.f2257b) != null && c0129h.m483j() && C0015d.m39A(str).equals(c0129h.f1015c)) {
            String strM97y = C0015d.m97y(str);
            Iterator<C0046d> it = this.f2256a.iterator();
            while (it.hasNext()) {
                if (strM97y.equals(it.next().f352a)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public final boolean m1200e(int i2) {
        return this.f2256a.get(i2).m185f();
    }

    /* JADX INFO: renamed from: f */
    public final boolean m1201f() {
        C0129h c0129h = this.f2257b;
        if (c0129h != null) {
            return c0129h.m482i() || c0129h.m486m();
        }
        Iterator<C0046d> it = this.f2256a.iterator();
        while (it.hasNext()) {
            C0129h c0129h2 = ((C0048f) it.next()).f365k;
            if (c0129h2.m482i() || c0129h2.m486m()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: g */
    public final C0129h m1202g() {
        C0129h c0129h = this.f2257b;
        return c0129h != null ? c0129h : ((C0048f) this.f2256a.get(0)).f365k;
    }

    /* JADX INFO: renamed from: h */
    public final int m1203h() {
        return this.f2256a.size();
    }

    /* JADX INFO: renamed from: i */
    public final String[] m1204i() {
        ArrayList<C0046d> arrayList = this.f2256a;
        String[] strArr = new String[arrayList.size()];
        Iterator<C0046d> it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            strArr[i2] = it.next().f352a;
            i2++;
        }
        return strArr;
    }

    /* JADX INFO: renamed from: j */
    public final ArrayList m1205j() {
        ArrayList<C0046d> arrayList = this.f2256a;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator<C0046d> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(it.next().f352a);
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: k */
    public final ArrayList m1206k(C0129h c0129h) {
        C0129h c0129h2 = this.f2257b;
        if (c0129h2 != null) {
            return c0129h2.equals(c0129h) ? m1205j() : new ArrayList(0);
        }
        ArrayList<C0046d> arrayList = this.f2256a;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (C0046d c0046d : arrayList) {
            if (c0129h.equals(((C0048f) c0046d).f365k)) {
                arrayList2.add(c0046d.f352a);
            }
        }
        return arrayList2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        C0129h c0129h = this.f2257b;
        parcel.writeParcelable(c0129h, i2);
        parcel.writeByte(this.f2258c ? (byte) 1 : (byte) 0);
        ArrayList<C0046d> arrayList = this.f2256a;
        parcel.writeInt(arrayList.size());
        if (c0129h != null) {
            for (C0046d c0046d : arrayList) {
                parcel.writeString(c0046d.f352a);
                parcel.writeString(c0046d.f353b);
                parcel.writeByte(c0046d.m183d());
                if (c0046d.f357f == 28) {
                    parcel.writeLong(0L);
                } else {
                    parcel.writeLong(c0046d.f355d);
                }
            }
            return;
        }
        for (C0046d c0046d2 : arrayList) {
            parcel.writeParcelable(((C0048f) c0046d2).f365k, i2);
            parcel.writeString(c0046d2.f352a);
            parcel.writeByte(c0046d2.m183d());
            if (c0046d2.f357f == 28) {
                parcel.writeLong(0L);
            } else {
                parcel.writeLong(c0046d2.f355d);
            }
        }
    }

    public C0449a(int[] iArr, C0051i c0051i) throws Exception {
        if (iArr.length != 0 && c0051i != null && c0051i.size() >= 1) {
            this.f2258c = false;
            if (iArr.length == 1) {
                C0048f c0048f = c0051i.get(iArr[0]);
                this.f2257b = c0048f.f365k;
                ArrayList<C0046d> arrayList = new ArrayList<>(1);
                this.f2256a = arrayList;
                arrayList.add(c0048f);
                return;
            }
            this.f2257b = null;
            this.f2256a = new ArrayList<>(iArr.length);
            for (int i2 : iArr) {
                this.f2256a.add(c0051i.get(i2));
            }
            return;
        }
        throw new Exception("Fill failed");
    }

    public C0449a(ArrayList<String> arrayList) throws Exception {
        if (arrayList.size() >= 1) {
            this.f2258c = false;
            if (arrayList.size() == 1 && !arrayList.get(0).startsWith("/uri/")) {
                String str = arrayList.get(0);
                this.f2257b = new C0129h(C0015d.m39A(str));
                ArrayList<C0046d> arrayList2 = new ArrayList<>(1);
                this.f2256a = arrayList2;
                arrayList2.add(new C0046d(C0015d.m97y(str), (byte) 0));
                return;
            }
            this.f2257b = null;
            this.f2256a = new ArrayList<>(arrayList.size());
            for (String str2 : arrayList) {
                this.f2256a.add(new C0048f(new C0129h(C0015d.m39A(str2)), C0015d.m97y(str2), null, (byte) 0, 0L, 0L));
            }
            return;
        }
        throw new Exception("Fill failed");
    }

    public C0449a(ArrayList arrayList, int i2) {
        this.f2258c = false;
        this.f2257b = null;
        this.f2256a = new ArrayList<>(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0129h c0129h = (C0129h) it.next();
            C0129h c0129hM479f = c0129h.m479f();
            if (c0129hM479f != null) {
                this.f2256a.add(new C0048f(c0129hM479f, C0015d.m97y(c0129h.f1015c), null, (byte) 0, 0L, 0L));
            }
        }
    }

    public C0449a(Parcel parcel) {
        C0129h c0129h = (C0129h) parcel.readParcelable(C0129h.class.getClassLoader());
        this.f2257b = c0129h;
        int i2 = 0;
        this.f2258c = parcel.readByte() != 0;
        int i3 = parcel.readInt();
        if (c0129h != null) {
            this.f2256a = new ArrayList<>(i3);
            while (i2 < i3) {
                this.f2256a.add(new C0046d(parcel.readString(), parcel.readString(), parcel.readByte(), (byte) 0, 0L, parcel.readLong()));
                i2++;
            }
            return;
        }
        this.f2256a = new ArrayList<>(i3);
        while (i2 < i3) {
            this.f2256a.add(new C0048f((C0129h) parcel.readParcelable(C0129h.class.getClassLoader()), parcel.readString(), null, parcel.readByte(), 0L, parcel.readLong()));
            i2++;
        }
    }
}
