.class public final Lru/zdevs/zarchiver/ui/layout/a$b;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/layout/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;III)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->b:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    iput p4, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->f:I

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2, v0, p3}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->c:Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    :cond_0
    iput p5, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->g:I

    .line 26
    .line 27
    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const p3, 0x7f060004

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->d:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 44
    .line 45
    invoke-virtual {p2, p4, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const p3, 0x7f060005

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->e:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 62
    .line 63
    invoke-virtual {p2, p4, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 64
    .line 65
    .line 66
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    .line 67
    .line 68
    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 69
    .line 70
    .line 71
    new-array p3, p1, [I

    .line 72
    .line 73
    const p4, 0x10100a1

    .line 74
    .line 75
    .line 76
    const/4 p5, 0x0

    .line 77
    aput p4, p3, p5

    .line 78
    .line 79
    iget-object p4, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->e:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    invoke-virtual {p2, p3, p4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 82
    .line 83
    .line 84
    new-array p1, p1, [I

    .line 85
    .line 86
    const p3, 0x101009e

    .line 87
    .line 88
    .line 89
    aput p3, p1, p5

    .line 90
    .line 91
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->d:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    invoke-virtual {p2, p1, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final setSelected(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->c:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->b:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    :goto_0
    const/4 v1, -0x1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move v2, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget v2, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->f:I

    .line 19
    .line 20
    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, 0x1

    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v3, 0x0

    .line 40
    :goto_2
    const/4 v2, 0x0

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    move-object v4, v2

    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move-object v4, v0

    .line 46
    :goto_3
    if-eqz v3, :cond_4

    .line 47
    .line 48
    goto :goto_4

    .line 49
    :cond_4
    move-object v0, v2

    .line 50
    :goto_4
    invoke-virtual {p0, v4, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_5
    iget v1, p0, Lru/zdevs/zarchiver/ui/layout/a$b;->g:I

    .line 57
    .line 58
    :goto_5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
