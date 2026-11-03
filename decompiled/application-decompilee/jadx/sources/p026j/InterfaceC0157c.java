package p026j;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: j.c */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0157c extends IInterface {

    /* JADX INFO: renamed from: j.c$a */
    public static abstract class a extends Binder implements InterfaceC0157c {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int f1060a = 0;

        /* JADX INFO: renamed from: j.c$a$a, reason: collision with other inner class name */
        public static class C0517a implements InterfaceC0157c {

            /* JADX INFO: renamed from: a */
            public final IBinder f1061a;

            public C0517a(IBinder iBinder) {
                this.f1061a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1061a;
            }

            @Override // p026j.InterfaceC0157c
            /* JADX INFO: renamed from: d */
            public final void mo525d() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
                    parcelObtain.writeInt(1);
                    this.f1061a.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p026j.InterfaceC0157c
            /* JADX INFO: renamed from: e */
            public final boolean mo526e() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
                    this.f1061a.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p026j.InterfaceC0157c
            /* JADX INFO: renamed from: h */
            public final InterfaceC0155a mo527h(String[] strArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
                    parcelObtain.writeStringArray(strArr);
                    InterfaceC0155a c0516a = null;
                    parcelObtain.writeStringArray(null);
                    parcelObtain.writeString(null);
                    this.f1061a.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    IBinder strongBinder = parcelObtain2.readStrongBinder();
                    int i2 = InterfaceC0155a.a.f1058a;
                    if (strongBinder != null) {
                        IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("moe.shizuku.server.IRemoteProcess");
                        c0516a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0155a)) ? new InterfaceC0155a.a.C0516a(strongBinder) : (InterfaceC0155a) iInterfaceQueryLocalInterface;
                    }
                    return c0516a;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    void mo525d();

    /* JADX INFO: renamed from: e */
    boolean mo526e();

    /* JADX INFO: renamed from: h */
    InterfaceC0155a mo527h(String[] strArr);
}
