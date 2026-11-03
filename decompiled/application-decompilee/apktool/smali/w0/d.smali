.class public final Lw0/d;
.super Landroid/os/storage/StorageManager$StorageVolumeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lw0/c$b;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/a;)V
    .locals 0

    iput-object p1, p0, Lw0/d;->a:Lw0/c$b;

    invoke-direct {p0}, Landroid/os/storage/StorageManager$StorageVolumeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroid/os/storage/StorageVolume;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ejecting"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lw0/d;->a:Lw0/c$b;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Lw0/c$b;->c(Landroid/os/storage/StorageVolume;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v1, "mounted"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lw0/d;->a:Lw0/c$b;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p1, v1}, Lw0/c$b;->c(Landroid/os/storage/StorageVolume;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
