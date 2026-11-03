.class public final Lt/j;
.super Lt/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:Ljava/util/ArrayList;

.field public d:Lt/b;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lt/j;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v1, Lt/g;

    .line 12
    .line 13
    invoke-direct {v1}, Lt/g;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance v1, Lt/n;

    .line 20
    .line 21
    invoke-direct {v1}, Lt/n;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v1, Lt/a;

    .line 28
    .line 29
    invoke-direct {v1}, Lt/a;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v1, Lt/l;

    .line 36
    .line 37
    invoke-direct {v1}, Lt/l;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v1, Lt/c;

    .line 44
    .line 45
    invoke-direct {v1}, Lt/c;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v1, Lt/d;

    .line 52
    .line 53
    invoke-direct {v1}, Lt/d;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v1, Lt/e;

    .line 60
    .line 61
    invoke-direct {v1}, Lt/e;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lt/j;->e()V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lt/j;->d:Lt/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lt/j;->b()F

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lt/j;->d:Lt/b;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lt/j;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lt/b;

    .line 20
    .line 21
    iput-object v0, p0, Lt/j;->d:Lt/b;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lt/j;->d:Lt/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lt/b;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final b()F
    .locals 5

    .line 1
    iget v0, p0, Lt/j;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const v0, 0x3f7d70a4    # 0.99f

    .line 7
    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    const v0, 0x3c23d70a    # 0.01f

    .line 14
    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    iget-object v0, p0, Lt/j;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_4

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lt/b;

    .line 35
    .line 36
    iget-boolean v3, v2, Lt/b;->a:Z

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v2}, Lt/b;->b()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    cmpg-float v4, v1, v3

    .line 46
    .line 47
    if-gez v4, :cond_2

    .line 48
    .line 49
    iput-object v2, p0, Lt/j;->d:Lt/b;

    .line 50
    .line 51
    move v1, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_4
    return v1
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lt/j;->b:I

    return v0
.end method

.method public final d([BI)I
    .locals 8

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    add-int/2addr p2, v1

    .line 5
    const/4 v2, 0x1

    .line 6
    move v3, v1

    .line 7
    move v5, v3

    .line 8
    move v4, v2

    .line 9
    :goto_0
    if-ge v3, p2, :cond_2

    .line 10
    .line 11
    aget-byte v6, p1, v3

    .line 12
    .line 13
    and-int/lit16 v7, v6, 0x80

    .line 14
    .line 15
    if-eqz v7, :cond_0

    .line 16
    .line 17
    add-int/lit8 v4, v5, 0x1

    .line 18
    .line 19
    aput-byte v6, v0, v5

    .line 20
    .line 21
    move v5, v4

    .line 22
    move v4, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    if-eqz v4, :cond_1

    .line 25
    .line 26
    add-int/lit8 v4, v5, 0x1

    .line 27
    .line 28
    aput-byte v6, v0, v5

    .line 29
    .line 30
    move v5, v4

    .line 31
    move v4, v1

    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, p0, Lt/j;->c:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_7

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lt/b;

    .line 52
    .line 53
    iget-boolean v3, p2, Lt/b;->a:Z

    .line 54
    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    invoke-virtual {p2, v0, v5}, Lt/b;->d([BI)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x2

    .line 63
    if-eq v3, v4, :cond_6

    .line 64
    .line 65
    const v6, 0x3f7d70a4    # 0.99f

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lt/b;->b()F

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    cmpl-float v6, v6, v7

    .line 73
    .line 74
    if-nez v6, :cond_5

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    const/4 v4, 0x3

    .line 78
    if-ne v3, v4, :cond_3

    .line 79
    .line 80
    iput-boolean v1, p2, Lt/b;->a:Z

    .line 81
    .line 82
    iget p2, p0, Lt/j;->e:I

    .line 83
    .line 84
    sub-int/2addr p2, v2

    .line 85
    iput p2, p0, Lt/j;->e:I

    .line 86
    .line 87
    if-gtz p2, :cond_3

    .line 88
    .line 89
    iput v4, p0, Lt/j;->b:I

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    :goto_3
    iput-object p2, p0, Lt/j;->d:Lt/b;

    .line 93
    .line 94
    iput v4, p0, Lt/j;->b:I

    .line 95
    .line 96
    :cond_7
    :goto_4
    iget p1, p0, Lt/j;->b:I

    .line 97
    .line 98
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt/j;->e:I

    .line 3
    .line 4
    iget-object v0, p0, Lt/j;->c:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lt/b;

    .line 22
    .line 23
    invoke-virtual {v1}, Lt/b;->e()V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, v1, Lt/b;->a:Z

    .line 27
    .line 28
    iget v1, p0, Lt/j;->e:I

    .line 29
    .line 30
    add-int/2addr v1, v2

    .line 31
    iput v1, p0, Lt/j;->e:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lt/j;->d:Lt/b;

    .line 36
    .line 37
    iput v2, p0, Lt/j;->b:I

    .line 38
    .line 39
    return-void
.end method
