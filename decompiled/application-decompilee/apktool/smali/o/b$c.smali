.class public final Lo/b$c;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 8

    .line 1
    iget v0, p0, Lo/b;->a:I

    .line 2
    .line 3
    shr-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    shr-int/lit8 v0, v0, 0x0

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xf

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eq v0, v4, :cond_2

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq v0, v5, :cond_1

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    if-eq v0, v6, :cond_0

    .line 19
    .line 20
    if-eq v0, v3, :cond_3

    .line 21
    .line 22
    if-eq v0, v2, :cond_4

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    int-to-float v0, v1

    .line 26
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {v6, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 35
    .line 36
    .line 37
    :cond_1
    int-to-float v0, v1

    .line 38
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v5, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 47
    .line 48
    .line 49
    :cond_2
    int-to-float v0, v1

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v4, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 59
    .line 60
    .line 61
    :cond_3
    int-to-float v0, v1

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 71
    .line 72
    .line 73
    :cond_4
    int-to-float v0, v1

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 83
    .line 84
    .line 85
    :goto_0
    int-to-float v0, v1

    .line 86
    return v0
.end method

.method public final b()I
    .locals 8

    .line 1
    iget v0, p0, Lo/b;->a:I

    .line 2
    .line 3
    shr-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    shr-int/lit8 v0, v0, 0x0

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0xf

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    const/4 v3, 0x4

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eq v0, v4, :cond_2

    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    if-eq v0, v5, :cond_1

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    if-eq v0, v6, :cond_0

    .line 19
    .line 20
    if-eq v0, v3, :cond_3

    .line 21
    .line 22
    if-eq v0, v2, :cond_4

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    int-to-float v0, v1

    .line 26
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-static {v6, v0, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 35
    .line 36
    .line 37
    :cond_1
    int-to-float v0, v1

    .line 38
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {v5, v0, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 47
    .line 48
    .line 49
    :cond_2
    int-to-float v0, v1

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v4, v0, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 59
    .line 60
    .line 61
    :cond_3
    int-to-float v0, v1

    .line 62
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 71
    .line 72
    .line 73
    :cond_4
    int-to-float v0, v1

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v2, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 83
    .line 84
    .line 85
    :goto_0
    return v1
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget p1, p0, Lo/b;->a:I

    .line 2
    .line 3
    and-int/lit16 p2, p1, 0xff

    .line 4
    .line 5
    int-to-short p2, p2

    .line 6
    if-eqz p2, :cond_5

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p2, v0, :cond_4

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p2, v0, :cond_3

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p2, v0, :cond_2

    .line 16
    .line 17
    const/4 v0, 0x4

    .line 18
    if-eq p2, v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    if-eq p2, v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "unknown unit:0x"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p2, "mm"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p2, "in"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string p2, "pt"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const-string p2, "sp"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const-string p2, "dp"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    const-string p2, "px"

    .line 58
    .line 59
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    shr-int/lit8 p1, p1, 0x8

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method
