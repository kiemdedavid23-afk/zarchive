.class public final Lru/zdevs/zarchiver/ZTextEditor$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/v;

.field public final synthetic b:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;Lf0/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$n;->b:Lru/zdevs/zarchiver/ZTextEditor;

    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$n;->a:Lf0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lf0/i;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$n;->a:Lf0/v;

    .line 2
    .line 3
    iget p1, p1, Lf0/v;->j:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-gez p1, :cond_0

    .line 7
    .line 8
    const p1, 0x7f0c007b

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    sget-object v1, Lru/zdevs/zarchiver/ZTextEditor;->h:[I

    .line 16
    .line 17
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor$n;->b:Lru/zdevs/zarchiver/ZTextEditor;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lru/zdevs/zarchiver/ZTextEditor$n$a;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lru/zdevs/zarchiver/ZTextEditor$n$a;-><init>(Lru/zdevs/zarchiver/ZTextEditor$n;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return v0
.end method
