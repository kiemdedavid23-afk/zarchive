.class public final Lz/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lz/w0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lz/w0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lru/zdevs/zarchiver/b;->i()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v2, v1}, Lru/zdevs/zarchiver/ZSelectFile;->A(ZZ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 17
    .line 18
    invoke-static {v0}, Lu0/b;->g(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    return v2
.end method
