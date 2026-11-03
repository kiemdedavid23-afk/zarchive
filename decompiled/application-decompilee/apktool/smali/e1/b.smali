.class public Le1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final a:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x300

    .line 5
    .line 6
    invoke-static {v0}, Ls0/b;->k(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 13
    .line 14
    const v1, 0x103012e

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    move-object p1, v0

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x0

    .line 27
    const v2, 0x7f080033

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Landroid/widget/PopupWindow;

    .line 35
    .line 36
    const/4 v1, -0x2

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v0, p1, v1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Le1/b;->a:Landroid/widget/PopupWindow;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 47
    .line 48
    .line 49
    const/16 p1, 0x600

    .line 50
    .line 51
    invoke-static {p1}, Ls0/b;->k(I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    const/high16 p1, 0x41000000    # 8.0f

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 60
    .line 61
    .line 62
    :cond_1
    const/16 p1, 0x3ea

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x800033

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Le1/b;->a:Landroid/widget/PopupWindow;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    :try_start_0
    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x2

    .line 22
    new-array v4, v3, [I

    .line 23
    .line 24
    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    .line 26
    .line 27
    new-array v3, v3, [I

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 30
    .line 31
    .line 32
    aget p1, v4, v2

    .line 33
    .line 34
    aget v5, v3, v2

    .line 35
    .line 36
    sub-int/2addr p1, v5

    .line 37
    aput p1, v4, v2

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    aget v5, v4, v2

    .line 41
    .line 42
    aget v3, v3, v2

    .line 43
    .line 44
    sub-int/2addr v5, v3

    .line 45
    aput v5, v4, v2

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {v1, p2, v0, p1, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :goto_0
    return-void
.end method
