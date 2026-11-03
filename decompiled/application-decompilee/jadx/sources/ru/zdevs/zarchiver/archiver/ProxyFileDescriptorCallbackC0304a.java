package ru.zdevs.zarchiver.archiver;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.ParcelFileDescriptor;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InterruptedIOException;
import p011d0.InterfaceC0066d;
import p033m0.C0181d;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.archiver.a */
/* JADX INFO: loaded from: classes.dex */
public final class ProxyFileDescriptorCallbackC0304a extends ProxyFileDescriptorCallback implements InterfaceC0066d {

    /* JADX INFO: renamed from: a */
    public final NArc f1570a;

    /* JADX INFO: renamed from: b */
    public final int f1571b;

    /* JADX INFO: renamed from: c */
    public final String f1572c;

    /* JADX INFO: renamed from: d */
    public long[] f1573d;

    /* JADX INFO: renamed from: e */
    public final boolean f1574e;

    /* JADX INFO: renamed from: g */
    public ParcelFileDescriptor f1576g;

    /* JADX INFO: renamed from: f */
    public boolean f1575f = false;

    /* JADX INFO: renamed from: h */
    public long f1577h = 0;

    /* JADX INFO: renamed from: i */
    public boolean f1578i = false;

    /* JADX INFO: renamed from: j */
    public HandlerThread f1579j = null;

    public ProxyFileDescriptorCallbackC0304a(NArc nArc, int i2, String str, long[] jArr, boolean z2) {
        this.f1570a = nArc;
        this.f1571b = i2;
        this.f1572c = str;
        this.f1573d = jArr;
        this.f1574e = z2;
        this.f1576g = ParcelFileDescriptor.adoptFd((int) jArr[0]);
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: a */
    public final long mo247a() {
        return this.f1573d[2];
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: b */
    public final boolean mo248b() {
        if (this.f1578i) {
            return false;
        }
        if (this.f1574e) {
            this.f1575f = true;
        }
        return this.f1575f;
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: c */
    public final boolean mo249c() {
        return !this.f1578i;
    }

    @Override // p011d0.InterfaceC0066d
    /* JADX INFO: renamed from: d */
    public final void mo250d() {
        onRelease();
    }

    public final void finalize() {
        HandlerThread handlerThread = this.f1579j;
        this.f1579j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }

    @Override // p011d0.InterfaceC0066d
    public final Handler getHandler() {
        HandlerThread handlerThread = new HandlerThread("NFileDescriptorCallback");
        this.f1579j = handlerThread;
        handlerThread.start();
        return new Handler(this.f1579j.getLooper());
    }

    @Override // p011d0.InterfaceC0066d
    public final boolean isOpen() {
        return !this.f1578i;
    }

    @Override // android.os.ProxyFileDescriptorCallback, p011d0.InterfaceC0066d
    public final long onGetSize() {
        return this.f1573d[1];
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final int onRead(long j2, int i2, byte[] bArr) throws ErrnoException {
        if (this.f1578i) {
            return 0;
        }
        long j3 = 0;
        if (this.f1577h > j2) {
            long[] jArrM816i = null;
            try {
                ParcelFileDescriptor parcelFileDescriptor = this.f1576g;
                if (parcelFileDescriptor != null) {
                    parcelFileDescriptor.close();
                }
                this.f1576g = null;
            } catch (IOException unused) {
            }
            try {
                jArrM816i = this.f1570a.m816i(this.f1571b, this.f1572c);
            } catch (NArc.NArcPasswordException unused2) {
            }
            if (jArrM816i == null) {
                this.f1577h = 2147483647L;
                throw new ErrnoException("recreateStream", OsConstants.EIO);
            }
            this.f1577h = 0L;
            this.f1573d = jArrM816i;
            this.f1576g = ParcelFileDescriptor.adoptFd((int) jArrM816i[0]);
        }
        long j4 = this.f1577h;
        if (j4 < j2) {
            long j5 = j2 - j4;
            if (j5 > 0) {
                FileDescriptor fileDescriptor = this.f1576g.getFileDescriptor();
                int iMin = (int) Math.min(2048L, j5);
                byte[] bArr2 = new byte[iMin];
                long j6 = j5;
                while (j6 > 0) {
                    try {
                        int i3 = Os.read(fileDescriptor, bArr2, 0, (int) Math.min(iMin, j6));
                        if (i3 < 0) {
                            break;
                        }
                        j6 -= (long) i3;
                    } catch (InterruptedIOException e2) {
                        throw new ErrnoException(e2.getMessage(), OsConstants.EINTR);
                    }
                }
                j3 = j5 - j6;
            }
            long j7 = j4 + j3;
            this.f1577h = j7;
            if (j7 != j2) {
                return 0;
            }
        }
        int i4 = i2;
        while (i4 > 0) {
            try {
                int i5 = i2 - i4;
                int i6 = Os.read(this.f1576g.getFileDescriptor(), bArr, i5, i4);
                if (i6 <= 0) {
                    return i5;
                }
                i4 -= i6;
                this.f1577h += (long) i6;
            } catch (IOException unused3) {
                throw new ErrnoException("onRead", OsConstants.EIO);
            }
        }
        return i2 - i4;
    }

    @Override // android.os.ProxyFileDescriptorCallback
    public final void onRelease() {
        if (this.f1578i) {
            return;
        }
        this.f1578i = true;
        C0181d.m562c(this.f1576g);
        this.f1570a.m808a();
        if (this.f1575f) {
            this.f1570a.m819o(this.f1573d[2]);
        }
        if (this.f1574e) {
            try {
                Thread.sleep(50L);
            } catch (InterruptedException unused) {
            }
            C0181d.m563d(this.f1570a);
        }
        HandlerThread handlerThread = this.f1579j;
        this.f1579j = null;
        if (handlerThread != null) {
            handlerThread.quitSafely();
        }
    }
}
