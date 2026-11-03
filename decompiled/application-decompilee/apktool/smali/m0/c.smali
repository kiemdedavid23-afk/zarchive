.class public final Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;JZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    cmp-long v4, v4, p1

    .line 24
    .line 25
    if-gez v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    invoke-static {v3, p1, p2, v4}, Lm0/c;->a(Ljava/io/File;JZ)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-eqz p3, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public static b(Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-wide v1, 0x7fffffffffffffffL

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    const-wide/32 v3, 0xa4cb80

    .line 29
    .line 30
    .line 31
    sub-long/2addr v1, v3

    .line 32
    :goto_0
    const/4 p0, 0x0

    .line 33
    invoke-static {v0, v1, v2, p0}, Lm0/c;->a(Ljava/io/File;JZ)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public static c(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    aget-object v2, p0, v1

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-static {v2}, Lm0/c;->c(Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public static d(Ljava/io/File;Lg0/e$b;Lu0/d;)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    :try_start_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    invoke-direct {v5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    new-instance v7, Lm0/b;

    .line 26
    .line 27
    invoke-direct {v7, v4, v5, p2}, Lm0/b;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicLong;Lu0/d;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v6, v7}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    .line 33
    :try_start_2
    iget-wide v6, p1, Lg0/e$b;->c:J

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    add-long/2addr v8, v6

    .line 40
    iput-wide v8, p1, Lg0/e$b;->c:J

    .line 41
    .line 42
    iget v5, p1, Lg0/e$b;->d:I

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    add-int/2addr v4, v5

    .line 49
    iput v4, p1, Lg0/e$b;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 50
    .line 51
    move v4, v2

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move v4, v3

    .line 54
    :goto_0
    if-eqz v4, :cond_0

    .line 55
    .line 56
    return-void

    .line 57
    :catch_1
    :cond_0
    iput-wide v0, p1, Lg0/e$b;->c:J

    .line 58
    .line 59
    iput v3, p1, Lg0/e$b;->d:I

    .line 60
    .line 61
    :cond_1
    invoke-static {p0}, Lw0/a;->a(Ljava/io/File;)B

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eq v0, v2, :cond_3

    .line 66
    .line 67
    const/4 v1, 0x3

    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move v1, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    const/16 v1, 0x9

    .line 74
    .line 75
    :goto_2
    const/4 v4, 0x2

    .line 76
    if-ne v0, v4, :cond_4

    .line 77
    .line 78
    or-int/lit8 v1, v1, 0x2

    .line 79
    .line 80
    :cond_4
    if-eq v0, v4, :cond_5

    .line 81
    .line 82
    if-ne v0, v2, :cond_6

    .line 83
    .line 84
    :cond_5
    or-int/lit8 v1, v1, 0x4

    .line 85
    .line 86
    :cond_6
    const/4 v0, 0x4

    .line 87
    invoke-static {v1, v0}, Lb/d;->K(II)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {p0, p1, p2, v3, v0}, Lm0/c;->e(Ljava/io/File;Lg0/e$b;Lu0/d;IZ)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public static e(Ljava/io/File;Lg0/e$b;Lu0/d;IZ)V
    .locals 5

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    if-le p3, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v1, p0

    .line 15
    if-ge v0, v1, :cond_5

    .line 16
    .line 17
    if-eqz p2, :cond_2

    .line 18
    .line 19
    invoke-interface {p2}, Lu0/d;->isCancelled()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_5

    .line 24
    .line 25
    :cond_2
    if-eqz p4, :cond_3

    .line 26
    .line 27
    :try_start_0
    aget-object v1, p0, v0

    .line 28
    .line 29
    invoke-static {v1}, Lm0/c;->f(Ljava/io/File;)Z

    .line 30
    .line 31
    .line 32
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_0
    :cond_3
    aget-object v1, p0, v0

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    aget-object v1, p0, v0

    .line 45
    .line 46
    add-int/lit8 v2, p3, 0x1

    .line 47
    .line 48
    invoke-static {v1, p1, p2, v2, p4}, Lm0/c;->e(Ljava/io/File;Lg0/e$b;Lu0/d;IZ)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    iget-wide v1, p1, Lg0/e$b;->c:J

    .line 53
    .line 54
    aget-object v3, p0, v0

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    add-long/2addr v3, v1

    .line 61
    iput-wide v3, p1, Lg0/e$b;->c:J

    .line 62
    .line 63
    iget v1, p1, Lg0/e$b;->d:I

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    iput v1, p1, Lg0/e$b;->d:I

    .line 68
    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    return-void
.end method

.method public static f(Ljava/io/File;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/system/StructStat;->st_mode:I

    .line 10
    .line 11
    invoke-static {p0}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method
