.class public final Lg1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 9
    .line 10
    :goto_0
    const/4 v1, 0x1

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    const/16 v2, 0x1e

    .line 15
    .line 16
    if-lt v0, v2, :cond_3

    .line 17
    .line 18
    const/16 v2, 0x21

    .line 19
    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    return p0

    .line 34
    :cond_3
    :goto_1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, -0x1

    .line 41
    if-eq v0, v2, :cond_4

    .line 42
    .line 43
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eq p0, v2, :cond_4

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    const/4 v1, 0x0

    .line 53
    :goto_2
    return v1
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static c(Landroid/content/Context;Lru/zdevs/zarchiver/a$a;Landroid/content/IntentFilter;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lg1/f;

    invoke-direct {v0, p0, p1}, Lg1/f;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0}, Lv0/c;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Landroid/os/Handler;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x48

    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :catch_0
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lg1/h$a;

    .line 21
    .line 22
    invoke-direct {v1, p0, p1, p2}, Lg1/h$a;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)V

    .line 23
    .line 24
    .line 25
    const-wide/16 p0, 0x2bc

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
