package p011d0;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: d0.i */
/* JADX INFO: loaded from: classes.dex */
public final class C0071i implements Parcelable {
    public static final Parcelable.Creator<C0071i> CREATOR = new a();

    /* JADX INFO: renamed from: a */
    public final String f496a;

    /* JADX INFO: renamed from: b */
    public String f497b;

    /* JADX INFO: renamed from: c */
    public String f498c;

    /* JADX INFO: renamed from: d */
    public int f499d;

    /* JADX INFO: renamed from: e */
    public long f500e;

    /* JADX INFO: renamed from: f */
    public int f501f;

    /* JADX INFO: renamed from: d0.i$a */
    public class a implements Parcelable.Creator<C0071i> {
        @Override // android.os.Parcelable.Creator
        public final C0071i createFromParcel(Parcel parcel) {
            return new C0071i(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0071i[] newArray(int i2) {
            return new C0071i[i2];
        }
    }

    public C0071i(String str) {
        this.f496a = str;
        this.f498c = null;
        this.f497b = null;
        this.f501f = 0;
        this.f499d = 0;
        this.f500e = 0L;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f496a);
        parcel.writeString(this.f497b);
        parcel.writeString(this.f498c);
        parcel.writeInt(this.f499d);
        parcel.writeLong(this.f500e);
        parcel.writeInt(this.f501f);
    }

    public C0071i(Parcel parcel) {
        this.f496a = parcel.readString();
        this.f497b = parcel.readString();
        this.f498c = parcel.readString();
        this.f499d = parcel.readInt();
        this.f500e = parcel.readLong();
        this.f501f = parcel.readInt();
    }
}
