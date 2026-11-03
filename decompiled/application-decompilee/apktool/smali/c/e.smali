.class public final Lc/e;
.super Lc/c;
.source "SourceFile"


# instance fields
.field public M:F

.field public N:I

.field public O:I

.field public P:Lc/b;

.field public Q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 5
    .line 6
    iput v0, p0, Lc/e;->M:F

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lc/e;->N:I

    .line 10
    .line 11
    iput v0, p0, Lc/e;->O:I

    .line 12
    .line 13
    iget-object v0, p0, Lc/c;->e:Lc/b;

    .line 14
    .line 15
    iput-object v0, p0, Lc/e;->P:Lc/b;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lc/e;->Q:I

    .line 19
    .line 20
    iget-object v0, p0, Lc/c;->l:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lc/c;->l:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v1, p0, Lc/e;->P:Lc/b;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lb/e;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/c;->m:Lc/c;

    .line 2
    .line 3
    check-cast v0, Lc/d;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v1, Lc/b$a;->a:Lc/b$a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lc/b$a;->c:Lc/b$a;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v3, p0, Lc/e;->Q:I

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    sget-object v1, Lc/b$a;->b:Lc/b$a;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lc/b$a;->d:Lc/b$a;

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    iget v0, p0, Lc/e;->N:I

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    const/4 v4, -0x1

    .line 40
    if-eq v0, v4, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lc/e;->P:Lc/b;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, v1}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget v2, p0, Lc/e;->N:I

    .line 53
    .line 54
    invoke-static {p1, v0, v1, v2, v3}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lb/e;->c(Lb/b;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget v0, p0, Lc/e;->O:I

    .line 63
    .line 64
    if-eq v0, v4, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lc/e;->P:Lc/b;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v2}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v2, p0, Lc/e;->O:I

    .line 77
    .line 78
    neg-int v2, v2

    .line 79
    invoke-static {p1, v0, v1, v2, v3}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lb/e;->c(Lb/b;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget v0, p0, Lc/e;->M:F

    .line 88
    .line 89
    const/high16 v3, -0x40800000    # -1.0f

    .line 90
    .line 91
    cmpl-float v0, v0, v3

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lc/e;->P:Lc/b;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v1}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v2}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    iget v4, p0, Lc/e;->M:F

    .line 110
    .line 111
    invoke-virtual {p1}, Lb/e;->k()Lb/b;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-object v6, v5, Lb/b;->c:Lb/a;

    .line 116
    .line 117
    invoke-virtual {v6, v0, v3}, Lb/a;->c(Lb/g;F)V

    .line 118
    .line 119
    .line 120
    const/high16 v0, 0x3f800000    # 1.0f

    .line 121
    .line 122
    sub-float/2addr v0, v4

    .line 123
    invoke-virtual {v6, v1, v0}, Lb/a;->c(Lb/g;F)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v2, v4}, Lb/a;->c(Lb/g;F)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v5}, Lb/e;->c(Lb/b;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    :goto_0
    return-void
.end method

.method public final c(Lc/b$a;)Lc/b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget p1, p0, Lc/e;->Q:I

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lc/e;->P:Lc/b;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    iget p1, p0, Lc/e;->Q:I

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lc/e;->P:Lc/b;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public final r(Lb/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c;->m:Lc/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lc/e;->P:Lc/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lb/e;->n(Lc/b;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iget v0, p0, Lc/e;->Q:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    iput p1, p0, Lc/c;->r:I

    .line 22
    .line 23
    iput v2, p0, Lc/c;->s:I

    .line 24
    .line 25
    iget-object p1, p0, Lc/c;->m:Lc/c;

    .line 26
    .line 27
    invoke-virtual {p1}, Lc/c;->d()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lc/c;->j(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lc/c;->p(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iput v2, p0, Lc/c;->r:I

    .line 39
    .line 40
    iput p1, p0, Lc/c;->s:I

    .line 41
    .line 42
    iget-object p1, p0, Lc/c;->m:Lc/c;

    .line 43
    .line 44
    invoke-virtual {p1}, Lc/c;->e()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-virtual {p0, p1}, Lc/c;->p(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Lc/c;->j(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 2

    .line 1
    iget v0, p0, Lc/e;->Q:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lc/e;->Q:I

    .line 7
    .line 8
    iget-object p1, p0, Lc/c;->l:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lc/e;->Q:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lc/c;->d:Lc/b;

    .line 19
    .line 20
    iput-object v0, p0, Lc/e;->P:Lc/b;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lc/c;->e:Lc/b;

    .line 24
    .line 25
    iput-object v0, p0, Lc/e;->P:Lc/b;

    .line 26
    .line 27
    :goto_0
    iget-object v0, p0, Lc/e;->P:Lc/b;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
