.class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
    }
.end annotation


# instance fields
.field public a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

.field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final c:Landroid/graphics/Bitmap$Config;

.field public d:Landroid/content/Context;

.field public e:Lg/a;

.field public f:J

.field public final g:Landroid/graphics/Point;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    .line 19
    const-wide v0, 0x7fffffffffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->f:J

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Point;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-static {}, Lg/d;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->c(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public final b(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;

    .line 16
    .line 17
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 18
    .line 19
    if-lt v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 26
    .line 27
    if-ge v0, v1, :cond_1

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->f:J

    .line 40
    .line 41
    const-wide v2, 0x7fffffffffffffffL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v0, v0, v2

    .line 47
    .line 48
    if-gez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Lcom/davemorrissey/labs/subscaleview/decoder/a;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lcom/davemorrissey/labs/subscaleview/decoder/a;-><init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->d()Landroid/graphics/BitmapRegionDecoder;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_3

    .line 82
    .line 83
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    .line 84
    .line 85
    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .line 87
    .line 88
    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 89
    .line 90
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;

    .line 91
    .line 92
    iput-object p1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 93
    .line 94
    invoke-virtual {v1, p2, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    :try_start_2
    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 101
    .line 102
    invoke-static {p2, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 110
    .line 111
    .line 112
    return-object p1

    .line 113
    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    const-string p2, "Skia image decoder returned null bitmap - image format may not be supported"

    .line 116
    .line 117
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    :try_start_4
    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 123
    .line 124
    invoke-static {p2, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_3
    if-eqz v1, :cond_4

    .line 129
    .line 130
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 131
    .line 132
    invoke-static {p1, v1}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    const-string p2, "Cannot decode region after decoder has been recycled"

    .line 138
    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    .line 150
    .line 151
    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_3
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    monitor-exit p0

    .line 49
    throw v0
.end method

.method public final d(Landroid/content/Context;Lg/a;)Landroid/graphics/Point;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;

    .line 9
    .line 10
    return-object p1
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 2
    .line 3
    iget-object v1, v0, Lg/a;->d:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_7

    .line 6
    .line 7
    iget-object v1, v0, Lg/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-wide v3, 0x7fffffffffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 24
    .line 25
    iget-object v2, v2, Lg/a;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, v0, Lg/a;->c:Landroid/os/ParcelFileDescriptor;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    sget v5, Landroid/system/OsConstants;->SEEK_SET:I

    .line 52
    .line 53
    invoke-static {v1, v3, v4, v5}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 65
    .line 66
    iget-wide v3, v1, Lg/a;->e:J

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    .line 70
    :try_start_1
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 77
    .line 78
    iget-object v5, v5, Lg/a;->a:Landroid/net/Uri;

    .line 79
    .line 80
    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 85
    .line 86
    .line 87
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 88
    :try_start_2
    iget-object v5, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 89
    .line 90
    iget-object v5, v5, Lg/a;->a:Landroid/net/Uri;

    .line 91
    .line 92
    const-string v6, "r"

    .line 93
    .line 94
    invoke-virtual {v1, v5, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    .line 106
    .line 107
    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    .line 108
    .line 109
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    move-object v0, v2

    .line 113
    :catch_1
    :cond_4
    :goto_0
    iput-wide v3, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->f:J

    .line 114
    .line 115
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->g:Landroid/graphics/Point;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
    .line 136
    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 138
    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    :try_start_4
    iget-object v2, v1, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    .line 144
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 145
    .line 146
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v0, v1, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a:Ljava/util/concurrent/Semaphore;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    .line 153
    .line 154
    :try_start_5
    monitor-exit v1

    .line 155
    goto :goto_1

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    monitor-exit v1

    .line 158
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 159
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :catchall_1
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :catchall_2
    move-exception v1

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 184
    .line 185
    .line 186
    :cond_6
    throw v1

    .line 187
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 188
    .line 189
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e:Lg/a;

    .line 190
    .line 191
    iget-object v1, v1, Lg/a;->d:Ljava/lang/String;

    .line 192
    .line 193
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v0
.end method
