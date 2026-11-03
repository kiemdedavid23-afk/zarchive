.class public final Lv0/b;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Lv0/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lv0/c;


# direct methods
.method public constructor <init>(Lv0/c;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lv0/b;->a:Lv0/c;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public final done()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lv0/b;->a:Lv0/c;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lv0/a$b;

    .line 8
    .line 9
    iget-object v0, v0, Lv0/c;->a:Lv0/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lv0/a;->b(Lv0/a$b;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method
