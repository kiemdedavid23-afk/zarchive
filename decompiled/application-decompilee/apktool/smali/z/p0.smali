.class public final Lz/p0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/p0;->e:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p2, p0, Lz/p0;->f:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 10

    .line 1
    sget v0, Ls0/b;->m:I

    .line 2
    .line 3
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln0/a;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lz/x;

    .line 14
    .line 15
    const v1, 0x7f0c016e

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lz/x;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    iget-object v1, p0, Lz/p0;->e:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v1, v2}, Lw0/a;->b(Ljava/lang/String;Z)Lw0/a$a;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v1, v3, Lw0/a$a;->b:Ljava/lang/String;

    .line 32
    .line 33
    :cond_1
    iget-boolean v4, p0, Lz/p0;->f:Z

    .line 34
    .line 35
    invoke-static {v0, v1, v3, v4}, Lo0/e;->a(Ln0/a;Ljava/lang/String;Lw0/a$a;Z)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-nez v5, :cond_3

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-static {v0}, Lw0/a;->d(Ln0/a;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    invoke-static {v1, v2}, Lw0/a;->b(Ljava/lang/String;Z)Lw0/a$a;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    iget-object v1, v3, Lw0/a$a;->d:Ljava/lang/String;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v6, "rw"

    .line 60
    .line 61
    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/4 v2, 0x0

    .line 69
    :goto_0
    if-eq v2, v4, :cond_3

    .line 70
    .line 71
    const/4 v5, -0x1

    .line 72
    :cond_3
    move v8, v5

    .line 73
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 74
    .line 75
    .line 76
    new-instance v1, Lz/r;

    .line 77
    .line 78
    iget-object v5, p0, Lz/p0;->e:Ljava/lang/String;

    .line 79
    .line 80
    if-nez v3, :cond_4

    .line 81
    .line 82
    const/4 v2, 0x0

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v2, v3, Lw0/a$a;->a:Ljava/lang/String;

    .line 85
    .line 86
    :goto_1
    move-object v6, v2

    .line 87
    iget-boolean v7, p0, Lz/p0;->f:Z

    .line 88
    .line 89
    iget-object v9, v0, Ln0/a;->c:Ljava/lang/String;

    .line 90
    .line 91
    move-object v4, v1

    .line 92
    invoke-direct/range {v4 .. v9}, Lz/r;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
