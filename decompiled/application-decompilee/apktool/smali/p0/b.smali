.class public final Lp0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-lt p2, v3, :cond_0

    .line 16
    .line 17
    if-lt p3, v4, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    int-to-float p1, p2

    .line 21
    const p2, 0x3f8ccccd    # 1.1f

    .line 22
    .line 23
    .line 24
    mul-float/2addr p1, p2

    .line 25
    int-to-float v0, v3

    .line 26
    div-float/2addr p1, v0

    .line 27
    int-to-float p3, p3

    .line 28
    mul-float/2addr p3, p2

    .line 29
    int-to-float p2, v4

    .line 30
    div-float/2addr p3, p2

    .line 31
    new-instance v5, Landroid/graphics/Matrix;

    .line 32
    .line 33
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5, p1, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v6, 0x1

    .line 42
    move-object v0, p0

    .line 43
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    return-object p0

    .line 48
    :catch_0
    const/4 p0, 0x0

    .line 49
    :catch_1
    :cond_1
    if-eqz p0, :cond_2

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method

.method public static b(Landroid/graphics/drawable/AdaptiveIconDrawable;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicWidth()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    div-float/2addr p1, v0

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicWidth()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-float v0, v0

    .line 21
    mul-float/2addr v0, p1

    .line 22
    float-to-int v0, v0

    .line 23
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    mul-float/2addr p1, v1

    .line 29
    float-to-int p1, p1

    .line 30
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 31
    .line 32
    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Landroid/graphics/Canvas;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method

.method public static c([BI[B)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 7
    .line 8
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 14
    .line 15
    array-length p2, p0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p0, v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    if-eq p2, v2, :cond_1

    .line 24
    .line 25
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 26
    .line 27
    if-ne v3, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 31
    .line 32
    div-int/2addr p2, p1

    .line 33
    div-int/2addr v3, p1

    .line 34
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 39
    .line 40
    array-length p1, p0

    .line 41
    invoke-static {p0, v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object p0

    .line 46
    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public static d(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lp0/b;->e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IIII)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 8
    .line 9
    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Landroid/graphics/Canvas;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 28
    .line 29
    .line 30
    if-eqz p5, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, p5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :catch_0
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static f(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    new-instance v5, Landroid/graphics/Matrix;

    .line 10
    .line 11
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    .line 13
    .line 14
    shr-int/lit8 v0, v3, 0x1

    .line 15
    .line 16
    int-to-float v0, v0

    .line 17
    shr-int/lit8 v1, v4, 0x1

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    invoke-virtual {v5, p1, v0, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v0, p0

    .line 27
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method
