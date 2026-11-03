.class public final Lz/t0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Lg0/h;

.field public final g:Ljava/lang/String;

.field public h:Lf0/y;

.field public i:Lru/zdevs/zarchiver/archiver/NArc;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lg0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lz/t0;->e:I

    .line 5
    .line 6
    iput-object p3, p0, Lz/t0;->f:Lg0/h;

    .line 7
    .line 8
    iput-object p2, p0, Lz/t0;->g:Ljava/lang/String;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lz/t0;->f:Lg0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/h;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lb/d;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1, v2}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lz/t0;->g:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/archiver/NArc;->n(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, -0x1

    .line 33
    :goto_0
    if-nez v0, :cond_4

    .line 34
    .line 35
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Le0/a;->a()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lz/z;

    .line 43
    .line 44
    iget v1, p0, Lz/t0;->e:I

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lz/z;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lz/t0;->h:Lf0/y;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Lf0/i;->e()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-object v0

    .line 64
    :cond_4
    iget-object v0, p0, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 69
    .line 70
    .line 71
    :cond_5
    iget-object v0, p0, Lz/t0;->h:Lf0/y;

    .line 72
    .line 73
    if-eqz v0, :cond_9

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 78
    .line 79
    if-eqz v1, :cond_6

    .line 80
    .line 81
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 82
    .line 83
    .line 84
    :cond_6
    iget-object v1, p0, Lz/t0;->h:Lf0/y;

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    invoke-virtual {v1}, Lf0/i;->e()V

    .line 89
    .line 90
    .line 91
    :cond_7
    throw v0

    .line 92
    :catch_0
    iget-object v0, p0, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 93
    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 97
    .line 98
    .line 99
    :cond_8
    iget-object v0, p0, Lz/t0;->h:Lf0/y;

    .line 100
    .line 101
    if-eqz v0, :cond_9

    .line 102
    .line 103
    :goto_1
    invoke-virtual {v0}, Lf0/i;->e()V

    .line 104
    .line 105
    .line 106
    :cond_9
    return-object v2
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lz/t0;->h:Lf0/y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lf0/y;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final l(Landroid/content/Context;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lf0/y;

    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Lru/zdevs/zarchiver/ZArchiver;

    .line 8
    .line 9
    iget-object v1, v1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 10
    .line 11
    const v2, 0x7f0c00dd

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v0, v1, p1, v2, v3}, Lf0/y;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lz/t0;->h:Lf0/y;

    .line 19
    .line 20
    iput v3, v0, Lf0/i;->c:I

    .line 21
    .line 22
    new-instance p1, Lz/t0$a;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lz/t0$a;-><init>(Lz/t0;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Lf0/i;->a:Lf0/i$b;

    .line 28
    .line 29
    invoke-virtual {v0}, Lf0/y;->r()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
