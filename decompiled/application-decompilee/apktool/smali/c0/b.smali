.class public Lc0/b;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lc0/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:J

.field public c:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc0/b;->a:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lc0/b;->b:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lc0/b;->c:[I

    return-void
.end method

.method public constructor <init>(Lc0/b;)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget v0, p1, Lc0/b;->a:I

    iput v0, p0, Lc0/b;->a:I

    .line 7
    iget-wide v0, p1, Lc0/b;->b:J

    iput-wide v0, p0, Lc0/b;->b:J

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lc0/b;->c:[I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lc0/f;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lc0/b;->c:[I

    .line 4
    .line 5
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public declared-synchronized b(I)Lc0/d;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lc0/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public final declared-synchronized c()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-super {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lc0/d;

    .line 14
    .line 15
    invoke-virtual {v1}, Lc0/d;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final d()[I
    .locals 5

    .line 1
    iget-object v0, p0, Lc0/b;->c:[I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    iget v0, p0, Lc0/b;->a:I

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    iput-object v1, p0, Lc0/b;->c:[I

    .line 12
    .line 13
    if-lez v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lc0/b;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :goto_0
    if-ge v1, v0, :cond_2

    .line 22
    .line 23
    invoke-super {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lc0/d;

    .line 28
    .line 29
    iget-boolean v3, v3, Lc0/d;->g:Z

    .line 30
    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lc0/b;->c:[I

    .line 34
    .line 35
    add-int/lit8 v4, v2, 0x1

    .line 36
    .line 37
    aput v1, v3, v2

    .line 38
    .line 39
    move v2, v4

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lc0/b;->c:[I

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lc0/d;

    .line 17
    .line 18
    iget-object v1, v1, Lc0/d;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    monitor-exit p0

    .line 30
    const/4 p1, 0x0

    .line 31
    return p1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit p0

    .line 34
    throw p1
.end method

.method public final declared-synchronized f(I)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc0/b;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ge p1, v0, :cond_8

    .line 8
    .line 9
    iget v0, p0, Lc0/b;->a:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    move v2, v0

    .line 16
    :goto_0
    invoke-virtual {p0}, Lc0/b;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v1, v3, :cond_3

    .line 21
    .line 22
    invoke-super {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lc0/d;

    .line 27
    .line 28
    iget-boolean v3, v3, Lc0/d;->g:Z

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    if-ge v1, p1, :cond_1

    .line 33
    .line 34
    move v2, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-le v1, p1, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    move v1, v0

    .line 43
    :goto_2
    if-ne v2, v0, :cond_4

    .line 44
    .line 45
    move v2, p1

    .line 46
    :cond_4
    if-ne v1, v0, :cond_5

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_5
    move p1, v1

    .line 50
    :goto_3
    const/4 v0, 0x1

    .line 51
    if-gt v2, p1, :cond_7

    .line 52
    .line 53
    invoke-super {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Lc0/d;

    .line 58
    .line 59
    iget-boolean v3, v1, Lc0/d;->g:Z

    .line 60
    .line 61
    if-nez v3, :cond_6

    .line 62
    .line 63
    invoke-virtual {v1}, Lc0/d;->h()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    iput-boolean v0, v1, Lc0/d;->g:Z

    .line 70
    .line 71
    iget v3, p0, Lc0/b;->a:I

    .line 72
    .line 73
    add-int/2addr v3, v0

    .line 74
    iput v3, p0, Lc0/b;->a:I

    .line 75
    .line 76
    iget-wide v0, v1, Lc0/d;->d:J

    .line 77
    .line 78
    const-wide/16 v3, 0x0

    .line 79
    .line 80
    cmp-long v3, v0, v3

    .line 81
    .line 82
    if-lez v3, :cond_6

    .line 83
    .line 84
    iget-wide v3, p0, Lc0/b;->b:J

    .line 85
    .line 86
    add-long/2addr v3, v0

    .line 87
    iput-wide v3, p0, Lc0/b;->b:J

    .line 88
    .line 89
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_7
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lc0/b;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return v0

    .line 97
    :cond_8
    :goto_4
    monitor-exit p0

    .line 98
    return v1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0

    .line 101
    throw p1
.end method

.method public final declared-synchronized g(I)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lc0/d;

    .line 7
    .line 8
    invoke-virtual {p1}, Lc0/d;->h()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p1, Lc0/d;->g:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lc0/d;->g:Z

    .line 20
    .line 21
    iget v1, p0, Lc0/b;->a:I

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    iput v1, p0, Lc0/b;->a:I

    .line 25
    .line 26
    iget-wide v0, p1, Lc0/d;->d:J

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long p1, v0, v2

    .line 31
    .line 32
    if-lez p1, :cond_0

    .line 33
    .line 34
    iget-wide v2, p0, Lc0/b;->b:J

    .line 35
    .line 36
    add-long/2addr v2, v0

    .line 37
    iput-wide v2, p0, Lc0/b;->b:J

    .line 38
    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lc0/b;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    :cond_1
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    monitor-exit p0

    .line 46
    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/b;->b(I)Lc0/d;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized h(II)Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lc0/d;

    .line 16
    .line 17
    invoke-virtual {p1}, Lc0/d;->h()Z

    .line 18
    .line 19
    .line 20
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return v1

    .line 25
    :cond_1
    const/4 v0, 0x2

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne p2, v0, :cond_2

    .line 28
    .line 29
    :try_start_2
    iget-boolean p2, p1, Lc0/d;->g:Z

    .line 30
    .line 31
    xor-int/2addr p2, v2

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-ne p2, v2, :cond_3

    .line 34
    .line 35
    move p2, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_3
    move p2, v1

    .line 38
    :goto_0
    iget-boolean v0, p1, Lc0/d;->g:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    if-ne v0, p2, :cond_4

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return v1

    .line 44
    :cond_4
    :goto_1
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    if-eqz p2, :cond_5

    .line 47
    .line 48
    :try_start_3
    iget v3, p0, Lc0/b;->a:I

    .line 49
    .line 50
    add-int/2addr v3, v2

    .line 51
    iput v3, p0, Lc0/b;->a:I

    .line 52
    .line 53
    iget-wide v3, p1, Lc0/d;->d:J

    .line 54
    .line 55
    cmp-long v0, v3, v0

    .line 56
    .line 57
    if-lez v0, :cond_6

    .line 58
    .line 59
    iget-wide v0, p0, Lc0/b;->b:J

    .line 60
    .line 61
    add-long/2addr v0, v3

    .line 62
    iput-wide v0, p0, Lc0/b;->b:J

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    iget v3, p0, Lc0/b;->a:I

    .line 66
    .line 67
    sub-int/2addr v3, v2

    .line 68
    iput v3, p0, Lc0/b;->a:I

    .line 69
    .line 70
    iget-wide v3, p1, Lc0/d;->d:J

    .line 71
    .line 72
    cmp-long v0, v3, v0

    .line 73
    .line 74
    if-lez v0, :cond_6

    .line 75
    .line 76
    iget-wide v0, p0, Lc0/b;->b:J

    .line 77
    .line 78
    sub-long/2addr v0, v3

    .line 79
    iput-wide v0, p0, Lc0/b;->b:J

    .line 80
    .line 81
    :cond_6
    :goto_2
    iput-boolean p2, p1, Lc0/d;->g:Z

    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lc0/b;->c:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    monitor-exit p0

    .line 87
    return v2

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p0

    .line 90
    throw p1
.end method

.method public final declared-synchronized size()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method
