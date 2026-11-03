.class public final Lb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lb/g;

.field public b:F

.field public final c:Lb/a;

.field public d:Z


# direct methods
.method public constructor <init>(Lb/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb/b;->a:Lb/g;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lb/b;->b:F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lb/b;->d:Z

    .line 12
    .line 13
    new-instance v0, Lb/a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lb/a;-><init>(Lb/b;Lb/c;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lb/b;->c:Lb/a;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lb/g;Lb/g;IFLb/g;Lb/g;I)V
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget-object v1, p0, Lb/b;->c:Lb/a;

    .line 4
    .line 5
    if-ne p2, p5, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lb/a;->c(Lb/g;F)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p6, v0}, Lb/a;->c(Lb/g;F)V

    .line 11
    .line 12
    .line 13
    const/high16 p1, -0x40000000    # -2.0f

    .line 14
    .line 15
    invoke-virtual {v1, p2, p1}, Lb/a;->c(Lb/g;F)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    .line 20
    .line 21
    cmpl-float v2, p4, v2

    .line 22
    .line 23
    const/high16 v3, -0x40800000    # -1.0f

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1, p1, v0}, Lb/a;->c(Lb/g;F)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2, v3}, Lb/a;->c(Lb/g;F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p5, v3}, Lb/a;->c(Lb/g;F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p6, v0}, Lb/a;->c(Lb/g;F)V

    .line 37
    .line 38
    .line 39
    if-gtz p3, :cond_1

    .line 40
    .line 41
    if-lez p7, :cond_4

    .line 42
    .line 43
    :cond_1
    neg-int p1, p3

    .line 44
    add-int/2addr p1, p7

    .line 45
    int-to-float p1, p1

    .line 46
    iput p1, p0, Lb/b;->b:F

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sub-float v2, v0, p4

    .line 50
    .line 51
    mul-float v4, v2, v0

    .line 52
    .line 53
    invoke-virtual {v1, p1, v4}, Lb/a;->c(Lb/g;F)V

    .line 54
    .line 55
    .line 56
    mul-float p1, v2, v3

    .line 57
    .line 58
    invoke-virtual {v1, p2, p1}, Lb/a;->c(Lb/g;F)V

    .line 59
    .line 60
    .line 61
    mul-float/2addr v3, p4

    .line 62
    invoke-virtual {v1, p5, v3}, Lb/a;->c(Lb/g;F)V

    .line 63
    .line 64
    .line 65
    mul-float/2addr v0, p4

    .line 66
    invoke-virtual {v1, p6, v0}, Lb/a;->c(Lb/g;F)V

    .line 67
    .line 68
    .line 69
    if-gtz p3, :cond_3

    .line 70
    .line 71
    if-lez p7, :cond_4

    .line 72
    .line 73
    :cond_3
    neg-int p1, p3

    .line 74
    int-to-float p1, p1

    .line 75
    mul-float/2addr p1, v2

    .line 76
    int-to-float p2, p7

    .line 77
    mul-float/2addr p2, p4

    .line 78
    add-float/2addr p2, p1

    .line 79
    iput p2, p0, Lb/b;->b:F

    .line 80
    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(FFFLb/g;ILb/g;ILb/g;ILb/g;I)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1
    iget-object v3, p0, Lb/b;->c:Lb/a;

    if-eqz v0, :cond_1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    neg-int p2, p5

    sub-int/2addr p2, p7

    int-to-float p2, p2

    int-to-float p3, p9

    mul-float/2addr p3, p1

    add-float/2addr p3, p2

    int-to-float p2, p11

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    .line 2
    iput p2, p0, Lb/b;->b:F

    .line 3
    invoke-virtual {v3, p4, v2}, Lb/a;->c(Lb/g;F)V

    .line 4
    invoke-virtual {v3, p6, v1}, Lb/a;->c(Lb/g;F)V

    .line 5
    invoke-virtual {v3, p10, p1}, Lb/a;->c(Lb/g;F)V

    neg-float p1, p1

    .line 6
    invoke-virtual {v3, p8, p1}, Lb/a;->c(Lb/g;F)V

    goto :goto_1

    :cond_1
    :goto_0
    neg-int p1, p5

    sub-int/2addr p1, p7

    add-int/2addr p1, p9

    add-int/2addr p1, p11

    int-to-float p1, p1

    .line 7
    iput p1, p0, Lb/b;->b:F

    .line 8
    invoke-virtual {v3, p4, v2}, Lb/a;->c(Lb/g;F)V

    .line 9
    invoke-virtual {v3, p6, v1}, Lb/a;->c(Lb/g;F)V

    .line 10
    invoke-virtual {v3, p10, v2}, Lb/a;->c(Lb/g;F)V

    .line 11
    invoke-virtual {v3, p8, v1}, Lb/a;->c(Lb/g;F)V

    :goto_1
    return-void
.end method

.method public final c(Lb/g;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b;->c:Lb/a;

    .line 2
    .line 3
    if-gez p2, :cond_0

    .line 4
    .line 5
    mul-int/lit8 p2, p2, -0x1

    .line 6
    .line 7
    int-to-float p2, p2

    .line 8
    iput p2, p0, Lb/b;->b:F

    .line 9
    .line 10
    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Lb/a;->c(Lb/g;F)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    int-to-float p2, p2

    .line 17
    iput p2, p0, Lb/b;->b:F

    .line 18
    .line 19
    const/high16 p2, -0x40800000    # -1.0f

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lb/a;->c(Lb/g;F)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public final d(Lb/g;Lb/g;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 3
    .line 4
    if-gez p3, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p3, p3, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p3, p3

    .line 10
    iput p3, p0, Lb/b;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iget-object v2, p0, Lb/b;->c:Lb/a;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v2, p1, p3}, Lb/a;->c(Lb/g;F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2, v1}, Lb/a;->c(Lb/g;F)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v2, p1, v1}, Lb/a;->c(Lb/g;F)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p2, p3}, Lb/a;->c(Lb/g;F)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final e(Lb/g;Lb/g;Lb/g;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lb/b;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iget-object v2, p0, Lb/b;->c:Lb/a;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v2, p1, p4}, Lb/a;->c(Lb/g;F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2, v1}, Lb/a;->c(Lb/g;F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3, v1}, Lb/a;->c(Lb/g;F)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v2, p1, v1}, Lb/a;->c(Lb/g;F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2, p4}, Lb/a;->c(Lb/g;F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p3, p4}, Lb/a;->c(Lb/g;F)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final f(Lb/g;Lb/g;Lb/g;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 3
    .line 4
    if-gez p4, :cond_0

    .line 5
    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lb/b;->b:F

    .line 11
    .line 12
    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    .line 13
    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    .line 16
    iget-object v2, p0, Lb/b;->c:Lb/a;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v2, p1, p4}, Lb/a;->c(Lb/g;F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2, v1}, Lb/a;->c(Lb/g;F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p3, p4}, Lb/a;->c(Lb/g;F)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v2, p1, v1}, Lb/a;->c(Lb/g;F)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2, p4}, Lb/a;->c(Lb/g;F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p3, v1}, Lb/a;->c(Lb/g;F)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public final g(Lb/g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/b;->a:Lb/g;

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    iget-object v2, p0, Lb/b;->c:Lb/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lb/a;->c(Lb/g;F)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lb/b;->a:Lb/g;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v2, p1}, Lb/a;->d(Lb/g;)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-float/2addr v0, v1

    .line 20
    iput-object p1, p0, Lb/b;->a:Lb/g;

    .line 21
    .line 22
    const/high16 p1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float p1, v0, p1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget p1, p0, Lb/b;->b:F

    .line 30
    .line 31
    div-float/2addr p1, v0

    .line 32
    iput p1, p0, Lb/b;->b:F

    .line 33
    .line 34
    iget p1, v2, Lb/a;->h:I

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    const/4 v3, -0x1

    .line 38
    if-eq p1, v3, :cond_2

    .line 39
    .line 40
    iget v3, v2, Lb/a;->a:I

    .line 41
    .line 42
    if-ge v1, v3, :cond_2

    .line 43
    .line 44
    iget-object v3, v2, Lb/a;->g:[F

    .line 45
    .line 46
    aget v4, v3, p1

    .line 47
    .line 48
    div-float/2addr v4, v0

    .line 49
    aput v4, v3, p1

    .line 50
    .line 51
    iget-object v3, v2, Lb/a;->f:[I

    .line 52
    .line 53
    aget p1, v3, p1

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    return-void
.end method

.method public final h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lb/b;->c:Lb/a;

    .line 2
    .line 3
    iget v1, v0, Lb/a;->h:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const/4 v4, -0x1

    .line 8
    if-eq v1, v4, :cond_3

    .line 9
    .line 10
    iget v4, v0, Lb/a;->a:I

    .line 11
    .line 12
    if-ge v3, v4, :cond_3

    .line 13
    .line 14
    iget-object v4, v0, Lb/a;->c:Lb/c;

    .line 15
    .line 16
    iget-object v4, v4, Lb/c;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v4, [Lb/g;

    .line 19
    .line 20
    iget-object v5, v0, Lb/a;->e:[I

    .line 21
    .line 22
    aget v5, v5, v1

    .line 23
    .line 24
    aget-object v4, v4, v5

    .line 25
    .line 26
    move v5, v2

    .line 27
    :goto_1
    iget v6, v4, Lb/g;->g:I

    .line 28
    .line 29
    if-ge v5, v6, :cond_1

    .line 30
    .line 31
    iget-object v6, v4, Lb/g;->f:[Lb/b;

    .line 32
    .line 33
    aget-object v6, v6, v5

    .line 34
    .line 35
    if-ne v6, p0, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v5, v4, Lb/g;->f:[Lb/b;

    .line 42
    .line 43
    array-length v7, v5

    .line 44
    if-lt v6, v7, :cond_2

    .line 45
    .line 46
    array-length v6, v5

    .line 47
    mul-int/lit8 v6, v6, 0x2

    .line 48
    .line 49
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, [Lb/b;

    .line 54
    .line 55
    iput-object v5, v4, Lb/g;->f:[Lb/b;

    .line 56
    .line 57
    :cond_2
    iget-object v5, v4, Lb/g;->f:[Lb/b;

    .line 58
    .line 59
    iget v6, v4, Lb/g;->g:I

    .line 60
    .line 61
    aput-object p0, v5, v6

    .line 62
    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    iput v6, v4, Lb/g;->g:I

    .line 66
    .line 67
    :goto_2
    iget-object v4, v0, Lb/a;->f:[I

    .line 68
    .line 69
    aget v1, v4, v1

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lb/b;->a:Lb/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "0"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lb/b;->a:Lb/g;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " = "

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget v1, p0, Lb/b;->b:F

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    cmpl-float v1, v1, v2

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v0, p0, Lb/b;->b:F

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move v1, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move v1, v4

    .line 70
    :goto_1
    iget-object v5, p0, Lb/b;->c:Lb/a;

    .line 71
    .line 72
    iget v6, v5, Lb/a;->a:I

    .line 73
    .line 74
    move v7, v4

    .line 75
    :goto_2
    if-ge v7, v6, :cond_b

    .line 76
    .line 77
    iget v8, v5, Lb/a;->h:I

    .line 78
    .line 79
    move v9, v4

    .line 80
    :goto_3
    const/4 v10, -0x1

    .line 81
    if-eq v8, v10, :cond_3

    .line 82
    .line 83
    iget v11, v5, Lb/a;->a:I

    .line 84
    .line 85
    if-ge v9, v11, :cond_3

    .line 86
    .line 87
    if-ne v9, v7, :cond_2

    .line 88
    .line 89
    iget-object v9, v5, Lb/a;->c:Lb/c;

    .line 90
    .line 91
    iget-object v9, v9, Lb/c;->e:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v9, [Lb/g;

    .line 94
    .line 95
    iget-object v11, v5, Lb/a;->e:[I

    .line 96
    .line 97
    aget v8, v11, v8

    .line 98
    .line 99
    aget-object v8, v9, v8

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_2
    iget-object v10, v5, Lb/a;->f:[I

    .line 103
    .line 104
    aget v8, v10, v8

    .line 105
    .line 106
    add-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    const/4 v8, 0x0

    .line 110
    :goto_4
    if-nez v8, :cond_4

    .line 111
    .line 112
    goto/16 :goto_a

    .line 113
    .line 114
    :cond_4
    iget v8, v5, Lb/a;->h:I

    .line 115
    .line 116
    move v9, v4

    .line 117
    :goto_5
    if-eq v8, v10, :cond_6

    .line 118
    .line 119
    iget v11, v5, Lb/a;->a:I

    .line 120
    .line 121
    if-ge v9, v11, :cond_6

    .line 122
    .line 123
    if-ne v9, v7, :cond_5

    .line 124
    .line 125
    iget-object v9, v5, Lb/a;->g:[F

    .line 126
    .line 127
    aget v8, v9, v8

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_5
    iget-object v11, v5, Lb/a;->f:[I

    .line 131
    .line 132
    aget v8, v11, v8

    .line 133
    .line 134
    add-int/lit8 v9, v9, 0x1

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_6
    move v8, v2

    .line 138
    :goto_6
    if-nez v1, :cond_7

    .line 139
    .line 140
    cmpg-float v1, v8, v2

    .line 141
    .line 142
    if-gez v1, :cond_9

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, "- "

    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    goto :goto_7

    .line 162
    :cond_7
    cmpl-float v1, v8, v2

    .line 163
    .line 164
    if-lez v1, :cond_8

    .line 165
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v0, " + "

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    goto :goto_8

    .line 184
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v0, " - "

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    :goto_7
    const/high16 v1, -0x40800000    # -1.0f

    .line 202
    .line 203
    mul-float/2addr v8, v1

    .line 204
    :cond_9
    :goto_8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 205
    .line 206
    cmpl-float v1, v8, v1

    .line 207
    .line 208
    if-nez v1, :cond_a

    .line 209
    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v0, "null"

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_9

    .line 228
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v0, " null"

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    :goto_9
    move v1, v3

    .line 249
    :goto_a
    add-int/lit8 v7, v7, 0x1

    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :cond_b
    if-nez v1, :cond_c

    .line 254
    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v0, "0.0"

    .line 264
    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    :cond_c
    return-object v0
.end method
