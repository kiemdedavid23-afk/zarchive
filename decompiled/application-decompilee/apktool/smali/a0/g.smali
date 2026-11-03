.class public final La0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/OpenAsDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V
    .locals 0

    iput-object p1, p0, La0/g;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->f:I

    .line 6
    .line 7
    iget-object p1, p0, La0/g;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
