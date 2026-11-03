package com.davemorrissey.labs.subscaleview.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.InputStream;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p019g.C0118a;
import p019g.C0121d;
import p022h.InterfaceC0143d;
import p033m0.C0181d;

/* JADX INFO: loaded from: classes.dex */
public class SkiaImageRegionDecoder implements InterfaceC0143d {

    /* JADX INFO: renamed from: a */
    public BitmapRegionDecoder f392a;

    /* JADX INFO: renamed from: b */
    public final ReentrantReadWriteLock f393b = new ReentrantReadWriteLock(true);

    /* JADX INFO: renamed from: c */
    public final Bitmap.Config f394c;

    public SkiaImageRegionDecoder() {
        Bitmap.Config preferredBitmapConfig = C0121d.getPreferredBitmapConfig();
        if (preferredBitmapConfig != null) {
            this.f394c = preferredBitmapConfig;
        } else {
            this.f394c = Bitmap.Config.RGB_565;
        }
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: a */
    public final synchronized boolean mo210a() {
        BitmapRegionDecoder bitmapRegionDecoder;
        bitmapRegionDecoder = this.f392a;
        return (bitmapRegionDecoder == null || bitmapRegionDecoder.isRecycled()) ? false : true;
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: b */
    public final Bitmap mo211b(int i2, Rect rect) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f393b;
        reentrantReadWriteLock.readLock().lock();
        try {
            BitmapRegionDecoder bitmapRegionDecoder = this.f392a;
            if (bitmapRegionDecoder == null || bitmapRegionDecoder.isRecycled()) {
                throw new IllegalStateException("Cannot decode region after decoder has been recycled");
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i2;
            options.inPreferredConfig = this.f394c;
            Bitmap bitmapDecodeRegion = this.f392a.decodeRegion(rect, options);
            if (bitmapDecodeRegion == null) {
                throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
            }
            reentrantReadWriteLock.readLock().unlock();
            return bitmapDecodeRegion;
        } catch (Throwable th) {
            reentrantReadWriteLock.readLock().unlock();
            throw th;
        }
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: c */
    public final synchronized void mo212c() {
        this.f393b.writeLock().lock();
        try {
            this.f392a.recycle();
            this.f392a = null;
            this.f393b.writeLock().unlock();
        } catch (Throwable th) {
            this.f393b.writeLock().unlock();
            throw th;
        }
    }

    @Override // p022h.InterfaceC0143d
    /* JADX INFO: renamed from: d */
    public final Point mo213d(Context context, C0118a c0118a) throws ErrnoException {
        if (c0118a.f862d != null) {
            throw new RuntimeException(c0118a.f862d);
        }
        String str = c0118a.f860b;
        if (str != null) {
            this.f392a = BitmapRegionDecoder.newInstance(str, false);
        } else {
            ParcelFileDescriptor parcelFileDescriptor = c0118a.f861c;
            if (parcelFileDescriptor != null) {
                Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                this.f392a = BitmapRegionDecoder.newInstance(parcelFileDescriptor.getFileDescriptor(), false);
            } else {
                try {
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(c0118a.f859a);
                    if (inputStreamOpenInputStream == null) {
                        throw new Exception("Content resolver returned null stream. Unable to initialise with uri.");
                    }
                    this.f392a = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                    C0181d.m563d(inputStreamOpenInputStream);
                } catch (Throwable th) {
                    if (0 != 0) {
                        C0181d.m563d(null);
                    }
                    throw th;
                }
            }
        }
        return new Point(this.f392a.getWidth(), this.f392a.getHeight());
    }
}
