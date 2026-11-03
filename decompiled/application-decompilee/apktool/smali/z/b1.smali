.class public final Lz/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lz/b1;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lz/b1;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZSelectFile;->j:Lru/zdevs/zarchiver/ui/FilePanelView;

    .line 4
    .line 5
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FilePanelView;->getListAdapter()Lc0/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lc0/h;->d()[I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lru/zdevs/zarchiver/ZSelectFile;->z([I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
