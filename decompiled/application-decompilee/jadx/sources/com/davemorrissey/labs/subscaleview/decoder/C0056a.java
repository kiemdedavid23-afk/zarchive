package com.davemorrissey.labs.subscaleview.decoder;

import android.app.ActivityManager;

/* JADX INFO: renamed from: com.davemorrissey.labs.subscaleview.decoder.a */
/* JADX INFO: loaded from: classes.dex */
public final class C0056a extends Thread {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ SkiaPooledImageRegionDecoder f405a;

    public C0056a(SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder) {
        this.f405a = skiaPooledImageRegionDecoder;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004d  */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int size;
        boolean z2;
        boolean z3;
        while (true) {
            SkiaPooledImageRegionDecoder skiaPooledImageRegionDecoder = this.f405a;
            SkiaPooledImageRegionDecoder.C0055a c0055a = skiaPooledImageRegionDecoder.f395a;
            if (c0055a == null) {
                return;
            }
            synchronized (c0055a) {
                size = c0055a.f404b.size();
            }
            long j2 = this.f405a.f400f;
            if (size >= 4) {
                z2 = false;
            } else {
                long j3 = ((long) size) * j2;
                if (j3 <= 20971520) {
                    if (size >= Runtime.getRuntime().availableProcessors()) {
                        Runtime.getRuntime().availableProcessors();
                    } else {
                        ActivityManager activityManager = (ActivityManager) skiaPooledImageRegionDecoder.f398d.getSystemService("activity");
                        z2 = true;
                        if (activityManager != null) {
                            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                            activityManager.getMemoryInfo(memoryInfo);
                            z3 = memoryInfo.lowMemory;
                        } else {
                            z3 = true;
                        }
                        if (!z3) {
                            long j4 = j3 / 1048576;
                        }
                    }
                    z2 = false;
                } else {
                    z2 = false;
                }
            }
            if (!z2) {
                return;
            }
            try {
                if (this.f405a.f395a != null) {
                    System.currentTimeMillis();
                    this.f405a.m214e();
                    System.currentTimeMillis();
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
    }
}
