.class public final Ly0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    int-to-float v1, p0

    .line 16
    mul-float/2addr v1, v0

    .line 17
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    mul-int/lit8 p0, p0, 0x2

    .line 23
    .line 24
    return p0
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-array v0, v0, [I

    .line 5
    .line 6
    aput p1, v0, v1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .line 25
    .line 26
    :cond_0
    throw p0

    .line 27
    :catch_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return v1
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-array v0, v0, [I

    .line 5
    .line 6
    aput p1, v0, v1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .line 25
    .line 26
    :cond_0
    throw p0

    .line 27
    :catch_0
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return v1
.end method

.method public static d(Landroid/content/Context;)I
    .locals 1

    .line 1
    const v0, 0x101042a

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const v0, 0x7f030008

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :cond_0
    return v0
.end method

.method public static e(I)I
    .locals 3

    .line 1
    and-int/lit16 v0, p0, 0xff

    .line 2
    .line 3
    shr-int/lit8 v1, p0, 0x8

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    shr-int/lit8 p0, p0, 0x10

    .line 8
    .line 9
    and-int/lit16 p0, p0, 0xff

    .line 10
    .line 11
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v0, v1

    .line 20
    add-int/2addr v0, p0

    .line 21
    sub-int/2addr v0, v2

    .line 22
    div-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    const/16 p0, 0xc1

    .line 25
    .line 26
    if-le v0, p0, :cond_0

    .line 27
    .line 28
    const/high16 p0, -0x1000000

    .line 29
    .line 30
    return p0

    .line 31
    :cond_0
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method public static f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-array v0, v0, [I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    aput p1, v0, v2

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {v2, p0, v0}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    move-object v1, p1

    .line 34
    goto :goto_0

    .line 35
    :catchall_1
    move-exception p0

    .line 36
    :goto_0
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    .line 40
    .line 41
    :cond_0
    throw p0

    .line 42
    :catch_0
    move-object p1, v1

    .line 43
    :catch_1
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v1
.end method

.method public static g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-static {v0, p0, p1}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
