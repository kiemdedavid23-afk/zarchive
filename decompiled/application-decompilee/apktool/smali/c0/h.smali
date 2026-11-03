.class public abstract Lc0/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/h$a;,
        Lc0/h$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:Lc0/b;

.field public i:Lg0/h;

.field public j:I

.field public k:I

.field public l:Z

.field public m:Lp0/g;

.field public n:Lc0/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout_inflater"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput-object v0, p0, Lc0/h;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const v0, 0x7f03000c

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lc0/h;->b:I

    .line 22
    .line 23
    const v0, 0x7f03000e

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lc0/h;->c:I

    .line 31
    .line 32
    const v0, 0x7f030002

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lc0/h;->f:I

    .line 40
    .line 41
    const v0, 0x7f03000b

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    iput p1, p0, Lc0/h;->e:I

    .line 49
    .line 50
    const/16 v0, 0x600

    .line 51
    .line 52
    invoke-static {v0}, Ls0/b;->k(I)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lc0/h;->d:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1}, Ly0/c;->e(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const v0, 0xffffff

    .line 67
    .line 68
    .line 69
    and-int/2addr p1, v0

    .line 70
    const/high16 v0, -0x12000000

    .line 71
    .line 72
    or-int/2addr p1, v0

    .line 73
    iput p1, p0, Lc0/h;->d:I

    .line 74
    .line 75
    :goto_0
    iget p1, p2, Lru/zdevs/zarchiver/b;->b:I

    .line 76
    .line 77
    iput p1, p0, Lc0/h;->g:I

    .line 78
    .line 79
    new-instance p1, Lc0/b;

    .line 80
    .line 81
    const/4 p2, 0x0

    .line 82
    invoke-direct {p1, p2}, Lc0/b;-><init>(I)V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lc0/h;->h:Lc0/b;

    .line 86
    .line 87
    new-instance p1, Lg0/h;

    .line 88
    .line 89
    const-string v0, "/"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lc0/h;->i:Lg0/h;

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lc0/h;->m:Lp0/g;

    .line 98
    .line 99
    iput p2, p0, Lc0/h;->j:I

    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    iput p1, p0, Lc0/h;->k:I

    .line 103
    .line 104
    iput-boolean p2, p0, Lc0/h;->l:Z

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final a(I)Lc0/d;
    .locals 1

    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    invoke-virtual {v0, p1}, Lc0/b;->b(I)Lc0/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(ILc0/d;Lc0/g;Lg0/h;Z)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lc0/d;->d()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-byte v2, p2, Lc0/d;->f:B

    .line 6
    .line 7
    iget-object v3, p0, Lc0/h;->m:Lp0/g;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    const/4 v5, 0x4

    .line 14
    if-ne v0, v5, :cond_3

    .line 15
    .line 16
    const/16 v0, 0x7e

    .line 17
    .line 18
    if-ne v2, v0, :cond_2

    .line 19
    .line 20
    iget-boolean v6, p0, Lc0/h;->l:Z

    .line 21
    .line 22
    move-object v0, v3

    .line 23
    move-object v1, p2

    .line 24
    move-object v2, p4

    .line 25
    move-object v3, p3

    .line 26
    move v4, p1

    .line 27
    move v5, p5

    .line 28
    invoke-virtual/range {v0 .. v6}, Lp0/g;->a(Lc0/d;Lg0/h;Lc0/g;IZZ)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-boolean v1, p0, Lc0/h;->l:Z

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget v1, p0, Lc0/h;->k:I

    .line 39
    .line 40
    or-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    iput v1, p0, Lc0/h;->k:I

    .line 43
    .line 44
    :cond_1
    return-object v0

    .line 45
    :cond_2
    return-object v4

    .line 46
    :cond_3
    iget-wide v5, p2, Lc0/d;->d:J

    .line 47
    .line 48
    invoke-virtual {p0, v0, v2, v5, v6}, Lc0/h;->f(BBJ)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    iget-object v0, p0, Lc0/h;->m:Lp0/g;

    .line 55
    .line 56
    iget-boolean v6, p0, Lc0/h;->l:Z

    .line 57
    .line 58
    move-object v1, p2

    .line 59
    move-object v2, p4

    .line 60
    move-object v3, p3

    .line 61
    move v4, p1

    .line 62
    move v5, p5

    .line 63
    invoke-virtual/range {v0 .. v6}, Lp0/g;->a(Lc0/d;Lg0/h;Lc0/g;IZZ)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v1, p0, Lc0/h;->l:Z

    .line 68
    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    iget v1, p0, Lc0/h;->k:I

    .line 74
    .line 75
    or-int/lit8 v1, v1, 0x2

    .line 76
    .line 77
    iput v1, p0, Lc0/h;->k:I

    .line 78
    .line 79
    :cond_4
    return-object v0

    .line 80
    :cond_5
    return-object v4
.end method

.method public abstract c()I
.end method

.method public final d()[I
    .locals 1

    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    invoke-virtual {v0}, Lc0/b;->d()[I

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(BBJ)Z
    .locals 6

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    iget v0, p0, Lc0/h;->j:I

    .line 10
    .line 11
    const/high16 v5, 0x10000

    .line 12
    .line 13
    and-int/2addr v0, v5

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    cmp-long p1, p3, v1

    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v3, v4

    .line 22
    :goto_0
    return v3

    .line 23
    :cond_1
    const/16 v0, 0xe

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    iget v0, p0, Lc0/h;->j:I

    .line 28
    .line 29
    const/high16 v5, 0x80000

    .line 30
    .line 31
    and-int/2addr v0, v5

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    cmp-long p1, p3, v1

    .line 35
    .line 36
    if-lez p1, :cond_2

    .line 37
    .line 38
    long-to-double p1, p3

    .line 39
    const-wide p3, 0x41f2a05f20000000L    # 5.0E9

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmpg-double p1, p1, p3

    .line 45
    .line 46
    if-gez p1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v3, v4

    .line 50
    :goto_1
    return v3

    .line 51
    :cond_3
    const/4 v0, 0x7

    .line 52
    if-ne p1, v0, :cond_5

    .line 53
    .line 54
    iget v0, p0, Lc0/h;->j:I

    .line 55
    .line 56
    const/high16 v1, 0x100000

    .line 57
    .line 58
    and-int/2addr v0, v1

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    const-wide/16 p1, 0x200

    .line 62
    .line 63
    cmp-long p1, p3, p1

    .line 64
    .line 65
    if-lez p1, :cond_4

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v3, v4

    .line 69
    :goto_2
    return v3

    .line 70
    :cond_5
    const/16 v0, 0xd

    .line 71
    .line 72
    if-eq p1, v0, :cond_6

    .line 73
    .line 74
    const/16 v0, 0xf

    .line 75
    .line 76
    if-ne p1, v0, :cond_7

    .line 77
    .line 78
    :cond_6
    iget v0, p0, Lc0/h;->j:I

    .line 79
    .line 80
    const/high16 v1, 0x40000

    .line 81
    .line 82
    and-int/2addr v0, v1

    .line 83
    if-nez v0, :cond_b

    .line 84
    .line 85
    :cond_7
    const/4 v0, 0x6

    .line 86
    if-eq p1, v0, :cond_8

    .line 87
    .line 88
    const/16 v0, 0x14

    .line 89
    .line 90
    if-ne p1, v0, :cond_9

    .line 91
    .line 92
    :cond_8
    iget v0, p0, Lc0/h;->j:I

    .line 93
    .line 94
    const/high16 v1, 0x20000

    .line 95
    .line 96
    and-int/2addr v0, v1

    .line 97
    if-eqz v0, :cond_9

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_9
    const/4 p3, 0x4

    .line 101
    if-ne p1, p3, :cond_a

    .line 102
    .line 103
    const/16 p1, 0x7e

    .line 104
    .line 105
    if-ne p2, p1, :cond_a

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_a
    move v3, v4

    .line 109
    :goto_3
    return v3

    .line 110
    :cond_b
    :goto_4
    long-to-double p1, p3

    .line 111
    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    .line 112
    .line 113
    cmpl-double p1, p1, p3

    .line 114
    .line 115
    if-lez p1, :cond_c

    .line 116
    .line 117
    goto :goto_5

    .line 118
    :cond_c
    move v3, v4

    .line 119
    :goto_5
    return v3
.end method

.method public final g()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Lc0/b;->a:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    iput-wide v3, v0, Lc0/b;->b:J

    .line 15
    .line 16
    invoke-virtual {v0}, Lc0/b;->size()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iput v5, v0, Lc0/b;->a:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    check-cast v6, Lc0/d;

    .line 37
    .line 38
    invoke-virtual {v6}, Lc0/d;->h()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    iput-boolean v2, v6, Lc0/d;->g:Z

    .line 45
    .line 46
    iget-wide v6, v6, Lc0/d;->d:J

    .line 47
    .line 48
    cmp-long v8, v6, v3

    .line 49
    .line 50
    if-lez v8, :cond_1

    .line 51
    .line 52
    iget-wide v8, v0, Lc0/b;->b:J

    .line 53
    .line 54
    add-long/2addr v8, v6

    .line 55
    iput-wide v8, v0, Lc0/b;->b:J

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget v6, v0, Lc0/b;->a:I

    .line 59
    .line 60
    sub-int/2addr v6, v2

    .line 61
    iput v6, v0, Lc0/b;->a:I

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v3, 0x0

    .line 65
    iput-object v3, v0, Lc0/b;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    iget-object v0, p0, Lc0/h;->n:Lc0/h$a;

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget v1, p0, Lc0/h;->g:I

    .line 75
    .line 76
    invoke-interface {v0, v1, v2, v2}, Lc0/h$a;->c(IIZ)V

    .line 77
    .line 78
    .line 79
    :cond_4
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception v1

    .line 84
    monitor-exit v0

    .line 85
    throw v1
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    invoke-virtual {v0}, Lc0/b;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc0/h;->a(I)Lc0/d;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, v0, Lc0/b;->a:I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lc0/d;

    .line 27
    .line 28
    iget-boolean v5, v4, Lc0/d;->g:Z

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iput-boolean v2, v4, Lc0/d;->g:Z

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iput v2, v0, Lc0/b;->a:I

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    iput-wide v3, v0, Lc0/b;->b:J

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    iput-object v3, v0, Lc0/b;->c:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    iget-object v0, p0, Lc0/h;->n:Lc0/h$a;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget v1, p0, Lc0/h;->g:I

    .line 52
    .line 53
    invoke-interface {v0, v1, v2, v2}, Lc0/h$a;->c(IIZ)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    monitor-exit v0

    .line 62
    throw v1
.end method

.method public final i()V
    .locals 12

    .line 1
    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    .line 2
    .line 3
    iget v1, v0, Lc0/b;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    move v1, v3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    monitor-enter v0

    .line 13
    :try_start_0
    iget v4, v0, Lc0/b;->a:I

    .line 14
    .line 15
    if-lez v4, :cond_1

    .line 16
    .line 17
    move v4, v3

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, v2

    .line 20
    :goto_1
    iput v2, v0, Lc0/b;->a:I

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    iput-wide v5, v0, Lc0/b;->b:J

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    :cond_2
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_4

    .line 35
    .line 36
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    check-cast v8, Lc0/d;

    .line 41
    .line 42
    invoke-virtual {v8}, Lc0/d;->h()Z

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    if-eqz v9, :cond_2

    .line 47
    .line 48
    iget-boolean v9, v8, Lc0/d;->g:Z

    .line 49
    .line 50
    if-nez v9, :cond_3

    .line 51
    .line 52
    move v9, v3

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v9, v2

    .line 55
    :goto_3
    iput-boolean v9, v8, Lc0/d;->g:Z

    .line 56
    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    iget v9, v0, Lc0/b;->a:I

    .line 60
    .line 61
    add-int/2addr v9, v3

    .line 62
    iput v9, v0, Lc0/b;->a:I

    .line 63
    .line 64
    iget-wide v8, v8, Lc0/d;->d:J

    .line 65
    .line 66
    cmp-long v10, v8, v5

    .line 67
    .line 68
    if-lez v10, :cond_2

    .line 69
    .line 70
    iget-wide v10, v0, Lc0/b;->b:J

    .line 71
    .line 72
    add-long/2addr v10, v8

    .line 73
    iput-wide v10, v0, Lc0/b;->b:J

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/4 v5, 0x0

    .line 77
    iput-object v5, v0, Lc0/b;->c:[I

    .line 78
    .line 79
    iget v5, v0, Lc0/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    if-lez v5, :cond_5

    .line 82
    .line 83
    move v5, v3

    .line 84
    goto :goto_4

    .line 85
    :cond_5
    move v5, v2

    .line 86
    :goto_4
    if-eq v4, v5, :cond_6

    .line 87
    .line 88
    move v2, v3

    .line 89
    :cond_6
    monitor-exit v0

    .line 90
    iget-object v0, p0, Lc0/h;->n:Lc0/h$a;

    .line 91
    .line 92
    if-eqz v0, :cond_7

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    iget v2, p0, Lc0/h;->g:I

    .line 97
    .line 98
    xor-int/lit8 v4, v1, 0x1

    .line 99
    .line 100
    xor-int/2addr v1, v3

    .line 101
    invoke-interface {v0, v2, v1, v4}, Lc0/h$a;->c(IIZ)V

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    monitor-exit v0

    .line 110
    throw v1
.end method

.method public final j(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc0/h;->h:Lc0/b;

    .line 2
    .line 3
    iget v1, v0, Lc0/b;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lc0/b;->h(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return p2

    .line 13
    :cond_0
    iget-object p1, p0, Lc0/h;->n:Lc0/h$a;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lc0/h;->h:Lc0/b;

    .line 19
    .line 20
    iget v2, v2, Lc0/b;->a:I

    .line 21
    .line 22
    if-le v2, v1, :cond_1

    .line 23
    .line 24
    move p2, v0

    .line 25
    :cond_1
    iget v1, p0, Lc0/h;->g:I

    .line 26
    .line 27
    invoke-interface {p1, v1, v2, p2}, Lc0/h$a;->c(IIZ)V

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    .line 32
    .line 33
    return v0
.end method

.method public final k(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lc0/h;->l:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lc0/h;->k:I

    .line 8
    .line 9
    and-int/lit8 p1, p1, -0x5

    .line 10
    .line 11
    iput p1, p0, Lc0/h;->k:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p0, Lc0/h;->k:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x4

    .line 17
    .line 18
    iput p1, p0, Lc0/h;->k:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget p1, p0, Lc0/h;->k:I

    .line 22
    .line 23
    const/4 p2, 0x2

    .line 24
    invoke-static {p1, p2}, Lb/d;->K(II)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget p1, p0, Lc0/h;->k:I

    .line 31
    .line 32
    and-int/lit8 p1, p1, -0x3

    .line 33
    .line 34
    iput p1, p0, Lc0/h;->k:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Lc0/b;Lg0/h;Z)V
    .locals 2

    .line 1
    iput-object p1, p0, Lc0/h;->h:Lc0/b;

    .line 2
    .line 3
    iput-object p2, p0, Lc0/h;->i:Lg0/h;

    .line 4
    .line 5
    invoke-virtual {p2}, Lg0/h;->o()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/high16 v1, 0x3f0000

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget p1, Ls0/b;->j:I

    .line 15
    .line 16
    and-int/2addr p1, v1

    .line 17
    const/high16 p2, 0x1f0000

    .line 18
    .line 19
    and-int/2addr p1, p2

    .line 20
    iput p1, p0, Lc0/h;->j:I

    .line 21
    .line 22
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v1, 0x18

    .line 25
    .line 26
    if-lt p2, v1, :cond_3

    .line 27
    .line 28
    if-eqz p3, :cond_3

    .line 29
    .line 30
    const/high16 p2, 0x400000

    .line 31
    .line 32
    or-int/2addr p1, p2

    .line 33
    iput p1, p0, Lc0/h;->j:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p2}, Lg0/h;->k()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    sget p1, Ls0/b;->j:I

    .line 43
    .line 44
    and-int/2addr p1, v1

    .line 45
    const/high16 p2, 0x10000

    .line 46
    .line 47
    and-int/2addr p1, p2

    .line 48
    iput p1, p0, Lc0/h;->j:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p2}, Lg0/h;->g()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const/high16 p1, 0x200000

    .line 58
    .line 59
    invoke-static {p1}, Ls0/b;->g(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    sget p1, Ls0/b;->j:I

    .line 66
    .line 67
    and-int/2addr p1, v1

    .line 68
    const/high16 p2, 0x70000

    .line 69
    .line 70
    and-int/2addr p1, p2

    .line 71
    iput p1, p0, Lc0/h;->j:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iput v0, p0, Lc0/h;->j:I

    .line 75
    .line 76
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lc0/h;->l:Z

    .line 77
    .line 78
    iget p1, p0, Lc0/h;->k:I

    .line 79
    .line 80
    and-int/lit8 p1, p1, -0x7

    .line 81
    .line 82
    iput p1, p0, Lc0/h;->k:I

    .line 83
    .line 84
    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lc0/h;->k:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lc0/h;->k:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Lc0/h;->k:I

    .line 11
    .line 12
    and-int/lit8 p1, p1, -0x2

    .line 13
    .line 14
    iput p1, p0, Lc0/h;->k:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public n(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc0/h;->m:Lp0/g;

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    if-ge p2, v0, :cond_0

    .line 7
    .line 8
    :goto_0
    move p2, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget v0, p1, Lp0/g;->e:I

    .line 11
    .line 12
    if-le p2, v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    iput p2, p1, Lp0/g;->b:I

    .line 16
    .line 17
    :cond_2
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lc0/h;->l:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Lc0/h;->k:I

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-virtual {p0, p1, v0}, Lc0/h;->j(II)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, Landroid/widget/ImageView;

    .line 7
    .line 8
    const v3, 0x7f070078

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const v4, 0x7f070077

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lc0/d;

    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lc0/h;->d()[I

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    array-length v6, v5

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x1

    .line 37
    if-lez v6, :cond_3

    .line 38
    .line 39
    array-length v6, v5

    .line 40
    move v9, v7

    .line 41
    :goto_0
    if-ge v9, v6, :cond_1

    .line 42
    .line 43
    aget v10, v5, v9

    .line 44
    .line 45
    if-ne v10, v3, :cond_0

    .line 46
    .line 47
    move v3, v7

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move v3, v8

    .line 53
    :goto_1
    if-eqz v3, :cond_2

    .line 54
    .line 55
    return v7

    .line 56
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    array-length v6, v5

    .line 65
    new-array v9, v8, [Ljava/lang/Object;

    .line 66
    .line 67
    array-length v10, v5

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    aput-object v10, v9, v7

    .line 73
    .line 74
    const v10, 0x7f0b0002

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v10, v6, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    new-array v5, v8, [I

    .line 83
    .line 84
    aput v3, v5, v7

    .line 85
    .line 86
    iget-object v3, v4, Lc0/d;->a:Ljava/lang/String;

    .line 87
    .line 88
    :goto_2
    instance-of v4, v4, Lc0/f;

    .line 89
    .line 90
    array-length v6, v5

    .line 91
    new-array v6, v6, [Ljava/lang/String;

    .line 92
    .line 93
    array-length v9, v5

    .line 94
    new-array v10, v9, [Landroid/content/ClipData$Item;

    .line 95
    .line 96
    move v11, v7

    .line 97
    :goto_3
    array-length v12, v5

    .line 98
    if-ge v11, v12, :cond_6

    .line 99
    .line 100
    aget v12, v5, v11

    .line 101
    .line 102
    invoke-virtual {v0, v12}, Lc0/h;->a(I)Lc0/d;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    iget-object v14, v12, Lc0/d;->a:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v4, :cond_4

    .line 109
    .line 110
    move-object v15, v12

    .line 111
    check-cast v15, Lc0/f;

    .line 112
    .line 113
    iget-object v15, v15, Lc0/f;->k:Lg0/h;

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    iget-object v15, v0, Lc0/h;->i:Lg0/h;

    .line 117
    .line 118
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    new-instance v7, Lg0/h;

    .line 123
    .line 124
    iget-object v13, v12, Lc0/d;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-direct {v7, v14, v15, v13}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-wide/16 v0, 0x0

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    invoke-static {v8, v7, v0, v1, v13}, Lu0/e;->b(Landroid/content/Context;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v12}, Lc0/d;->f()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    const-string v1, "vnd.android.document/directory"

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_5
    invoke-static {v14}, Lb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    :goto_5
    aput-object v1, v6, v11

    .line 150
    .line 151
    new-instance v1, Landroid/content/ClipData$Item;

    .line 152
    .line 153
    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 154
    .line 155
    .line 156
    aput-object v1, v10, v11

    .line 157
    .line 158
    add-int/lit8 v11, v11, 0x1

    .line 159
    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move-object/from16 v1, p1

    .line 163
    .line 164
    const/4 v7, 0x0

    .line 165
    const/4 v8, 0x1

    .line 166
    goto :goto_3

    .line 167
    :cond_6
    new-instance v0, Landroid/content/ClipData;

    .line 168
    .line 169
    new-instance v1, Landroid/content/ClipDescription;

    .line 170
    .line 171
    invoke-direct {v1, v3, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 v3, 0x0

    .line 175
    aget-object v3, v10, v3

    .line 176
    .line 177
    invoke-direct {v0, v1, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 178
    .line 179
    .line 180
    const/4 v1, 0x1

    .line 181
    :goto_6
    if-ge v1, v9, :cond_7

    .line 182
    .line 183
    aget-object v3, v10, v1

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_7
    new-instance v1, Lc0/h$b;

    .line 192
    .line 193
    invoke-direct {v1, v2}, Lc0/h$b;-><init>(Landroid/widget/ImageView;)V

    .line 194
    .line 195
    .line 196
    const/16 v3, 0x103

    .line 197
    .line 198
    const/4 v4, 0x0

    .line 199
    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 200
    .line 201
    .line 202
    const/4 v0, 0x1

    .line 203
    return v0
.end method
