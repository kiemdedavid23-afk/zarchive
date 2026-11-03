.class public final Lz/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/i;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/i;


# direct methods
.method public constructor <init>(Lz/i;)V
    .locals 0

    iput-object p1, p0, Lz/i$a;->a:Lz/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lz/i$a;->a:Lz/i;

    .line 2
    .line 3
    iget-object p1, p1, Lz/i;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 4
    .line 5
    iget-object p1, p1, Lru/zdevs/zarchiver/ZArchiver;->m:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->setMenuState(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
