package moe.shizuku.api;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class BinderContainer implements Parcelable {
    public static final Parcelable.Creator<BinderContainer> CREATOR = new C0186a();

    /* JADX INFO: renamed from: a */
    public final IBinder f1159a;

    /* JADX INFO: renamed from: moe.shizuku.api.BinderContainer$a */
    public class C0186a implements Parcelable.Creator<BinderContainer> {
        @Override // android.os.Parcelable.Creator
        public final BinderContainer createFromParcel(Parcel parcel) {
            return new BinderContainer(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final BinderContainer[] newArray(int i2) {
            return new BinderContainer[i2];
        }
    }

    public BinderContainer(IBinder iBinder) {
        this.f1159a = iBinder;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.f1159a);
    }

    public BinderContainer(Parcel parcel) {
        this.f1159a = parcel.readStrongBinder();
    }
}
