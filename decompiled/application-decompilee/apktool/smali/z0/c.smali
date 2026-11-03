.class public final Lz0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;


# instance fields
.field public final synthetic a:Lz0/f;


# direct methods
.method public constructor <init>(Lz0/f;)V
    .locals 0

    iput-object p1, p0, Lz0/c;->a:Lz0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 2
    .line 3
    iget-object v1, p0, Lz0/c;->a:Lz0/f;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lz0/f;->dismiss()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 12
    .line 13
    const v2, 0x7f07006b

    .line 14
    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance v0, Ly0/k;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Ly0/k;-><init>(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Ly0/l;

    .line 30
    .line 31
    invoke-direct {v2, p1, v0}, Ly0/l;-><init>(Landroid/view/View;Ly0/k;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/high16 v0, 0x43340000    # 180.0f

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-wide/16 v3, 0x12c

    .line 45
    .line 46
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 51
    .line 52
    .line 53
    :cond_1
    iget-object p1, v1, Lz0/f;->b:Lz0/g;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    check-cast p1, Lf0/v;

    .line 59
    .line 60
    invoke-virtual {p1, v1, v0}, Lf0/v;->s(Lz0/f;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 65
    .line 66
    if-ne p1, v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-static {p1}, Ly0/f;->b(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    iget-object p1, v1, Lz0/f;->b:Lz0/g;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    const/4 v0, 0x2

    .line 82
    check-cast p1, Lf0/v;

    .line 83
    .line 84
    invoke-virtual {p1, v1, v0}, Lf0/v;->s(Lz0/f;I)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method
