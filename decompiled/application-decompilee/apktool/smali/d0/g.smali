.class public final Ld0/g;
.super Landroid/os/ParcelFileDescriptor;
.source "SourceFile"


# instance fields
.field public final a:Lru/zdevs/zarchiver/archiver/NArc;

.field public final b:Ld0/d;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/archiver/NArc;Ld0/d;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/g;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 5
    .line 6
    iput-object p2, p0, Ld0/g;->b:Ld0/d;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Ld0/g;->c:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld0/g;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ld0/g;->c:Z

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Ld0/g;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 13
    .line 14
    iget-object v0, v0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 15
    .line 16
    if-ne v0, p0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Ld0/g;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 22
    .line 23
    :cond_1
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Ld0/g;->b:Ld0/d;

    .line 27
    .line 28
    invoke-interface {v0}, Ld0/d;->d()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Ld0/g;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 32
    .line 33
    iget-object v1, p0, Ld0/g;->b:Ld0/d;

    .line 34
    .line 35
    invoke-interface {v1}, Ld0/d;->a()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/archiver/NArc;->o(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v0
.end method

.method public final detachFd()I
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/g;->b:Ld0/d;

    .line 2
    .line 3
    invoke-interface {v0}, Ld0/d;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Ld0/g;->c:Z

    .line 11
    .line 12
    iget-object v0, p0, Ld0/g;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 13
    .line 14
    iget-object v0, v0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 15
    .line 16
    if-ne v0, p0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Ld0/g;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 22
    .line 23
    :cond_0
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v1, "Detach FD is not supported"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public final getStatSize()J
    .locals 4

    iget-object v0, p0, Ld0/g;->b:Ld0/d;

    invoke-interface {v0}, Ld0/d;->onGetSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method
