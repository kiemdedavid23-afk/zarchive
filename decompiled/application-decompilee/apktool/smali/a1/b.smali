.class public final La1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La1/b;->b:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    iput-boolean p2, p0, La1/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget v0, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->t:I

    .line 2
    .line 3
    iget-object v0, p0, La1/b;->b:Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;

    .line 4
    .line 5
    iget-boolean v1, p0, La1/b;->a:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/ctrl/fab/FloatingActionMenu;->b(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
