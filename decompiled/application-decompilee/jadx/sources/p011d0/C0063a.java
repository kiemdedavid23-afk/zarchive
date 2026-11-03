package p011d0;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import java.util.ArrayList;
import p004b.C0015d;
import p051u0.C0385h;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ZApp;

/* JADX INFO: renamed from: d0.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0063a {

    /* JADX INFO: renamed from: a */
    public static SparseArray<b> f447a;

    /* JADX INFO: renamed from: d0.a$b */
    public static class b implements Parcelable {
        public static final Parcelable.Creator<b> CREATOR = new a();

        /* JADX INFO: renamed from: a */
        public final int f450a;

        /* JADX INFO: renamed from: b */
        public final String f451b;

        /* JADX INFO: renamed from: c */
        public final ArrayList<a> f452c;

        /* JADX INFO: renamed from: d */
        public int f453d;

        /* JADX INFO: renamed from: e */
        public int f454e;

        /* JADX INFO: renamed from: d0.a$b$a */
        public class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i2) {
                return new b[i2];
            }
        }

        public b(String str) {
            this(-1, 0, str);
        }

        /* JADX INFO: renamed from: a */
        public final void m236a(int i2, String str) {
            ArrayList<a> arrayList = this.f452c;
            int size = arrayList.size();
            if (size > 100) {
                this.f454e |= 2;
                return;
            }
            if (size > 0) {
                a aVar = arrayList.get(size - 1);
                if (aVar.f448a == i2 && C0385h.m1082f(aVar.f449b, str)) {
                    return;
                }
            }
            arrayList.add(new a(i2, str));
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f450a);
            parcel.writeInt(i2);
            parcel.writeString(this.f451b);
            parcel.writeTypedList(this.f452c);
        }

        public b(int i2, int i3, String str) {
            this.f450a = i2;
            this.f451b = str;
            this.f452c = new ArrayList<>(3);
            this.f453d = (int) (System.currentTimeMillis() / 1000);
            this.f454e = i3;
        }

        public b(Parcel parcel) {
            this.f450a = parcel.readInt();
            this.f454e = parcel.readInt();
            this.f451b = parcel.readString();
            ArrayList<a> arrayListCreateTypedArrayList = parcel.createTypedArrayList(a.CREATOR);
            this.f452c = arrayListCreateTypedArrayList == null ? new ArrayList<>(3) : arrayListCreateTypedArrayList;
        }
    }

    /* JADX INFO: renamed from: a */
    public static synchronized b m231a(int i2) {
        SparseArray<b> sparseArray = f447a;
        if (sparseArray == null) {
            return null;
        }
        b bVar = sparseArray.get(i2);
        if (bVar == null) {
            return null;
        }
        f447a.delete(i2);
        if (bVar.f452c.isEmpty()) {
            return null;
        }
        bVar.f453d = ((int) (System.currentTimeMillis() / 1000)) - bVar.f453d;
        return bVar;
    }

    /* JADX INFO: renamed from: b */
    public static synchronized void m232b(int i2, boolean z2, String str) {
        if (f447a == null) {
            f447a = new SparseArray<>();
        }
        f447a.put(i2, new b(i2, z2 ? 1 : 0, str));
    }

    /* JADX INFO: renamed from: c */
    public static synchronized void m233c(int i2, boolean z2) {
        int i3;
        SparseArray<b> sparseArray = f447a;
        if (sparseArray == null) {
            return;
        }
        b bVar = sparseArray.get(i2);
        if (bVar == null) {
            return;
        }
        if (bVar.f452c.isEmpty()) {
            if (C0015d.m49K(C0015d.f117d[i2], 15) || z2) {
                i3 = R.string.MES_CANCEL_PROCES;
            } else {
                i3 = C0015d.m49K(bVar.f454e, 1) ? R.string.MES_CORRUP_ARCHICHE : R.string.MES_END_WITH_ERROR;
            }
            bVar.m236a(0, ZApp.f1375c == null ? "" : ZApp.f1375c.getResources().getString(i3));
        }
    }

    /* JADX INFO: renamed from: d */
    public static synchronized boolean m234d(int i2, int i3, String str) {
        SparseArray<b> sparseArray = f447a;
        if (sparseArray == null) {
            return false;
        }
        b bVar = sparseArray.get(i2);
        if (bVar == null) {
            return false;
        }
        bVar.m236a(i3, str);
        return true;
    }

    /* JADX INFO: renamed from: e */
    public static String m235e(int i2, String str) {
        ZApp zApp = ZApp.f1375c;
        if (zApp == null) {
            return null;
        }
        if (i2 == 200) {
            return zApp.getString(R.string.MES_ACCESS_DENIED);
        }
        switch (i2) {
            case 0:
                return str;
            case 1:
                return zApp.getString(R.string.ERROR_UNKNOWN_FORMAT);
            case 2:
                return zApp.getString(R.string.ERROR_WRONG_PASSWORD);
            case 3:
                return zApp.getString(R.string.ERROR_IS_NOT_ARCHIVE);
            case 4:
                return zApp.getString(R.string.ERROR_OUT_OF_MEMORY);
            case 5:
                return zApp.getString(R.string.ERROR_CRC_ERROR);
            case 6:
                return zApp.getString(R.string.ERROR_DATA_ERROR);
            case 7:
                return zApp.getString(R.string.ERROR_UNSUPORTED_METOD);
            case 8:
                return zApp.getString(R.string.MES_DONT_SUPPORT_EDIT);
            case 9:
                return zApp.getString(R.string.ERROR_UNEXPECTED_END);
            case 10:
                return zApp.getString(R.string.ERROR_NOT_ENOUGH_DISK_SPACE);
            default:
                return null;
        }
    }

    /* JADX INFO: renamed from: d0.a$a */
    public static class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0513a();

        /* JADX INFO: renamed from: a */
        public final int f448a;

        /* JADX INFO: renamed from: b */
        public final String f449b;

        /* JADX INFO: renamed from: d0.a$a$a, reason: collision with other inner class name */
        public class C0513a implements Parcelable.Creator<a> {
            @Override // android.os.Parcelable.Creator
            public final a createFromParcel(Parcel parcel) {
                return new a(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final a[] newArray(int i2) {
                return new a[i2];
            }
        }

        public a() {
            throw null;
        }

        public a(int i2, String str) {
            this.f448a = i2;
            this.f449b = str;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f448a);
            parcel.writeString(this.f449b);
        }

        public a(Parcel parcel) {
            this.f448a = parcel.readInt();
            this.f449b = parcel.readString();
        }
    }
}
