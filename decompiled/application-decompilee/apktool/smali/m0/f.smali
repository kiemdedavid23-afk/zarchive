.class public final Lm0/f;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/FileDescriptor;

.field public final b:Landroid/os/ParcelFileDescriptor;

.field public final c:Ljava/lang/Object;

.field public volatile d:Z

.field public final e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/f;->c:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lm0/f;->d:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lm0/f;->a:Ljava/io/FileDescriptor;

    .line 19
    .line 20
    iput-object p1, p0, Lm0/f;->b:Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    iput-wide p2, p0, Lm0/f;->e:J

    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    iput-wide p1, p0, Lm0/f;->f:J

    .line 27
    .line 28
    iput-wide p1, p0, Lm0/f;->g:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget-wide v0, p0, Lm0/f;->e:J

    iget-wide v2, p0, Lm0/f;->f:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    long-to-int v0, v0

    return v0
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lm0/f;->d:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lm0/f;->d:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v0, p0, Lm0/f;->b:Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    throw v1
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lm0/f;->close()V

    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lm0/f;->f:J

    .line 3
    .line 4
    iput-wide v0, p0, Lm0/f;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit p0

    .line 10
    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lm0/f;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    aget-byte v0, v1, v2

    and-int/lit16 v3, v0, 0xff

    :cond_0
    return v3
.end method

.method public final read([BII)I
    .locals 2

    .line 2
    iget-boolean v0, p0, Lm0/f;->d:Z

    if-eqz v0, :cond_1

    if-gtz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream Closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lm0/f;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, -0x1

    if-gtz p3, :cond_3

    .line 5
    invoke-virtual {p0}, Lm0/f;->available()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    .line 6
    :cond_3
    :try_start_0
    iget-object v1, p0, Lm0/f;->a:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    if-lez p1, :cond_4

    .line 7
    iget-wide p2, p0, Lm0/f;->f:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lm0/f;->f:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_4
    return v0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final declared-synchronized reset()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lm0/f;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    iget-object v0, p0, Lm0/f;->a:Ljava/io/FileDescriptor;

    .line 7
    .line 8
    iget-wide v1, p0, Lm0/f;->g:J

    .line 9
    .line 10
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    .line 11
    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Lm0/f;->g:J

    .line 16
    .line 17
    iput-wide v0, p0, Lm0/f;->f:J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 33
    .line 34
    const-string v1, "Stream Closed"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p0

    .line 42
    throw v0
.end method

.method public final skip(J)J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lm0/f;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lm0/f;->e:J

    .line 6
    .line 7
    iget-wide v2, p0, Lm0/f;->f:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v2, p1, v0

    .line 17
    .line 18
    if-gtz v2, :cond_0

    .line 19
    .line 20
    return-wide v0

    .line 21
    :cond_0
    :try_start_0
    iget-object v0, p0, Lm0/f;->a:Ljava/io/FileDescriptor;

    .line 22
    .line 23
    sget v1, Landroid/system/OsConstants;->SEEK_CUR:I

    .line 24
    .line 25
    invoke-static {v0, p1, p2, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 26
    .line 27
    .line 28
    iget-wide v0, p0, Lm0/f;->f:J

    .line 29
    .line 30
    add-long/2addr v0, p1

    .line 31
    iput-wide v0, p0, Lm0/f;->f:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    return-wide p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    new-instance p2, Ljava/io/IOException;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p2

    .line 45
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 46
    .line 47
    const-string p2, "Stream Closed"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method
