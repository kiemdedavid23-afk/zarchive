.class public Lru/zdevs/zarchiver/ui/text/BtnEditText;
.super Lru/zdevs/zarchiver/ui/text/ExEditText;
.source "SourceFile"


# instance fields
.field public e:I

.field public f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lru/zdevs/zarchiver/ui/text/ExEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->e:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->f:Landroid/view/View$OnClickListener;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getButton()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->e:I

    return v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->f:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget v0, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->e:I

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    float-to-int v1, v1

    .line 31
    const/4 v2, 0x0

    .line 32
    aget-object v3, v0, v2

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    aget-object v4, v0, v2

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/2addr v4, v3

    .line 51
    add-int/lit8 v4, v4, 0x32

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v3, 0x2

    .line 55
    aget-object v4, v0, v3

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    aget-object v3, v0, v3

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    sub-int/2addr v4, v3

    .line 74
    add-int/lit8 v4, v4, -0x32

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v4, v2

    .line 78
    :goto_0
    aget-object v0, v0, v2

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    if-gt v1, v4, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    if-lt v1, v4, :cond_3

    .line 86
    .line 87
    :goto_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->f:Landroid/view/View$OnClickListener;

    .line 88
    .line 89
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x3

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    return p1
.end method

.method public setButton(I)V
    .locals 4

    .line 1
    iput p1, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->e:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Ly0/c;->d(Landroid/content/Context;)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget v3, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->e:I

    .line 23
    .line 24
    invoke-static {v1, v3}, Ly0/c;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-ne v2, p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_0
    if-eqz p1, :cond_3

    .line 57
    .line 58
    move-object v2, v1

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move-object v2, v0

    .line 61
    :goto_1
    if-eqz p1, :cond_4

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    :cond_4
    invoke-virtual {p0, v2, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public setOnBtnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/text/BtnEditText;->f:Landroid/view/View$OnClickListener;

    return-void
.end method
