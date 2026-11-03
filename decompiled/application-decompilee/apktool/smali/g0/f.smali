.class public abstract Lg0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg0/h;


# direct methods
.method public constructor <init>(Lg0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/f;->a:Lg0/h;

    .line 5
    .line 6
    return-void
.end method

.method public static e(Lg0/h;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p0}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->p(Landroid/net/Uri;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    :goto_0
    return v1

    .line 35
    :cond_2
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lg0/h;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Le0/a;->n(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object p0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, p0, v2}, Le0/a;->e(Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    :cond_3
    return v1
.end method

.method public static u(Lg0/h;)Lg0/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Li0/d;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Li0/d;-><init>(Lg0/h;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ll0/b;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Ll0/b;-><init>(Lg0/h;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lg0/h;->k()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance v0, Lj0/b;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lj0/b;-><init>(Lg0/h;)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lg0/h;->i()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    new-instance v0, Ll0/c;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Ll0/c;-><init>(Lg0/h;)V

    .line 46
    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_3
    new-instance p0, Lg0/a;

    .line 50
    .line 51
    invoke-direct {p0}, Lg0/a;-><init>()V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method


# virtual methods
.method public a(Lg0/h;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract b(Ljava/lang/String;)Lg0/h;
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lg0/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 8
    .line 9
    check-cast p1, Lg0/f;

    .line 10
    .line 11
    iget-object p1, p1, Lg0/f;->a:Lg0/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    return v1
.end method

.method public abstract f(Ljava/lang/String;)Z
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lg0/h;
    .locals 2

    .line 1
    new-instance v0, Lg0/h;

    .line 2
    .line 3
    iget-object v1, p0, Lg0/f;->a:Lg0/h;

    .line 4
    .line 5
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public abstract n()J
.end method

.method public abstract o()J
.end method

.method public abstract p()[Lg0/f;
.end method

.method public abstract q(Ljava/lang/String;)Z
.end method

.method public r(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lg0/f;->q(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lg0/f;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "Failed to create"

    .line 14
    .line 15
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lg0/f;->a:Lg0/h;

    .line 23
    .line 24
    iget-object v3, v3, Lg0/h;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v3, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ": "

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    return-void
.end method

.method public abstract s(Ljava/lang/String;)Z
.end method

.method public abstract t(Lg0/h;)Z
.end method

.method public abstract v(I)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract w()Ljava/io/InputStream;
.end method

.method public abstract x(J)Ljava/io/OutputStream;
.end method

.method public abstract y(Ljava/lang/String;)Z
.end method

.method public abstract z(JLjava/io/OutputStream;)Z
.end method
