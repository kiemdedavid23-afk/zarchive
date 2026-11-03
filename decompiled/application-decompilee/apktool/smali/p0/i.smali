.class public final Lp0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lp0/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lp0/i;->c:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    const/high16 v2, 0x3f400000    # 0.75f

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v1, v0, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    iput p1, p0, Lp0/i;->b:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lp0/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/Integer;)Lp0/e$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lp0/e$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit p0

    .line 14
    throw p1
.end method

.method public final c(Ljava/lang/Integer;Lp0/e$a;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lp0/e$a;

    .line 9
    .line 10
    iget v0, p0, Lp0/i;->c:I

    .line 11
    .line 12
    iget-object p2, p2, Lp0/e$a;->a:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    const/16 v1, 0x400

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    add-int/2addr p2, v1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move p2, v1

    .line 27
    :goto_0
    add-int/2addr v0, p2

    .line 28
    iput v0, p0, Lp0/i;->c:I

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p1, Lp0/e$a;->a:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-int/2addr v1, p1

    .line 41
    :cond_1
    sub-int/2addr v0, v1

    .line 42
    iput v0, p0, Lp0/i;->c:I

    .line 43
    .line 44
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    iget p1, p0, Lp0/i;->b:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lp0/i;->e(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method

.method public final declared-synchronized d(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lp0/e$a;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget v0, p0, Lp0/i;->c:I

    .line 13
    .line 14
    iget-object p1, p1, Lp0/e$a;->a:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    const/16 v1, 0x400

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    add-int/2addr v1, p1

    .line 25
    :cond_0
    sub-int/2addr v0, v1

    .line 26
    iput v0, p0, Lp0/i;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    :cond_1
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final e(I)V
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Lp0/i;->c:I

    .line 2
    .line 3
    if-le v0, p1, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lp0/i;->d(Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lp0/i;->c:I

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp0/i;->a:Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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
    const/4 v1, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lp0/e$a;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget v3, v3, Lp0/e$a;->d:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    if-nez v1, :cond_2

    .line 40
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/Integer;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lp0/i;->d(Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    throw v0
.end method
