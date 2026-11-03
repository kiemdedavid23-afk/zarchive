.class public final Ln/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/g;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ln/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Ln/d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Le/b;

    .line 4
    .line 5
    iget-object p0, p0, Le/b;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, [Lq/a;

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    aget-object v2, p0, v1

    .line 14
    .line 15
    iget-object v3, v2, Lq/a;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    iget-object p0, v2, Lq/a;->e:Ljava/lang/String;

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ln/d;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ln/d;->c:Ljava/lang/Comparable;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "background"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "drawable"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iput-boolean v3, p0, Ln/a;->a:Z

    .line 18
    .line 19
    iput-boolean v2, p0, Ln/a;->b:Z

    .line 20
    .line 21
    invoke-static {p1, v1}, Ln/a;->e(Ln/d;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Ln/a;->d:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p1, Ln/d;->c:Ljava/lang/Comparable;

    .line 29
    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    const-string v4, "foreground"

    .line 33
    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iput-boolean v2, p0, Ln/a;->a:Z

    .line 41
    .line 42
    iput-boolean v3, p0, Ln/a;->b:Z

    .line 43
    .line 44
    invoke-static {p1, v1}, Ln/a;->e(Ln/d;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Ln/a;->c:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p1, Ln/d;->c:Ljava/lang/Comparable;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    const-string v1, "bitmap"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-boolean v0, p0, Ln/a;->a:Z

    .line 64
    .line 65
    const-string v1, "src"

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-static {p1, v1}, Ln/a;->e(Ln/d;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Ln/a;->c:Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-boolean v0, p0, Ln/a;->b:Z

    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-static {p1, v1}, Ln/a;->e(Ln/d;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Ln/a;->d:Ljava/lang/String;

    .line 85
    .line 86
    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
