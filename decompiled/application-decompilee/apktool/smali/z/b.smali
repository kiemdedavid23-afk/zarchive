.class public final Lz/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lz/b;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lz/b;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->l:Lru/zdevs/zarchiver/ui/text/ExSearchView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    invoke-virtual {v0}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lru/zdevs/zarchiver/b;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget v0, v0, Lru/zdevs/zarchiver/b;->b:I

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-virtual {p1, v0, v1, v2, v3}, Lru/zdevs/zarchiver/ZArchiver;->P(ILjava/lang/String;[Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
