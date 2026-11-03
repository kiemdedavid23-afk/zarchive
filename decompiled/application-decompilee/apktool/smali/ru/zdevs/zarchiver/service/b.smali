.class public final Lru/zdevs/zarchiver/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static f:Z = false

.field public static g:Z = false

.field public static final h:Lg1/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "Lru/zdevs/zarchiver/service/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public final b:I

.field public c:I

.field public d:J

.field public final e:Landroid/app/Notification$Builder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg1/a;

    invoke-direct {v0}, Lg1/a;-><init>()V

    sput-object v0, Lru/zdevs/zarchiver/service/b;->h:Lg1/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lru/zdevs/zarchiver/service/b;->a:I

    .line 5
    .line 6
    iput p3, p0, Lru/zdevs/zarchiver/service/b;->b:I

    .line 7
    .line 8
    new-instance p2, Landroid/app/Notification$Builder;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 14
    .line 15
    const p1, 0x7f0600d1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x1a

    .line 7
    .line 8
    if-lt v1, v2, :cond_3

    .line 9
    .line 10
    sget-boolean v2, Lru/zdevs/zarchiver/service/b;->f:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x1

    .line 16
    sput-boolean v2, Lru/zdevs/zarchiver/service/b;->f:Z

    .line 17
    .line 18
    const-string v3, "notification"

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/NotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_1
    new-instance v3, Landroid/app/NotificationChannel;

    .line 31
    .line 32
    const-string v4, "za_d"

    .line 33
    .line 34
    const-string v5, "Notification"

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    invoke-direct {v3, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 41
    .line 42
    .line 43
    const/16 v4, 0x21

    .line 44
    .line 45
    if-lt v1, v4, :cond_2

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v3, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Landroid/app/NotificationChannel;

    .line 55
    .line 56
    const-string v3, "za_p"

    .line 57
    .line 58
    const-string v4, "Progress"

    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 65
    .line 66
    .line 67
    new-instance v1, Landroid/app/NotificationChannel;

    .line 68
    .line 69
    const-string v3, "za_m"

    .line 70
    .line 71
    const-string v4, "Message"

    .line 72
    .line 73
    invoke-direct {v1, v3, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-void

    .line 84
    :cond_3
    :goto_0
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    .line 88
    throw p0
.end method

.method public static declared-synchronized c(Landroid/app/Service;ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lru/zdevs/zarchiver/service/b;
    .locals 5

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lru/zdevs/zarchiver/service/b;

    .line 5
    .line 6
    const/16 v2, 0x46

    .line 7
    .line 8
    add-int/2addr p1, v2

    .line 9
    invoke-direct {v1, p0, p1, v2}, Lru/zdevs/zarchiver/service/b;-><init>(Landroid/content/Context;II)V

    .line 10
    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    iget-object v3, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 15
    .line 16
    const-string v4, "status"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x1a

    .line 22
    .line 23
    if-lt v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 26
    .line 27
    const-string v3, "za_d"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 33
    .line 34
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 38
    .line 39
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 40
    .line 41
    .line 42
    iget-object p2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 45
    .line 46
    .line 47
    iget-object p2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 48
    .line 49
    const/high16 p3, 0xc000000

    .line 50
    .line 51
    invoke-static {p0, p1, p4, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-object v1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0

    .line 62
    throw p0
.end method

.method public static declared-synchronized d(Landroid/app/Service;ILjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)Lru/zdevs/zarchiver/service/b;
    .locals 4

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lru/zdevs/zarchiver/service/b;

    .line 5
    .line 6
    const/16 v2, 0x50

    .line 7
    .line 8
    add-int/2addr p1, v2

    .line 9
    invoke-direct {v1, p0, p1, v2}, Lru/zdevs/zarchiver/service/b;-><init>(Landroid/content/Context;II)V

    .line 10
    .line 11
    .line 12
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v3, 0x1a

    .line 15
    .line 16
    if-lt v2, v3, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 19
    .line 20
    const-string v3, "za_m"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 26
    .line 27
    invoke-virtual {v2, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 28
    .line 29
    .line 30
    iget-object v2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 33
    .line 34
    .line 35
    iget-object p2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 38
    .line 39
    .line 40
    if-lez p4, :cond_1

    .line 41
    .line 42
    iget-object p2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 43
    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    div-int/lit8 v2, p4, 0x3c

    .line 50
    .line 51
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ":"

    .line 55
    .line 56
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    rem-int/lit8 p4, p4, 0x3c

    .line 60
    .line 61
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 72
    .line 73
    const/4 p3, 0x1

    .line 74
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 75
    .line 76
    .line 77
    iget-object p2, v1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 78
    .line 79
    const/high16 p3, 0xc000000

    .line 80
    .line 81
    invoke-static {p0, p1, p5, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    monitor-exit v0

    .line 89
    return-object v1

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0

    .line 92
    throw p0
.end method

.method public static declared-synchronized e(Landroid/app/Service;ILjava/lang/String;Landroid/content/Intent;)Lru/zdevs/zarchiver/service/b;
    .locals 10

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lru/zdevs/zarchiver/service/b;->g:Z

    .line 5
    .line 6
    const/16 v2, 0x45

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x3c

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sput-boolean v3, Lru/zdevs/zarchiver/service/b;->g:Z

    .line 15
    .line 16
    move v1, v2

    .line 17
    :goto_0
    invoke-static {p0}, Lru/zdevs/zarchiver/service/b;->a(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lru/zdevs/zarchiver/service/b;

    .line 21
    .line 22
    const/16 v5, 0x3c

    .line 23
    .line 24
    invoke-direct {v4, p0, v1, v5}, Lru/zdevs/zarchiver/service/b;-><init>(Landroid/content/Context;II)V

    .line 25
    .line 26
    .line 27
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    iget-object v6, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 30
    .line 31
    const-string v7, "progress"

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 34
    .line 35
    .line 36
    const/16 v6, 0x1a

    .line 37
    .line 38
    if-lt v5, v6, :cond_1

    .line 39
    .line 40
    iget-object v6, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 41
    .line 42
    const-string v7, "za_p"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v6, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 48
    .line 49
    const v7, 0x7f0c01a4

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 57
    .line 58
    .line 59
    const/16 v6, 0x18

    .line 60
    .line 61
    const/4 v8, 0x0

    .line 62
    if-ge v5, v6, :cond_2

    .line 63
    .line 64
    iget-object v9, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 65
    .line 66
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 71
    .line 72
    .line 73
    iget-object v7, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 74
    .line 75
    invoke-virtual {v7, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 76
    .line 77
    .line 78
    iget-object p2, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 79
    .line 80
    invoke-virtual {p2, v8}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v7, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 85
    .line 86
    invoke-virtual {v7, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 87
    .line 88
    .line 89
    iget-object p2, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 90
    .line 91
    const-string v7, "0%"

    .line 92
    .line 93
    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 94
    .line 95
    .line 96
    :goto_1
    iget-object p2, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 97
    .line 98
    const/16 v7, 0x64

    .line 99
    .line 100
    invoke-virtual {p2, v7, v8, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 101
    .line 102
    .line 103
    iget-object p2, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 104
    .line 105
    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 106
    .line 107
    .line 108
    const/high16 p2, 0xc000000

    .line 109
    .line 110
    if-lt v5, v6, :cond_3

    .line 111
    .line 112
    new-instance v6, Landroid/content/Intent;

    .line 113
    .line 114
    const-class v7, Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 115
    .line 116
    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    const-string v7, "ru.zdevs.zarchiver.service.cancel_task"

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const-string v7, "iTaskID"

    .line 125
    .line 126
    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const/high16 v7, 0x44000000    # 512.0f

    .line 130
    .line 131
    invoke-static {p0, v8, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    add-int/lit8 v7, p1, 0x3c

    .line 136
    .line 137
    invoke-static {p0, v7, p3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    new-instance p3, Landroid/app/Notification$Action$Builder;

    .line 142
    .line 143
    const v7, 0x7f0c00b8

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    const/4 v8, 0x0

    .line 151
    invoke-direct {p3, v8, v7, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    new-instance p3, Landroid/app/Notification$Action$Builder;

    .line 159
    .line 160
    const v7, 0x7f0c0025

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-direct {p3, v8, v7, v6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 171
    .line 172
    .line 173
    move-result-object p3

    .line 174
    iget-object v6, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 175
    .line 176
    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 177
    .line 178
    .line 179
    iget-object p2, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 180
    .line 181
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_3
    iget-object v6, v4, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 186
    .line 187
    add-int/lit8 v7, p1, 0x3c

    .line 188
    .line 189
    invoke-static {p0, v7, p3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {v6, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 194
    .line 195
    .line 196
    :goto_2
    if-ne v1, v2, :cond_5

    .line 197
    .line 198
    invoke-virtual {v4}, Lru/zdevs/zarchiver/service/b;->b()Landroid/app/Notification;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const/16 p3, 0x1d

    .line 203
    .line 204
    if-ge v5, p3, :cond_4

    .line 205
    .line 206
    invoke-virtual {p0, v1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_4
    invoke-virtual {p0, v1, p2, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    .line 211
    .line 212
    .line 213
    :goto_3
    sget-object p0, Lru/zdevs/zarchiver/service/b;->h:Lg1/a;

    .line 214
    .line 215
    invoke-virtual {p0, p1, v4}, Lg1/a;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .line 217
    .line 218
    :cond_5
    monitor-exit v0

    .line 219
    return-object v4

    .line 220
    :catchall_0
    move-exception p0

    .line 221
    monitor-exit v0

    .line 222
    throw p0
.end method

.method public static declared-synchronized f(Landroid/app/NotificationManager;Landroid/app/Service;I)V
    .locals 5

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lru/zdevs/zarchiver/service/b;->h:Lg1/a;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Lg1/a;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    check-cast v2, Lru/zdevs/zarchiver/service/b;

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Lg1/a;->delete(I)V

    .line 13
    .line 14
    .line 15
    if-eqz v2, :cond_5

    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget v3, v2, Lru/zdevs/zarchiver/service/b;->a:I

    .line 21
    .line 22
    const/16 v4, 0x45

    .line 23
    .line 24
    if-ne v3, v4, :cond_3

    .line 25
    .line 26
    invoke-static {p2}, Lb/d;->C(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ltz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Lg1/a;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lru/zdevs/zarchiver/service/b;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget v3, v1, Lru/zdevs/zarchiver/service/b;->a:I

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 43
    .line 44
    .line 45
    iput v4, v1, Lru/zdevs/zarchiver/service/b;->a:I

    .line 46
    .line 47
    invoke-virtual {v1}, Lru/zdevs/zarchiver/service/b;->b()Landroid/app/Notification;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 p2, p2, 0x3c

    .line 55
    .line 56
    iput p2, v2, Lru/zdevs/zarchiver/service/b;->a:I

    .line 57
    .line 58
    :cond_1
    iget p2, v2, Lru/zdevs/zarchiver/service/b;->a:I

    .line 59
    .line 60
    if-ne p2, v4, :cond_4

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    sput-boolean p2, Lru/zdevs/zarchiver/service/b;->g:Z

    .line 64
    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v3, 0x1d

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    if-lt v1, v3, :cond_2

    .line 71
    .line 72
    iget-object v1, v2, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 73
    .line 74
    const-string v3, "100%"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 77
    .line 78
    .line 79
    iget-object v1, v2, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 80
    .line 81
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 82
    .line 83
    .line 84
    iget-object v1, v2, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 85
    .line 86
    const/16 v3, 0x64

    .line 87
    .line 88
    invoke-virtual {v1, v3, v3, p2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 89
    .line 90
    .line 91
    iget p2, v2, Lru/zdevs/zarchiver/service/b;->a:I

    .line 92
    .line 93
    invoke-virtual {v2}, Lru/zdevs/zarchiver/service/b;->b()Landroid/app/Notification;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {p0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v4}, Landroid/app/Service;->stopForeground(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1, v4}, Landroid/app/Service;->stopForeground(Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p0, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    :cond_4
    :goto_0
    monitor-exit v0

    .line 112
    return-void

    .line 113
    :cond_5
    :goto_1
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v0

    .line 117
    throw p0
.end method

.method public static declared-synchronized g(Landroid/app/NotificationManager;)V
    .locals 3

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget-object v1, Lru/zdevs/zarchiver/service/b;->h:Lg1/a;

    .line 9
    .line 10
    invoke-virtual {v1}, Lg1/a;->clear()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x5

    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    add-int/lit8 v2, v1, 0x3c

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v1, 0x46

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public static declared-synchronized h(Landroid/app/NotificationManager;ILjava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lru/zdevs/zarchiver/service/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lru/zdevs/zarchiver/service/b;->h:Lg1/a;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lg1/a;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lru/zdevs/zarchiver/service/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p1, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 31
    .line 32
    .line 33
    :goto_0
    iget p2, p1, Lru/zdevs/zarchiver/service/b;->a:I

    .line 34
    .line 35
    invoke-virtual {p1}, Lru/zdevs/zarchiver/service/b;->b()Landroid/app/Notification;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v0

    .line 46
    throw p0
.end method


# virtual methods
.method public final b()Landroid/app/Notification;
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/service/b;->e:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    iget v2, p0, Lru/zdevs/zarchiver/service/b;->b:I

    .line 10
    .line 11
    if-eq v2, v1, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x46

    .line 14
    .line 15
    if-eq v2, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 19
    .line 20
    or-int/lit8 v1, v1, 0x20

    .line 21
    .line 22
    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v1, p0, Lru/zdevs/zarchiver/service/b;->a:I

    .line 26
    .line 27
    const/16 v2, 0x45

    .line 28
    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 32
    .line 33
    or-int/lit8 v1, v1, 0x40

    .line 34
    .line 35
    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 36
    .line 37
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final declared-synchronized i(Landroid/app/NotificationManager;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/service/b;->b()Landroid/app/Notification;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lru/zdevs/zarchiver/service/b;->a:I

    .line 11
    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Lru/zdevs/zarchiver/service/b;->b:I

    .line 16
    .line 17
    const/16 v0, 0x3c

    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    iget p1, p0, Lru/zdevs/zarchiver/service/b;->a:I

    .line 22
    .line 23
    const/16 v1, 0x45

    .line 24
    .line 25
    if-eq p1, v1, :cond_1

    .line 26
    .line 27
    sget-object v1, Lru/zdevs/zarchiver/service/b;->h:Lg1/a;

    .line 28
    .line 29
    sub-int/2addr p1, v0

    .line 30
    invoke-virtual {v1, p1, p0}, Lg1/a;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_1
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method
