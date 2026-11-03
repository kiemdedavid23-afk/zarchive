.class public final Lru/zdevs/zarchiver/ui/editor/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z[II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    aget p0, p1, v1

    .line 6
    .line 7
    if-ge p2, p0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    aput p2, p1, v0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    aput p2, p1, v0

    .line 14
    .line 15
    aput p2, p1, v1

    .line 16
    .line 17
    :goto_0
    return v0
.end method

.method public static b(Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    if-eq v5, v3, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    move v3, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v3, v1

    .line 20
    :goto_0
    if-eqz p1, :cond_3

    .line 21
    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    if-le v2, v5, :cond_5

    .line 25
    .line 26
    sub-int/2addr v5, v4

    .line 27
    aput v5, v0, v4

    .line 28
    .line 29
    return v4

    .line 30
    :cond_2
    if-lez v2, :cond_5

    .line 31
    .line 32
    sub-int/2addr v2, v4

    .line 33
    aput v2, v0, v1

    .line 34
    .line 35
    aput v2, v0, v4

    .line 36
    .line 37
    return v4

    .line 38
    :cond_3
    if-eqz v3, :cond_4

    .line 39
    .line 40
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 41
    .line 42
    if-ge v5, p0, :cond_5

    .line 43
    .line 44
    add-int/2addr v5, v4

    .line 45
    aput v5, v0, v4

    .line 46
    .line 47
    return v4

    .line 48
    :cond_4
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 49
    .line 50
    if-ge v2, p0, :cond_5

    .line 51
    .line 52
    add-int/2addr v2, v4

    .line 53
    aput v2, v0, v1

    .line 54
    .line 55
    aput v2, v0, v4

    .line 56
    .line 57
    return v4

    .line 58
    :cond_5
    return v1
.end method

.method public static c(Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    if-eq v5, v3, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v2, v1

    .line 20
    :goto_0
    aget v3, v0, v2

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {p0, v3}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_4

    .line 31
    .line 32
    iget v3, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 38
    .line 39
    and-int/2addr p0, v4

    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    move v1, v4

    .line 43
    :cond_3
    sub-int v1, v3, v1

    .line 44
    .line 45
    :goto_1
    add-int/2addr v3, v1

    .line 46
    invoke-static {v2, v0, v3}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_4
    return v1
.end method

.method public static d(Lru/zdevs/zarchiver/ui/editor/EditableView;Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getLineHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    cmpg-float v4, v2, v4

    .line 17
    .line 18
    if-gtz v4, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-float p0, p0

    .line 26
    div-float/2addr p0, v2

    .line 27
    float-to-int p0, p0

    .line 28
    const/4 v2, 0x1

    .line 29
    aget v4, v0, v2

    .line 30
    .line 31
    if-eq v4, v3, :cond_2

    .line 32
    .line 33
    aget v5, v0, v1

    .line 34
    .line 35
    if-eq v5, v4, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v2, v1

    .line 39
    :goto_0
    aget v4, v0, v2

    .line 40
    .line 41
    invoke-virtual {p1, v4}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz p2, :cond_3

    .line 46
    .line 47
    neg-int p0, p0

    .line 48
    :cond_3
    add-int/2addr v4, p0

    .line 49
    if-gez v4, :cond_4

    .line 50
    .line 51
    move v4, v1

    .line 52
    :cond_4
    iget-object p0, p1, Lru/zdevs/zarchiver/ui/editor/b;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-lt v4, p2, :cond_5

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    add-int/lit8 v4, p0, -0x1

    .line 65
    .line 66
    :cond_5
    invoke-virtual {p1, v4}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    if-eqz p0, :cond_6

    .line 71
    .line 72
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 73
    .line 74
    invoke-static {v2, v0, p0}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    return p0

    .line 79
    :cond_6
    return v1
.end method

.method public static e(Lru/zdevs/zarchiver/ui/editor/b;Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const/4 v4, 0x1

    .line 11
    aget v5, v0, v4

    .line 12
    .line 13
    if-eq v5, v3, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_1

    .line 16
    .line 17
    move v2, v4

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v2, v1

    .line 20
    :goto_0
    aget v5, v0, v2

    .line 21
    .line 22
    invoke-virtual {p0, v5}, Lru/zdevs/zarchiver/ui/editor/b;->f(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-virtual {p0, v6}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v3, v4

    .line 34
    :goto_1
    add-int/2addr v6, v3

    .line 35
    invoke-virtual {p0, v6}, Lru/zdevs/zarchiver/ui/editor/b;->d(I)Lru/zdevs/zarchiver/ui/editor/b$d;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz v7, :cond_5

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    iget p1, v7, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 44
    .line 45
    sub-int/2addr v5, p1

    .line 46
    iget p1, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->d:I

    .line 47
    .line 48
    if-lt v5, p1, :cond_4

    .line 49
    .line 50
    iget v3, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->b:I

    .line 51
    .line 52
    and-int/2addr v3, v4

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    move v1, v4

    .line 56
    :cond_3
    sub-int v5, p1, v1

    .line 57
    .line 58
    :cond_4
    iget p0, p0, Lru/zdevs/zarchiver/ui/editor/b$d;->a:I

    .line 59
    .line 60
    add-int/2addr p0, v5

    .line 61
    invoke-static {v2, v0, p0}, Lru/zdevs/zarchiver/ui/editor/f;->a(Z[II)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    return p0

    .line 66
    :cond_5
    return v1
.end method
