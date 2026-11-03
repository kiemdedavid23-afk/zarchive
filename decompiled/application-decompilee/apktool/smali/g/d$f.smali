.class public final Lg/d$f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lg/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lh/b<",
            "+",
            "Lh/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lg/a;

.field public e:Lh/d;


# direct methods
.method public constructor <init>(Lg/d;Landroid/content/Context;Lh/b;Lg/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/d;",
            "Landroid/content/Context;",
            "Lh/b<",
            "+",
            "Lh/d;",
            ">;",
            "Lg/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg/d$f;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lg/d$f;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lg/d$f;->c:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    iput-object p4, p0, Lg/d$f;->d:Lg/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lg/d$f;->b:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/content/Context;

    .line 10
    .line 11
    iget-object v0, p0, Lg/d$f;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lh/b;

    .line 18
    .line 19
    iget-object v1, p0, Lg/d$f;->a:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lg/d;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-object v1, Lg/d;->q0:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Lh/b;->a()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lh/d;

    .line 40
    .line 41
    iput-object v0, p0, Lg/d$f;->e:Lh/d;

    .line 42
    .line 43
    iget-object v1, p0, Lg/d$f;->d:Lg/a;

    .line 44
    .line 45
    invoke-interface {v0, p1, v1}, Lh/d;->d(Landroid/content/Context;Lg/a;)Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 49
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, [I

    .line 2
    .line 3
    iget-object p1, p0, Lg/d$f;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lg/d;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lg/d$f;->e:Lh/d;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    monitor-enter p1

    .line 18
    :try_start_0
    iput-object v0, p1, Lg/d;->N:Lh/d;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit p1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p1

    .line 28
    throw v0

    .line 29
    :cond_0
    :goto_0
    return-void
.end method
