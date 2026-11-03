.class public final Le0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Le0/a;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public b:Le0/d;

.field public c:Lru/zdevs/zarchiver/archiver/NArc;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Le0/a;->b:Le0/d;

    .line 13
    .line 14
    iput-object v0, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Le0/a;->d:Ljava/lang/Object;

    .line 22
    .line 23
    return-void
.end method

.method public static j(Z)Le0/d;
    .locals 4

    .line 1
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Le0/a;->b:Le0/d;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    instance-of v3, v2, Lru/zdevs/zarchiver/archiver/content/ContentNative;

    .line 19
    .line 20
    if-eq p0, v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v2}, Le0/d;->clear()V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 28
    .line 29
    new-instance p0, Lru/zdevs/zarchiver/archiver/content/ContentNative;

    .line 30
    .line 31
    invoke-direct {p0}, Lru/zdevs/zarchiver/archiver/content/ContentNative;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p0, v0, Le0/a;->b:Le0/d;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance p0, Le0/c;

    .line 38
    .line 39
    invoke-direct {p0}, Le0/c;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p0, v0, Le0/a;->b:Le0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Le0/a;->o()V

    .line 52
    .line 53
    .line 54
    iget-object p0, v0, Le0/a;->b:Le0/d;

    .line 55
    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public static m()Le0/a;
    .locals 1

    .line 1
    sget-object v0, Le0/a;->e:Le0/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Le0/a;

    .line 6
    .line 7
    invoke-direct {v0}, Le0/a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Le0/a;->e:Le0/a;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Le0/a;->e:Le0/a;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Le0/d;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Le0/a;->o()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, p1}, Le0/d;->m(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Le0/a;->b:Le0/d;

    .line 21
    .line 22
    invoke-interface {p1}, Le0/d;->f()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v1, 0x2

    .line 27
    if-ne p1, v1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Le0/a;->b:Le0/d;

    .line 30
    .line 31
    invoke-interface {p1}, Le0/d;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final c()Lru/zdevs/zarchiver/archiver/NArc;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Le0/a;->b:Le0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Le0/a;->d:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_1
    iget-object v2, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    return-object v2

    .line 43
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Le0/a;->l()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2
    :try_end_2
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    return-object v1

    .line 51
    :cond_2
    :try_start_4
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Ld0/h;->e(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v1, v3}, Ld0/h;->c(Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    :cond_3
    invoke-virtual {p0}, Le0/a;->i()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v2, v3, v1}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iput-object v1, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;
    :try_end_4
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    .line 80
    :catch_0
    :try_start_5
    iget-object v1, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 81
    .line 82
    monitor-exit v0

    .line 83
    return-object v1

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    throw v1

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    iget-object v1, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 95
    .line 96
    .line 97
    throw v0
.end method

.method public final d()J
    .locals 3

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-wide/16 v1, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1}, Le0/d;->e()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    return-wide v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw v1
.end method

.method public final e(Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1, p1, p2}, Le0/d;->j(Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final f(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lc0/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, p1, p2}, Le0/d;->q(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    throw p1
.end method

.method public final g(Ljava/util/ArrayList;Lu0/d;)Lg0/e$b;
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1, p1, p2}, Le0/d;->k(Ljava/util/ArrayList;Lu0/d;)Lg0/e$b;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public final h()I
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1}, Le0/d;->g()I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final i()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_1
    invoke-interface {v1}, Le0/d;->o()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 32
    .line 33
    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    const/16 v0, 0x2f

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x0

    .line 43
    if-lez v0, :cond_1

    .line 44
    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-static {v1}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    move-object v1, v0

    .line 65
    const/16 v0, 0x20

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-lez v0, :cond_4

    .line 72
    .line 73
    const-string v3, "rar"

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    const-string v0, " 5"

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    const-string v0, "rar5"

    .line 90
    .line 91
    move-object v1, v0

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    move-object v1, v3

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 96
    .line 97
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    :cond_4
    :goto_1
    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 112
    .line 113
    .line 114
    throw v1
.end method

.method public final k()I
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1}, Le0/d;->f()I

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1}, Le0/d;->l()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Le0/a;->b:Le0/d;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1, p1}, Le0/d;->m(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->a()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Le0/a;->d:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->a()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 21
    .line 22
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Le0/a;->c:Lru/zdevs/zarchiver/archiver/NArc;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw v1

    .line 33
    :cond_1
    return-void
.end method
