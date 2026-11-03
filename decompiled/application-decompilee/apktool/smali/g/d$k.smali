.class public final Lg/d$k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
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
            "Lh/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lg/d$j;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lg/d;Lh/d;Lg/d$j;)V
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
    iput-object v0, p0, Lg/d$k;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lg/d$k;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lg/d$k;->c:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p3, Lg/d$j;->d:Z

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lg/d$k;->a:Ljava/lang/ref/WeakReference;

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
    iget-object v0, p0, Lg/d$k;->b:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lh/d;

    .line 18
    .line 19
    iget-object v1, p0, Lg/d$k;->c:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lg/d$j;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object v3, p1, Lg/d;->O:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    .line 36
    invoke-interface {v0}, Lh/d;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-boolean v4, v1, Lg/d$j;->e:Z

    .line 43
    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    sget-object v4, Lg/d;->q0:Ljava/util/List;

    .line 47
    .line 48
    iget-object v4, v1, Lg/d$j;->a:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :try_start_1
    invoke-interface {v0}, Lh/d;->a()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    iget-object v2, v1, Lg/d$j;->a:Landroid/graphics/Rect;

    .line 67
    .line 68
    iget-object v4, v1, Lg/d$j;->g:Landroid/graphics/Rect;

    .line 69
    .line 70
    invoke-static {p1, v2, v4}, Lg/d;->e(Lg/d;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    iget-object v2, v1, Lg/d$j;->g:Landroid/graphics/Rect;

    .line 74
    .line 75
    iget v1, v1, Lg/d$j;->b:I

    .line 76
    .line 77
    invoke-interface {v0, v1, v2}, Lh/d;->b(ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :try_start_3
    iput-boolean v2, v1, Lg/d$j;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    :try_start_4
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    iget-object p1, p1, Lg/d;->O:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :cond_1
    if-eqz v1, :cond_2

    .line 111
    .line 112
    iput-boolean v2, v1, Lg/d$j;->d:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lg/d$k;->d:Ljava/lang/Exception;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catch_1
    move-exception p1

    .line 125
    iput-object p1, p0, Lg/d$k;->d:Ljava/lang/Exception;

    .line 126
    .line 127
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 128
    :goto_1
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iget-object v0, p0, Lg/d$k;->a:Ljava/lang/ref/WeakReference;

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
    iget-object v1, p0, Lg/d$k;->c:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lg/d$j;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iput-object p1, v1, Lg/d$j;->c:Landroid/graphics/Bitmap;

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, v1, Lg/d$j;->d:Z

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-virtual {v0}, Lg/d;->h()Z

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lg/d;->g()Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lg/d;->o()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    iget-object v1, v0, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-boolean v2, v0, Lg/d;->c:Z

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 52
    .line 53
    .line 54
    :cond_0
    const/4 v1, 0x0

    .line 55
    iput-object v1, v0, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    iput-boolean p1, v0, Lg/d;->b:Z

    .line 58
    .line 59
    iput-boolean p1, v0, Lg/d;->c:Z

    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    monitor-exit v0

    .line 68
    throw p1

    .line 69
    :cond_2
    iget-object p1, p0, Lg/d$k;->d:Ljava/lang/Exception;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, v0, Lg/d;->f0:Lg/d$g;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v1, "Failed to load tile: "

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    return-void
.end method
