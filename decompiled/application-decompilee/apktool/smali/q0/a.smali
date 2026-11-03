.class public final Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lq0/a;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ln0/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lq0/a;->b(Ln0/a;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {p4}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p0, v2, p1}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v7, 0x1

    .line 26
    invoke-static {p2}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {p3}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    move-object v6, p0

    .line 35
    invoke-static/range {v2 .. v7}, Lb/d;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln0/a;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-static {p0, p1, v1}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-static {p0}, Lq0/a;->d(Ln0/a;)V

    .line 45
    .line 46
    .line 47
    return p2
.end method

.method public static b(Ln0/a;)V
    .locals 1

    .line 1
    sget-object v0, Lq0/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public static c(Ln0/a;Lg0/h;Lg0/h;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lq0/a;->b(Ln0/a;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object p1, p2, Lg0/h;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {p2}, Lg0/e;->c(Lg0/h;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x4

    .line 29
    invoke-static {p1, p2}, Lb/d;->K(II)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v1, 0x0

    .line 34
    move-object v0, p0

    .line 35
    move v2, p3

    .line 36
    invoke-static/range {v0 .. v5}, Lo0/b;->c(Ln0/a;ZIZLjava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p0}, Lq0/a;->d(Ln0/a;)V

    .line 41
    .line 42
    .line 43
    return p1
.end method

.method public static d(Ln0/a;)V
    .locals 1

    .line 1
    sget-object v0, Lq0/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x27

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v0, :cond_4

    .line 20
    .line 21
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/16 v5, 0x5c

    .line 26
    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    const-string v4, "\' \'"

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    if-ne v4, v2, :cond_2

    .line 38
    .line 39
    const-string v4, "\'\\\'\'"

    .line 40
    .line 41
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    add-int/lit8 p0, p0, -0x1

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eq p0, v2, :cond_5

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0
.end method

.method public static f(Ln0/a;Lg0/h;Lg0/h;I)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p0}, Lq0/a;->b(Ln0/a;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    iget-object p1, p2, Lg0/h;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-static {p2}, Lg0/e;->c(Lg0/h;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, 0x4

    .line 29
    invoke-static {p1, p2}, Lb/d;->K(II)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v1, 0x1

    .line 34
    move-object v0, p0

    .line 35
    move v2, p3

    .line 36
    invoke-static/range {v0 .. v5}, Lo0/b;->c(Ln0/a;ZIZLjava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {p0}, Lq0/a;->d(Ln0/a;)V

    .line 41
    .line 42
    .line 43
    return p1
.end method

.method public static g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    if-eqz p2, :cond_4

    .line 10
    .line 11
    invoke-static {p1}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p1, v0}, Lw0/a;->b(Ljava/lang/String;Z)Lw0/a$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    iget-object v2, p1, Lw0/a$a;->d:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    const-string v3, "rw"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    if-nez v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lw0/a$a;->a()B

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x5

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p1, Lw0/a$a;->b:Ljava/lang/String;

    .line 47
    .line 48
    move-object v4, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    return-object v1

    .line 53
    :cond_4
    move-object v0, v1

    .line 54
    :goto_2
    invoke-static {p0, p1, v0, p2}, Lo0/e;->a(Ln0/a;Ljava/lang/String;Lw0/a$a;Z)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    move-object v1, p1

    .line 61
    :cond_5
    return-object v1
.end method

.method public static h(I)V
    .locals 4

    .line 1
    sget-object v0, Lq0/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ln0/a;

    .line 19
    .line 20
    iget v3, v2, Ln0/a;->a:I

    .line 21
    .line 22
    if-ne v3, p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v2, Ln0/a;->b:Ljava/lang/String;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, p0}, Ln0/a;->m(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
