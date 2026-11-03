.class public final Lru/zdevs/zarchiver/archiver/a;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "SourceFile"

# interfaces
.implements Ld0/d;


# instance fields
.field public final a:Lru/zdevs/zarchiver/archiver/NArc;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:[J

.field public final e:Z

.field public f:Z

.field public g:Landroid/os/ParcelFileDescriptor;

.field public h:J

.field public i:Z

.field public j:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/archiver/NArc;ILjava/lang/String;[JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 5
    .line 6
    iput p2, p0, Lru/zdevs/zarchiver/archiver/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/archiver/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    .line 11
    .line 12
    iput-boolean p5, p0, Lru/zdevs/zarchiver/archiver/a;->e:Z

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 16
    .line 17
    const-wide/16 p2, 0x0

    .line 18
    .line 19
    iput-wide p2, p0, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 20
    .line 21
    aget-wide p2, p4, p1

    .line 22
    .line 23
    long-to-int p2, p2

    .line 24
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    iput-boolean p1, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->e:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 13
    .line 14
    :cond_1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 15
    .line 16
    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lru/zdevs/zarchiver/archiver/a;->onRelease()V

    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

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
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    .line 3
    const-string v1, "NFileDescriptorCallback"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

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

    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onGetSize()J
    .locals 3

    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public final onRead(JI[B)I
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    iget-boolean v0, v1, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-wide v3, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 9
    .line 10
    cmp-long v0, v3, p1

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-lez v0, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    iget-object v5, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 18
    .line 19
    if-eqz v5, :cond_1

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    :catch_0
    :try_start_1
    iget-object v5, v1, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 27
    .line 28
    iget v6, v1, Lru/zdevs/zarchiver/archiver/a;->b:I

    .line 29
    .line 30
    iget-object v7, v1, Lru/zdevs/zarchiver/archiver/a;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v5, v6, v7}, Lru/zdevs/zarchiver/archiver/NArc;->i(ILjava/lang/String;)[J

    .line 33
    .line 34
    .line 35
    move-result-object v0
    :try_end_1
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcPasswordException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    :catch_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iput-wide v3, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 39
    .line 40
    iput-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->d:[J

    .line 41
    .line 42
    aget-wide v5, v0, v2

    .line 43
    .line 44
    long-to-int v0, v5

    .line 45
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iput-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-wide/32 v2, 0x7fffffff

    .line 53
    .line 54
    .line 55
    iput-wide v2, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 56
    .line 57
    new-instance v0, Landroid/system/ErrnoException;

    .line 58
    .line 59
    const-string v2, "recreateStream"

    .line 60
    .line 61
    sget v3, Landroid/system/OsConstants;->EIO:I

    .line 62
    .line 63
    invoke-direct {v0, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_0
    iget-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 68
    .line 69
    cmp-long v0, v5, p1

    .line 70
    .line 71
    if-gez v0, :cond_7

    .line 72
    .line 73
    sub-long v7, p1, v5

    .line 74
    .line 75
    cmp-long v0, v7, v3

    .line 76
    .line 77
    if-gtz v0, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    iget-object v0, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-wide/16 v9, 0x800

    .line 87
    .line 88
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    long-to-int v9, v9

    .line 93
    new-array v10, v9, [B

    .line 94
    .line 95
    move-wide v11, v7

    .line 96
    :goto_1
    cmp-long v13, v11, v3

    .line 97
    .line 98
    if-lez v13, :cond_6

    .line 99
    .line 100
    int-to-long v13, v9

    .line 101
    :try_start_2
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v13

    .line 105
    long-to-int v13, v13

    .line 106
    invoke-static {v0, v10, v2, v13}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 107
    .line 108
    .line 109
    move-result v13
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    if-gez v13, :cond_5

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    int-to-long v13, v13

    .line 114
    sub-long/2addr v11, v13

    .line 115
    goto :goto_1

    .line 116
    :catch_2
    move-exception v0

    .line 117
    new-instance v2, Landroid/system/ErrnoException;

    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget v3, Landroid/system/OsConstants;->EINTR:I

    .line 124
    .line 125
    invoke-direct {v2, v0, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    throw v2

    .line 129
    :cond_6
    :goto_2
    sub-long v3, v7, v11

    .line 130
    .line 131
    :goto_3
    add-long/2addr v5, v3

    .line 132
    iput-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 133
    .line 134
    cmp-long v0, v5, p1

    .line 135
    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    return v2

    .line 139
    :cond_7
    move/from16 v0, p3

    .line 140
    .line 141
    :goto_4
    if-lez v0, :cond_9

    .line 142
    .line 143
    :try_start_3
    iget-object v2, v1, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sub-int v3, p3, v0

    .line 150
    .line 151
    move-object/from16 v4, p4

    .line 152
    .line 153
    invoke-static {v2, v4, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-gtz v2, :cond_8

    .line 158
    .line 159
    return v3

    .line 160
    :cond_8
    sub-int/2addr v0, v2

    .line 161
    iget-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J

    .line 162
    .line 163
    int-to-long v2, v2

    .line 164
    add-long/2addr v5, v2

    .line 165
    iput-wide v5, v1, Lru/zdevs/zarchiver/archiver/a;->h:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catch_3
    new-instance v0, Landroid/system/ErrnoException;

    .line 169
    .line 170
    const-string v2, "onRead"

    .line 171
    .line 172
    sget v3, Landroid/system/OsConstants;->EIO:I

    .line 173
    .line 174
    invoke-direct {v0, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_9
    sub-int v0, p3, v0

    .line 179
    .line 180
    return v0
.end method

.method public final onRelease()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->i:Z

    .line 8
    .line 9
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->g:Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    invoke-static {v0}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 15
    .line 16
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->a()V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->f:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 24
    .line 25
    iget-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->d:[J

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    aget-wide v2, v1, v2

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lru/zdevs/zarchiver/archiver/NArc;->o(J)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-boolean v0, p0, Lru/zdevs/zarchiver/archiver/a;->e:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-wide/16 v0, 0x32

    .line 38
    .line 39
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 43
    .line 44
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lru/zdevs/zarchiver/archiver/a;->j:Landroid/os/HandlerThread;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method
