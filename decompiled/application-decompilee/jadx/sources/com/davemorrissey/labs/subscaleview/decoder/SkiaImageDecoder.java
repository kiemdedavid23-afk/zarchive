package com.davemorrissey.labs.subscaleview.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.system.OsConstants;
import java.io.InputStream;
import p019g.C0118a;
import p019g.C0121d;
import p022h.InterfaceC0142c;
import p033m0.C0181d;

/* JADX INFO: loaded from: classes.dex */
public class SkiaImageDecoder implements InterfaceC0142c {

    /* JADX INFO: renamed from: a */
    public final Bitmap.Config f391a;

    public SkiaImageDecoder() {
        Bitmap.Config preferredBitmapConfig = C0121d.getPreferredBitmapConfig();
        if (preferredBitmapConfig != null) {
            this.f391a = preferredBitmapConfig;
        } else {
            this.f391a = Bitmap.Config.RGB_565;
        }
    }

    @Override // p022h.InterfaceC0142c
    /* JADX INFO: renamed from: a */
    public final Bitmap mo209a(Context context, C0118a c0118a) throws Throwable {
        Throwable th;
        Bitmap bitmapDecodeFileDescriptor;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = this.f391a;
        if (c0118a.f862d != null) {
            throw new RuntimeException(c0118a.f862d);
        }
        String str = c0118a.f860b;
        if (str != null) {
            bitmapDecodeFileDescriptor = BitmapFactory.decodeFile(str, options);
        } else {
            InputStream inputStream = null;
            ParcelFileDescriptor parcelFileDescriptor = c0118a.f861c;
            if (parcelFileDescriptor != null) {
                Os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), null, options);
            } else {
                try {
                    InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(c0118a.f859a);
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                        if (inputStreamOpenInputStream != null) {
                            C0181d.m563d(inputStreamOpenInputStream);
                        }
                        bitmapDecodeFileDescriptor = bitmapDecodeStream;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStreamOpenInputStream;
                        if (inputStream == null) {
                            throw th;
                        }
                        C0181d.m563d(inputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
        if (bitmapDecodeFileDescriptor != null) {
            return bitmapDecodeFileDescriptor;
        }
        throw new RuntimeException("Skia image region decoder returned null bitmap - image format may not be supported");
    }
}
