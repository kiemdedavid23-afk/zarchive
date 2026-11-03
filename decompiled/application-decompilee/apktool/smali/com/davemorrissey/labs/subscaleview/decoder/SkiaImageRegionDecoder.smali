.class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/d;


# instance fields
.field public a:Landroid/graphics/BitmapRegionDecoder;

.field public final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 11
    .line 12
    invoke-static {}, Lg/d;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;

    .line 24
    .line 25
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
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    .line 21
    .line 22
    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 23
    .line 24
    .line 25
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 26
    .line 27
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->c:Landroid/graphics/Bitmap$Config;

    .line 28
    .line 29
    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    iget-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 32
    .line 33
    invoke-virtual {p1, p2, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    const-string p2, "Skia image decoder returned null bitmap - image format may not be supported"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "Cannot decode region after decoder has been recycled"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 69
    .line 70
    .line 71
    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    :try_start_2
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_3
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    .line 39
    .line 40
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    monitor-exit p0

    .line 43
    throw v0
.end method

.method public final d(Landroid/content/Context;Lg/a;)Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p2, Lg/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iget-object v1, p2, Lg/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p2, Lg/a;->c:Landroid/os/ParcelFileDescriptor;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    sget p2, Landroid/system/OsConstants;->SEEK_SET:I

    .line 28
    .line 29
    invoke-static {p1, v2, v3, p2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object p2, p2, Lg/a;->a:Landroid/net/Uri;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-static {v1, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    new-instance p1, Landroid/graphics/Point;

    .line 66
    .line 67
    iget-object p2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageRegionDecoder;->a:Landroid/graphics/BitmapRegionDecoder;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-direct {p1, p2, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/Exception;

    .line 84
    .line 85
    const-string p2, "Content resolver returned null stream. Unable to initialise with uri."

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    throw p1

    .line 98
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 99
    .line 100
    iget-object p2, p2, Lg/a;->d:Ljava/lang/String;

    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p1
.end method
