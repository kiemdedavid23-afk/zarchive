.class public final Lt/m;
.super Lt/b;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:Lw/k;

.field public final d:Z

.field public e:S

.field public f:I

.field public final g:[I

.field public h:I

.field public i:I

.field public final j:Lt/b;


# direct methods
.method public constructor <init>(Lw/a;ZLt/h;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 8
    iput-object p1, p0, Lt/m;->c:Lw/k;

    .line 9
    iput-boolean p2, p0, Lt/m;->d:Z

    .line 10
    iput-object p3, p0, Lt/m;->j:Lt/b;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 11
    iput-object p1, p0, Lt/m;->g:[I

    .line 12
    invoke-virtual {p0}, Lt/m;->e()V

    return-void
.end method

.method public constructor <init>(Lw/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 2
    iput-object p1, p0, Lt/m;->c:Lw/k;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lt/m;->d:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lt/m;->j:Lt/b;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Lt/m;->g:[I

    .line 6
    invoke-virtual {p0}, Lt/m;->e()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lt/m;->j:Lt/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lt/m;->c:Lw/k;

    .line 6
    .line 7
    iget-object v0, v0, Lw/k;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lt/b;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final b()F
    .locals 3

    .line 1
    iget v0, p0, Lt/m;->f:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lt/m;->g:[I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    aget v1, v1, v2

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    .line 13
    mul-float/2addr v1, v2

    .line 14
    int-to-float v0, v0

    .line 15
    div-float/2addr v1, v0

    .line 16
    iget-object v0, p0, Lt/m;->c:Lw/k;

    .line 17
    .line 18
    iget v0, v0, Lw/k;->c:F

    .line 19
    .line 20
    div-float/2addr v1, v0

    .line 21
    iget v0, p0, Lt/m;->i:I

    .line 22
    .line 23
    int-to-float v0, v0

    .line 24
    mul-float/2addr v1, v0

    .line 25
    iget v0, p0, Lt/m;->h:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    div-float/2addr v1, v0

    .line 29
    cmpl-float v0, v1, v2

    .line 30
    .line 31
    if-ltz v0, :cond_0

    .line 32
    .line 33
    const v1, 0x3f7d70a4    # 0.99f

    .line 34
    .line 35
    .line 36
    :cond_0
    return v1

    .line 37
    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    .line 38
    .line 39
    .line 40
    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lt/m;->b:I

    return v0
.end method

.method public final d([BI)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    add-int/2addr p2, v0

    .line 3
    :goto_0
    const/4 v1, 0x1

    .line 4
    if-ge v0, p2, :cond_3

    .line 5
    .line 6
    aget-byte v2, p1, v0

    .line 7
    .line 8
    and-int/lit16 v2, v2, 0xff

    .line 9
    .line 10
    iget-object v3, p0, Lt/m;->c:Lw/k;

    .line 11
    .line 12
    iget-object v4, v3, Lw/k;->a:[S

    .line 13
    .line 14
    aget-short v2, v4, v2

    .line 15
    .line 16
    const/16 v4, 0xfa

    .line 17
    .line 18
    if-ge v2, v4, :cond_0

    .line 19
    .line 20
    iget v4, p0, Lt/m;->h:I

    .line 21
    .line 22
    add-int/2addr v4, v1

    .line 23
    iput v4, p0, Lt/m;->h:I

    .line 24
    .line 25
    :cond_0
    const/16 v4, 0x40

    .line 26
    .line 27
    if-ge v2, v4, :cond_2

    .line 28
    .line 29
    iget v5, p0, Lt/m;->i:I

    .line 30
    .line 31
    add-int/2addr v5, v1

    .line 32
    iput v5, p0, Lt/m;->i:I

    .line 33
    .line 34
    iget-short v5, p0, Lt/m;->e:S

    .line 35
    .line 36
    if-ge v5, v4, :cond_2

    .line 37
    .line 38
    iget v4, p0, Lt/m;->f:I

    .line 39
    .line 40
    add-int/2addr v4, v1

    .line 41
    iput v4, p0, Lt/m;->f:I

    .line 42
    .line 43
    iget-object v3, v3, Lw/k;->b:[B

    .line 44
    .line 45
    iget-boolean v4, p0, Lt/m;->d:Z

    .line 46
    .line 47
    iget-object v6, p0, Lt/m;->g:[I

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    mul-int/lit8 v5, v5, 0x40

    .line 52
    .line 53
    add-int/2addr v5, v2

    .line 54
    aget-byte v3, v3, v5

    .line 55
    .line 56
    aget v4, v6, v3

    .line 57
    .line 58
    add-int/2addr v4, v1

    .line 59
    aput v4, v6, v3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    mul-int/lit8 v4, v2, 0x40

    .line 63
    .line 64
    add-int/2addr v4, v5

    .line 65
    aget-byte v3, v3, v4

    .line 66
    .line 67
    aget v4, v6, v3

    .line 68
    .line 69
    add-int/2addr v4, v1

    .line 70
    aput v4, v6, v3

    .line 71
    .line 72
    :cond_2
    :goto_1
    iput-short v2, p0, Lt/m;->e:S

    .line 73
    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget p1, p0, Lt/m;->b:I

    .line 78
    .line 79
    if-ne p1, v1, :cond_5

    .line 80
    .line 81
    iget p1, p0, Lt/m;->f:I

    .line 82
    .line 83
    const/16 p2, 0x400

    .line 84
    .line 85
    if-le p1, p2, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0}, Lt/m;->b()F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const p2, 0x3f733333    # 0.95f

    .line 92
    .line 93
    .line 94
    cmpl-float p2, p1, p2

    .line 95
    .line 96
    if-lez p2, :cond_4

    .line 97
    .line 98
    const/4 p1, 0x2

    .line 99
    iput p1, p0, Lt/m;->b:I

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const p2, 0x3d4ccccd    # 0.05f

    .line 103
    .line 104
    .line 105
    cmpg-float p1, p1, p2

    .line 106
    .line 107
    if-gez p1, :cond_5

    .line 108
    .line 109
    const/4 p1, 0x3

    .line 110
    iput p1, p0, Lt/m;->b:I

    .line 111
    .line 112
    :cond_5
    :goto_2
    iget p1, p0, Lt/m;->b:I

    .line 113
    .line 114
    return p1
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lt/m;->b:I

    .line 3
    .line 4
    const/16 v0, 0xff

    .line 5
    .line 6
    iput-short v0, p0, Lt/m;->e:S

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    const/4 v2, 0x4

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lt/m;->g:[I

    .line 14
    .line 15
    aput v0, v2, v1

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput v0, p0, Lt/m;->f:I

    .line 21
    .line 22
    iput v0, p0, Lt/m;->h:I

    .line 23
    .line 24
    iput v0, p0, Lt/m;->i:I

    .line 25
    .line 26
    return-void
.end method
