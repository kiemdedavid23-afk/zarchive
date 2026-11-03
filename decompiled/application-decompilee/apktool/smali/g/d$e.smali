.class public final Lg/d$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
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
            "Lh/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lg/a;

.field public final e:Z

.field public f:Landroid/graphics/Bitmap;

.field public g:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lg/d;Landroid/content/Context;Lh/b;Lg/a;)V
    .locals 1

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
    iput-object v0, p0, Lg/d$e;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lg/d$e;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lg/d$e;->c:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    iput-object p4, p0, Lg/d$e;->d:Lg/a;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lg/d$e;->e:Z

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lg/d$e;->d:Lg/a;

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lg/d$e;->b:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    iget-object v1, p0, Lg/d$e;->c:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lh/b;

    .line 20
    .line 21
    iget-object v2, p0, Lg/d$e;->a:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lg/d;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    sget-object v3, Lg/d;->q0:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Lh/b;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lh/c;

    .line 42
    .line 43
    invoke-interface {v1, v0, p1}, Lh/c;->a(Landroid/content/Context;Lg/a;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lg/d$e;->f:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-static {v2, v0, p1}, Lg/d;->d(Lg/d;Landroid/content/Context;Lg/a;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lg/d$e;->g:Ljava/lang/Exception;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_1
    move-exception p1

    .line 68
    iput-object p1, p0, Lg/d$e;->g:Ljava/lang/Exception;

    .line 69
    .line 70
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 71
    :goto_1
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v0, p0, Lg/d$e;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lg/d;

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    iget-object v1, p0, Lg/d$e;->f:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    iget-boolean v2, p0, Lg/d$e;->e:Z

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p1, v0, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget-boolean p1, v0, Lg/d;->e0:Z

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput-object v1, v0, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, v0, Lg/d;->b:Z

    .line 37
    .line 38
    invoke-virtual {v0}, Lg/d;->h()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0

    .line 59
    throw p1

    .line 60
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {v0, v1, p1}, Lg/d;->q(Landroid/graphics/Bitmap;I)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, p0, Lg/d$e;->g:Ljava/lang/Exception;

    .line 69
    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    iget-object v1, v0, Lg/d;->f0:Lg/d$g;

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    iget-boolean v2, p0, Lg/d$e;->e:Z

    .line 77
    .line 78
    if-eqz v2, :cond_5

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    check-cast v1, Lru/zdevs/zarchiver/ZImageViewer;

    .line 82
    .line 83
    invoke-virtual {v1, v0, p1}, Lru/zdevs/zarchiver/ZImageViewer;->b(Lg/d;Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    :cond_6
    :goto_1
    return-void
.end method
