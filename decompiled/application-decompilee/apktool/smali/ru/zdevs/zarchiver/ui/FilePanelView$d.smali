.class public final Lru/zdevs/zarchiver/ui/FilePanelView$d;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/FilePanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ui/FilePanelView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/FilePanelView;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FilePanelView$d;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatMode()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iget-object v0, p0, Lru/zdevs/zarchiver/ui/FilePanelView$d;->a:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 6
    .line 7
    iget v1, v0, Lru/zdevs/zarchiver/ui/FilePanelView;->a:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    neg-int v1, p2

    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr v1, p1

    .line 15
    float-to-int p1, v1

    .line 16
    add-int/2addr p2, p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    neg-int v1, p2

    .line 19
    int-to-float p2, p2

    .line 20
    mul-float/2addr p2, p1

    .line 21
    float-to-int p1, p2

    .line 22
    add-int p2, v1, p1

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    invoke-virtual {v0, p2, p1}, Lru/zdevs/zarchiver/ui/FilePanelView;->i(IZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
