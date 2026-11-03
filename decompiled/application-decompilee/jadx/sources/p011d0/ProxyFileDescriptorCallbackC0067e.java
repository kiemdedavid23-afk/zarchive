package p011d0;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.InterruptedIOException;
import p004b.C0015d;
import p033m0.C0181d;
import p051u0.C0385h;
import p053v0.AbstractCallableC0395c;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: d0.e */
/* JADX INFO: loaded from: classes.dex */
public final class ProxyFileDescriptorCallbackC0067e extends ProxyFileDescriptorCallback implements InterfaceC0066d, Runnable {

    /* JADX INFO: renamed from: a */
    public volatile byte[] f472a;

    /* JADX INFO: renamed from: f */
    public final long[] f477f;

    /* JADX INFO: renamed from: g */
    public final NArc f478g;

    /* JADX INFO: renamed from: h */
    public final ParcelFileDescriptor f479h;

    /* JADX INFO: renamed from: b */
    public int f473b = 0;

    /* JADX INFO: renamed from: c */
    public FileDescriptor f474c = null;

    /* JADX INFO: renamed from: d */
    public String f475d = null;

    /* JADX INFO: renamed from: e */
    public long f476e = 0;

    /* JADX INFO: renamed from: i */
    public boolean f480i = false;

    /* JADX INFO: renamed from: j */
    public HandlerThread f481j = null;

    public ProxyFileDescriptorCallbackC0067e(long[] jArr, int i2, NArc nArc) {
        this.f477f = jArr;
        this.f472a = new byte[i2];
        this.f478g = nArc;
        this.f479h = ParcelFileDescriptor.adoptFd((int) jArr[0]);
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: a */
    public final long mo247a() {
        return this.f477f[2];
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: b */
    public final boolean mo248b() {
        return this.f478g != null;
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: c */
    public final boolean mo249c() {
        return !this.f480i;
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: d */
    public final void mo250d() {
        if (this.f475d != null) {
            AbstractCallableC0395c.m1097h(this);
        } else {
            onRelease();
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m251e(int i2) throws ErrnoException {
        int i3;
        if (this.f480i) {
            return;
        }
        while (this.f473b < i2) {
            try {
                i3 = Os.read(this.f479h.getFileDescriptor(), this.f472a, this.f473b, 2048);
            } catch (InterruptedIOException unused) {
                i3 = -1;
            }
            if (i3 <= 0) {
                if (this.f480i) {
                    return;
                }
                this.f480i = true;
                C0181d.m562c(this.f479h);
                try {
                    Thread.sleep(50L);
                } catch (InterruptedException unused2) {
                }
                C0181d.m563d(this.f478g);
                return;
            }
            this.f473b += i3;
        }
    }

    /* JADX INFO: renamed from: f */
    public final boolean m252f() throws ErrnoException {
        if (this.f477f[1] > 0 && this.f472a.length >= this.f477f[1]) {
            return false;
        }
        if (this.f474c == null) {
            if (!C0385h.m1081e(null)) {
                C0181d.m566g();
                C0015d.m64Z(null);
                throw null;
            }
            String strM78i = C0015d.m78i(C0181d.m566g(), "~" + System.currentTimeMillis() + ".tmp");
            this.f475d = strM78i;
            FileDescriptor fileDescriptorOpen = Os.open(strM78i, OsConstants.O_RDWR | OsConstants.O_CREAT, 0);
            this.f474c = fileDescriptorOpen;
            if (fileDescriptorOpen == null) {
                return false;
            }
        }
        Os.lseek(this.f474c, 0L, OsConstants.SEEK_END);
        try {
            Os.write(this.f474c, this.f472a, 0, this.f473b);
            this.f476e += (long) this.f473b;
            this.f473b = 0;
            return true;
        } catch (InterruptedIOException unused) {
            return false;
        }
    }

    public final void finalize() {
        HandlerThread handlerThread = this.f481j;
        this.f481j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        try {
            String str = this.f475d;
            if (str != null) {
                Os.remove(str);
                this.f475d = null;
            }
        } catch (ErrnoException unused) {
        }
    }

    @Override // p011d0.InterfaceC0066d
    public final Handler getHandler() {
        HandlerThread handlerThread = new HandlerThread("NFileDescriptorBufferedCallback");
        this.f481j = handlerThread;
        handlerThread.start();
        return new Handler(this.f481j.getLooper());
    }

    @Override // p011d0.InterfaceC0066d
    public final boolean isOpen() {
        return (this.f474c == null && this.f472a == null) ? false : true;
    }

    @Override // android.os.ProxyFileDescriptorCallback, p011d0.InterfaceC0066d
    public final long onGetSize() {
        long j2 = this.f477f[1];
        return j2 > 0 ? j2 : this.f472a.length;
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        int iMin;
        long j3 = this.f476e;
        if (j2 < j3) {
            iMin = Math.min(i2, (int) (j3 - j2));
            Os.lseek(this.f474c, j2, OsConstants.SEEK_SET);
            try {
                Os.read(this.f474c, bArr, 0, iMin);
                if (iMin == i2) {
                    return iMin;
                }
            } catch (InterruptedIOException unused) {
                return 0;
            }
        } else {
            iMin = 0;
        }
        if (this.f472a == null) {
            return iMin;
        }
        while (((long) i2) + j2 > this.f476e + ((long) this.f472a.length)) {
            m251e(this.f472a.length);
            int i3 = this.f473b;
            if (i3 <= 0) {
                return iMin;
            }
            long j4 = ((long) iMin) + j2;
            long j5 = this.f476e;
            if (j4 >= j5 && j4 < ((long) i3) + j5) {
                int i4 = (int) (j4 - j5);
                System.arraycopy(this.f472a, i4, bArr, iMin, this.f473b - i4);
                iMin = (this.f473b - i4) + iMin;
            }
            if (!m252f()) {
                return iMin;
            }
        }
        long j6 = this.f476e;
        long j7 = j2 + ((long) iMin);
        if (j6 <= j7) {
            int i5 = (int) (j7 - j6);
            int iMin2 = Math.min(this.f472a.length - i5, i2 - iMin);
            if (iMin2 == 0) {
                return iMin;
            }
            int i6 = i5 + iMin2;
            if (i6 > this.f473b) {
                m251e(i6);
            }
            int i7 = this.f473b;
            if (i6 > i7) {
                iMin2 = i7 - i5;
            }
            if (iMin2 < 0) {
                return 0;
            }
            System.arraycopy(this.f472a, i5, bArr, iMin, iMin2);
            iMin += iMin2;
            if (this.f480i && m252f()) {
                this.f472a = null;
            }
        }
        return iMin;
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final void onRelease() {
        this.f472a = null;
        if (!this.f480i) {
            this.f480i = true;
            C0181d.m562c(this.f479h);
            try {
                Thread.sleep(50L);
            } catch (InterruptedException unused) {
            }
            C0181d.m563d(this.f478g);
        }
        try {
            FileDescriptor fileDescriptor = this.f474c;
            if (fileDescriptor != null) {
                Os.close(fileDescriptor);
                this.f474c = null;
            }
        } catch (ErrnoException unused2) {
        }
        HandlerThread handlerThread = this.f481j;
        this.f481j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
        try {
            String str = this.f475d;
            if (str != null) {
                Os.remove(str);
                this.f475d = null;
            }
        } catch (ErrnoException unused3) {
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        onRelease();
    }
}
