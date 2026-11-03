package p035n0;

import android.os.HandlerThread;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.OsConstants;
import java.io.FileNotFoundException;
import java.io.IOException;
import p033m0.C0181d;
import p033m0.C0182e;

/* JADX INFO: renamed from: n0.c */
/* JADX INFO: loaded from: classes.dex */
public final class ProxyFileDescriptorCallbackC0196c extends ProxyFileDescriptorCallback {

    /* JADX INFO: renamed from: a */
    public final int f1193a;

    /* JADX INFO: renamed from: b */
    public final String f1194b;

    /* JADX INFO: renamed from: c */
    public final long f1195c;

    /* JADX INFO: renamed from: d */
    public C0182e f1196d;

    /* JADX INFO: renamed from: e */
    public C0197d f1197e;

    /* JADX INFO: renamed from: f */
    public long f1198f = 0;

    /* JADX INFO: renamed from: g */
    public HandlerThread f1199g;

    public ProxyFileDescriptorCallbackC0196c(int i2, String str, long j2, boolean z2) {
        this.f1193a = i2;
        this.f1194b = str;
        this.f1195c = j2;
        if (z2) {
            this.f1196d = C0182e.m574a(i2, str);
        } else {
            this.f1197e = C0197d.m603a(i2, str);
        }
        this.f1199g = null;
    }

    public final void finalize() {
        HandlerThread handlerThread = this.f1199g;
        this.f1199g = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final long onGetSize() {
        return this.f1196d != null ? this.f1195c : this.f1198f;
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        C0182e c0182e = this.f1196d;
        if (c0182e == null) {
            throw new ErrnoException("onRead", OsConstants.EBADF);
        }
        long j3 = 0;
        if (this.f1198f > j2) {
            try {
                C0181d.m563d(c0182e);
                this.f1196d = C0182e.m574a(this.f1193a, this.f1194b);
                this.f1198f = 0L;
            } catch (FileNotFoundException e2) {
                throw new ErrnoException(e2.getMessage(), -1);
            }
        }
        long j4 = this.f1198f;
        if (j4 < j2) {
            long j5 = j2 - j4;
            if (j5 > 0) {
                int iMin = (int) Math.min(2048L, j5);
                byte[] bArr2 = new byte[iMin];
                long j6 = j5;
                while (j6 > 0) {
                    try {
                        int i3 = this.f1196d.read(bArr2, 0, (int) Math.min(iMin, j6));
                        if (i3 < 0) {
                            break;
                        }
                        j6 -= (long) i3;
                    } catch (IOException e3) {
                        throw new ErrnoException(e3.getMessage(), OsConstants.EINTR);
                    }
                }
                j3 = j5 - j6;
            }
            long j7 = j4 + j3;
            this.f1198f = j7;
            if (j7 != j2) {
                return 0;
            }
        }
        int i4 = i2;
        while (i4 > 0) {
            try {
                int i5 = i2 - i4;
                int i6 = this.f1196d.read(bArr, i5, i4);
                if (i6 <= 0) {
                    return i5;
                }
                i4 -= i6;
                this.f1198f += (long) i6;
            } catch (IOException unused) {
                throw new ErrnoException("onRead", OsConstants.EIO);
            }
        }
        return i2 - i4;
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final void onRelease() {
        C0181d.m563d(this.f1196d);
        this.f1196d = null;
        C0181d.m563d(this.f1197e);
        this.f1197e = null;
        HandlerThread handlerThread = this.f1199g;
        this.f1199g = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final int onWrite(long j2, int i2, byte[] bArr) throws ErrnoException {
        C0197d c0197d = this.f1197e;
        if (c0197d == null) {
            throw new ErrnoException("onWrite", OsConstants.EBADF);
        }
        if (this.f1198f != j2) {
            c0197d.f1201b = false;
            return 0;
        }
        try {
            c0197d.write(bArr, 0, i2);
            this.f1198f += (long) i2;
            return i2;
        } catch (IOException unused) {
            this.f1197e.f1201b = false;
            throw new ErrnoException("onWrite", OsConstants.EIO);
        }
    }
}
