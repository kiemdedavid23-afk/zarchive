.class public final La1/a;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La1/a$c;,
        La1/a$b;
    }
.end annotation


# static fields
.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public a:I

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroid/graphics/drawable/Drawable;

.field public final g:I

.field public h:Landroid/view/animation/Animation;

.field public i:Landroid/view/animation/Animation;

.field public j:Landroid/view/View$OnClickListener;

.field public k:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ly0/c;->a(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    sput v0, La1/a;->l:I

    .line 7
    .line 8
    mul-int/lit8 v1, v0, 0x3

    .line 9
    .line 10
    sput v1, La1/a;->m:I

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    sput v0, La1/a;->n:I

    .line 15
    .line 16
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 17
    .line 18
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, La1/a;->o:Landroid/graphics/PorterDuffXfermode;

    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x18

    .line 7
    .line 8
    invoke-static {v0}, Ly0/c;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, La1/a;->g:I

    .line 13
    .line 14
    iput-boolean p2, p0, La1/a;->b:Z

    .line 15
    .line 16
    const p2, 0x7f030008

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iput p2, p0, La1/a;->c:I

    .line 24
    .line 25
    const p2, 0x7f03000a

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, La1/a;->d:I

    .line 33
    .line 34
    const p2, -0x66000001

    .line 35
    .line 36
    .line 37
    iput p2, p0, La1/a;->e:I

    .line 38
    .line 39
    iput v1, p0, La1/a;->a:I

    .line 40
    .line 41
    const p2, 0x7f010001

    .line 42
    .line 43
    .line 44
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iput-object p2, p0, La1/a;->h:Landroid/view/animation/Animation;

    .line 49
    .line 50
    const/high16 p2, 0x7f010000

    .line 51
    .line 52
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, La1/a;->i:Landroid/view/animation/Animation;

    .line 57
    .line 58
    invoke-virtual {p0}, La1/a;->g()V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic a(La1/a;)I
    .locals 0

    invoke-direct {p0}, La1/a;->getCircleSize()I

    move-result p0

    return p0
.end method

.method private getCircleSize()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, La1/a;->a:I

    if-nez v1, :cond_0

    const v1, 0x7f05000c

    goto :goto_0

    :cond_0
    const v1, 0x7f05000d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getShadowX()I
    .locals 2

    sget v0, La1/a;->l:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, La1/a;->n:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getShadowY()I
    .locals 2

    sget v0, La1/a;->m:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, La1/a;->n:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final b()I
    .locals 2

    .line 1
    invoke-direct {p0}, La1/a;->getCircleSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, La1/a;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, La1/a;->getShadowY()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    invoke-direct {p0}, La1/a;->getCircleSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, La1/a;->b:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, La1/a;->getShadowX()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    add-int/2addr v0, v1

    .line 18
    return v0
.end method

.method public final d(I)La1/a$b;
    .locals 2

    .line 1
    new-instance v0, La1/a$b;

    .line 2
    .line 3
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, La1/a$b;-><init>(La1/a;Landroid/graphics/drawable/shapes/OvalShape;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const v4, -0x101009e

    .line 11
    .line 12
    .line 13
    aput v4, v2, v3

    .line 14
    .line 15
    const v4, -0x555556

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v4}, La1/a;->d(I)La1/a$b;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    new-array v2, v1, [I

    .line 26
    .line 27
    const v4, 0x10100a7

    .line 28
    .line 29
    .line 30
    aput v4, v2, v3

    .line 31
    .line 32
    iget v4, p0, La1/a;->d:I

    .line 33
    .line 34
    invoke-virtual {p0, v4}, La1/a;->d(I)La1/a$b;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    new-array v2, v3, [I

    .line 42
    .line 43
    iget v4, p0, La1/a;->c:I

    .line 44
    .line 45
    invoke-virtual {p0, v4}, La1/a;->d(I)La1/a$b;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v0, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 50
    .line 51
    .line 52
    const/16 v2, 0x600

    .line 53
    .line 54
    invoke-static {v2}, Ls0/b;->k(I)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_0

    .line 59
    .line 60
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    .line 61
    .line 62
    new-instance v4, Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    new-array v5, v1, [[I

    .line 65
    .line 66
    new-array v6, v3, [I

    .line 67
    .line 68
    aput-object v6, v5, v3

    .line 69
    .line 70
    new-array v6, v1, [I

    .line 71
    .line 72
    iget v7, p0, La1/a;->e:I

    .line 73
    .line 74
    aput v7, v6, v3

    .line 75
    .line 76
    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-direct {v2, v4, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, La1/a$a;

    .line 84
    .line 85
    invoke-direct {v0}, La1/a$a;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, La1/a;->k:Landroid/graphics/drawable/Drawable;

    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_0
    iput-object v0, p0, La1/a;->k:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    return-object v0
.end method

.method public final f(ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    if-ne v0, p1, :cond_4

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    iget-object p2, p0, La1/a;->i:Landroid/view/animation/Animation;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/view/animation/Animation;->cancel()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, La1/a;->h:Landroid/view/animation/Animation;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/animation/Animation;->cancel()V

    .line 24
    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p2, p0, La1/a;->h:Landroid/view/animation/Animation;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-object p2, p0, La1/a;->i:Landroid/view/animation/Animation;

    .line 32
    .line 33
    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-eqz p1, :cond_3

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_3
    move v1, v2

    .line 40
    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :cond_4
    return-void
.end method

.method public final g()V
    .locals 14

    .line 1
    invoke-virtual {p0}, La1/a;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x2

    .line 8
    iget-boolean v4, p0, La1/a;->b:Z

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 13
    .line 14
    const/4 v6, 0x3

    .line 15
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    new-instance v7, La1/a$c;

    .line 18
    .line 19
    invoke-direct {v7, p0}, La1/a$c;-><init>(La1/a;)V

    .line 20
    .line 21
    .line 22
    aput-object v7, v6, v2

    .line 23
    .line 24
    invoke-virtual {p0}, La1/a;->e()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    aput-object v7, v6, v1

    .line 29
    .line 30
    aput-object v0, v6, v3

    .line 31
    .line 32
    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 37
    .line 38
    new-array v6, v3, [Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    invoke-virtual {p0}, La1/a;->e()Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    aput-object v7, v6, v2

    .line 45
    .line 46
    aput-object v0, v6, v1

    .line 47
    .line 48
    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v0, -0x1

    .line 67
    :goto_1
    invoke-direct {p0}, La1/a;->getCircleSize()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-lez v0, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget v0, p0, La1/a;->g:I

    .line 75
    .line 76
    :goto_2
    sub-int/2addr v6, v0

    .line 77
    div-int/2addr v6, v3

    .line 78
    sget v0, La1/a;->n:I

    .line 79
    .line 80
    if-eqz v4, :cond_3

    .line 81
    .line 82
    sget v7, La1/a;->l:I

    .line 83
    .line 84
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    add-int/2addr v7, v0

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    move v7, v2

    .line 91
    :goto_3
    if-eqz v4, :cond_4

    .line 92
    .line 93
    sget v2, La1/a;->m:I

    .line 94
    .line 95
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    add-int/2addr v2, v0

    .line 100
    :cond_4
    if-eqz v4, :cond_5

    .line 101
    .line 102
    move v9, v3

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    move v9, v1

    .line 105
    :goto_4
    add-int v12, v7, v6

    .line 106
    .line 107
    add-int v13, v2, v6

    .line 108
    .line 109
    move-object v8, v5

    .line 110
    move v10, v12

    .line 111
    move v11, v13

    .line 112
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, La1/a;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-virtual {p0}, La1/a;->c()I

    move-result p1

    invoke-virtual {p0}, La1/a;->b()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, La1/a;->j:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x3

    .line 22
    if-eq v0, v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, La1/a;->k:Landroid/graphics/drawable/Drawable;

    .line 26
    .line 27
    instance-of v3, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 28
    .line 29
    const v4, 0x101009e

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 36
    .line 37
    new-array v1, v2, [I

    .line 38
    .line 39
    aput v4, v1, v5

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 46
    .line 47
    new-array v3, v2, [I

    .line 48
    .line 49
    aput v4, v3, v5

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    div-int/2addr v3, v1

    .line 59
    int-to-float v3, v3

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    div-int/2addr v4, v1

    .line 65
    int-to-float v1, v4

    .line 66
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, La1/a;->k:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    instance-of v3, v0, Landroid/graphics/drawable/StateListDrawable;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 80
    .line 81
    new-array v1, v1, [I

    .line 82
    .line 83
    fill-array-data v1, :array_0

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    .line 91
    .line 92
    new-array v3, v1, [I

    .line 93
    .line 94
    fill-array-data v3, :array_1

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    div-int/2addr v3, v1

    .line 105
    int-to-float v3, v3

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    div-int/2addr v4, v1

    .line 111
    int-to-float v1, v4

    .line 112
    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/RippleDrawable;->setVisible(ZZ)Z

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    return p1

    .line 123
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, La1/a;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, La1/a;->f:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    invoke-virtual {p0}, La1/a;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x7f0d0001

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v0, p1}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, La1/a;->f:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    if-eq v0, p1, :cond_0

    .line 27
    .line 28
    iput-object p1, p0, La1/a;->f:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    invoke-virtual {p0}, La1/a;->g()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La1/a;->j:Landroid/view/View$OnClickListener;

    .line 5
    .line 6
    return-void
.end method
