.class public final Lb1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/Magnifier;

.field public final b:Landroid/animation/ValueAnimator;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/widget/Magnifier$Builder;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/widget/Magnifier$Builder;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    int-to-float p1, p2

    .line 10
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 11
    .line 12
    mul-float v2, p1, v1

    .line 13
    .line 14
    float-to-int v2, v2

    .line 15
    const/high16 v3, 0x40b00000    # 5.5f

    .line 16
    .line 17
    mul-float/2addr p1, v3

    .line 18
    float-to-int p1, p1

    .line 19
    invoke-virtual {v0, p1, v2}, Landroid/widget/Magnifier$Builder;->setSize(II)Landroid/widget/Magnifier$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/Magnifier$Builder;->setElevation(F)Landroid/widget/Magnifier$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v1}, Landroid/widget/Magnifier$Builder;->setInitialZoom(F)Landroid/widget/Magnifier$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/Magnifier$Builder;->setClippingEnabled(Z)Landroid/widget/Magnifier$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/high16 v1, 0x40400000    # 3.0f

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/widget/Magnifier$Builder;->setCornerRadius(F)Landroid/widget/Magnifier$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    neg-int v1, p2

    .line 44
    const/4 v2, 0x2

    .line 45
    div-int/2addr p2, v2

    .line 46
    sub-int/2addr v1, p2

    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-virtual {p1, p2, v1}, Landroid/widget/Magnifier$Builder;->setDefaultSourceToMagnifierOffset(II)Landroid/widget/Magnifier$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1, v0, p2, v0, p2}, Landroid/widget/Magnifier$Builder;->setSourceBounds(IIII)Landroid/widget/Magnifier$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/widget/Magnifier$Builder;->build()Landroid/widget/Magnifier;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lb1/d;->a:Landroid/widget/Magnifier;

    .line 61
    .line 62
    new-array p1, v2, [F

    .line 63
    .line 64
    fill-array-data p1, :array_0

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lb1/d;->b:Landroid/animation/ValueAnimator;

    .line 72
    .line 73
    const-wide/16 v0, 0x64

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 76
    .line 77
    .line 78
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    .line 79
    .line 80
    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lb1/c;

    .line 87
    .line 88
    invoke-direct {p2, p0}, Lb1/c;-><init>(Lb1/d;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb1/d;->a:Landroid/widget/Magnifier;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/Magnifier;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb1/d;->b:Landroid/animation/ValueAnimator;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(FF)V
    .locals 2

    .line 1
    iget v0, p0, Lb1/d;->h:F

    .line 2
    .line 3
    cmpl-float v0, p2, v0

    .line 4
    .line 5
    iget-object v1, p0, Lb1/d;->b:Landroid/animation/ValueAnimator;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lb1/d;->e:F

    .line 19
    .line 20
    iput v0, p0, Lb1/d;->c:F

    .line 21
    .line 22
    iget v0, p0, Lb1/d;->f:F

    .line 23
    .line 24
    iput v0, p0, Lb1/d;->d:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v0, p0, Lb1/d;->g:F

    .line 28
    .line 29
    iput v0, p0, Lb1/d;->c:F

    .line 30
    .line 31
    iget v0, p0, Lb1/d;->h:F

    .line 32
    .line 33
    iput v0, p0, Lb1/d;->d:F

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lb1/d;->a:Landroid/widget/Magnifier;

    .line 46
    .line 47
    invoke-virtual {v0, p1, p2}, Landroid/widget/Magnifier;->show(FF)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    iput p1, p0, Lb1/d;->g:F

    .line 51
    .line 52
    iput p2, p0, Lb1/d;->h:F

    .line 53
    .line 54
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lb1/d;->a:Landroid/widget/Magnifier;

    invoke-virtual {v0}, Landroid/widget/Magnifier;->update()V

    return-void
.end method
