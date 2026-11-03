.class public abstract Lv0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Lu0/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lv0/a$b;",
        ">;",
        "Lu0/d;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public a:Lv0/a;

.field public b:Lv0/b;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lv0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lv0/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    return-void
.end method

.method public static h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lv0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "ZAsyncTask["

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lv0/c;->j()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "]"

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lv0/c;->f()Lv0/a$b;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lv0/c;->a:Lv0/a;

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1, p0}, Lv0/a;->g(Lv0/c;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lv0/c;->a:Lv0/a;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iget-object v2, v1, Lv0/a;->d:Ljava/util/ArrayList;

    .line 59
    .line 60
    monitor-enter v2

    .line 61
    :try_start_1
    iget-object v1, v1, Lv0/a;->d:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit v2

    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception v0

    .line 69
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    throw v0

    .line 71
    :cond_1
    :goto_0
    throw v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv0/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv0/c;->b:Lv0/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lv0/c;->a:Lv0/a;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v0, v0, Lv0/a;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    monitor-exit v1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract f()Lv0/a$b;
.end method

.method public final g(Landroid/content/Context;Lv0/a;)V
    .locals 0

    .line 1
    :try_start_0
    iput-object p2, p0, Lv0/c;->a:Lv0/a;

    .line 2
    .line 3
    new-instance p2, Lv0/b;

    .line 4
    .line 5
    invoke-direct {p2, p0, p0}, Lv0/b;-><init>(Lv0/c;Ljava/util/concurrent/Callable;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lv0/c;->b:Lv0/b;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lv0/c;->l(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lv0/c;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    iget-object p2, p0, Lv0/c;->b:Lv0/b;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lv0/c;->a:Lv0/a;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lv0/a;->e(Lv0/c;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    invoke-virtual {p0}, Lv0/c;->k()V

    .line 29
    .line 30
    .line 31
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public i()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lv0/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
