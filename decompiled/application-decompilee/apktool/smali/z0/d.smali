.class public final Lz0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

.field public final synthetic b:Lz0/f;


# direct methods
.method public constructor <init>(Lz0/f;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz0/d;->b:Lz0/f;

    iput-object p2, p0, Lz0/d;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lz0/d;->b:Lz0/f;

    .line 8
    .line 9
    const v1, 0x7f0700ae

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lz0/d;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method
