package p011d0;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: d0.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0065c implements Parcelable {
    public static final Parcelable.Creator<C0065c> CREATOR = new a();

    /* JADX INFO: renamed from: a */
    public String f466a;

    /* JADX INFO: renamed from: b */
    public long f467b;

    /* JADX INFO: renamed from: c */
    public int f468c;

    /* JADX INFO: renamed from: d */
    public String f469d;

    /* JADX INFO: renamed from: e */
    public long f470e;

    /* JADX INFO: renamed from: f */
    public int f471f;

    /* JADX INFO: renamed from: d0.c$a */
    public class a implements Parcelable.Creator<C0065c> {
        @Override // android.os.Parcelable.Creator
        public final C0065c createFromParcel(Parcel parcel) {
            return new C0065c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final C0065c[] newArray(int i2) {
            return new C0065c[i2];
        }
    }

    public C0065c() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f466a);
        parcel.writeLong(this.f467b);
        parcel.writeInt(this.f468c);
        parcel.writeString(this.f469d);
        parcel.writeLong(this.f470e);
        parcel.writeInt(this.f471f);
    }

    public C0065c(Parcel parcel) {
        this.f466a = parcel.readString();
        this.f467b = parcel.readLong();
        this.f468c = parcel.readInt();
        this.f469d = parcel.readString();
        this.f470e = parcel.readLong();
        this.f471f = parcel.readInt();
    }
}
