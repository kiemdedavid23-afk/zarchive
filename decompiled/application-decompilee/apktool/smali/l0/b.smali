.class public final Ll0/b;
.super Lg0/f;
.source "SourceFile"


# instance fields
.field public b:Lru/zdevs/zarchiver/io/SAF$a;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg0/h;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lg0/f;-><init>(Lg0/h;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Ll0/b;->c:Z

    .line 8
    iput-object p1, p0, Ll0/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg0/h;Lru/zdevs/zarchiver/io/SAF$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg0/f;-><init>(Lg0/h;)V

    .line 2
    iput-object p2, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ll0/b;->c:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Ll0/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll0/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 10
    .line 11
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->e(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Ll0/b;->c:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final B(I)Z
    .locals 1

    .line 1
    sget v0, Landroid/system/OsConstants;->EPERM:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    neg-int v0, p1

    .line 7
    invoke-static {v0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Ll0/b;->d:Ljava/lang/String;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ll0/b;->d:Ljava/lang/String;

    .line 16
    .line 17
    :goto_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    :goto_1
    return p1
.end method

.method public final b(Ljava/lang/String;)Lg0/h;
    .locals 3

    .line 1
    new-instance v0, Lg0/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lg0/f;->a:Lg0/h;

    .line 9
    .line 10
    iget-object v2, v2, Lg0/h;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x2f

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "saf"

    .line 28
    .line 29
    invoke-direct {v0, v1, p1}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-static {v1, p1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-boolean v2, Lw0/c;->c:Z

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 27
    .line 28
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->remove(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 41
    .line 42
    :cond_3
    return v1
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 15
    .line 16
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v1, p1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->p(Landroid/net/Uri;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_2
    :goto_0
    return v1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll0/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->c:J

    .line 12
    .line 13
    :goto_0
    return-wide v0
.end method

.method public final o()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 12
    .line 13
    :goto_0
    return-wide v0
.end method

.method public final p()[Lg0/f;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-array v0, v1, [Lg0/f;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, v0, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v2, p0, Lg0/f;->a:Lg0/h;

    .line 15
    .line 16
    iget-object v3, v2, Lg0/h;->c:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lru/zdevs/zarchiver/io/SAF;->r(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-array v0, v1, [Lg0/f;

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-array v3, v3, [Lg0/f;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Lru/zdevs/zarchiver/io/SAF$a;

    .line 48
    .line 49
    add-int/lit8 v5, v1, 0x1

    .line 50
    .line 51
    new-instance v6, Ll0/b;

    .line 52
    .line 53
    new-instance v7, Lg0/h;

    .line 54
    .line 55
    iget-object v8, v4, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {v7, v8, v2}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v6, v7, v4}, Ll0/b;-><init>(Lg0/h;Lru/zdevs/zarchiver/io/SAF$a;)V

    .line 61
    .line 62
    .line 63
    aput-object v6, v3, v1

    .line 64
    .line 65
    move v1, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-object v3
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->mkdir(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Ll0/b;->B(I)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final r(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    iget-object v1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-boolean v2, Lw0/c;->c:Z

    .line 10
    .line 11
    if-nez v2, :cond_2

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v2, "/SAF"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 v2, 0x3

    .line 27
    invoke-static {v2, v1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    sget v1, Landroid/system/OsConstants;->EACCES:I

    .line 32
    .line 33
    neg-int v3, v1

    .line 34
    :goto_1
    invoke-virtual {p0, v3}, Ll0/b;->B(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    iget-object v1, p0, Ll0/b;->d:Ljava/lang/String;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    const-string v1, "Failed to create"

    .line 45
    .line 46
    :cond_3
    new-instance v2, Ljava/lang/Exception;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, ": "

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v2

    .line 78
    :cond_4
    return-void
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/io/SAF;->mkdirs(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ll0/b;->B(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final t(Lg0/h;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Lg0/h;->o()Z

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
    return v2

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v0, p1}, Lru/zdevs/zarchiver/io/SAF;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :cond_1
    return p1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    neg-int p1, p1

    .line 39
    invoke-virtual {p0, p1}, Ll0/b;->B(I)Z

    .line 40
    .line 41
    .line 42
    return v2
.end method

.method public final v(I)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v1, v1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    const-string p1, "w"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p1, "r"

    .line 27
    .line 28
    :goto_0
    invoke-virtual {v2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 48
    .line 49
    const-string v0, "Create file not supported"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public final w()Ljava/io/InputStream;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ll0/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-wide v2, v0, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v4, "r"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v1, Lm0/f;

    .line 27
    .line 28
    invoke-direct {v1, v0, v2, v3}, Lm0/f;-><init>(Landroid/os/ParcelFileDescriptor;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    :cond_0
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-eqz v1, :cond_1

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final x(J)Ljava/io/OutputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lru/zdevs/zarchiver/io/SAF$a;

    .line 7
    .line 8
    invoke-direct {v0}, Lru/zdevs/zarchiver/io/SAF$a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, v0, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean v1, v0, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 17
    .line 18
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    iput-wide v3, v0, Lru/zdevs/zarchiver/io/SAF$a;->c:J

    .line 21
    .line 22
    iput-wide p1, v0, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 23
    .line 24
    iput-object v2, v0, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;

    .line 27
    .line 28
    iget-object p2, p0, Lg0/f;->a:Lg0/h;

    .line 29
    .line 30
    iget-object p2, p2, Lg0/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v2, 0x1e

    .line 35
    .line 36
    if-lt v0, v2, :cond_2

    .line 37
    .line 38
    iget-object p1, p1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    :cond_1
    invoke-static {p2, v1}, Lru/zdevs/zarchiver/io/SAF;->u(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    iget-object v0, p1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    invoke-static {v0, p2}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 58
    .line 59
    :cond_3
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object p1, p1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    return-object p1
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v1, v0, p1}, Lru/zdevs/zarchiver/io/SAF;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Ll0/b;->b:Lru/zdevs/zarchiver/io/SAF$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    :cond_0
    return p1

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->d(Ljava/lang/Exception;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    neg-int p1, p1

    .line 29
    invoke-virtual {p0, p1}, Ll0/b;->B(I)Z

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    return p1
.end method

.method public final z(JLjava/io/OutputStream;)Z
    .locals 2

    .line 1
    invoke-static {p3}, Lb/d;->z(Ljava/io/OutputStream;)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-lez p3, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 20
    .line 21
    div-long/2addr p1, v0

    .line 22
    long-to-int p1, p1

    .line 23
    invoke-static {p3, p1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetMTime(II)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    if-nez p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    :goto_1
    return p1
.end method
