.class public final Lw0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lru/zdevs/zarchiver/a;)V
    .locals 1

    .line 1
    new-instance v0, Lw0/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lw0/d;-><init>(Lru/zdevs/zarchiver/a;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p1, Lw0/c$b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    const-string v0, "storage"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 15
    .line 16
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    iget-object p1, p1, Lw0/c$b;->a:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 21
    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/os/storage/StorageManager;->registerStorageVolumeCallback(Ljava/util/concurrent/Executor;Landroid/os/storage/StorageManager$StorageVolumeCallback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
