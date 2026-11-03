.class public final Ln0/c;
.super Landroid/os/ProxyFileDescriptorCallback;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:J

.field public d:Lm0/e;

.field public e:Ln0/d;

.field public f:J

.field public g:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(ILjava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ProxyFileDescriptorCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ln0/c;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Ln0/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Ln0/c;->c:J

    .line 9
    .line 10
    const-wide/16 p3, 0x0

    .line 11
    .line 12
    iput-wide p3, p0, Ln0/c;->f:J

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    invoke-static {p1, p2}, Lm0/e;->a(ILjava/lang/String;)Lm0/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Ln0/c;->d:Lm0/e;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1, p2}, Ln0/d;->a(ILjava/lang/String;)Ln0/d;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Ln0/c;->e:Ln0/d;

    .line 28
    .line 29
    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Ln0/c;->g:Landroid/os/HandlerThread;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/c;->g:Landroid/os/HandlerThread;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ln0/c;->g:Landroid/os/HandlerThread;

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

.method public final onGetSize()J
    .locals 2

    iget-object v0, p0, Ln0/c;->d:Lm0/e;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ln0/c;->c:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ln0/c;->f:J

    :goto_0
    return-wide v0
.end method

.method public final onRead(JI[B)I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ln0/c;->d:Lm0/e;

    .line 4
    .line 5
    const-string v2, "onRead"

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-wide v3, v1, Ln0/c;->f:J

    .line 10
    .line 11
    cmp-long v3, v3, p1

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 18
    .line 19
    .line 20
    iget v0, v1, Ln0/c;->a:I

    .line 21
    .line 22
    iget-object v3, v1, Ln0/c;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0, v3}, Lm0/e;->a(ILjava/lang/String;)Lm0/e;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, v1, Ln0/c;->d:Lm0/e;

    .line 29
    .line 30
    iput-wide v4, v1, Ln0/c;->f:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v2, Landroid/system/ErrnoException;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-direct {v2, v0, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    throw v2

    .line 45
    :cond_0
    :goto_0
    iget-wide v6, v1, Ln0/c;->f:J

    .line 46
    .line 47
    cmp-long v0, v6, p1

    .line 48
    .line 49
    if-gez v0, :cond_4

    .line 50
    .line 51
    sub-long v8, p1, v6

    .line 52
    .line 53
    cmp-long v0, v8, v4

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    if-gtz v0, :cond_1

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_1
    const-wide/16 v10, 0x800

    .line 60
    .line 61
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v10

    .line 65
    long-to-int v0, v10

    .line 66
    new-array v10, v0, [B

    .line 67
    .line 68
    move-wide v11, v8

    .line 69
    :goto_1
    cmp-long v13, v11, v4

    .line 70
    .line 71
    if-lez v13, :cond_3

    .line 72
    .line 73
    :try_start_1
    iget-object v13, v1, Ln0/c;->d:Lm0/e;

    .line 74
    .line 75
    int-to-long v14, v0

    .line 76
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->min(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v14

    .line 80
    long-to-int v14, v14

    .line 81
    invoke-virtual {v13, v10, v3, v14}, Lm0/e;->read([BII)I

    .line 82
    .line 83
    .line 84
    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    if-gez v13, :cond_2

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    int-to-long v13, v13

    .line 89
    sub-long/2addr v11, v13

    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 92
    new-instance v2, Landroid/system/ErrnoException;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget v3, Landroid/system/OsConstants;->EINTR:I

    .line 99
    .line 100
    invoke-direct {v2, v0, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    throw v2

    .line 104
    :cond_3
    :goto_2
    sub-long v4, v8, v11

    .line 105
    .line 106
    :goto_3
    add-long/2addr v6, v4

    .line 107
    iput-wide v6, v1, Ln0/c;->f:J

    .line 108
    .line 109
    cmp-long v0, v6, p1

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    return v3

    .line 114
    :cond_4
    move/from16 v0, p3

    .line 115
    .line 116
    :goto_4
    if-lez v0, :cond_6

    .line 117
    .line 118
    :try_start_2
    iget-object v3, v1, Ln0/c;->d:Lm0/e;

    .line 119
    .line 120
    sub-int v4, p3, v0

    .line 121
    .line 122
    move-object/from16 v5, p4

    .line 123
    .line 124
    invoke-virtual {v3, v5, v4, v0}, Lm0/e;->read([BII)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-gtz v3, :cond_5

    .line 129
    .line 130
    return v4

    .line 131
    :cond_5
    sub-int/2addr v0, v3

    .line 132
    iget-wide v6, v1, Ln0/c;->f:J

    .line 133
    .line 134
    int-to-long v3, v3

    .line 135
    add-long/2addr v6, v3

    .line 136
    iput-wide v6, v1, Ln0/c;->f:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catch_2
    new-instance v0, Landroid/system/ErrnoException;

    .line 140
    .line 141
    sget v3, Landroid/system/OsConstants;->EIO:I

    .line 142
    .line 143
    invoke-direct {v0, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_6
    sub-int v0, p3, v0

    .line 148
    .line 149
    return v0

    .line 150
    :cond_7
    new-instance v0, Landroid/system/ErrnoException;

    .line 151
    .line 152
    sget v3, Landroid/system/OsConstants;->EBADF:I

    .line 153
    .line 154
    invoke-direct {v0, v2, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    throw v0
.end method

.method public final onRelease()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln0/c;->d:Lm0/e;

    .line 2
    .line 3
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln0/c;->d:Lm0/e;

    .line 8
    .line 9
    iget-object v1, p0, Ln0/c;->e:Ln0/d;

    .line 10
    .line 11
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Ln0/c;->e:Ln0/d;

    .line 15
    .line 16
    iget-object v1, p0, Ln0/c;->g:Landroid/os/HandlerThread;

    .line 17
    .line 18
    iput-object v0, p0, Ln0/c;->g:Landroid/os/HandlerThread;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final onWrite(JI[B)I
    .locals 6

    .line 1
    iget-object v0, p0, Ln0/c;->e:Ln0/d;

    .line 2
    .line 3
    const-string v1, "onWrite"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-wide v2, p0, Ln0/c;->f:J

    .line 8
    .line 9
    cmp-long p1, v2, p1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput-boolean p2, v0, Ln0/d;->b:Z

    .line 15
    .line 16
    return p2

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {v0, p4, p2, p3}, Ln0/d;->write([BII)V

    .line 18
    .line 19
    .line 20
    iget-wide v2, p0, Ln0/c;->f:J

    .line 21
    .line 22
    int-to-long v4, p3

    .line 23
    add-long/2addr v2, v4

    .line 24
    iput-wide v2, p0, Ln0/c;->f:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return p3

    .line 27
    :catch_0
    iget-object p1, p0, Ln0/c;->e:Ln0/d;

    .line 28
    .line 29
    iput-boolean p2, p1, Ln0/d;->b:Z

    .line 30
    .line 31
    new-instance p1, Landroid/system/ErrnoException;

    .line 32
    .line 33
    sget p2, Landroid/system/OsConstants;->EIO:I

    .line 34
    .line 35
    invoke-direct {p1, v1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Landroid/system/ErrnoException;

    .line 40
    .line 41
    sget p2, Landroid/system/OsConstants;->EBADF:I

    .line 42
    .line 43
    invoke-direct {p1, v1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
