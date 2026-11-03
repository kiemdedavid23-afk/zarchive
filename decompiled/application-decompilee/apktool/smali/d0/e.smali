.class public final Ld0/e;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "SourceFile"

# interfaces
.implements Ld0/d;
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:[B

.field public b:I

.field public c:Ljava/io/FileDescriptor;

.field public d:Ljava/lang/String;

.field public e:J

.field public final f:[J

.field public final g:Lru/zdevs/zarchiver/archiver/NArc;

.field public final h:Landroid/os/ParcelFileDescriptor;

.field public i:Z

.field public j:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>([JILru/zdevs/zarchiver/archiver/NArc;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/e;->f:[J

    .line 5
    .line 6
    new-array p2, p2, [B

    .line 7
    .line 8
    iput-object p2, p0, Ld0/e;->a:[B

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    iput p2, p0, Ld0/e;->b:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 15
    .line 16
    iput-object v0, p0, Ld0/e;->d:Ljava/lang/String;

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, Ld0/e;->e:J

    .line 21
    .line 22
    iput-object p3, p0, Ld0/e;->g:Lru/zdevs/zarchiver/archiver/NArc;

    .line 23
    .line 24
    aget-wide v1, p1, p2

    .line 25
    .line 26
    long-to-int p1, v1

    .line 27
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Ld0/e;->h:Landroid/os/ParcelFileDescriptor;

    .line 32
    .line 33
    iput-boolean p2, p0, Ld0/e;->i:Z

    .line 34
    .line 35
    iput-object v0, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Ld0/e;->f:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Ld0/e;->g:Lru/zdevs/zarchiver/archiver/NArc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ld0/e;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ld0/e;->onRelease()V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public final e(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ld0/e;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :goto_0
    iget v0, p0, Ld0/e;->b:I

    .line 7
    .line 8
    if-ge v0, p1, :cond_3

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Ld0/e;->h:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Ld0/e;->a:[B

    .line 17
    .line 18
    iget v2, p0, Ld0/e;->b:I

    .line 19
    .line 20
    const/16 v3, 0x800

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    const/4 v0, -0x1

    .line 28
    :goto_1
    if-gtz v0, :cond_2

    .line 29
    .line 30
    iget-boolean p1, p0, Ld0/e;->i:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Ld0/e;->i:Z

    .line 37
    .line 38
    iget-object p1, p0, Ld0/e;->h:Landroid/os/ParcelFileDescriptor;

    .line 39
    .line 40
    invoke-static {p1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v0, 0x32

    .line 44
    .line 45
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    .line 48
    :catch_1
    iget-object p1, p0, Ld0/e;->g:Lru/zdevs/zarchiver/archiver/NArc;

    .line 49
    .line 50
    invoke-static {p1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget v1, p0, Ld0/e;->b:I

    .line 55
    .line 56
    add-int/2addr v1, v0

    .line 57
    iput v1, p0, Ld0/e;->b:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    :goto_2
    return-void
.end method

.method public final f()Z
    .locals 10

    .line 1
    iget-object v0, p0, Ld0/e;->f:[J

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-wide v2, v0, v1

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v0, v2, v4

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ld0/e;->a:[B

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    int-to-long v6, v0

    .line 17
    iget-object v0, p0, Ld0/e;->f:[J

    .line 18
    .line 19
    aget-wide v8, v0, v1

    .line 20
    .line 21
    cmp-long v0, v6, v8

    .line 22
    .line 23
    if-ltz v0, :cond_0

    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    iget-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v6, "~"

    .line 44
    .line 45
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v6, ".tmp"

    .line 56
    .line 57
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v0, v3}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Ld0/e;->d:Ljava/lang/String;

    .line 69
    .line 70
    sget v3, Landroid/system/OsConstants;->O_RDWR:I

    .line 71
    .line 72
    sget v6, Landroid/system/OsConstants;->O_CREAT:I

    .line 73
    .line 74
    or-int/2addr v3, v6

    .line 75
    invoke-static {v0, v3, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    return v2

    .line 84
    :cond_1
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lb/d;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_2
    iget-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 92
    .line 93
    sget v3, Landroid/system/OsConstants;->SEEK_END:I

    .line 94
    .line 95
    invoke-static {v0, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 96
    .line 97
    .line 98
    :try_start_0
    iget-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 99
    .line 100
    iget-object v3, p0, Ld0/e;->a:[B

    .line 101
    .line 102
    iget v4, p0, Ld0/e;->b:I

    .line 103
    .line 104
    invoke-static {v0, v3, v2, v4}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    iget-wide v3, p0, Ld0/e;->e:J

    .line 108
    .line 109
    iget v0, p0, Ld0/e;->b:I

    .line 110
    .line 111
    int-to-long v5, v0

    .line 112
    add-long/2addr v3, v5

    .line 113
    iput-wide v3, p0, Ld0/e;->e:J

    .line 114
    .line 115
    iput v2, p0, Ld0/e;->b:I

    .line 116
    .line 117
    return v1

    .line 118
    :catch_0
    return v2
.end method

.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 9
    .line 10
    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Ld0/e;->d:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Landroid/system/Os;->remove(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Ld0/e;->d:Ljava/lang/String;
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :catch_0
    :cond_1
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "NFileDescriptorBufferedCallback"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    iget-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Ld0/e;->a:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final onGetSize()J
    .locals 5

    iget-object v0, p0, Ld0/e;->f:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld0/e;->a:[B

    array-length v0, v0

    int-to-long v1, v0

    :goto_0
    return-wide v1
.end method

.method public final onRead(JI[B)I
    .locals 8

    .line 1
    iget-wide v0, p0, Ld0/e;->e:J

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-gez v2, :cond_0

    .line 7
    .line 8
    sub-long/2addr v0, p1

    .line 9
    long-to-int v0, v0

    .line 10
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 15
    .line 16
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    .line 17
    .line 18
    invoke-static {v1, p1, p2, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v1, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 22
    .line 23
    invoke-static {v1, p4, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    if-ne v0, p3, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :catch_0
    return v3

    .line 30
    :cond_0
    move v0, v3

    .line 31
    :cond_1
    iget-object v1, p0, Ld0/e;->a:[B

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    int-to-long v1, p3

    .line 37
    add-long/2addr v1, p1

    .line 38
    iget-wide v4, p0, Ld0/e;->e:J

    .line 39
    .line 40
    iget-object v6, p0, Ld0/e;->a:[B

    .line 41
    .line 42
    array-length v6, v6

    .line 43
    int-to-long v6, v6

    .line 44
    add-long/2addr v4, v6

    .line 45
    cmp-long v1, v1, v4

    .line 46
    .line 47
    if-lez v1, :cond_5

    .line 48
    .line 49
    iget-object v1, p0, Ld0/e;->a:[B

    .line 50
    .line 51
    array-length v1, v1

    .line 52
    invoke-virtual {p0, v1}, Ld0/e;->e(I)V

    .line 53
    .line 54
    .line 55
    iget v1, p0, Ld0/e;->b:I

    .line 56
    .line 57
    if-gtz v1, :cond_3

    .line 58
    .line 59
    return v0

    .line 60
    :cond_3
    int-to-long v4, v0

    .line 61
    add-long/2addr v4, p1

    .line 62
    iget-wide v6, p0, Ld0/e;->e:J

    .line 63
    .line 64
    cmp-long v2, v4, v6

    .line 65
    .line 66
    if-ltz v2, :cond_4

    .line 67
    .line 68
    int-to-long v1, v1

    .line 69
    add-long/2addr v1, v6

    .line 70
    cmp-long v1, v4, v1

    .line 71
    .line 72
    if-gez v1, :cond_4

    .line 73
    .line 74
    sub-long/2addr v4, v6

    .line 75
    long-to-int v1, v4

    .line 76
    iget-object v2, p0, Ld0/e;->a:[B

    .line 77
    .line 78
    iget v4, p0, Ld0/e;->b:I

    .line 79
    .line 80
    sub-int/2addr v4, v1

    .line 81
    invoke-static {v2, v1, p4, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    .line 83
    .line 84
    iget v2, p0, Ld0/e;->b:I

    .line 85
    .line 86
    sub-int/2addr v2, v1

    .line 87
    add-int/2addr v2, v0

    .line 88
    move v0, v2

    .line 89
    :cond_4
    invoke-virtual {p0}, Ld0/e;->f()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    return v0

    .line 96
    :cond_5
    iget-wide v1, p0, Ld0/e;->e:J

    .line 97
    .line 98
    int-to-long v4, v0

    .line 99
    add-long/2addr p1, v4

    .line 100
    cmp-long v4, v1, p1

    .line 101
    .line 102
    if-gtz v4, :cond_a

    .line 103
    .line 104
    sub-long/2addr p1, v1

    .line 105
    long-to-int p1, p1

    .line 106
    iget-object p2, p0, Ld0/e;->a:[B

    .line 107
    .line 108
    array-length p2, p2

    .line 109
    sub-int/2addr p2, p1

    .line 110
    sub-int/2addr p3, v0

    .line 111
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-nez p2, :cond_6

    .line 116
    .line 117
    return v0

    .line 118
    :cond_6
    add-int p3, p1, p2

    .line 119
    .line 120
    iget v1, p0, Ld0/e;->b:I

    .line 121
    .line 122
    if-le p3, v1, :cond_7

    .line 123
    .line 124
    invoke-virtual {p0, p3}, Ld0/e;->e(I)V

    .line 125
    .line 126
    .line 127
    :cond_7
    iget v1, p0, Ld0/e;->b:I

    .line 128
    .line 129
    if-le p3, v1, :cond_8

    .line 130
    .line 131
    sub-int p2, v1, p1

    .line 132
    .line 133
    :cond_8
    if-gez p2, :cond_9

    .line 134
    .line 135
    return v3

    .line 136
    :cond_9
    iget-object p3, p0, Ld0/e;->a:[B

    .line 137
    .line 138
    invoke-static {p3, p1, p4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    add-int/2addr v0, p2

    .line 142
    iget-boolean p1, p0, Ld0/e;->i:Z

    .line 143
    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    invoke-virtual {p0}, Ld0/e;->f()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_a

    .line 151
    .line 152
    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Ld0/e;->a:[B

    .line 154
    .line 155
    :cond_a
    return v0
.end method

.method public final onRelease()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld0/e;->a:[B

    .line 3
    .line 4
    iget-boolean v1, p0, Ld0/e;->i:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Ld0/e;->i:Z

    .line 11
    .line 12
    iget-object v1, p0, Ld0/e;->h:Landroid/os/ParcelFileDescriptor;

    .line 13
    .line 14
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v1, 0x32

    .line 18
    .line 19
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :catch_0
    iget-object v1, p0, Ld0/e;->g:Lru/zdevs/zarchiver/archiver/NArc;

    .line 23
    .line 24
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_1
    iget-object v1, p0, Ld0/e;->c:Ljava/io/FileDescriptor;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Ld0/e;->c:Ljava/io/FileDescriptor;
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    :catch_1
    :cond_1
    iget-object v1, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 37
    .line 38
    iput-object v0, p0, Ld0/e;->j:Landroid/os/HandlerThread;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 43
    .line 44
    .line 45
    :cond_2
    :try_start_2
    iget-object v1, p0, Ld0/e;->d:Ljava/lang/String;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    invoke-static {v1}, Landroid/system/Os;->remove(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Ld0/e;->d:Ljava/lang/String;
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    .line 54
    :catch_2
    :cond_3
    return-void
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Ld0/e;->onRelease()V

    return-void
.end method
