.class public final Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/a$b;,
        Lv0/a$c;
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lv0/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg1/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/i<",
            "Lv0/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lv0/a;->a:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lv0/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    .line 14
    new-instance v0, Lg1/i;

    .line 15
    .line 16
    invoke-direct {v0}, Lg1/i;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lv0/a;->c:Lg1/i;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lv0/a$c;Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/a;->c:Lg1/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg1/i;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lv0/a;->a:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lv0/a;->a:Z

    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lv0/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lv0/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lv0/a$b;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lv0/a;->c(Lv0/a$b;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public final b(Lv0/a$b;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv0/a;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lv0/a;->c(Lv0/a$b;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv0/a;->c:Lg1/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Lg1/i;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lv0/a;->a:Z

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lv0/a;->a:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Lv0/a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final c(Lv0/a$b;Landroid/content/Context;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 5
    .line 6
    .line 7
    move-result-object p2
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    move-object p2, v0

    .line 22
    :goto_0
    iget-object v0, p0, Lv0/a;->c:Lg1/i;

    .line 23
    .line 24
    invoke-virtual {v0}, Lg1/i;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lv0/a$c;

    .line 39
    .line 40
    new-instance v2, Lv0/a$a;

    .line 41
    .line 42
    invoke-direct {v2, v1, p1}, Lv0/a$a;-><init>(Lv0/a$c;Lv0/a$b;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    return-void
.end method

.method public final d(Lv0/a$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/a;->c:Lg1/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lg1/i;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv0/a;->c:Lg1/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Lg1/i;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput-boolean p1, p0, Lv0/a;->a:Z

    .line 13
    .line 14
    return-void
.end method

.method public final e(Lv0/c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lv0/c;->j()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1

    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public final f(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v3, v2, [Lv0/c;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, [Lv0/c;

    .line 24
    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    array-length v0, v1

    .line 27
    :goto_0
    if-ge v2, v0, :cond_6

    .line 28
    .line 29
    aget-object v3, v1, v2

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-nez p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v3}, Lv0/c;->j()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eq v4, p1, :cond_3

    .line 41
    .line 42
    :cond_2
    const/4 v4, 0x1

    .line 43
    if-ne p2, v4, :cond_5

    .line 44
    .line 45
    invoke-virtual {v3}, Lv0/c;->j()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-ge v4, p1, :cond_5

    .line 50
    .line 51
    :cond_3
    const/4 v4, -0x1

    .line 52
    if-eq p3, v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {v3}, Lv0/c;->i()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-ne p3, v4, :cond_5

    .line 59
    .line 60
    :cond_4
    invoke-virtual {v3}, Lv0/c;->e()V

    .line 61
    .line 62
    .line 63
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    return-void

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p1
.end method

.method public final g(Lv0/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method
