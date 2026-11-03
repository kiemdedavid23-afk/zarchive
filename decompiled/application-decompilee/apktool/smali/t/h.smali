.class public final Lt/h;
.super Lt/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:B

.field public e:B

.field public f:Lt/b;

.field public g:Lt/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lt/h;->f:Lt/b;

    .line 6
    .line 7
    iput-object v0, p0, Lt/h;->g:Lt/b;

    .line 8
    .line 9
    invoke-virtual {p0}, Lt/h;->e()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lt/h;->b:I

    .line 2
    .line 3
    iget v1, p0, Lt/h;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x5

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Ls/a;->t:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v1, -0x5

    .line 13
    if-gt v0, v1, :cond_1

    .line 14
    .line 15
    sget-object v0, Ls/a;->f:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-object v1, p0, Lt/h;->f:Lt/b;

    .line 19
    .line 20
    invoke-virtual {v1}, Lt/b;->b()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    iget-object v2, p0, Lt/h;->g:Lt/b;

    .line 25
    .line 26
    invoke-virtual {v2}, Lt/b;->b()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sub-float/2addr v1, v2

    .line 31
    const v2, 0x3c23d70a    # 0.01f

    .line 32
    .line 33
    .line 34
    cmpl-float v2, v1, v2

    .line 35
    .line 36
    if-lez v2, :cond_2

    .line 37
    .line 38
    sget-object v0, Ls/a;->t:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_2
    const v2, -0x43dc28f6    # -0.01f

    .line 42
    .line 43
    .line 44
    cmpg-float v1, v1, v2

    .line 45
    .line 46
    if-gez v1, :cond_3

    .line 47
    .line 48
    sget-object v0, Ls/a;->f:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    if-gez v0, :cond_4

    .line 52
    .line 53
    sget-object v0, Ls/a;->f:Ljava/lang/String;

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    sget-object v0, Ls/a;->t:Ljava/lang/String;

    .line 57
    .line 58
    return-object v0
.end method

.method public final b()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lt/h;->f:Lt/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt/b;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lt/h;->g:Lt/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lt/b;->c()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public final d([BI)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lt/h;->c()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    add-int/2addr p2, v0

    .line 11
    move v1, v0

    .line 12
    :goto_0
    const/4 v2, 0x1

    .line 13
    if-ge v1, p2, :cond_a

    .line 14
    .line 15
    aget-byte v3, p1, v1

    .line 16
    .line 17
    const/16 v4, 0xf5

    .line 18
    .line 19
    const/16 v5, 0xf3

    .line 20
    .line 21
    const/16 v6, 0xef

    .line 22
    .line 23
    const/16 v7, 0xed

    .line 24
    .line 25
    const/16 v8, 0xea

    .line 26
    .line 27
    const/16 v9, 0x20

    .line 28
    .line 29
    if-ne v3, v9, :cond_6

    .line 30
    .line 31
    iget-byte v10, p0, Lt/h;->e:B

    .line 32
    .line 33
    if-eq v10, v9, :cond_9

    .line 34
    .line 35
    iget-byte v9, p0, Lt/h;->d:B

    .line 36
    .line 37
    and-int/lit16 v10, v9, 0xff

    .line 38
    .line 39
    if-eq v10, v8, :cond_2

    .line 40
    .line 41
    if-eq v10, v7, :cond_2

    .line 42
    .line 43
    if-eq v10, v6, :cond_2

    .line 44
    .line 45
    if-eq v10, v5, :cond_2

    .line 46
    .line 47
    if-ne v10, v4, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v4, v0

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    :goto_1
    move v4, v2

    .line 53
    :goto_2
    if-eqz v4, :cond_3

    .line 54
    .line 55
    iget v4, p0, Lt/h;->b:I

    .line 56
    .line 57
    add-int/2addr v4, v2

    .line 58
    iput v4, p0, Lt/h;->b:I

    .line 59
    .line 60
    goto :goto_7

    .line 61
    :cond_3
    and-int/lit16 v4, v9, 0xff

    .line 62
    .line 63
    const/16 v5, 0xeb

    .line 64
    .line 65
    if-eq v4, v5, :cond_5

    .line 66
    .line 67
    const/16 v5, 0xee

    .line 68
    .line 69
    if-eq v4, v5, :cond_5

    .line 70
    .line 71
    const/16 v5, 0xf0

    .line 72
    .line 73
    if-eq v4, v5, :cond_5

    .line 74
    .line 75
    const/16 v5, 0xf4

    .line 76
    .line 77
    if-ne v4, v5, :cond_4

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    move v4, v0

    .line 81
    goto :goto_4

    .line 82
    :cond_5
    :goto_3
    move v4, v2

    .line 83
    :goto_4
    if-eqz v4, :cond_9

    .line 84
    .line 85
    iget v4, p0, Lt/h;->c:I

    .line 86
    .line 87
    add-int/2addr v4, v2

    .line 88
    iput v4, p0, Lt/h;->c:I

    .line 89
    .line 90
    goto :goto_7

    .line 91
    :cond_6
    iget-byte v10, p0, Lt/h;->e:B

    .line 92
    .line 93
    if-ne v10, v9, :cond_9

    .line 94
    .line 95
    iget-byte v10, p0, Lt/h;->d:B

    .line 96
    .line 97
    and-int/lit16 v10, v10, 0xff

    .line 98
    .line 99
    if-eq v10, v8, :cond_8

    .line 100
    .line 101
    if-eq v10, v7, :cond_8

    .line 102
    .line 103
    if-eq v10, v6, :cond_8

    .line 104
    .line 105
    if-eq v10, v5, :cond_8

    .line 106
    .line 107
    if-ne v10, v4, :cond_7

    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_7
    move v4, v0

    .line 111
    goto :goto_6

    .line 112
    :cond_8
    :goto_5
    move v4, v2

    .line 113
    :goto_6
    if-eqz v4, :cond_9

    .line 114
    .line 115
    if-eq v3, v9, :cond_9

    .line 116
    .line 117
    iget v4, p0, Lt/h;->c:I

    .line 118
    .line 119
    add-int/2addr v4, v2

    .line 120
    iput v4, p0, Lt/h;->c:I

    .line 121
    .line 122
    :cond_9
    :goto_7
    iget-byte v2, p0, Lt/h;->d:B

    .line 123
    .line 124
    iput-byte v2, p0, Lt/h;->e:B

    .line 125
    .line 126
    iput-byte v3, p0, Lt/h;->d:B

    .line 127
    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_a
    return v2
.end method

.method public final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lt/h;->b:I

    .line 3
    .line 4
    iput v0, p0, Lt/h;->c:I

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    iput-byte v0, p0, Lt/h;->d:B

    .line 9
    .line 10
    iput-byte v0, p0, Lt/h;->e:B

    .line 11
    .line 12
    return-void
.end method
