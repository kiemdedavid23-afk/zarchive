.class public final Lp0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/g$a;,
        Lp0/g$e;,
        Lp0/g$c;,
        Lp0/g$b;,
        Lp0/g$d;
    }
.end annotation


# instance fields
.field public a:Lp0/g$e;

.field public b:I

.field public c:B

.field public final d:Lp0/i;

.field public final e:I

.field public f:Lp0/g$a;

.field public final g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lp0/g;->b:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lp0/g;->c:B

    .line 10
    .line 11
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-wide/16 v1, 0x400

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v3, "activity"

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/app/ActivityManager;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getMemoryClass()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    int-to-long v3, p1

    .line 32
    mul-long/2addr v3, v1

    .line 33
    mul-long/2addr v3, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Runtime;->maxMemory()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    div-long/2addr v3, v1

    .line 44
    mul-long/2addr v3, v1

    .line 45
    const-wide/16 v1, 0x3

    .line 46
    .line 47
    div-long/2addr v3, v1

    .line 48
    :goto_0
    const-wide/16 v1, 0x8

    .line 49
    .line 50
    div-long/2addr v3, v1

    .line 51
    long-to-int p1, v3

    .line 52
    new-instance v1, Lp0/i;

    .line 53
    .line 54
    invoke-direct {v1, p1}, Lp0/i;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lp0/g;->d:Lp0/i;

    .line 58
    .line 59
    sget v1, Ls0/b;->k:I

    .line 60
    .line 61
    div-int/2addr p1, v1

    .line 62
    div-int/2addr p1, v1

    .line 63
    div-int/lit8 p1, p1, 0x4

    .line 64
    .line 65
    iput p1, p0, Lp0/g;->e:I

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const/4 v2, 0x2

    .line 76
    if-lt v1, v2, :cond_1

    .line 77
    .line 78
    const/16 v1, 0x12c

    .line 79
    .line 80
    if-le p1, v1, :cond_1

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    :cond_1
    iput-boolean v0, p0, Lp0/g;->g:Z

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final a(Lc0/d;Lg0/h;Lc0/g;IZZ)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp0/g;->d:Lp0/i;

    .line 3
    .line 4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lp0/i;->b(Ljava/lang/Integer;)Lp0/e$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-byte v2, p1, Lc0/d;->f:B

    .line 13
    .line 14
    const/16 v3, 0x1c

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lg0/h;->g()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p2, Lg0/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ld0/h;->e(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    if-nez p6, :cond_2

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v1, p0

    .line 43
    move v2, p4

    .line 44
    move-object v3, p1

    .line 45
    move-object v4, p3

    .line 46
    move-object v5, p2

    .line 47
    move v6, p5

    .line 48
    invoke-virtual/range {v1 .. v6}, Lp0/g;->b(ILc0/d;Lc0/g;Lg0/h;Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    iput p2, v1, Lp0/e$a;->d:I

    .line 56
    .line 57
    iget-object p2, v1, Lp0/e$a;->c:[Ljava/lang/String;

    .line 58
    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    aget-object p2, p2, p3

    .line 63
    .line 64
    iput-object p2, p1, Lc0/d;->h:Ljava/lang/Object;

    .line 65
    .line 66
    :cond_3
    iget-object p1, v1, Lp0/e$a;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    return-object p1

    .line 69
    :catch_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final b(ILc0/d;Lc0/g;Lg0/h;Z)V
    .locals 13

    .line 1
    move-object v1, p0

    .line 2
    iget-object v0, v1, Lp0/g;->f:Lp0/g$a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, v1, Lp0/g;->f:Lp0/g$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, v1, Lp0/g;->f:Lp0/g$a;

    .line 21
    .line 22
    iget-object v2, v0, Lp0/g$a;->e:Lp0/g;

    .line 23
    .line 24
    iget-byte v2, v2, Lp0/g;->c:B

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x3

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eq v2, v4, :cond_2

    .line 30
    .line 31
    move v12, p1

    .line 32
    move-object/from16 v6, p3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v2, v0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 36
    .line 37
    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v0, v0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Lp0/g$b;

    .line 55
    .line 56
    iget v6, v4, Lp0/g$b;->d:I

    .line 57
    .line 58
    move v12, p1

    .line 59
    if-ne v6, v12, :cond_3

    .line 60
    .line 61
    move-object/from16 v6, p3

    .line 62
    .line 63
    iput-object v6, v4, Lp0/g$b;->e:Lc0/g;

    .line 64
    .line 65
    monitor-exit v2

    .line 66
    move v0, v5

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object/from16 v6, p3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v12, p1

    .line 72
    move-object/from16 v6, p3

    .line 73
    .line 74
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :goto_1
    move v0, v3

    .line 76
    :goto_2
    if-eqz v0, :cond_6

    .line 77
    .line 78
    iget-object v0, v1, Lp0/g;->f:Lp0/g$a;

    .line 79
    .line 80
    new-instance v2, Lp0/g$b;

    .line 81
    .line 82
    if-eqz p5, :cond_5

    .line 83
    .line 84
    const/4 v5, 0x4

    .line 85
    :cond_5
    or-int/lit8 v10, v5, 0x1

    .line 86
    .line 87
    move-object v7, v2

    .line 88
    move-object v8, p2

    .line 89
    move-object/from16 v9, p4

    .line 90
    .line 91
    move-object/from16 v11, p3

    .line 92
    .line 93
    move v12, p1

    .line 94
    invoke-direct/range {v7 .. v12}, Lp0/g$b;-><init>(Lc0/d;Lg0/h;ILc0/g;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lp0/g$a;->b(Lp0/g$b;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    return-void

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw v0
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g;->f:Lp0/g$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lp0/g$a;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lp0/g;->d:Lp0/i;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lp0/i;->f()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    if-le v1, p1, :cond_3

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, v0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lp0/i;->d(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    monitor-exit v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    monitor-exit v0

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1

    .line 67
    :cond_2
    invoke-virtual {v0}, Lp0/i;->a()V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method public final d(Lp0/g$c;I)V
    .locals 1

    .line 1
    if-gtz p2, :cond_0

    .line 2
    .line 3
    sget p2, Ls0/b;->k:I

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lp0/g;->f:Lp0/g$a;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lp0/g$a;

    .line 10
    .line 11
    invoke-direct {v0, p0, p2}, Lp0/g$a;-><init>(Lp0/g;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lp0/g;->f:Lp0/g$a;

    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Lp0/g;->f:Lp0/g$a;

    .line 21
    .line 22
    const-string v0, "ImageLoader"

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    if-nez p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance p2, Lp0/g$e;

    .line 32
    .line 33
    invoke-direct {p2, p1}, Lp0/g$e;-><init>(Lp0/g$c;)V

    .line 34
    .line 35
    .line 36
    move-object p1, p2

    .line 37
    :goto_0
    iput-object p1, p0, Lp0/g;->a:Lp0/g$e;

    .line 38
    .line 39
    return-void
.end method

.method public final e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g;->f:Lp0/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lp0/g;->f:Lp0/g$a;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lp0/g;->a:Lp0/g$e;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, p0, Lp0/g;->a:Lp0/g$e;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    iput-object v1, p0, Lp0/g;->a:Lp0/g$e;

    .line 25
    .line 26
    :cond_1
    if-ltz p1, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lp0/g;->c(I)V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method
