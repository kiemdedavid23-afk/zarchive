package com.davemorrissey.labs.subscaleview.decoder;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p019g.C0118a;
import p019g.C0121d;
import p022h.InterfaceC0143d;
import p033m0.C0181d;

/* JADX INFO: loaded from: classes.dex */
public class SkiaPooledImageRegionDecoder implements InterfaceC0143d {

    /* JADX INFO: renamed from: c */
    public final Bitmap.Config f397c;

    /* JADX INFO: renamed from: d */
    public Context f398d;

    /* JADX INFO: renamed from: e */
    public C0118a f399e;

    /* JADX INFO: renamed from: a */
    public C0055a f395a = new C0055a();

    /* JADX INFO: renamed from: b */
    public final ReentrantReadWriteLock f396b = new ReentrantReadWriteLock(true);

    /* JADX INFO: renamed from: f */
    public long f400f = Long.MAX_VALUE;

    /* JADX INFO: renamed from: g */
    public final Point f401g = new Point(0, 0);

    /* JADX INFO: renamed from: h */
    public final AtomicBoolean f402h = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.davemorrissey.labs.subscaleview.decoder.SkiaPooledImageRegionDecoder$a */
    public static class C0055a {

        /* JADX INFO: renamed from: a */
        public final Semaphore f403a = new Semaphore(0, true);

        /* JADX INFO: renamed from: b */
        public final ConcurrentHashMap f404b = new ConcurrentHashMap();

        /* JADX INFO: renamed from: a */
        public static void m215a(C0055a c0055a) {
            synchronized (c0055a) {
                while (!c0055a.f404b.isEmpty()) {
                    BitmapRegionDecoder bitmapRegionDecoderM218d = c0055a.m218d();
                    bitmapRegionDecoderM218d.recycle();
                    c0055a.f404b.remove(bitmapRegionDecoderM218d);
                }
            }
        }

        /* JADX INFO: renamed from: b */
        public static void m216b(C0055a c0055a, BitmapRegionDecoder bitmapRegionDecoder) {
            boolean z2;
            synchronized (c0055a) {
                Iterator it = c0055a.f404b.entrySet().iterator();
                while (true) {
                    if (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        if (bitmapRegionDecoder == entry.getKey()) {
                            if (((Boolean) entry.getValue()).booleanValue()) {
                                entry.setValue(Boolean.FALSE);
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    break;
                }
            }
            if (z2) {
                c0055a.f403a.release();
            }
        }

        /* JADX INFO: renamed from: c */
        public static boolean m217c(C0055a c0055a) {
            boolean zIsEmpty;
            synchronized (c0055a) {
                zIsEmpty = c0055a.f404b.isEmpty();
            }
            return zIsEmpty;
        }

        /* JADX INFO: renamed from: d */
        public final BitmapRegionDecoder m218d() {
            this.f403a.acquireUninterruptibly();
            synchronized (this) {
                for (Map.Entry entry : this.f404b.entrySet()) {
                    if (!((Boolean) entry.getValue()).booleanValue()) {
                        entry.setValue(Boolean.TRUE);
                        return (BitmapRegionDecoder) entry.getKey();
                    }
                }
                return null;
            }
        }
    }

    public SkiaPooledImageRegionDecoder() {
        Bitmap.Config preferredBitmapConfig = C0121d.getPreferredBitmapConfig();
        if (preferredBitmapConfig != null) {
            this.f397c = preferredBitmapConfig;
        } else {
            this.f397c = Bitmap.Config.RGB_565;
        }
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: a */
    public final synchronized boolean mo210a() {
        C0055a c0055a;
        c0055a = this.f395a;
        return (c0055a == null || C0055a.m217c(c0055a)) ? false : true;
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: b */
    public final Bitmap mo211b(int i2, Rect rect) {
        Objects.toString(rect);
        Thread.currentThread().getName();
        int iWidth = rect.width();
        Point point = this.f401g;
        if ((iWidth < point.x || rect.height() < point.y) && this.f402h.compareAndSet(false, true) && this.f400f < Long.MAX_VALUE) {
            new C0056a(this).start();
        }
        ReentrantReadWriteLock reentrantReadWriteLock = this.f396b;
        reentrantReadWriteLock.readLock().lock();
        try {
            C0055a c0055a = this.f395a;
            if (c0055a != null) {
                BitmapRegionDecoder bitmapRegionDecoderM218d = c0055a.m218d();
                if (bitmapRegionDecoderM218d != null) {
                    try {
                        if (!bitmapRegionDecoderM218d.isRecycled()) {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inSampleSize = i2;
                            options.inPreferredConfig = this.f397c;
                            Bitmap bitmapDecodeRegion = bitmapRegionDecoderM218d.decodeRegion(rect, options);
                            if (bitmapDecodeRegion == null) {
                                throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
                            }
                            C0055a.m216b(this.f395a, bitmapRegionDecoderM218d);
                            reentrantReadWriteLock.readLock().unlock();
                            return bitmapDecodeRegion;
                        }
                    } catch (Throwable th) {
                        C0055a.m216b(this.f395a, bitmapRegionDecoderM218d);
                        throw th;
                    }
                }
                if (bitmapRegionDecoderM218d != null) {
                    C0055a.m216b(this.f395a, bitmapRegionDecoderM218d);
                }
            }
            throw new IllegalStateException("Cannot decode region after decoder has been recycled");
        } catch (Throwable th2) {
            reentrantReadWriteLock.readLock().unlock();
            throw th2;
        }
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: c */
    public final synchronized void mo212c() {
        this.f396b.writeLock().lock();
        try {
            C0055a c0055a = this.f395a;
            if (c0055a != null) {
                C0055a.m215a(c0055a);
                this.f395a = null;
                this.f398d = null;
                this.f399e = null;
            }
            this.f396b.writeLock().unlock();
        } catch (Throwable th) {
            this.f396b.writeLock().unlock();
            throw th;
        }
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: d */
    public final Point mo213d(Context context, C0118a c0118a) {
        this.f398d = context;
        this.f399e = c0118a;
        m214e();
        return this.f401g;
    }

    /* JADX INFO: renamed from: e */
    public final void m214e() {
        BitmapRegionDecoder bitmapRegionDecoderNewInstance;
        C0118a c0118a = this.f399e;
        if (c0118a.f862d != null) {
            throw new RuntimeException(this.f399e.f862d);
        }
        String str = c0118a.f860b;
        long length = Long.MAX_VALUE;
        if (str != null) {
            bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(str, false);
            try {
                File file = new File(this.f399e.f860b);
                if (file.exists()) {
                    length = file.length();
                }
            } catch (Exception unused) {
            }
        } else {
            ParcelFileDescriptor parcelFileDescriptor = c0118a.f861c;
            if (parcelFileDescriptor != null) {
                Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance(parcelFileDescriptor.getFileDescriptor(), false);
                length = this.f399e.f863e;
            } else {
                InputStream inputStreamOpenInputStream = null;
                try {
                    ContentResolver contentResolver = this.f398d.getContentResolver();
                    inputStreamOpenInputStream = contentResolver.openInputStream(this.f399e.f859a);
                    BitmapRegionDecoder bitmapRegionDecoderNewInstance2 = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                    try {
                        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(this.f399e.f859a, "r");
                        if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                            length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                            assetFileDescriptorOpenAssetFileDescriptor.close();
                        }
                    } catch (Exception unused2) {
                    }
                    if (inputStreamOpenInputStream != null) {
                        C0181d.m563d(inputStreamOpenInputStream);
                    }
                    bitmapRegionDecoderNewInstance = bitmapRegionDecoderNewInstance2;
                } catch (Throwable th) {
                    if (inputStreamOpenInputStream != null) {
                        C0181d.m563d(inputStreamOpenInputStream);
                    }
                    throw th;
                }
            }
        }
        this.f400f = length;
        this.f401g.set(bitmapRegionDecoderNewInstance.getWidth(), bitmapRegionDecoderNewInstance.getHeight());
        this.f396b.writeLock().lock();
        try {
            C0055a c0055a = this.f395a;
            if (c0055a != null) {
                synchronized (c0055a) {
                    c0055a.f404b.put(bitmapRegionDecoderNewInstance, Boolean.FALSE);
                    c0055a.f403a.release();
                }
            }
            this.f396b.writeLock().unlock();
        } catch (Throwable th2) {
            this.f396b.writeLock().unlock();
            throw th2;
        }
    }
}
