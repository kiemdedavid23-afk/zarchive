.class public final Lm0/g;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/Reader;

.field public final b:[C

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStreamReader;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lm0/g;->e:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lm0/g;->f:Z

    .line 8
    .line 9
    iput-object p1, p0, Lm0/g;->a:Ljava/io/Reader;

    .line 10
    .line 11
    const/16 p1, 0x2000

    .line 12
    .line 13
    new-array p1, p1, [C

    .line 14
    .line 15
    iput-object p1, p0, Lm0/g;->b:[C

    .line 16
    .line 17
    iput v0, p0, Lm0/g;->c:I

    .line 18
    .line 19
    iput v0, p0, Lm0/g;->d:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :cond_0
    iget-object v0, p0, Lm0/g;->b:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Lm0/g;->a:Ljava/io/Reader;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/Reader;->read([CII)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-lez v0, :cond_1

    .line 14
    .line 15
    iput v0, p0, Lm0/g;->c:I

    .line 16
    .line 17
    iput v3, p0, Lm0/g;->d:I

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final b([CII)I
    .locals 5

    .line 1
    iget v0, p0, Lm0/g;->d:I

    .line 2
    .line 3
    iget v1, p0, Lm0/g;->c:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lm0/g;->a()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lm0/g;->d:I

    .line 12
    .line 13
    iget v1, p0, Lm0/g;->c:I

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget-boolean v0, p0, Lm0/g;->e:Z

    .line 19
    .line 20
    iget-object v1, p0, Lm0/g;->b:[C

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lm0/g;->e:Z

    .line 26
    .line 27
    iget v0, p0, Lm0/g;->d:I

    .line 28
    .line 29
    aget-char v3, v1, v0

    .line 30
    .line 31
    const/16 v4, 0xa

    .line 32
    .line 33
    if-ne v3, v4, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iput v0, p0, Lm0/g;->d:I

    .line 38
    .line 39
    iget v3, p0, Lm0/g;->c:I

    .line 40
    .line 41
    if-lt v0, v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lm0/g;->a()V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lm0/g;->d:I

    .line 47
    .line 48
    iget v3, p0, Lm0/g;->c:I

    .line 49
    .line 50
    if-lt v0, v3, :cond_1

    .line 51
    .line 52
    return v2

    .line 53
    :cond_1
    iget v0, p0, Lm0/g;->c:I

    .line 54
    .line 55
    iget v2, p0, Lm0/g;->d:I

    .line 56
    .line 57
    sub-int/2addr v0, v2

    .line 58
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    iget v0, p0, Lm0/g;->d:I

    .line 63
    .line 64
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lm0/g;->d:I

    .line 68
    .line 69
    add-int/2addr p1, p3

    .line 70
    iput p1, p0, Lm0/g;->d:I

    .line 71
    .line 72
    return p3
.end method

.method public final c(Ljava/lang/StringBuilder;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :goto_0
    :try_start_0
    iget v2, p0, Lm0/g;->d:I

    .line 9
    .line 10
    iget v3, p0, Lm0/g;->c:I

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-lt v2, v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lm0/g;->a()V

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lm0/g;->d:I

    .line 20
    .line 21
    iget v3, p0, Lm0/g;->c:I

    .line 22
    .line 23
    if-lt v2, v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-le p1, v0, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v4, v5

    .line 33
    :goto_1
    monitor-exit v1

    .line 34
    return v4

    .line 35
    :cond_1
    iget-boolean v2, p0, Lm0/g;->e:Z

    .line 36
    .line 37
    const/16 v3, 0xa

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lm0/g;->b:[C

    .line 42
    .line 43
    iget v6, p0, Lm0/g;->d:I

    .line 44
    .line 45
    aget-char v2, v2, v6

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    add-int/lit8 v6, v6, 0x1

    .line 50
    .line 51
    iput v6, p0, Lm0/g;->d:I

    .line 52
    .line 53
    :cond_2
    iput-boolean v5, p0, Lm0/g;->e:Z

    .line 54
    .line 55
    iget v2, p0, Lm0/g;->d:I

    .line 56
    .line 57
    move v6, v5

    .line 58
    :goto_2
    iget v7, p0, Lm0/g;->c:I

    .line 59
    .line 60
    const/16 v8, 0xd

    .line 61
    .line 62
    if-ge v2, v7, :cond_5

    .line 63
    .line 64
    iget-object v6, p0, Lm0/g;->b:[C

    .line 65
    .line 66
    aget-char v6, v6, v2

    .line 67
    .line 68
    if-eq v6, v3, :cond_4

    .line 69
    .line 70
    if-ne v6, v8, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_3
    move v5, v4

    .line 77
    :cond_5
    iget v7, p0, Lm0/g;->d:I

    .line 78
    .line 79
    iput v2, p0, Lm0/g;->d:I

    .line 80
    .line 81
    if-eqz v5, :cond_7

    .line 82
    .line 83
    iget-object v0, p0, Lm0/g;->b:[C

    .line 84
    .line 85
    sub-int/2addr v2, v7

    .line 86
    invoke-virtual {p1, v0, v7, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget p1, p0, Lm0/g;->d:I

    .line 93
    .line 94
    add-int/2addr p1, v4

    .line 95
    iput p1, p0, Lm0/g;->d:I

    .line 96
    .line 97
    if-ne v6, v8, :cond_6

    .line 98
    .line 99
    iput-boolean v4, p0, Lm0/g;->e:Z

    .line 100
    .line 101
    iput-boolean v4, p0, Lm0/g;->f:Z

    .line 102
    .line 103
    :cond_6
    monitor-exit v1

    .line 104
    return v4

    .line 105
    :cond_7
    iget-object v3, p0, Lm0/g;->b:[C

    .line 106
    .line 107
    sub-int/2addr v2, v7

    .line 108
    invoke-virtual {p1, v3, v7, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception p1

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm0/g;->a:Ljava/io/Reader;

    .line 5
    .line 6
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public final read([CII)I
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-ltz p2, :cond_4

    .line 5
    .line 6
    :try_start_0
    array-length v1, p1

    .line 7
    if-gt p2, v1, :cond_4

    .line 8
    .line 9
    if-ltz p3, :cond_4

    .line 10
    .line 11
    add-int v1, p2, p3

    .line 12
    .line 13
    array-length v2, p1

    .line 14
    if-gt v1, v2, :cond_4

    .line 15
    .line 16
    if-ltz v1, :cond_4

    .line 17
    .line 18
    if-nez p3, :cond_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lm0/g;->b([CII)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gtz v1, :cond_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return v1

    .line 31
    :cond_1
    :goto_0
    if-ge v1, p3, :cond_3

    .line 32
    .line 33
    iget-object v2, p0, Lm0/g;->a:Ljava/io/Reader;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    add-int v2, p2, v1

    .line 42
    .line 43
    sub-int v3, p3, v1

    .line 44
    .line 45
    invoke-virtual {p0, p1, v2, v3}, Lm0/g;->b([CII)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-gtz v2, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    add-int/2addr v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_1
    monitor-exit v0

    .line 55
    return v1

    .line 56
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 57
    .line 58
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method
