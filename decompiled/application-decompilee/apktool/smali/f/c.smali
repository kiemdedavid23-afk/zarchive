.class public final Lf/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final synthetic b:Lf/b;


# direct methods
.method public constructor <init>(Lf/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/c;->b:Lf/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/graphics/Rect;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lf/c;->a:Landroid/graphics/Rect;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isConsumed()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    iget-object v0, p0, Lf/c;->a:Landroid/graphics/Rect;

    .line 17
    .line 18
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    iget-object p2, p0, Lf/c;->b:Lf/b;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    iget v5, v0, Landroid/graphics/Rect;->right:I

    .line 84
    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 96
    .line 97
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 102
    .line 103
    add-int/lit8 v2, v2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 111
    .line 112
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 113
    .line 114
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1
.end method
