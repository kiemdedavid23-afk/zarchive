.class public final Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;
.super Lz0/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;


# direct methods
.method public constructor <init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-direct {p0}, Lz0/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 1
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:[I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-boolean v1, v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method
