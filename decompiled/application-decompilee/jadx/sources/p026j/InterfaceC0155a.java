package p026j;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* JADX INFO: renamed from: j.a */
/* JADX INFO: loaded from: classes.dex */
public interface InterfaceC0155a extends IInterface {

    /* JADX INFO: renamed from: j.a$a */
    public static abstract class a extends Binder implements InterfaceC0155a {

        /* JADX INFO: renamed from: a */
        public static final /* synthetic */ int f1058a = 0;

        /* JADX INFO: renamed from: j.a$a$a, reason: collision with other inner class name */
        public static class C0516a implements InterfaceC0155a {

            /* JADX INFO: renamed from: a */
            public final IBinder f1059a;

            public C0516a(IBinder iBinder) {
                this.f1059a = iBinder;
            }

            @Override // p026j.InterfaceC0155a
            /* JADX INFO: renamed from: a */
            public final ParcelFileDescriptor mo520a() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                    this.f1059a.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) (parcelObtain2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcelObtain2) : null);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1059a;
            }

            @Override // p026j.InterfaceC0155a
            /* JADX INFO: renamed from: b */
            public final ParcelFileDescriptor mo521b() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                    this.f1059a.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) (parcelObtain2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcelObtain2) : null);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p026j.InterfaceC0155a
            /* JADX INFO: renamed from: c */
            public final ParcelFileDescriptor mo522c() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                    this.f1059a.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return (ParcelFileDescriptor) (parcelObtain2.readInt() != 0 ? ParcelFileDescriptor.CREATOR.createFromParcel(parcelObtain2) : null);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p026j.InterfaceC0155a
            public final void destroy() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                    this.f1059a.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p026j.InterfaceC0155a
            /* JADX INFO: renamed from: f */
            public final int mo523f() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                    this.f1059a.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // p026j.InterfaceC0155a
            /* JADX INFO: renamed from: g */
            public final int mo524g() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("moe.shizuku.server.IRemoteProcess");
                    this.f1059a.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    ParcelFileDescriptor mo520a();

    /* JADX INFO: renamed from: b */
    ParcelFileDescriptor mo521b();

    /* JADX INFO: renamed from: c */
    ParcelFileDescriptor mo522c();

    void destroy();

    /* JADX INFO: renamed from: f */
    int mo523f();

    /* JADX INFO: renamed from: g */
    int mo524g();
}
