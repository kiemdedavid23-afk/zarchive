.class public final Lz0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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

    iput-object p1, p0, Lz0/e;->b:Lz0/f;

    iput-object p2, p0, Lz0/e;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lz0/e;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lz0/e;->b:Lz0/f;

    .line 12
    .line 13
    iget-object p1, p1, Lz0/f;->a:Lz0/f$a;

    .line 14
    .line 15
    iget-object p1, p1, Lz0/f$a;->a:Landroid/view/View;

    .line 16
    .line 17
    const v0, 0x7f07006b

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lz0/e$a;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lz0/e$a;-><init>(Lz0/e;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
