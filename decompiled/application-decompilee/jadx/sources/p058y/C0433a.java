package p058y;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.util.Log;
import java.util.ArrayList;
import java.util.Objects;
import p026j.AbstractBinderC0156b;
import p026j.InterfaceC0157c;

/* JADX INFO: renamed from: y.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0433a {

    /* JADX INFO: renamed from: a */
    public static IBinder f2206a = null;

    /* JADX INFO: renamed from: b */
    public static InterfaceC0157c f2207b = null;

    /* JADX INFO: renamed from: c */
    public static boolean f2208c = false;

    /* JADX INFO: renamed from: d */
    public static boolean f2209d = false;

    /* JADX INFO: renamed from: e */
    public static final a f2210e = new a();

    /* JADX INFO: renamed from: f */
    public static final b f2211f = new b();

    /* JADX INFO: renamed from: g */
    public static final ArrayList f2212g = new ArrayList();

    /* JADX INFO: renamed from: h */
    public static final ArrayList f2213h = new ArrayList();

    /* JADX INFO: renamed from: i */
    public static final ArrayList f2214i = new ArrayList();

    /* JADX INFO: renamed from: j */
    public static final Handler f2215j = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: y.a$a */
    public class a extends AbstractBinderC0156b {
    }

    /* JADX INFO: renamed from: y.a$b */
    public class b implements IBinder.DeathRecipient {
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            C0433a.m1156d(null, null);
        }
    }

    /* JADX INFO: renamed from: y.a$c */
    public class c implements Runnable {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ d f2216a;

        public c(d dVar) {
            this.f2216a = dVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            ((f) this.f2216a.f2217a).m1159a();
        }
    }

    /* JADX INFO: renamed from: y.a$d */
    public static class d<T> {

        /* JADX INFO: renamed from: a */
        public final T f2217a;

        /* JADX INFO: renamed from: b */
        public final Handler f2218b;

        public d() {
            throw null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d(Object obj) {
            this.f2217a = obj;
            this.f2218b = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return Objects.equals(this.f2217a, dVar.f2217a) && Objects.equals(this.f2218b, dVar.f2218b);
        }

        public final int hashCode() {
            return Objects.hash(this.f2217a, this.f2218b);
        }
    }

    /* JADX INFO: renamed from: y.a$e */
    public interface e {
        /* JADX INFO: renamed from: a */
        void m1158a();
    }

    /* JADX INFO: renamed from: y.a$f */
    public interface f {
        /* JADX INFO: renamed from: a */
        void m1159a();
    }

    /* JADX INFO: renamed from: y.a$g */
    public interface g {
    }

    /* JADX INFO: renamed from: a */
    public static void m1153a(g gVar) {
        synchronized (f2212g) {
            f2214i.add(new d(gVar));
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1154b(IBinder iBinder, String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            a aVar = f2210e;
            aVar.getClass();
            parcelObtain.writeStrongBinder(aVar);
            parcelObtain.writeString(str);
            boolean zTransact = iBinder.transact(14, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    /* JADX INFO: renamed from: c */
    public static boolean m1155c(IBinder iBinder, String str) {
        Bundle bundle = new Bundle();
        bundle.putInt("shizuku:attach-api-version", 13);
        bundle.putString("shizuku:attach-package-name", str);
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            a aVar = f2210e;
            aVar.getClass();
            parcelObtain.writeStrongBinder(aVar);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            boolean zTransact = iBinder.transact(18, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return zTransact;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m1156d(IBinder iBinder, String str) {
        IBinder iBinder2 = f2206a;
        if (iBinder2 == iBinder) {
            return;
        }
        if (iBinder == null) {
            f2206a = null;
            f2207b = null;
            synchronized (f2212g) {
                for (d dVar : f2213h) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        ((e) dVar.f2217a).m1158a();
                    } else {
                        f2215j.post(new RunnableC0434b(dVar));
                    }
                }
            }
            return;
        }
        if (iBinder2 != null) {
            iBinder2.unlinkToDeath(f2211f, 0);
        }
        f2206a = iBinder;
        int i2 = InterfaceC0157c.a.f1060a;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("moe.shizuku.server.IShizukuService");
        f2207b = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0157c)) ? new InterfaceC0157c.a.C0517a(iBinder) : (InterfaceC0157c) iInterfaceQueryLocalInterface;
        try {
            f2206a.linkToDeath(f2211f, 0);
        } catch (Throwable unused) {
            Log.i("ShizukuApplication", "attachApplication");
        }
        try {
            if (!m1155c(f2206a, str) && !m1154b(f2206a, str)) {
                f2209d = true;
            }
            Log.i("ShizukuApplication", "attachApplication");
        } catch (Throwable th) {
            Log.w("ShizukuApplication", Log.getStackTraceString(th));
        }
        if (f2209d) {
            m1157e();
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m1157e() {
        ArrayList<d> arrayList = f2212g;
        synchronized (arrayList) {
            for (d dVar : arrayList) {
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    ((f) dVar.f2217a).m1159a();
                } else {
                    f2215j.post(new c(dVar));
                }
            }
        }
    }
}
