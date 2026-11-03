.class public final Lz/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lz/k;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lz/k;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    invoke-virtual {v1}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget v1, v1, Lru/zdevs/zarchiver/b;->b:I

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v3, v2}, Lru/zdevs/zarchiver/ZArchiver;->Q(IZZ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 23
    .line 24
    invoke-static {v0}, Lu0/b;->g(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v0, v3

    .line 34
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return v3
.end method
