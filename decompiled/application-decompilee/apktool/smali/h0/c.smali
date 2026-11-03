.class public final Lh0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lc0/b;Lg0/h;[I)Z
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    array-length v0, p2

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    move v1, v2

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    aget v5, p2, v1

    .line 16
    .line 17
    invoke-virtual {p0, v5}, Lc0/b;->b(I)Lc0/d;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    invoke-virtual {v6}, Lc0/d;->f()Z

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-virtual {p0, v5}, Lc0/b;->b(I)Lc0/d;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-wide v5, v5, Lc0/d;->d:J

    .line 33
    .line 34
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p1, v3, v4}, Ld0/b;->h(Lg0/h;J)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0
.end method


# virtual methods
.method public final a(Lg0/g;Lg0/h;B[ILc0/i;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p3, :cond_8

    .line 7
    .line 8
    array-length p3, p4

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p3, p2, Lg0/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    array-length v1, p4

    .line 15
    const/16 v2, 0x14

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-ne v1, v3, :cond_5

    .line 19
    .line 20
    if-eqz p6, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x1000

    .line 23
    .line 24
    invoke-static {v1}, Ls0/b;->l(I)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_5

    .line 29
    .line 30
    :cond_1
    aget v1, p4, v0

    .line 31
    .line 32
    invoke-virtual {p5, v1}, Lc0/i;->j(I)Lc0/f;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lc0/d;->d()B

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v4, 0x6

    .line 41
    if-eq v1, v4, :cond_2

    .line 42
    .line 43
    if-ne v1, v2, :cond_3

    .line 44
    .line 45
    :cond_2
    move v0, v3

    .line 46
    :cond_3
    if-eqz v0, :cond_4

    .line 47
    .line 48
    const/16 v0, 0xc

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const/4 v0, 0x3

    .line 55
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_0
    const/4 v0, 0x5

    .line 59
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 60
    .line 61
    .line 62
    if-eqz p6, :cond_7

    .line 63
    .line 64
    const/16 p6, 0x16

    .line 65
    .line 66
    invoke-virtual {p1, p6}, Lg0/g;->a(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v3, p3}, Lb/d;->N(ILjava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_6

    .line 74
    .line 75
    const/16 p3, 0x38

    .line 76
    .line 77
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 78
    .line 79
    .line 80
    array-length p3, p4

    .line 81
    if-ne p3, v3, :cond_6

    .line 82
    .line 83
    const/16 p3, 0x39

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    const/16 p3, 0x18

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 91
    .line 92
    .line 93
    invoke-static {p5, p2, p4}, Lh0/c;->d(Lc0/b;Lg0/h;[I)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_7

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lg0/g;->a(I)V

    .line 100
    .line 101
    .line 102
    :cond_7
    return v3

    .line 103
    :cond_8
    :goto_1
    return v0
.end method

.method public final b(Lg0/g;Lg0/h;B[ILc0/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object p3, p2, Lg0/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v0, 0x1000

    .line 12
    .line 13
    invoke-static {v0}, Ls0/b;->l(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    const/16 v0, 0x16

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x18

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 31
    .line 32
    .line 33
    array-length v0, p4

    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    invoke-static {v0, p3}, Lb/d;->N(ILjava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/16 v0, 0x39

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lg0/g;->a(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-static {v1, p3}, Lb/d;->N(ILjava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-eqz p3, :cond_3

    .line 54
    .line 55
    const/16 p3, 0x38

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-static {p5, p2, p4}, Lh0/c;->d(Lc0/b;Lg0/h;[I)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    const/16 p2, 0x14

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return v1
.end method

.method public final c(Lg0/g;Lg0/h;B[ILc0/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    array-length p2, p4

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p2, v0, :cond_4

    .line 12
    .line 13
    aget p2, p4, p3

    .line 14
    .line 15
    invoke-virtual {p5, p2}, Lc0/b;->b(I)Lc0/d;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lc0/d;->d()B

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const/4 p4, 0x6

    .line 24
    if-eq p2, p4, :cond_1

    .line 25
    .line 26
    const/16 p4, 0x14

    .line 27
    .line 28
    if-ne p2, p4, :cond_2

    .line 29
    .line 30
    :cond_1
    move p3, v0

    .line 31
    :cond_2
    if-eqz p3, :cond_3

    .line 32
    .line 33
    const/16 p2, 0xc

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const/4 p2, 0x3

    .line 40
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_0
    const/4 p2, 0x5

    .line 44
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 45
    .line 46
    .line 47
    return v0
.end method
