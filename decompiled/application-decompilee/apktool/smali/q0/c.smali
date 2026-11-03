.class public final Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Lg0/h;

.field public final d:Lg0/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg0/h;Lg0/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq0/c;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lq0/c;->c:Lg0/h;

    .line 7
    .line 8
    iput-object p3, p0, Lq0/c;->d:Lg0/h;

    .line 9
    .line 10
    iput-boolean p4, p0, Lq0/c;->a:Z

    .line 11
    .line 12
    return-void
.end method

.method public static c(Lg0/h;Z)Lq0/c;
    .locals 7

    .line 1
    iget-object v0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-static {v0}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Android/data/ru.zdevs.zarchiver/cache/tmp"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    const-wide/16 v5, 0x3e8

    .line 30
    .line 31
    rem-long/2addr v3, v5

    .line 32
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "/"

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    move-object v4, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string v4, ""

    .line 42
    .line 43
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lg0/h;->e()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0, v2}, Lru/zdevs/zarchiver/io/SAF;->n(Lw0/c$a;Ljava/lang/String;)Lg0/h;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    if-nez v4, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lw0/c$a;->b:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    invoke-static {v0}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    move-object v3, v0

    .line 94
    :goto_1
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 104
    .line 105
    .line 106
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-nez v2, :cond_5

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_5
    new-instance v1, Lq0/c;

    .line 111
    .line 112
    invoke-direct {v1, v0, v4, p0, p1}, Lq0/c;-><init>(Ljava/lang/String;Lg0/h;Lg0/h;Z)V

    .line 113
    .line 114
    .line 115
    :catchall_0
    return-object v1
.end method


# virtual methods
.method public final a(Lr0/a;)Z
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 14
    .line 15
    iget-object v4, p0, Lq0/c;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v4, p0, Lq0/c;->a:Z

    .line 21
    .line 22
    iget-object v5, p0, Lq0/c;->d:Lg0/h;

    .line 23
    .line 24
    iget-object v6, p0, Lq0/c;->c:Lg0/h;

    .line 25
    .line 26
    if-eqz v4, :cond_3

    .line 27
    .line 28
    invoke-virtual {v5}, Lg0/h;->f()Lg0/h;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {p1, v6, v4, v1, v0}, Lq0/b;->j(Lr0/a;Lg0/h;Lg0/h;II)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_8

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-static {v1}, Lm0/c;->c(Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 59
    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v4, :cond_5

    .line 67
    .line 68
    array-length v7, v4

    .line 69
    move v8, v2

    .line 70
    :goto_1
    if-ge v8, v7, :cond_5

    .line 71
    .line 72
    aget-object v9, v4, v8

    .line 73
    .line 74
    new-instance v10, Lg0/h;

    .line 75
    .line 76
    invoke-direct {v10, v9, v6}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, v10, v5, v1, v0}, Lq0/b;->j(Lr0/a;Lg0/h;Lg0/h;II)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-gez v1, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-static {v3}, Lm0/c;->c(Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 105
    .line 106
    .line 107
    :cond_7
    move p1, v1

    .line 108
    :cond_8
    :goto_3
    const/4 v1, -0x1

    .line 109
    if-eq p1, v1, :cond_9

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_9
    move v0, v2

    .line 113
    :goto_4
    return v0
.end method

.method public final b(Lr0/a;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lq0/c;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lq0/c;->c:Lg0/h;

    .line 8
    .line 9
    invoke-virtual {v0}, Lg0/h;->f()Lg0/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lq0/c;->d:Lg0/h;

    .line 14
    .line 15
    const/16 v3, 0x11

    .line 16
    .line 17
    invoke-static {p1, v2, v0, v3, v1}, Lq0/b;->j(Lr0/a;Lg0/h;Lg0/h;II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, -0x1

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1
.end method
