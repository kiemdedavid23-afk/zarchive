.class public final Le0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Le0/b;

.field public d:J

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Le0/b;

.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le0/b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Le0/b;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Le0/c;->c:Le0/b;

    .line 12
    .line 13
    invoke-virtual {p0}, Le0/c;->clear()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static A(Le0/b;Lg0/e$b;Lu0/d;)V
    .locals 5

    .line 1
    iget-object p0, p0, Le0/b;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Le0/b;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-interface {p2}, Lu0/d;->isCancelled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Le0/b;->b()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-static {v0, p1, p2}, Le0/c;->A(Le0/b;Lg0/e$b;Lu0/d;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-wide v1, p1, Lg0/e$b;->c:J

    .line 39
    .line 40
    iget-wide v3, v0, Le0/b;->b:J

    .line 41
    .line 42
    add-long/2addr v1, v3

    .line 43
    iput-wide v1, p1, Lg0/e$b;->c:J

    .line 44
    .line 45
    iget v0, p1, Lg0/e$b;->d:I

    .line 46
    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    iput v0, p1, Lg0/e$b;->d:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method public static x(Ljava/util/regex/Pattern;Le0/b;Ljava/util/ArrayList;ZLu0/d;)V
    .locals 3

    .line 1
    iget-object p1, p1, Le0/b;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Le0/b;

    .line 18
    .line 19
    if-eqz p4, :cond_1

    .line 20
    .line 21
    invoke-interface {p4}, Lu0/d;->isCancelled()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    :try_start_0
    iget-object v1, v0, Le0/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_1

    .line 39
    :catch_0
    iget-object v1, v0, Le0/b;->a:Ljava/lang/String;

    .line 40
    .line 41
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v0}, Le0/b;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    if-eqz p3, :cond_0

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-static {p0, v0, p2, v1, p4}, Le0/c;->x(Ljava/util/regex/Pattern;Le0/b;Ljava/util/ArrayList;ZLu0/d;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le0/c;->clear()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Le0/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p1, p0, Le0/c;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public final b()F
    .locals 4

    .line 1
    iget-object v0, p0, Le0/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    iget-wide v0, p0, Le0/c;->d:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    iget-wide v2, p0, Le0/c;->b:J

    .line 24
    .line 25
    long-to-float v2, v2

    .line 26
    long-to-float v0, v0

    .line 27
    div-float/2addr v2, v0

    .line 28
    return v2
.end method

.method public final declared-synchronized c(Ljava/lang/String;JII)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p5, p1}, Le0/c;->z(ILjava/lang/String;)Le0/b;

    .line 3
    .line 4
    .line 5
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iput p4, p1, Le0/b;->c:I

    .line 11
    .line 12
    const-wide/16 p4, -0x1

    .line 13
    .line 14
    cmp-long p4, p2, p4

    .line 15
    .line 16
    if-nez p4, :cond_1

    .line 17
    .line 18
    iget-wide p2, p0, Le0/c;->b:J

    .line 19
    .line 20
    :cond_1
    iput-wide p2, p1, Le0/b;->b:J

    .line 21
    .line 22
    invoke-virtual {p1}, Le0/b;->b()Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-wide p2, p0, Le0/c;->d:J

    .line 29
    .line 30
    iget-wide p4, p1, Le0/b;->b:J

    .line 31
    .line 32
    add-long/2addr p2, p4

    .line 33
    iput-wide p2, p0, Le0/c;->d:J

    .line 34
    .line 35
    iget p1, p0, Le0/c;->e:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    iput p1, p0, Le0/c;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    :cond_2
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0

    .line 45
    throw p1
.end method

.method public final clear()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le0/c;->a:Ljava/lang/String;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Le0/c;->b:J

    .line 7
    .line 8
    new-instance v3, Le0/b;

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    invoke-direct {v3, v0, v4}, Le0/b;-><init>(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    iput-object v3, p0, Le0/c;->c:Le0/b;

    .line 15
    .line 16
    iput-wide v1, p0, Le0/c;->d:J

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Le0/c;->e:I

    .line 20
    .line 21
    iput-object v0, p0, Le0/c;->f:Ljava/lang/String;

    .line 22
    .line 23
    iput-object v0, p0, Le0/c;->g:Ljava/lang/String;

    .line 24
    .line 25
    iput v1, p0, Le0/c;->i:I

    .line 26
    .line 27
    iput-object v0, p0, Le0/c;->j:Le0/b;

    .line 28
    .line 29
    iput-object v0, p0, Le0/c;->k:Ljava/lang/String;

    .line 30
    .line 31
    iput v1, p0, Le0/c;->l:I

    .line 32
    .line 33
    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Le0/c;->e:I

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Le0/c;->d:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Le0/c;->i:I

    return v0
.end method

.method public final g()I
    .locals 1

    const/high16 v0, 0x1000000

    return v0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final j(Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Le0/c;->y(Ljava/lang/String;)Le0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Lg0/e$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Le0/b;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    xor-int/2addr v1, v2

    .line 20
    iput-boolean v1, v0, Lg0/e$b;->a:Z

    .line 21
    .line 22
    iget v1, p1, Le0/b;->c:I

    .line 23
    .line 24
    int-to-long v3, v1

    .line 25
    iput-wide v3, v0, Lg0/e$b;->b:J

    .line 26
    .line 27
    invoke-virtual {p1}, Le0/b;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    iput-wide v3, v0, Lg0/e$b;->c:J

    .line 36
    .line 37
    iget-object p1, p1, Le0/b;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Le0/b;

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    invoke-interface {p2}, Lu0/d;->isCancelled()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v1}, Le0/b;->b()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-static {v1, v0, p2}, Le0/c;->A(Le0/b;Lg0/e$b;Lu0/d;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-wide v3, v0, Lg0/e$b;->c:J

    .line 75
    .line 76
    iget-wide v5, v1, Le0/b;->b:J

    .line 77
    .line 78
    add-long/2addr v3, v5

    .line 79
    iput-wide v3, v0, Lg0/e$b;->c:J

    .line 80
    .line 81
    iget v1, v0, Lg0/e$b;->d:I

    .line 82
    .line 83
    add-int/2addr v1, v2

    .line 84
    iput v1, v0, Lg0/e$b;->d:I

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-wide p1, p1, Le0/b;->b:J

    .line 88
    .line 89
    iput-wide p1, v0, Lg0/e$b;->c:J

    .line 90
    .line 91
    iput v2, v0, Lg0/e$b;->d:I

    .line 92
    .line 93
    :cond_4
    return-object v0
.end method

.method public final k(Ljava/util/ArrayList;Lu0/d;)Lg0/e$b;
    .locals 6

    .line 1
    new-instance v0, Lg0/e$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p2}, Lu0/d;->isCancelled()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return-object p1

    .line 32
    :cond_1
    invoke-virtual {p0, v1, p2}, Le0/c;->j(Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-wide v2, v0, Lg0/e$b;->c:J

    .line 39
    .line 40
    iget-wide v4, v1, Lg0/e$b;->c:J

    .line 41
    .line 42
    add-long/2addr v2, v4

    .line 43
    iput-wide v2, v0, Lg0/e$b;->c:J

    .line 44
    .line 45
    iget v2, v0, Lg0/e$b;->d:I

    .line 46
    .line 47
    iget v1, v1, Lg0/e$b;->d:I

    .line 48
    .line 49
    add-int/2addr v2, v1

    .line 50
    iput v2, v0, Lg0/e$b;->d:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le0/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le0/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method

.method public final n(I)V
    .locals 2

    .line 1
    iget v0, p0, Le0/c;->i:I

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput p1, p0, Le0/c;->i:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le0/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Le0/c;->f:Ljava/lang/String;

    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final q(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
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
    invoke-virtual {p0, p1}, Le0/c;->y(Ljava/lang/String;)Le0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    invoke-virtual {p1}, Le0/b;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object p1, p1, Le0/b;->e:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Le0/b;

    .line 39
    .line 40
    new-instance v9, Lc0/d;

    .line 41
    .line 42
    iget-object v2, v0, Le0/b;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Le0/b;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v1, -0x1

    .line 53
    :goto_1
    move v3, v1

    .line 54
    iget v1, v0, Le0/b;->d:I

    .line 55
    .line 56
    and-int/lit8 v4, v1, 0x2

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    const/4 v6, 0x0

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    move v4, v5

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v4, v6

    .line 65
    :goto_2
    if-eqz v4, :cond_3

    .line 66
    .line 67
    const/16 v4, 0x1c

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v4, v6

    .line 71
    :goto_3
    iget v7, v0, Le0/b;->c:I

    .line 72
    .line 73
    int-to-long v7, v7

    .line 74
    and-int/lit8 v1, v1, 0x4

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move v5, v6

    .line 80
    :goto_4
    if-eqz v5, :cond_5

    .line 81
    .line 82
    const-wide/16 v5, -0x2

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_5
    iget-wide v5, v0, Le0/b;->b:J

    .line 86
    .line 87
    :goto_5
    move-wide v10, v5

    .line 88
    move-object v1, v9

    .line 89
    move-wide v5, v7

    .line 90
    move-wide v7, v10

    .line 91
    invoke-direct/range {v1 .. v8}, Lc0/d;-><init>(Ljava/lang/String;BBJJ)V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Le0/b;->e:Ljava/util/ArrayList;

    .line 95
    .line 96
    if-nez v0, :cond_6

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    goto :goto_6

    .line 100
    :cond_6
    new-instance v1, Lp0/h;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    invoke-direct {v1, v0}, Lp0/h;-><init>(I)V

    .line 107
    .line 108
    .line 109
    move-object v0, v1

    .line 110
    :goto_6
    iput-object v0, v9, Lc0/d;->h:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    :goto_7
    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/util/regex/Pattern;ZLu0/d;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Z",
            "Lu0/d;",
            ")",
            "Ljava/util/List<",
            "Le0/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le0/c;->y(Ljava/lang/String;)Le0/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Le0/b;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {p2, p1, v0, p3, p4}, Le0/c;->x(Ljava/util/regex/Pattern;Le0/b;Ljava/util/ArrayList;ZLu0/d;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Le0/c;->g:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Le0/c;->h:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p4, p0, Le0/c;->d:J

    .line 6
    .line 7
    iput p3, p0, Le0/c;->e:I

    .line 8
    .line 9
    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le0/c;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le0/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Le0/c;->b:J

    return-wide v0
.end method

.method public final w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le0/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final y(Ljava/lang/String;)Le0/b;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/16 v1, 0x2f

    .line 6
    .line 7
    invoke-static {p1, v1}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v1, p1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-lez v1, :cond_1

    .line 14
    .line 15
    aget-object v1, p1, v2

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :cond_1
    iget-object v1, p0, Le0/c;->c:Le0/b;

    .line 25
    .line 26
    :goto_0
    array-length v3, p1

    .line 27
    if-ge v2, v3, :cond_3

    .line 28
    .line 29
    aget-object v3, p1, v2

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Le0/b;->a(Ljava/lang/String;)Le0/b;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    move-object v1, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    array-length p1, p1

    .line 43
    if-eq v2, p1, :cond_4

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_4
    return-object v1
.end method

.method public final z(ILjava/lang/String;)Le0/b;
    .locals 11

    .line 1
    iget-object v0, p0, Le0/c;->k:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v3, p0, Le0/c;->j:Le0/b;

    .line 19
    .line 20
    iget-object v4, p0, Le0/c;->k:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v5, p0, Le0/c;->l:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v3, p0, Le0/c;->c:Le0/b;

    .line 34
    .line 35
    move-object v4, p2

    .line 36
    move v5, v2

    .line 37
    :goto_1
    const/16 v6, 0x2f

    .line 38
    .line 39
    invoke-static {v4, v6}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    array-length v7, v4

    .line 44
    if-lez v7, :cond_2

    .line 45
    .line 46
    aget-object v7, v4, v2

    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    move v7, v1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    move v7, v2

    .line 57
    :goto_2
    array-length v8, v4

    .line 58
    if-ge v7, v8, :cond_4

    .line 59
    .line 60
    aget-object v8, v4, v7

    .line 61
    .line 62
    invoke-virtual {v3, v8}, Le0/b;->a(Ljava/lang/String;)Le0/b;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 70
    .line 71
    move-object v3, v8

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    :goto_3
    array-length v8, v4

    .line 74
    if-eq v7, v8, :cond_9

    .line 75
    .line 76
    :goto_4
    array-length v8, v4

    .line 77
    if-ge v7, v8, :cond_9

    .line 78
    .line 79
    add-int/lit8 v8, v7, 0x1

    .line 80
    .line 81
    array-length v9, v4

    .line 82
    if-eq v8, v9, :cond_5

    .line 83
    .line 84
    new-instance v9, Le0/b;

    .line 85
    .line 86
    aget-object v7, v4, v7

    .line 87
    .line 88
    invoke-direct {v9, v7, v1}, Le0/b;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_6

    .line 92
    :cond_5
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget v9, p0, Le0/c;->l:I

    .line 95
    .line 96
    add-int v10, v5, v7

    .line 97
    .line 98
    if-eq v9, v10, :cond_7

    .line 99
    .line 100
    :cond_6
    :try_start_0
    iput-object v3, p0, Le0/c;->j:Le0/b;

    .line 101
    .line 102
    add-int v9, v5, v7

    .line 103
    .line 104
    iput v9, p0, Le0/c;->l:I

    .line 105
    .line 106
    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    add-int/2addr v9, v1

    .line 111
    invoke-virtual {p2, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    iput-object v9, p0, Le0/c;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :catch_0
    const/4 v9, 0x0

    .line 119
    iput-object v9, p0, Le0/c;->k:Ljava/lang/String;

    .line 120
    .line 121
    :cond_7
    :goto_5
    new-instance v9, Le0/b;

    .line 122
    .line 123
    aget-object v7, v4, v7

    .line 124
    .line 125
    invoke-direct {v9, v7, p1}, Le0/b;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    :goto_6
    iget-object v7, v3, Le0/b;->e:Ljava/util/ArrayList;

    .line 129
    .line 130
    if-nez v7, :cond_8

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_8
    iput-object v3, v9, Le0/b;->f:Le0/b;

    .line 134
    .line 135
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_7
    move v7, v8

    .line 139
    move-object v3, v9

    .line 140
    goto :goto_4

    .line 141
    :cond_9
    return-object v3
.end method
