package ru.zdevs.zarchiver.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p033m0.C0180c;
import p039p0.C0223a;

/* JADX INFO: loaded from: classes.dex */
public class ZArchiverClearTemp extends Service {
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        C0180c.m555b(false);
        C0223a.m619a(this);
        stopSelf(i3);
        return 2;
    }
}
