package ru.zdevs.zarchiver.service;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Icon;
import android.os.Build;
import p004b.C0015d;
import p021g1.C0130a;
import ru.zdevs.zarchiver.R;

/* JADX INFO: renamed from: ru.zdevs.zarchiver.service.b */
/* JADX INFO: loaded from: classes.dex */
public final class C0315b {

    /* JADX INFO: renamed from: f */
    public static boolean f1665f = false;

    /* JADX INFO: renamed from: g */
    public static boolean f1666g = false;

    /* JADX INFO: renamed from: h */
    public static final C0130a<C0315b> f1667h = new C0130a<>();

    /* JADX INFO: renamed from: a */
    public int f1668a;

    /* JADX INFO: renamed from: b */
    public final int f1669b;

    /* JADX INFO: renamed from: c */
    public int f1670c;

    /* JADX INFO: renamed from: d */
    public long f1671d;

    /* JADX INFO: renamed from: e */
    public final Notification.Builder f1672e;

    public C0315b(Context context, int i2, int i3) {
        this.f1668a = i2;
        this.f1669b = i3;
        Notification.Builder builder = new Notification.Builder(context);
        this.f1672e = builder;
        builder.setSmallIcon(R.drawable.ic_stat_notify);
        builder.setWhen(System.currentTimeMillis());
    }

    /* JADX INFO: renamed from: a */
    public static synchronized void m905a(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && !f1665f) {
            f1665f = true;
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (notificationManager == null) {
                return;
            }
            NotificationChannel notificationChannel = new NotificationChannel("za_d", "Notification", 4);
            notificationChannel.enableLights(true);
            if (i2 >= 33) {
                notificationChannel.setBlockable(false);
            }
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.createNotificationChannel(new NotificationChannel("za_p", "Progress", 2));
            NotificationChannel notificationChannel2 = new NotificationChannel("za_m", "Message", 4);
            notificationChannel2.enableLights(true);
            notificationManager.createNotificationChannel(notificationChannel2);
        }
    }

    /* JADX INFO: renamed from: c */
    public static synchronized C0315b m906c(Service service, int i2, String str, String str2, Intent intent) {
        C0315b c0315b;
        int i3 = i2 + 70;
        c0315b = new C0315b(service, i3, 70);
        int i4 = Build.VERSION.SDK_INT;
        c0315b.f1672e.setCategory("status");
        if (i4 >= 26) {
            c0315b.f1672e.setChannelId("za_d");
        }
        c0315b.f1672e.setTicker(str2);
        c0315b.f1672e.setContentTitle(str);
        c0315b.f1672e.setContentText(str2);
        c0315b.f1672e.setContentIntent(PendingIntent.getActivity(service, i3, intent, 201326592));
        return c0315b;
    }

    /* JADX INFO: renamed from: d */
    public static synchronized C0315b m907d(Service service, int i2, String str, String str2, int i3, Intent intent) {
        C0315b c0315b;
        int i4 = i2 + 80;
        c0315b = new C0315b(service, i4, 80);
        if (Build.VERSION.SDK_INT >= 26) {
            c0315b.f1672e.setChannelId("za_m");
        }
        c0315b.f1672e.setTicker(str2);
        c0315b.f1672e.setContentTitle(str);
        c0315b.f1672e.setContentText(str2);
        if (i3 > 0) {
            c0315b.f1672e.setSubText((i3 / 60) + ":" + (i3 % 60));
        }
        c0315b.f1672e.setAutoCancel(true);
        c0315b.f1672e.setContentIntent(PendingIntent.getActivity(service, i4, intent, 201326592));
        return c0315b;
    }

    /* JADX INFO: renamed from: e */
    public static synchronized C0315b m908e(Service service, int i2, String str, Intent intent) {
        int i3;
        C0315b c0315b;
        if (f1666g) {
            i3 = i2 + 60;
        } else {
            f1666g = true;
            i3 = 69;
        }
        m905a(service);
        c0315b = new C0315b(service, i3, 60);
        int i4 = Build.VERSION.SDK_INT;
        c0315b.f1672e.setCategory("progress");
        if (i4 >= 26) {
            c0315b.f1672e.setChannelId("za_p");
        }
        c0315b.f1672e.setTicker(service.getString(R.string.app_name));
        if (i4 < 24) {
            c0315b.f1672e.setContentTitle(service.getString(R.string.app_name));
            c0315b.f1672e.setContentText(str);
            c0315b.f1672e.setNumber(0);
        } else {
            c0315b.f1672e.setContentTitle(str);
            c0315b.f1672e.setContentText("0%");
        }
        c0315b.f1672e.setProgress(100, 0, true);
        c0315b.f1672e.setOngoing(true);
        if (i4 >= 24) {
            Intent intent2 = new Intent(service, (Class<?>) ZArchiverService.class);
            intent2.setAction("ru.zdevs.zarchiver.service.cancel_task");
            intent2.putExtra("iTaskID", i2);
            PendingIntent service2 = PendingIntent.getService(service, 0, intent2, 1140850688);
            Notification.Action actionBuild = new Notification.Action.Builder((Icon) null, service.getText(R.string.MENU_OPEN), PendingIntent.getActivity(service, i2 + 60, intent, 201326592)).build();
            Notification.Action actionBuild2 = new Notification.Action.Builder((Icon) null, service.getText(R.string.BTN_CANCEL), service2).build();
            c0315b.f1672e.addAction(actionBuild);
            c0315b.f1672e.addAction(actionBuild2);
        } else {
            c0315b.f1672e.setContentIntent(PendingIntent.getActivity(service, i2 + 60, intent, 201326592));
        }
        if (i3 == 69) {
            Notification notificationM912b = c0315b.m912b();
            if (i4 < 29) {
                service.startForeground(i3, notificationM912b);
            } else {
                service.startForeground(i3, notificationM912b, 1);
            }
            f1667h.put(i2, c0315b);
        }
        return c0315b;
    }

    /* JADX INFO: renamed from: f */
    public static synchronized void m909f(NotificationManager notificationManager, Service service, int i2) {
        C0315b c0315b;
        C0130a<C0315b> c0130a = f1667h;
        C0315b c0315b2 = c0130a.get(i2);
        c0130a.delete(i2);
        if (c0315b2 != null && notificationManager != null) {
            int i3 = c0315b2.f1668a;
            if (i3 == 69) {
                int iM41C = C0015d.m41C(i2);
                if (iM41C >= 0 && (c0315b = c0130a.get(iM41C)) != null) {
                    notificationManager.cancel(c0315b.f1668a);
                    c0315b.f1668a = 69;
                    notificationManager.notify(69, c0315b.m912b());
                    c0315b2.f1668a = i2 + 60;
                }
                if (c0315b2.f1668a == 69) {
                    f1666g = false;
                    if (Build.VERSION.SDK_INT >= 29) {
                        c0315b2.f1672e.setContentText("100%");
                        c0315b2.f1672e.setOngoing(false);
                        c0315b2.f1672e.setProgress(100, 100, false);
                        notificationManager.notify(c0315b2.f1668a, c0315b2.m912b());
                        service.stopForeground(1);
                    } else {
                        service.stopForeground(true);
                    }
                }
            } else {
                notificationManager.cancel(i3);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public static synchronized void m910g(NotificationManager notificationManager) {
        if (notificationManager == null) {
            return;
        }
        f1667h.clear();
        for (int i2 = 0; i2 < 5; i2++) {
            notificationManager.cancel(i2 + 60);
            notificationManager.cancel(i2 + 70);
        }
    }

    /* JADX INFO: renamed from: h */
    public static synchronized void m911h(NotificationManager notificationManager, int i2, String str) {
        C0315b c0315b = f1667h.get(i2);
        if (c0315b == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 24) {
            c0315b.f1672e.setContentText(str);
        } else {
            c0315b.f1672e.setContentTitle(str);
        }
        notificationManager.notify(c0315b.f1668a, c0315b.m912b());
    }

    /* JADX INFO: renamed from: b */
    public final Notification m912b() {
        Notification notificationBuild = this.f1672e.build();
        int i2 = this.f1669b;
        if (i2 != 60) {
            if (i2 == 70) {
                notificationBuild.flags |= 32;
            }
        } else if (this.f1668a == 69) {
            notificationBuild.flags |= 64;
        }
        return notificationBuild;
    }

    /* JADX INFO: renamed from: i */
    public final synchronized void m913i(NotificationManager notificationManager) {
        int i2;
        if (notificationManager == null) {
            return;
        }
        notificationManager.notify(this.f1668a, m912b());
        if (this.f1669b == 60 && (i2 = this.f1668a) != 69) {
            f1667h.put(i2 - 60, this);
        }
    }
}
