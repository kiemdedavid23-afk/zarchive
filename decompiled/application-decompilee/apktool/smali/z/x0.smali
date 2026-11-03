.class public final Lz/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lz/x0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lz/x0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZSelectFile;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 10
    .line 11
    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-static {p1, v2, v0, v1}, Lru/zdevs/zarchiver/ZSelectFile;->u(Lru/zdevs/zarchiver/ZSelectFile;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
