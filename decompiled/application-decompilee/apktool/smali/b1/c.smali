.class public final Lb1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lb1/d;


# direct methods
.method public constructor <init>(Lb1/d;)V
    .locals 0

    iput-object p1, p0, Lb1/c;->a:Lb1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/c;->a:Lb1/d;

    .line 2
    .line 3
    iget v1, v0, Lb1/d;->c:F

    .line 4
    .line 5
    iget v2, v0, Lb1/d;->g:F

    .line 6
    .line 7
    sub-float/2addr v2, v1

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    mul-float/2addr v3, v2

    .line 13
    add-float/2addr v3, v1

    .line 14
    iput v3, v0, Lb1/d;->e:F

    .line 15
    .line 16
    iget v1, v0, Lb1/d;->d:F

    .line 17
    .line 18
    iget v2, v0, Lb1/d;->h:F

    .line 19
    .line 20
    sub-float/2addr v2, v1

    .line 21
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    mul-float/2addr p1, v2

    .line 26
    add-float/2addr p1, v1

    .line 27
    iput p1, v0, Lb1/d;->f:F

    .line 28
    .line 29
    iget-object p1, v0, Lb1/d;->a:Landroid/widget/Magnifier;

    .line 30
    .line 31
    iget v1, v0, Lb1/d;->e:F

    .line 32
    .line 33
    iget v0, v0, Lb1/d;->f:F

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Landroid/widget/Magnifier;->show(FF)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
