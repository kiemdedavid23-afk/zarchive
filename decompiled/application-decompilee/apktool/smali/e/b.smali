.class public final Le/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-array p1, p1, [Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Le/b;->a:Ljava/lang/Object;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    new-array p1, p1, [Lq/a;

    .line 16
    .line 17
    iput-object p1, p0, Le/b;->a:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/b;->a:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    const-string v0, "0x"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x10

    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Lq/a;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    iget-object v5, v4, Lq/a;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v4, v3

    .line 25
    :goto_1
    if-nez v4, :cond_2

    .line 26
    .line 27
    return-object v3

    .line 28
    :cond_2
    iget-object p1, v4, Lq/a;->e:Ljava/lang/String;

    .line 29
    .line 30
    return-object p1
.end method
