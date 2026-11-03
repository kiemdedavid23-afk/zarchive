.class public final Lz0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/h$c;
    }
.end annotation


# static fields
.field public static final u:Lz0/h$a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:Landroid/view/VelocityTracker;

.field public final l:F

.field public m:F

.field public final n:I

.field public final o:Landroid/widget/Scroller;

.field public final p:Lz0/h$c;

.field public q:Landroid/view/View;

.field public r:Z

.field public final s:Landroid/view/ViewGroup;

.field public final t:Lz0/h$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0/h$a;

    invoke-direct {v0}, Lz0/h$a;-><init>()V

    sput-object v0, Lz0/h;->u:Lz0/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lz0/h;->c:I

    .line 6
    .line 7
    new-instance v0, Lz0/h$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lz0/h$b;-><init>(Lz0/h;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lz0/h;->t:Lz0/h$b;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iput-object p2, p0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iput-object p3, p0, Lz0/h;->p:Lz0/h$c;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 33
    .line 34
    const/high16 v0, 0x41a00000    # 20.0f

    .line 35
    .line 36
    mul-float/2addr p3, v0

    .line 37
    const/high16 v0, 0x3f000000    # 0.5f

    .line 38
    .line 39
    add-float/2addr p3, v0

    .line 40
    float-to-int p3, p3

    .line 41
    iput p3, p0, Lz0/h;->n:I

    .line 42
    .line 43
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    iput p3, p0, Lz0/h;->b:I

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    int-to-float p3, p3

    .line 54
    iput p3, p0, Lz0/h;->l:F

    .line 55
    .line 56
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    int-to-float p2, p2

    .line 61
    iput p2, p0, Lz0/h;->m:F

    .line 62
    .line 63
    new-instance p2, Landroid/widget/Scroller;

    .line 64
    .line 65
    sget-object p3, Lz0/h;->u:Lz0/h$a;

    .line 66
    .line 67
    invoke-direct {p2, p1, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, Lz0/h;->o:Landroid/widget/Scroller;

    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p2, "Parent view may not be null"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz0/h;->b()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lz0/h;->a:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lz0/h;->o:Landroid/widget/Scroller;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lz0/h;->p:Lz0/h$c;

    .line 28
    .line 29
    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lz0/h;->o(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lz0/h;->c:I

    .line 3
    .line 4
    iget-object v0, p0, Lz0/h;->d:[F

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lz0/h;->e:[F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lz0/h;->f:[F

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lz0/h;->g:[F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lz0/h;->h:[I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lz0/h;->i:[I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lz0/h;->j:[I

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object v0, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final c(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iget-object v0, p0, Lz0/h;->h:[I

    .line 10
    .line 11
    aget v0, v0, p3

    .line 12
    .line 13
    and-int/2addr v0, p4

    .line 14
    const/4 v1, 0x0

    .line 15
    if-ne v0, p4, :cond_2

    .line 16
    .line 17
    and-int v0, v1, p4

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lz0/h;->j:[I

    .line 22
    .line 23
    aget v0, v0, p3

    .line 24
    .line 25
    and-int/2addr v0, p4

    .line 26
    if-eq v0, p4, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lz0/h;->i:[I

    .line 29
    .line 30
    aget v0, v0, p3

    .line 31
    .line 32
    and-int/2addr v0, p4

    .line 33
    if-eq v0, p4, :cond_2

    .line 34
    .line 35
    iget v0, p0, Lz0/h;->b:I

    .line 36
    .line 37
    int-to-float v2, v0

    .line 38
    cmpg-float v2, p1, v2

    .line 39
    .line 40
    if-gtz v2, :cond_0

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    cmpg-float v0, p2, v0

    .line 44
    .line 45
    if-gtz v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    .line 50
    mul-float/2addr p2, v0

    .line 51
    cmpg-float p2, p1, p2

    .line 52
    .line 53
    if-gez p2, :cond_1

    .line 54
    .line 55
    iget-object p2, p0, Lz0/h;->p:Lz0/h$c;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object p2, p0, Lz0/h;->i:[I

    .line 61
    .line 62
    aget p2, p2, p3

    .line 63
    .line 64
    and-int/2addr p2, p4

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    iget p2, p0, Lz0/h;->b:I

    .line 68
    .line 69
    int-to-float p2, p2

    .line 70
    cmpl-float p1, p1, p2

    .line 71
    .line 72
    if-lez p1, :cond_2

    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    :cond_2
    :goto_0
    return v1
.end method

.method public final d(Landroid/view/View;F)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p0, Lz0/h;->p:Lz0/h$c;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 13
    .line 14
    iget p1, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-lez p1, :cond_1

    .line 18
    .line 19
    move p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p1, v0

    .line 22
    :goto_0
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget p2, p0, Lz0/h;->b:I

    .line 29
    .line 30
    int-to-float p2, p2

    .line 31
    cmpl-float p1, p1, p2

    .line 32
    .line 33
    if-lez p1, :cond_2

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_2
    return v0
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/h;->d:[F

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    aput v1, v0, p1

    .line 8
    .line 9
    iget-object v0, p0, Lz0/h;->e:[F

    .line 10
    .line 11
    aput v1, v0, p1

    .line 12
    .line 13
    iget-object v0, p0, Lz0/h;->f:[F

    .line 14
    .line 15
    aput v1, v0, p1

    .line 16
    .line 17
    iget-object v0, p0, Lz0/h;->g:[F

    .line 18
    .line 19
    aput v1, v0, p1

    .line 20
    .line 21
    iget-object v0, p0, Lz0/h;->h:[I

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    aput v1, v0, p1

    .line 25
    .line 26
    iget-object v0, p0, Lz0/h;->i:[I

    .line 27
    .line 28
    aput v1, v0, p1

    .line 29
    .line 30
    iget-object v0, p0, Lz0/h;->j:[I

    .line 31
    .line 32
    aput v1, v0, p1

    .line 33
    .line 34
    return-void
.end method

.method public final f(III)I
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-int/lit8 v1, v0, 0x2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v2, v0

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v1, v1

    .line 27
    const/high16 v3, 0x3f000000    # 0.5f

    .line 28
    .line 29
    sub-float/2addr v2, v3

    .line 30
    float-to-double v2, v2

    .line 31
    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    mul-double/2addr v2, v4

    .line 37
    double-to-float v2, v2

    .line 38
    float-to-double v2, v2

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    double-to-float v2, v2

    .line 44
    mul-float/2addr v2, v1

    .line 45
    add-float/2addr v2, v1

    .line 46
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-lez p2, :cond_1

    .line 51
    .line 52
    int-to-float p1, p2

    .line 53
    div-float/2addr v2, p1

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 59
    .line 60
    mul-float/2addr p1, p2

    .line 61
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    mul-int/lit8 p1, p1, 0x4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    int-to-float p1, p1

    .line 73
    int-to-float p2, p3

    .line 74
    div-float/2addr p1, p2

    .line 75
    add-float/2addr p1, v0

    .line 76
    const/high16 p2, 0x43800000    # 256.0f

    .line 77
    .line 78
    mul-float/2addr p1, p2

    .line 79
    float-to-int p1, p1

    .line 80
    :goto_0
    const/16 p2, 0x258

    .line 81
    .line 82
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    return p1
.end method

.method public final g(F)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lz0/h;->r:Z

    .line 3
    .line 4
    iget-object v1, p0, Lz0/h;->q:Landroid/view/View;

    .line 5
    .line 6
    iget-object v2, p0, Lz0/h;->p:Lz0/h$c;

    .line 7
    .line 8
    check-cast v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 11
    .line 12
    iget-boolean v3, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    neg-float p1, p1

    .line 17
    :cond_0
    const/4 v3, 0x0

    .line 18
    cmpl-float v4, p1, v3

    .line 19
    .line 20
    if-lez v4, :cond_1

    .line 21
    .line 22
    iget v5, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 23
    .line 24
    iget v6, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 25
    .line 26
    cmpg-float v5, v5, v6

    .line 27
    .line 28
    if-gtz v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 36
    .line 37
    if-lez v4, :cond_2

    .line 38
    .line 39
    iget v4, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 40
    .line 41
    iget v6, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 42
    .line 43
    cmpl-float v4, v4, v6

    .line 44
    .line 45
    if-lez v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    cmpg-float p1, p1, v3

    .line 53
    .line 54
    if-gez p1, :cond_3

    .line 55
    .line 56
    iget v4, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 57
    .line 58
    iget v6, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 59
    .line 60
    cmpl-float v4, v4, v6

    .line 61
    .line 62
    if-ltz v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v2, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    if-gez p1, :cond_4

    .line 70
    .line 71
    iget p1, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 72
    .line 73
    iget v4, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 74
    .line 75
    cmpg-float p1, p1, v4

    .line 76
    .line 77
    if-gez p1, :cond_4

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget p1, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 85
    .line 86
    iget v4, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 87
    .line 88
    add-float v6, v4, v5

    .line 89
    .line 90
    const/high16 v7, 0x40000000    # 2.0f

    .line 91
    .line 92
    div-float/2addr v6, v7

    .line 93
    cmpl-float v6, p1, v6

    .line 94
    .line 95
    if-ltz v6, :cond_5

    .line 96
    .line 97
    invoke-virtual {v2, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    goto :goto_0

    .line 102
    :cond_5
    div-float v5, v4, v7

    .line 103
    .line 104
    cmpl-float p1, p1, v5

    .line 105
    .line 106
    if-ltz p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    goto :goto_0

    .line 113
    :cond_6
    invoke-virtual {v2, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    :goto_0
    iget-object v3, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 118
    .line 119
    if-eqz v3, :cond_8

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iget-boolean v4, v3, Lz0/h;->r:Z

    .line 126
    .line 127
    if-eqz v4, :cond_7

    .line 128
    .line 129
    iget-object v4, v3, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 130
    .line 131
    iget v5, v3, Lz0/h;->c:I

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    float-to-int v4, v4

    .line 138
    iget-object v5, v3, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 139
    .line 140
    iget v6, v3, Lz0/h;->c:I

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    float-to-int v5, v5

    .line 147
    invoke-virtual {v3, v1, p1, v4, v5}, Lz0/h;->i(IIII)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v0, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    .line 154
    .line 155
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_8
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 160
    .line 161
    .line 162
    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lz0/h;->r:Z

    .line 164
    .line 165
    iget v1, p0, Lz0/h;->a:I

    .line 166
    .line 167
    if-ne v1, v0, :cond_9

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lz0/h;->o(I)V

    .line 170
    .line 171
    .line 172
    :cond_9
    return-void
.end method

.method public final h(II)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    if-ltz v1, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lz0/h;->p:Lz0/h$c;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-lt p1, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge p1, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-lt p2, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-ge p2, v3, :cond_0

    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public final i(IIII)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lz0/h;->q:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, Lz0/h;->q:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int v4, p1, v2

    .line 14
    .line 15
    sub-int v5, p2, v3

    .line 16
    .line 17
    iget-object v1, p0, Lz0/h;->o:Landroid/widget/Scroller;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lz0/h;->o(I)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_0
    iget p2, p0, Lz0/h;->m:F

    .line 32
    .line 33
    float-to-int p2, p2

    .line 34
    iget v0, p0, Lz0/h;->l:F

    .line 35
    .line 36
    float-to-int v0, v0

    .line 37
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ge v6, p2, :cond_1

    .line 42
    .line 43
    move p3, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    if-le v6, v0, :cond_3

    .line 46
    .line 47
    if-lez p3, :cond_2

    .line 48
    .line 49
    move p3, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    neg-int p2, v0

    .line 52
    move p3, p2

    .line 53
    :cond_3
    :goto_0
    iget p2, p0, Lz0/h;->m:F

    .line 54
    .line 55
    float-to-int p2, p2

    .line 56
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-ge v6, p2, :cond_4

    .line 61
    .line 62
    move p4, p1

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    if-le v6, v0, :cond_6

    .line 65
    .line 66
    if-lez p4, :cond_5

    .line 67
    .line 68
    move p4, v0

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    neg-int p2, v0

    .line 71
    move p4, p2

    .line 72
    :cond_6
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    add-int v8, v6, v7

    .line 89
    .line 90
    add-int v9, p2, v0

    .line 91
    .line 92
    if-eqz p3, :cond_7

    .line 93
    .line 94
    int-to-float p2, v6

    .line 95
    int-to-float v6, v8

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    int-to-float p2, p2

    .line 98
    int-to-float v6, v9

    .line 99
    :goto_2
    div-float/2addr p2, v6

    .line 100
    if-eqz p4, :cond_8

    .line 101
    .line 102
    int-to-float v0, v7

    .line 103
    int-to-float v6, v8

    .line 104
    goto :goto_3

    .line 105
    :cond_8
    int-to-float v0, v0

    .line 106
    int-to-float v6, v9

    .line 107
    :goto_3
    div-float/2addr v0, v6

    .line 108
    iget-object v6, p0, Lz0/h;->p:Lz0/h$c;

    .line 109
    .line 110
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v4, p3, p1}, Lz0/h;->f(III)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    check-cast v6, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 118
    .line 119
    iget-object p3, v6, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 120
    .line 121
    iget p3, p3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 122
    .line 123
    invoke-virtual {p0, v5, p4, p3}, Lz0/h;->f(III)I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    int-to-float p1, p1

    .line 128
    mul-float/2addr p1, p2

    .line 129
    int-to-float p2, p3

    .line 130
    mul-float/2addr p2, v0

    .line 131
    add-float/2addr p2, p1

    .line 132
    float-to-int v6, p2

    .line 133
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 134
    .line 135
    .line 136
    const/4 p1, 0x2

    .line 137
    invoke-virtual {p0, p1}, Lz0/h;->o(I)V

    .line 138
    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    return p1
.end method

.method public final j(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lz0/h;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iget-object v3, p0, Lz0/h;->p:Lz0/h$c;

    .line 31
    .line 32
    if-eqz v0, :cond_18

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v0, v4, :cond_16

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-eq v0, v5, :cond_d

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    if-eq v0, v5, :cond_b

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    if-eq v0, v5, :cond_7

    .line 45
    .line 46
    const/4 v3, 0x6

    .line 47
    if-eq v0, v3, :cond_2

    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v1, p0, Lz0/h;->a:I

    .line 56
    .line 57
    if-ne v1, v4, :cond_6

    .line 58
    .line 59
    iget v1, p0, Lz0/h;->c:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_0
    const/4 v3, -0x1

    .line 68
    if-ge v2, v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget v5, p0, Lz0/h;->c:I

    .line 75
    .line 76
    if-ne v4, v5, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    float-to-int v5, v5

    .line 88
    float-to-int v6, v6

    .line 89
    invoke-virtual {p0, v5, v6}, Lz0/h;->h(II)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lz0/h;->q:Landroid/view/View;

    .line 94
    .line 95
    if-ne v5, v6, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, v6, v4}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    iget p1, p0, Lz0/h;->c:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move p1, v3

    .line 110
    :goto_2
    if-ne p1, v3, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0}, Lz0/h;->k()V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {p0, v0}, Lz0/h;->e(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_6

    .line 119
    .line 120
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {p0, v5, p1, v0}, Lz0/h;->m(FFI)V

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lz0/h;->a:I

    .line 136
    .line 137
    if-nez v1, :cond_8

    .line 138
    .line 139
    float-to-int v1, v5

    .line 140
    float-to-int p1, p1

    .line 141
    invoke-virtual {p0, v1, p1}, Lz0/h;->h(II)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1, v0}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lz0/h;->h:[I

    .line 149
    .line 150
    aget p1, p1, v0

    .line 151
    .line 152
    and-int/2addr p1, v2

    .line 153
    if-eqz p1, :cond_19

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    goto/16 :goto_6

    .line 159
    .line 160
    :cond_8
    float-to-int v1, v5

    .line 161
    float-to-int p1, p1

    .line 162
    iget-object v3, p0, Lz0/h;->q:Landroid/view/View;

    .line 163
    .line 164
    if-nez v3, :cond_9

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_9
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-lt v1, v5, :cond_a

    .line 172
    .line 173
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-ge v1, v5, :cond_a

    .line 178
    .line 179
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-lt p1, v1, :cond_a

    .line 184
    .line 185
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-ge p1, v1, :cond_a

    .line 190
    .line 191
    move v2, v4

    .line 192
    :cond_a
    :goto_3
    if-eqz v2, :cond_19

    .line 193
    .line 194
    iget-object p1, p0, Lz0/h;->q:Landroid/view/View;

    .line 195
    .line 196
    invoke-virtual {p0, p1, v0}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 197
    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_b
    iget p1, p0, Lz0/h;->a:I

    .line 202
    .line 203
    if-ne p1, v4, :cond_c

    .line 204
    .line 205
    const/4 p1, 0x0

    .line 206
    invoke-virtual {p0, p1}, Lz0/h;->g(F)V

    .line 207
    .line 208
    .line 209
    :cond_c
    invoke-virtual {p0}, Lz0/h;->b()V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :cond_d
    iget v0, p0, Lz0/h;->a:I

    .line 215
    .line 216
    if-ne v0, v4, :cond_12

    .line 217
    .line 218
    iget v0, p0, Lz0/h;->c:I

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    iget-object v4, p0, Lz0/h;->f:[F

    .line 233
    .line 234
    iget v5, p0, Lz0/h;->c:I

    .line 235
    .line 236
    aget v4, v4, v5

    .line 237
    .line 238
    sub-float/2addr v1, v4

    .line 239
    float-to-int v1, v1

    .line 240
    iget-object v4, p0, Lz0/h;->g:[F

    .line 241
    .line 242
    aget v4, v4, v5

    .line 243
    .line 244
    sub-float/2addr v0, v4

    .line 245
    float-to-int v0, v0

    .line 246
    iget-object v4, p0, Lz0/h;->q:Landroid/view/View;

    .line 247
    .line 248
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 249
    .line 250
    .line 251
    iget-object v4, p0, Lz0/h;->q:Landroid/view/View;

    .line 252
    .line 253
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    add-int/2addr v4, v0

    .line 258
    iget-object v5, p0, Lz0/h;->q:Landroid/view/View;

    .line 259
    .line 260
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 261
    .line 262
    .line 263
    move-result v5

    .line 264
    iget-object v6, p0, Lz0/h;->q:Landroid/view/View;

    .line 265
    .line 266
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    if-eqz v1, :cond_e

    .line 271
    .line 272
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    iget-object v7, p0, Lz0/h;->q:Landroid/view/View;

    .line 276
    .line 277
    sub-int/2addr v2, v5

    .line 278
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 279
    .line 280
    .line 281
    :cond_e
    if-eqz v0, :cond_f

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Lz0/h$c;->a(I)I

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    iget-object v2, p0, Lz0/h;->q:Landroid/view/View;

    .line 288
    .line 289
    sub-int v5, v4, v6

    .line 290
    .line 291
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 292
    .line 293
    .line 294
    :cond_f
    if-nez v1, :cond_10

    .line 295
    .line 296
    if-eqz v0, :cond_11

    .line 297
    .line 298
    :cond_10
    check-cast v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 299
    .line 300
    iget-object v0, v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 301
    .line 302
    invoke-static {v0, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 306
    .line 307
    .line 308
    :cond_11
    invoke-virtual {p0, p1}, Lz0/h;->n(Landroid/view/MotionEvent;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_6

    .line 312
    .line 313
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    :goto_4
    if-ge v2, v0, :cond_15

    .line 318
    .line 319
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    iget-object v6, p0, Lz0/h;->d:[F

    .line 332
    .line 333
    aget v6, v6, v1

    .line 334
    .line 335
    sub-float v6, v3, v6

    .line 336
    .line 337
    iget-object v7, p0, Lz0/h;->e:[F

    .line 338
    .line 339
    aget v7, v7, v1

    .line 340
    .line 341
    sub-float v7, v5, v7

    .line 342
    .line 343
    invoke-virtual {p0, v6, v7, v1}, Lz0/h;->l(FFI)V

    .line 344
    .line 345
    .line 346
    iget v6, p0, Lz0/h;->a:I

    .line 347
    .line 348
    if-ne v6, v4, :cond_13

    .line 349
    .line 350
    goto :goto_5

    .line 351
    :cond_13
    float-to-int v3, v3

    .line 352
    float-to-int v5, v5

    .line 353
    invoke-virtual {p0, v3, v5}, Lz0/h;->h(II)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {p0, v3, v7}, Lz0/h;->d(Landroid/view/View;F)Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_14

    .line 362
    .line 363
    invoke-virtual {p0, v3, v1}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_14

    .line 368
    .line 369
    goto :goto_5

    .line 370
    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_15
    :goto_5
    invoke-virtual {p0, p1}, Lz0/h;->n(Landroid/view/MotionEvent;)V

    .line 374
    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_16
    iget p1, p0, Lz0/h;->a:I

    .line 378
    .line 379
    if-ne p1, v4, :cond_17

    .line 380
    .line 381
    invoke-virtual {p0}, Lz0/h;->k()V

    .line 382
    .line 383
    .line 384
    :cond_17
    invoke-virtual {p0}, Lz0/h;->b()V

    .line 385
    .line 386
    .line 387
    goto :goto_6

    .line 388
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 397
    .line 398
    .line 399
    move-result p1

    .line 400
    float-to-int v4, v0

    .line 401
    float-to-int v5, v1

    .line 402
    invoke-virtual {p0, v4, v5}, Lz0/h;->h(II)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {p0, v0, v1, p1}, Lz0/h;->m(FFI)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p0, v4, p1}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 410
    .line 411
    .line 412
    iget-object v0, p0, Lz0/h;->h:[I

    .line 413
    .line 414
    aget p1, v0, p1

    .line 415
    .line 416
    and-int/2addr p1, v2

    .line 417
    if-eqz p1, :cond_19

    .line 418
    .line 419
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    :cond_19
    :goto_6
    return-void
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    iget v2, p0, Lz0/h;->l:F

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    iget v1, p0, Lz0/h;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lz0/h;->m:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    cmpg-float v1, v0, v1

    .line 25
    .line 26
    if-gez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    cmpl-float v0, v0, v2

    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 32
    .line 33
    iget v1, p0, Lz0/h;->c:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget v1, p0, Lz0/h;->m:F

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    cmpg-float v1, v3, v1

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    move v0, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    cmpl-float v1, v3, v2

    .line 53
    .line 54
    if-lez v1, :cond_3

    .line 55
    .line 56
    cmpl-float v0, v0, v4

    .line 57
    .line 58
    if-lez v0, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    neg-float v2, v2

    .line 62
    :goto_1
    move v0, v2

    .line 63
    :cond_3
    :goto_2
    invoke-virtual {p0, v0}, Lz0/h;->g(F)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final l(FFI)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lz0/h;->c(FFII)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, p2, p1, p3, v1}, Lz0/h;->c(FFII)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x4

    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, p1, p2, p3, v1}, Lz0/h;->c(FFII)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    or-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {p0, p2, p1, p3, v1}, Lz0/h;->c(FFII)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    or-int/lit8 v0, v0, 0x8

    .line 33
    .line 34
    :cond_2
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object p1, p0, Lz0/h;->i:[I

    .line 37
    .line 38
    aget p2, p1, p3

    .line 39
    .line 40
    or-int/2addr p2, v0

    .line 41
    aput p2, p1, p3

    .line 42
    .line 43
    iget-object p1, p0, Lz0/h;->p:Lz0/h$c;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    :cond_3
    return-void
.end method

.method public final m(FFI)V
    .locals 10

    .line 1
    iget-object v0, p0, Lz0/h;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p3, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p3, 0x1

    .line 10
    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    new-array v4, v2, [F

    .line 14
    .line 15
    new-array v5, v2, [F

    .line 16
    .line 17
    new-array v6, v2, [F

    .line 18
    .line 19
    new-array v7, v2, [I

    .line 20
    .line 21
    new-array v8, v2, [I

    .line 22
    .line 23
    new-array v2, v2, [I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    array-length v9, v0

    .line 28
    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lz0/h;->e:[F

    .line 32
    .line 33
    array-length v9, v0

    .line 34
    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lz0/h;->f:[F

    .line 38
    .line 39
    array-length v9, v0

    .line 40
    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lz0/h;->g:[F

    .line 44
    .line 45
    array-length v9, v0

    .line 46
    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lz0/h;->h:[I

    .line 50
    .line 51
    array-length v9, v0

    .line 52
    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lz0/h;->i:[I

    .line 56
    .line 57
    array-length v9, v0

    .line 58
    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lz0/h;->j:[I

    .line 62
    .line 63
    array-length v9, v0

    .line 64
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-object v3, p0, Lz0/h;->d:[F

    .line 68
    .line 69
    iput-object v4, p0, Lz0/h;->e:[F

    .line 70
    .line 71
    iput-object v5, p0, Lz0/h;->f:[F

    .line 72
    .line 73
    iput-object v6, p0, Lz0/h;->g:[F

    .line 74
    .line 75
    iput-object v7, p0, Lz0/h;->h:[I

    .line 76
    .line 77
    iput-object v8, p0, Lz0/h;->i:[I

    .line 78
    .line 79
    iput-object v2, p0, Lz0/h;->j:[I

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lz0/h;->d:[F

    .line 82
    .line 83
    iget-object v2, p0, Lz0/h;->f:[F

    .line 84
    .line 85
    aput p1, v2, p3

    .line 86
    .line 87
    aput p1, v0, p3

    .line 88
    .line 89
    iget-object v0, p0, Lz0/h;->e:[F

    .line 90
    .line 91
    iget-object v2, p0, Lz0/h;->g:[F

    .line 92
    .line 93
    aput p2, v2, p3

    .line 94
    .line 95
    aput p2, v0, p3

    .line 96
    .line 97
    iget-object v0, p0, Lz0/h;->h:[I

    .line 98
    .line 99
    float-to-int p1, p1

    .line 100
    float-to-int p2, p2

    .line 101
    iget-object v2, p0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v4, p0, Lz0/h;->n:I

    .line 108
    .line 109
    add-int/2addr v3, v4

    .line 110
    if-ge p1, v3, :cond_3

    .line 111
    .line 112
    const/4 v1, 0x1

    .line 113
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    add-int/2addr v3, v4

    .line 118
    if-ge p2, v3, :cond_4

    .line 119
    .line 120
    or-int/lit8 v1, v1, 0x4

    .line 121
    .line 122
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    sub-int/2addr v3, v4

    .line 127
    if-le p1, v3, :cond_5

    .line 128
    .line 129
    or-int/lit8 v1, v1, 0x2

    .line 130
    .line 131
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    sub-int/2addr p1, v4

    .line 136
    if-le p2, p1, :cond_6

    .line 137
    .line 138
    or-int/lit8 v1, v1, 0x8

    .line 139
    .line 140
    :cond_6
    aput v1, v0, p3

    .line 141
    .line 142
    return-void
.end method

.method public final n(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iget-object v5, p0, Lz0/h;->f:[F

    .line 21
    .line 22
    aput v3, v5, v2

    .line 23
    .line 24
    iget-object v3, p0, Lz0/h;->g:[F

    .line 25
    .line 26
    aput v4, v3, v2

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final o(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz0/h;->t:Lz0/h$b;

    .line 2
    .line 3
    iget-object v1, p0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lz0/h;->a:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_4

    .line 11
    .line 12
    iput p1, p0, Lz0/h;->a:I

    .line 13
    .line 14
    iget-object p1, p0, Lz0/h;->p:Lz0/h$c;

    .line 15
    .line 16
    check-cast p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget v0, v0, Lz0/h;->a:I

    .line 25
    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    iget-object v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(I)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 39
    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    .line 42
    cmpl-float v1, v0, v1

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i()V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 50
    .line 51
    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    cmpl-float v2, v0, v1

    .line 57
    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 61
    .line 62
    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    cmpg-float v0, v0, v1

    .line 67
    .line 68
    if-gez v0, :cond_2

    .line 69
    .line 70
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 71
    .line 72
    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i()V

    .line 83
    .line 84
    .line 85
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    :goto_0
    iget p1, p0, Lz0/h;->a:I

    .line 91
    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lz0/h;->q:Landroid/view/View;

    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method public final p(Landroid/view/View;I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lz0/h;->q:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lz0/h;->c:I

    .line 7
    .line 8
    if-ne v0, p2, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    iget-object v2, p0, Lz0/h;->p:Lz0/h$c;

    .line 15
    .line 16
    check-cast v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 19
    .line 20
    iget-boolean v4, v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    iget-object v3, v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 25
    .line 26
    if-ne p1, v3, :cond_1

    .line 27
    .line 28
    move v3, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v3, v0

    .line 31
    :goto_0
    if-eqz v3, :cond_5

    .line 32
    .line 33
    iput p2, p0, Lz0/h;->c:I

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 40
    .line 41
    if-ne v3, v4, :cond_4

    .line 42
    .line 43
    iput-object p1, p0, Lz0/h;->q:Landroid/view/View;

    .line 44
    .line 45
    iput p2, p0, Lz0/h;->c:I

    .line 46
    .line 47
    iget-object p1, v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    move v2, v0

    .line 54
    :goto_1
    if-ge v2, p2, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const/4 v5, 0x4

    .line 65
    if-ne v4, v5, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p0, v1}, Lz0/h;->o(I)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    .line 82
    .line 83
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v0, ")"

    .line 90
    .line 91
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_5
    return v0
.end method
