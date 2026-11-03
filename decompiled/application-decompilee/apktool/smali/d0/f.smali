.class public final Ld0/f;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# instance fields
.field public final a:Lru/zdevs/zarchiver/archiver/NArc;

.field public final b:Landroid/os/ParcelFileDescriptor;

.field public c:J

.field public d:J

.field public final e:J

.field public f:Z

.field public volatile g:Z


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/archiver/NArc;IJJ)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Ld0/f;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 13
    .line 14
    iput-object p2, p0, Ld0/f;->b:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    const-wide/16 p1, 0x0

    .line 17
    .line 18
    iput-wide p1, p0, Ld0/f;->c:J

    .line 19
    .line 20
    iput-wide p3, p0, Ld0/f;->d:J

    .line 21
    .line 22
    iput-wide p5, p0, Ld0/f;->e:J

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Ld0/f;->f:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Ld0/f;->g:Z

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 1
    iget-wide v0, p0, Ld0/f;->d:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Ld0/f;->c:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    const-wide/32 v2, 0x7fffffff

    .line 15
    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    long-to-int v0, v0

    .line 26
    return v0
.end method

.method public final close()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ld0/f;->g:Z

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
    iput-boolean v0, p0, Ld0/f;->g:Z

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    iget-object v0, p0, Ld0/f;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 13
    .line 14
    iget-object v0, v0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 15
    .line 16
    if-ne v0, p0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Ld0/f;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lru/zdevs/zarchiver/archiver/NArc;->c:Ljava/io/Closeable;

    .line 22
    .line 23
    :cond_1
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    :try_start_1
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    iput-wide v0, p0, Ld0/f;->d:J

    .line 29
    .line 30
    iget-object v0, p0, Ld0/f;->b:Landroid/os/ParcelFileDescriptor;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ld0/f;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 36
    .line 37
    iget-wide v1, p0, Ld0/f;->e:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lru/zdevs/zarchiver/archiver/NArc;->o(J)V

    .line 40
    .line 41
    .line 42
    iget-boolean v0, p0, Ld0/f;->f:Z

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Ld0/f;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 47
    .line 48
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    iput-wide v0, p0, Ld0/f;->d:J

    .line 54
    .line 55
    iget-object v0, p0, Ld0/f;->b:Landroid/os/ParcelFileDescriptor;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Ld0/f;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 61
    .line 62
    iget-wide v3, p0, Ld0/f;->e:J

    .line 63
    .line 64
    invoke-virtual {v0, v3, v4}, Lru/zdevs/zarchiver/archiver/NArc;->o(J)V

    .line 65
    .line 66
    .line 67
    throw v2

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    throw v0
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    iget-wide p2, p0, Ld0/f;->c:J

    .line 8
    .line 9
    int-to-long v0, p1

    .line 10
    add-long/2addr p2, v0

    .line 11
    iput-wide p2, p0, Ld0/f;->c:J

    .line 12
    .line 13
    :cond_0
    return p1
.end method

.method public final skip(J)J
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Ld0/f;->c:J

    .line 12
    .line 13
    add-long/2addr v0, p1

    .line 14
    iput-wide v0, p0, Ld0/f;->c:J

    .line 15
    .line 16
    :cond_0
    return-wide p1
.end method
