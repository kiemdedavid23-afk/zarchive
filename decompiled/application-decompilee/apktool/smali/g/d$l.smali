.class public final Lg/d$l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
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

.field public f:Ljava/lang/Exception;


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
    iput-object v0, p0, Lg/d$l;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lg/d$l;->b:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lg/d$l;->c:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    iput-object p4, p0, Lg/d$l;->d:Lg/a;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lg/d$l;->d:Lg/a;

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lg/d$l;->b:Ljava/lang/ref/WeakReference;

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
    iget-object v1, p0, Lg/d$l;->c:Ljava/lang/ref/WeakReference;

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
    iget-object v2, p0, Lg/d$l;->a:Ljava/lang/ref/WeakReference;

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
    invoke-static {v2, v0, p1}, Lg/d;->d(Lg/d;Landroid/content/Context;Lg/a;)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-interface {v1}, Lh/b;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lh/d;

    .line 44
    .line 45
    iput-object v1, p0, Lg/d$l;->e:Lh/d;

    .line 46
    .line 47
    invoke-interface {v1, v0, p1}, Lh/d;->d(Landroid/content/Context;Lg/a;)Landroid/graphics/Point;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 52
    .line 53
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 54
    .line 55
    const/4 v1, 0x3

    .line 56
    new-array v1, v1, [I

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    aput v0, v1, v3

    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    aput p1, v1, v0

    .line 63
    .line 64
    const/4 p1, 0x2

    .line 65
    aput v2, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    iput-object p1, p0, Lg/d$l;->f:Ljava/lang/Exception;

    .line 70
    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, [I

    .line 2
    .line 3
    iget-object v0, p0, Lg/d$l;->a:Ljava/lang/ref/WeakReference;

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
    if-eqz v0, :cond_5

    .line 12
    .line 13
    iget-object v1, p0, Lg/d$l;->e:Lh/d;

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    array-length v2, p1

    .line 20
    const/4 v3, 0x3

    .line 21
    if-ne v2, v3, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    aget v3, p1, v2

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    aget v4, p1, v4

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    aget p1, p1, v5

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget v5, v0, Lg/d;->E:I

    .line 34
    .line 35
    if-lez v5, :cond_2

    .line 36
    .line 37
    iget v6, v0, Lg/d;->F:I

    .line 38
    .line 39
    if-lez v6, :cond_2

    .line 40
    .line 41
    if-ne v5, v3, :cond_0

    .line 42
    .line 43
    if-eq v6, v4, :cond_2

    .line 44
    .line 45
    :cond_0
    invoke-virtual {v0, v2}, Lg/d;->t(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v5, v0, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget-boolean v6, v0, Lg/d;->c:Z

    .line 53
    .line 54
    if-nez v6, :cond_1

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    .line 58
    .line 59
    :cond_1
    const/4 v5, 0x0

    .line 60
    iput-object v5, v0, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    iput-boolean v2, v0, Lg/d;->b:Z

    .line 63
    .line 64
    iput-boolean v2, v0, Lg/d;->c:Z

    .line 65
    .line 66
    :cond_2
    iput-object v1, v0, Lg/d;->N:Lh/d;

    .line 67
    .line 68
    iput v3, v0, Lg/d;->E:I

    .line 69
    .line 70
    iput v4, v0, Lg/d;->F:I

    .line 71
    .line 72
    iput p1, v0, Lg/d;->G:I

    .line 73
    .line 74
    invoke-virtual {v0}, Lg/d;->h()Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lg/d;->g()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    iget p1, v0, Lg/d;->m:I

    .line 84
    .line 85
    if-lez p1, :cond_3

    .line 86
    .line 87
    const v1, 0x7fffffff

    .line 88
    .line 89
    .line 90
    if-eq p1, v1, :cond_3

    .line 91
    .line 92
    iget p1, v0, Lg/d;->n:I

    .line 93
    .line 94
    if-lez p1, :cond_3

    .line 95
    .line 96
    if-eq p1, v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-lez p1, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-lez p1, :cond_3

    .line 109
    .line 110
    new-instance p1, Landroid/graphics/Point;

    .line 111
    .line 112
    iget v1, v0, Lg/d;->m:I

    .line 113
    .line 114
    iget v2, v0, Lg/d;->n:I

    .line 115
    .line 116
    invoke-direct {p1, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p1}, Lg/d;->m(Landroid/graphics/Point;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    monitor-exit v0

    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    monitor-exit v0

    .line 132
    throw p1

    .line 133
    :cond_4
    iget-object p1, p0, Lg/d$l;->f:Ljava/lang/Exception;

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    iget-object v1, v0, Lg/d;->f0:Lg/d$g;

    .line 138
    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    check-cast v1, Lru/zdevs/zarchiver/ZImageViewer;

    .line 142
    .line 143
    invoke-virtual {v1, v0, p1}, Lru/zdevs/zarchiver/ZImageViewer;->b(Lg/d;Ljava/lang/Exception;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    :goto_0
    return-void
.end method
