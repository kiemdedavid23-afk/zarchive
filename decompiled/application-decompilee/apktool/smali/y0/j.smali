.class public final Ly0/j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Ly0/j;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Ly0/j;->b:Landroid/graphics/Bitmap;

    const/16 p1, 0x12c

    iput p1, p0, Ly0/j;->c:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ly0/j;->b:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v0, p0, Ly0/j;->a:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 19
    .line 20
    const/high16 v1, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v0, p0, Ly0/j;->c:I

    .line 30
    .line 31
    div-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    int-to-long v0, v0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    return-void
.end method
