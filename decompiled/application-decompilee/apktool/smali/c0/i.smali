.class public final Lc0/i;
.super Lc0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc0/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lc0/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc0/b;-><init>(Lc0/b;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(I)Lc0/d;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/i;->j(I)Lc0/f;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/i;->j(I)Lc0/f;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized i(Lc0/f;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lc0/b;->c:[I

    .line 4
    .line 5
    iget-boolean v0, p1, Lc0/d;->g:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lc0/b;->a:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    iput v0, p0, Lc0/b;->a:I

    .line 14
    .line 15
    iget-wide v0, p0, Lc0/b;->b:J

    .line 16
    .line 17
    iget-wide v2, p1, Lc0/d;->d:J

    .line 18
    .line 19
    add-long/2addr v0, v2

    .line 20
    iput-wide v0, p0, Lc0/b;->b:J

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public final declared-synchronized j(I)Lc0/f;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Lc0/b;->b(I)Lc0/d;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Lc0/f;
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
