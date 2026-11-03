.class public final Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Semaphore;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a:Ljava/util/concurrent/Semaphore;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->d()Landroid/graphics/BitmapRegionDecoder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public static b(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-ne p1, v2, :cond_0

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 43
    .line 44
    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit p0

    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit p0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    monitor-exit p0

    .line 53
    :goto_0
    const/4 p1, 0x0

    .line 54
    :goto_1
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a:Ljava/util/concurrent/Semaphore;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public static c(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method


# virtual methods
.method public final d()Landroid/graphics/BitmapRegionDecoder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->a:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    monitor-exit p0

    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    .line 59
    throw v0
.end method
