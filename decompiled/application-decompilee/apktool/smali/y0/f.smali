.class public final Ly0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 16
    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0xc8

    .line 27
    .line 28
    int-to-long v1, v1

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ly0/i;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Ly0/i;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 16
    .line 17
    const/high16 v2, 0x40000000    # 2.0f

    .line 18
    .line 19
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x12c

    .line 27
    .line 28
    int-to-long v1, v1

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Ly0/h;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Ly0/h;-><init>(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static c(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/16 v1, 0x96

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Ly0/j;

    invoke-direct {v1, p0, p1}, Ly0/j;-><init>(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static d(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBreakStrategy(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Landroid/text/SpannableString;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    add-int/2addr p2, v0

    .line 29
    const/16 v2, 0x21

    .line 30
    .line 31
    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static f(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    int-to-float v0, v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 30
    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    .line 32
    .line 33
    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-wide/16 v1, 0x1f4

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    new-instance v1, Ly0/f$a;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Ly0/f$a;-><init>(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 52
    .line 53
    .line 54
    return-void
.end method
