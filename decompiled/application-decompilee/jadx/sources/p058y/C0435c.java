package p058y;

import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import java.io.InputStream;
import java.io.OutputStream;
import p026j.InterfaceC0155a;

/* JADX INFO: renamed from: y.c */
/* JADX INFO: loaded from: classes.dex */
public final class C0435c extends Process implements IBinder.DeathRecipient {

    /* JADX INFO: renamed from: a */
    public InterfaceC0155a f2220a;

    /* JADX INFO: renamed from: b */
    public ParcelFileDescriptor.AutoCloseOutputStream f2221b;

    /* JADX INFO: renamed from: c */
    public ParcelFileDescriptor.AutoCloseInputStream f2222c;

    public C0435c(InterfaceC0155a interfaceC0155a) {
        this.f2220a = interfaceC0155a;
        try {
            interfaceC0155a.asBinder().linkToDeath(this, 0);
        } catch (RemoteException e2) {
            Log.e("ShizukuRemoteProcess", "linkToDeath", e2);
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
        this.f2220a = null;
        Log.v("ShizukuRemoteProcess", "remote process is dead");
    }

    @Override // java.lang.Process
    public final void destroy() {
        try {
            this.f2220a.destroy();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.lang.Process
    public final int exitValue() {
        try {
            return this.f2220a.mo523f();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.lang.Process
    public final InputStream getErrorStream() {
        try {
            return new ParcelFileDescriptor.AutoCloseInputStream(this.f2220a.mo520a());
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // java.lang.Process
    public final InputStream getInputStream() {
        if (this.f2222c == null) {
            try {
                this.f2222c = new ParcelFileDescriptor.AutoCloseInputStream(this.f2220a.mo522c());
            } catch (RemoteException e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.f2222c;
    }

    @Override // java.lang.Process
    public final OutputStream getOutputStream() {
        if (this.f2221b == null) {
            try {
                this.f2221b = new ParcelFileDescriptor.AutoCloseOutputStream(this.f2220a.mo521b());
            } catch (RemoteException e2) {
                throw new RuntimeException(e2);
            }
        }
        return this.f2221b;
    }

    @Override // java.lang.Process
    public final int waitFor() {
        try {
            return this.f2220a.mo524g();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }
}
