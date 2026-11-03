.class public final Lz/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lz/g;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lz/g;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-gt v1, v2, :cond_2

    .line 13
    .line 14
    iget-object v1, p1, La0/c;->b:Landroid/view/ActionMode;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iget-object v1, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 19
    .line 20
    iget-char v2, v1, Lru/zdevs/zarchiver/d;->a:C

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v0, v1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v3}, Lru/zdevs/zarchiver/a;->m(Landroid/content/Context;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-object p1, p1, La0/c;->b:Landroid/view/ActionMode;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p1, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-virtual {p1, v0}, Lru/zdevs/zarchiver/ZArchiver;->D(I)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-boolean p1, v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->j:Z

    .line 61
    .line 62
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->d()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    xor-int/2addr v1, v3

    .line 67
    invoke-virtual {v0, v1, p1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->e(ZZ)V

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void
.end method
