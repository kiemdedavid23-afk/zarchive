.class public final Lcom/davemorrissey/labs/subscaleview/decoder/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;


# direct methods
.method public constructor <init>(Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/a;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/a;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 4
    .line 5
    if-eqz v1, :cond_6

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v1

    .line 15
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/a;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 16
    .line 17
    iget-wide v3, v1, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->f:J

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    if-lt v2, v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    int-to-long v5, v2

    .line 24
    mul-long/2addr v5, v3

    .line 25
    const-wide/32 v3, 0x1400000

    .line 26
    .line 27
    .line 28
    cmp-long v1, v5, v3

    .line 29
    .line 30
    if-lez v1, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-lt v2, v1, :cond_3

    .line 42
    .line 43
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->d:Landroid/content/Context;

    .line 52
    .line 53
    const-string v1, "activity"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    .line 61
    const/4 v1, 0x1

    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .line 65
    .line 66
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    move v0, v1

    .line 76
    :goto_1
    if-eqz v0, :cond_5

    .line 77
    .line 78
    :goto_2
    const/4 v1, 0x0

    .line 79
    goto :goto_3

    .line 80
    :cond_5
    const-wide/32 v2, 0x100000

    .line 81
    .line 82
    .line 83
    div-long/2addr v5, v2

    .line 84
    :goto_3
    if-eqz v1, :cond_6

    .line 85
    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/a;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder$a;

    .line 89
    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/a;->a:Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaPooledImageRegionDecoder;->e()V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    monitor-exit v1

    .line 111
    throw v0

    .line 112
    :cond_6
    return-void
.end method
