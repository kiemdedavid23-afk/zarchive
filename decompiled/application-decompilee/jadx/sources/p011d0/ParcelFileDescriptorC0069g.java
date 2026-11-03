package p011d0;

import android.os.ParcelFileDescriptor;
import java.io.IOException;
import ru.zdevs.zarchiver.archiver.NArc;

/* JADX INFO: renamed from: d0.g */
/* JADX INFO: loaded from: classes.dex */
public final class ParcelFileDescriptorC0069g extends ParcelFileDescriptor {

    /* JADX INFO: renamed from: a */
    public final NArc f489a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC0066d f490b;

    /* JADX INFO: renamed from: c */
    public volatile boolean f491c;

    public ParcelFileDescriptorC0069g(NArc nArc, InterfaceC0066d interfaceC0066d, ParcelFileDescriptor parcelFileDescriptor) {
        super(parcelFileDescriptor);
        this.f489a = nArc;
        this.f490b = interfaceC0066d;
        this.f491c = false;
    }

    @Override // android.os.ParcelFileDescriptor, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.f491c) {
                return;
            }
            this.f491c = true;
            if (this.f489a.f1568c == this) {
                this.f489a.f1568c = null;
            }
            super.close();
            this.f490b.mo250d();
            this.f489a.m819o(this.f490b.mo247a());
        }
    }

    @Override // android.os.ParcelFileDescriptor
    public final int detachFd() {
        if (!this.f490b.mo248b()) {
            throw new IllegalStateException("Detach FD is not supported");
        }
        this.f491c = true;
        if (this.f489a.f1568c == this) {
            this.f489a.f1568c = null;
        }
        return super.detachFd();
    }

    @Override // android.os.ParcelFileDescriptor
    public final long getStatSize() {
        long jOnGetSize = this.f490b.onGetSize();
        if (jOnGetSize > 0) {
            return jOnGetSize;
        }
        return -1L;
    }
}
