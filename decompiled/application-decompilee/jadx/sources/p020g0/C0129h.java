package p020g0;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.File;
import p004b.C0015d;
import p033m0.C0185h;
import p051u0.C0385h;
import p055w0.C0412c;
import ru.zdevs.zarchiver.p044io.SAF;

/* JADX INFO: renamed from: g0.h */
/* JADX INFO: loaded from: classes.dex */
public final class C0129h implements Comparable<C0129h>, Parcelable {
    public static final Parcelable.Creator<C0129h> CREATOR = new a();

    /* JADX INFO: renamed from: a */
    public String f1013a;

    /* JADX INFO: renamed from: b */
    public String f1014b;

    /* JADX INFO: renamed from: c */
    public String f1015c;

    /* JADX INFO: renamed from: d */
    public String f1016d;

    /* JADX INFO: renamed from: e */
    public String f1017e;

    /* JADX INFO: renamed from: f */
    public int f1018f;

    /* JADX INFO: renamed from: g0.h$a */
    public class a implements Parcelable.Creator<C0129h> {
        @Override // android.os.Parcelable.Creator
        public final C0129h createFromParcel(Parcel parcel) {
            return new C0129h(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0129h[] newArray(int i2) {
            return new C0129h[i2];
        }
    }

    public C0129h() {
        throw null;
    }

    public C0129h(C0129h c0129h) {
        this.f1013a = c0129h.f1013a;
        this.f1014b = c0129h.f1014b;
        this.f1015c = c0129h.f1015c;
        this.f1016d = c0129h.f1016d;
        this.f1017e = c0129h.f1017e;
        this.f1018f = c0129h.f1018f;
    }

    /* JADX INFO: renamed from: a */
    public final void m474a(String str) {
        if (C0385h.m1081e(str)) {
            return;
        }
        if (m480g()) {
            this.f1017e = C0015d.m78i(this.f1017e, str);
        } else {
            this.f1015c = C0015d.m78i(this.f1015c, str);
        }
        this.f1018f = 0;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C0129h c0129h) {
        return toString().compareTo(c0129h.toString());
    }

    /* JADX INFO: renamed from: c */
    public final boolean m476c() {
        boolean z2;
        boolean z3;
        String[] strArrM856g;
        C0412c.a aVarM1112f;
        this.f1018f = 0;
        if (m480g()) {
            int iLastIndexOf = this.f1017e.lastIndexOf(47);
            if (iLastIndexOf > 0) {
                this.f1017e = this.f1017e.substring(0, iLastIndexOf);
            } else if (iLastIndexOf != 0 || this.f1017e.equals("/")) {
                this.f1017e = "";
            } else {
                this.f1017e = "/";
            }
            if (!this.f1017e.isEmpty()) {
                z2 = false;
            } else {
                if (this.f1015c.startsWith("/uri/")) {
                    return false;
                }
                if (this.f1015c.startsWith("/SAF")) {
                    this.f1013a = "saf";
                } else {
                    this.f1013a = "file";
                }
                z2 = true;
            }
        } else {
            z2 = true;
        }
        if (m486m() && this.f1015c.indexOf(47, 5) == -1) {
            if (this.f1015c.indexOf("%3A", 5) == -1 || (strArrM856g = SAF.m856g(this.f1015c)) == null || (aVarM1112f = C0412c.m1112f(strArrM856g[0])) == null || C0015d.m49K(aVarM1112f.f2157f, 4)) {
                z3 = true;
            } else {
                this.f1015c = aVarM1112f.f2153b;
                if (strArrM856g[1] != null) {
                    this.f1015c += "/" + strArrM856g[1];
                }
                this.f1013a = "file";
                z3 = false;
            }
            if (z3) {
                this.f1015c = "/storage/emulated";
                this.f1013a = "file";
                z2 = false;
            }
        }
        if (z2) {
            int iLastIndexOf2 = this.f1015c.lastIndexOf(47);
            if (iLastIndexOf2 > 0) {
                this.f1015c = this.f1015c.substring(0, iLastIndexOf2);
            } else {
                if (iLastIndexOf2 != 0 || this.f1015c.equals("/")) {
                    return false;
                }
                this.f1015c = "/";
            }
        }
        this.f1016d = null;
        return true;
    }

    /* JADX INFO: renamed from: d */
    public final boolean m477d(C0129h c0129h) {
        return c0129h != null && this.f1013a.equals(c0129h.f1013a) && C0015d.m86n(this.f1015c, c0129h.f1015c) && C0385h.m1082f(this.f1014b, c0129h.f1014b) && C0385h.m1082f(this.f1017e, c0129h.f1017e);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public final String m478e() {
        String[] strArrM856g;
        if (m480g()) {
            if (!C0385h.m1081e(this.f1017e)) {
                return C0015d.m97y(this.f1017e);
            }
        } else if (m486m() && this.f1015c.indexOf(47, 5) == -1 && (strArrM856g = SAF.m856g(this.f1015c)) != null) {
            String str = strArrM856g[1];
            return str != null ? C0015d.m97y(str) : C0015d.m97y(strArrM856g[0]);
        }
        String strM97y = C0015d.m97y(this.f1015c);
        String str2 = C0185h.f1157a;
        return (strM97y.isEmpty() || strM97y.charAt(0) != 8234) ? strM97y : strM97y.substring(1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0129h) {
            return m477d((C0129h) obj);
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public final C0129h m479f() {
        C0129h c0129h = new C0129h(this);
        if (c0129h.m476c()) {
            return c0129h;
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    public final boolean m480g() {
        return "arch".equals(this.f1013a) || "rarch".equals(this.f1013a);
    }

    /* JADX INFO: renamed from: h */
    public final boolean m481h() {
        return "rarch".equals(this.f1013a);
    }

    public final int hashCode() {
        if (this.f1018f == 0) {
            int iHashCode = this.f1013a.hashCode();
            int iHashCode2 = this.f1017e.hashCode() + (this.f1015c.hashCode() * 31);
            String str = this.f1014b;
            this.f1018f = ((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + iHashCode;
        }
        return this.f1018f;
    }

    /* JADX INFO: renamed from: i */
    public final boolean m482i() {
        return this.f1015c.startsWith("/uri/");
    }

    /* JADX INFO: renamed from: j */
    public final boolean m483j() {
        return "file".equals(this.f1013a) || "root".equals(this.f1013a);
    }

    /* JADX INFO: renamed from: k */
    public final boolean m484k() {
        return "plugin".equals(this.f1013a) || "plglocal".equals(this.f1013a);
    }

    /* JADX INFO: renamed from: l */
    public final boolean m485l() {
        return "root".equals(this.f1013a);
    }

    /* JADX INFO: renamed from: m */
    public final boolean m486m() {
        return "saf".equals(this.f1013a);
    }

    /* JADX INFO: renamed from: n */
    public final boolean m487n() {
        return m486m() && this.f1015c.endsWith("%2F");
    }

    /* JADX INFO: renamed from: o */
    public final boolean m488o() {
        return "file".equals(this.f1013a) || "root".equals(this.f1013a) || "saf".equals(this.f1013a);
    }

    /* JADX INFO: renamed from: p */
    public final void m489p(String str) {
        this.f1015c = str;
        this.f1018f = 0;
    }

    /* JADX INFO: renamed from: q */
    public final void m490q(String str) {
        this.f1013a = str;
        this.f1018f = 0;
    }

    /* JADX INFO: renamed from: r */
    public final String m491r() {
        if (m486m()) {
            return this.f1015c;
        }
        return !m483j() ? "" : this.f1015c;
    }

    /* JADX INFO: renamed from: s */
    public final Uri m492s() {
        return Uri.fromParts(this.f1013a, this.f1015c, this.f1017e);
    }

    /* JADX INFO: renamed from: t */
    public final String m493t() {
        if (m480g()) {
            return C0015d.m78i(this.f1015c, this.f1017e);
        }
        return m486m() ? this.f1015c.replace("/SAF", "/storage").replace("%3A", "/").replace("%2F", "/") : this.f1015c;
    }

    public final File toFile() {
        if (m483j() && C0385h.m1081e(this.f1017e)) {
            return new File(this.f1015c);
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1013a);
        sb.append(":/");
        if (!C0385h.m1081e(this.f1014b)) {
            sb.append(this.f1014b);
        }
        if (this.f1015c.isEmpty() || this.f1015c.charAt(0) != '/') {
            sb.append('/');
        }
        sb.append(this.f1015c);
        if (!C0385h.m1081e(this.f1017e)) {
            sb.append('#');
            sb.append(this.f1017e);
        }
        if (!C0385h.m1081e(this.f1016d)) {
            sb.append('$');
            sb.append(this.f1016d);
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f1013a);
        parcel.writeString(this.f1014b);
        parcel.writeString(this.f1015c);
        parcel.writeString(this.f1016d);
        parcel.writeString(this.f1017e);
    }

    public C0129h(Uri uri) {
        this.f1013a = uri.getScheme();
        this.f1014b = uri.getHost();
        this.f1015c = uri.getSchemeSpecificPart();
        this.f1016d = null;
        String fragment = uri.getFragment();
        this.f1017e = fragment;
        if (fragment == null) {
            this.f1017e = "";
        }
        this.f1018f = 0;
    }

    public C0129h(String str, C0129h c0129h) {
        this.f1013a = c0129h.f1013a;
        this.f1014b = c0129h.f1014b;
        if (c0129h.m480g()) {
            this.f1015c = c0129h.f1015c;
            this.f1017e = C0015d.m78i(c0129h.f1017e, str);
        } else if (c0129h.m487n()) {
            this.f1015c = c0129h.f1015c + str;
            this.f1017e = c0129h.f1017e;
        } else {
            this.f1015c = C0015d.m78i(c0129h.f1015c, str);
            this.f1017e = c0129h.f1017e;
        }
        this.f1018f = 0;
    }

    public C0129h(String str, C0129h c0129h, String str2) {
        this(str, c0129h);
        this.f1016d = str2;
    }

    public C0129h(String str) {
        if (str.startsWith("/SAF")) {
            this.f1013a = "saf";
        } else {
            this.f1013a = "file";
        }
        this.f1015c = str;
        this.f1017e = "";
        this.f1014b = null;
        this.f1016d = null;
        this.f1018f = 0;
    }

    public C0129h(String str, String str2) {
        this.f1013a = str;
        this.f1015c = str2;
        this.f1017e = "";
        this.f1014b = null;
        this.f1016d = null;
        this.f1018f = 0;
    }

    public C0129h(String str, String str2, String str3) {
        this.f1013a = str;
        this.f1015c = str2;
        this.f1017e = str3;
        this.f1014b = null;
        this.f1016d = null;
        this.f1018f = 0;
    }

    public C0129h(String str, String str2, String str3, String str4) {
        this.f1013a = str;
        this.f1015c = str2;
        this.f1017e = str3;
        this.f1014b = str4;
        this.f1016d = null;
        this.f1018f = 0;
    }

    public C0129h(Parcel parcel) {
        this.f1013a = parcel.readString();
        this.f1014b = parcel.readString();
        this.f1015c = parcel.readString();
        this.f1016d = parcel.readString();
        this.f1017e = parcel.readString();
        this.f1018f = 0;
    }
}
