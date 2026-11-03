.class public final Lz/r0;
.super Lv0/c;
.source "SourceFile"

# interfaces
.implements Lg0/e$c;


# instance fields
.field public final e:Lru/zdevs/zarchiver/b;

.field public final f:Ljava/lang/String;

.field public final g:[Ljava/lang/String;

.field public final h:Lz/u;

.field public i:I


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/b;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/r0;->e:Lru/zdevs/zarchiver/b;

    .line 5
    .line 6
    iput-object p2, p0, Lz/r0;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lz/r0;->g:[Ljava/lang/String;

    .line 9
    .line 10
    new-instance p2, Lz/u;

    .line 11
    .line 12
    iget p1, p1, Lru/zdevs/zarchiver/b;->b:I

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lz/u;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lz/r0;->h:Lz/u;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lz/r0;->i:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/r0;->h:Lz/u;

    .line 2
    .line 3
    iput p1, v0, Lz/u;->b:I

    .line 4
    .line 5
    iget-object p1, p0, Lv0/c;->a:Lv0/a;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v0, v1}, Lv0/a;->b(Lv0/a$b;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lz/r0;->e:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lc0/f;

    .line 9
    .line 10
    iget-boolean v2, p1, Lg0/e$b;->a:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v2, 0x4

    .line 17
    :goto_0
    move v6, v2

    .line 18
    iget-wide v7, p1, Lg0/e$b;->c:J

    .line 19
    .line 20
    iget-wide v9, p1, Lg0/e$b;->b:J

    .line 21
    .line 22
    move-object v2, v1

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p4

    .line 26
    invoke-direct/range {v2 .. v10}, Lc0/f;-><init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lz/t;

    .line 30
    .line 31
    iget p2, v0, Lru/zdevs/zarchiver/b;->b:I

    .line 32
    .line 33
    invoke-direct {p1, p2, v1}, Lz/t;-><init>(ILc0/f;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lv0/c;->a:Lv0/a;

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const/4 p3, 0x0

    .line 41
    invoke-virtual {p2, p1, p3}, Lv0/a;->b(Lv0/a$b;Z)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget p1, p0, Lz/r0;->i:I

    .line 45
    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    iput p1, p0, Lz/r0;->i:I

    .line 49
    .line 50
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 10

    .line 1
    iget-object v0, p0, Lz/r0;->g:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lz/r0;->e:Lru/zdevs/zarchiver/b;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    iget-object v3, v1, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 10
    .line 11
    iget-object v4, p0, Lz/r0;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Lg0/e;->a([Ljava/lang/String;)[I

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    :cond_0
    move v6, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    array-length v6, v0

    .line 22
    move v7, v2

    .line 23
    :goto_0
    if-ge v7, v6, :cond_0

    .line 24
    .line 25
    aget-object v8, v0, v7

    .line 26
    .line 27
    const-string v9, "[SF]"

    .line 28
    .line 29
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-eqz v8, :cond_2

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    move v6, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_1
    move-object v7, p0

    .line 42
    move-object v8, p0

    .line 43
    invoke-static/range {v3 .. v8}, Lg0/e;->h(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :catch_0
    invoke-virtual {p0}, Lv0/c;->isCancelled()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    iget v0, p0, Lz/r0;->i:I

    .line 53
    .line 54
    if-gtz v0, :cond_3

    .line 55
    .line 56
    const v0, 0x7f0c00eb

    .line 57
    .line 58
    .line 59
    iput v0, v1, Lru/zdevs/zarchiver/b;->n:I

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    iput v2, v1, Lru/zdevs/zarchiver/b;->n:I

    .line 63
    .line 64
    :cond_4
    :goto_2
    iget-object v0, p0, Lz/r0;->h:Lz/u;

    .line 65
    .line 66
    const/16 v1, 0x64

    .line 67
    .line 68
    iput v1, v0, Lz/u;->b:I

    .line 69
    .line 70
    return-object v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lz/r0;->e:Lru/zdevs/zarchiver/b;

    iget v0, v0, Lru/zdevs/zarchiver/b;->b:I

    return v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method
