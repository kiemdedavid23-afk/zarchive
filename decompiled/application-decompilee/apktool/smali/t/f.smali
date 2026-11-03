.class public final Lt/f;
.super Lt/b;
.source "SourceFile"


# static fields
.field public static final f:Lx/g;

.field public static final g:Lx/h;

.field public static final h:Lx/i;


# instance fields
.field public final b:[Lx/b;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lx/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt/f;->f:Lx/g;

    .line 7
    .line 8
    new-instance v0, Lx/h;

    .line 9
    .line 10
    invoke-direct {v0}, Lx/h;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lt/f;->g:Lx/h;

    .line 14
    .line 15
    new-instance v0, Lx/i;

    .line 16
    .line 17
    invoke-direct {v0}, Lx/i;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lt/f;->h:Lx/i;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lx/b;

    .line 6
    .line 7
    iput-object v0, p0, Lt/f;->b:[Lx/b;

    .line 8
    .line 9
    new-instance v1, Lx/b;

    .line 10
    .line 11
    sget-object v2, Lt/f;->f:Lx/g;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lx/b;-><init>(Lx/l;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    new-instance v1, Lx/b;

    .line 20
    .line 21
    sget-object v2, Lt/f;->g:Lx/h;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lx/b;-><init>(Lx/l;)V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    new-instance v1, Lx/b;

    .line 30
    .line 31
    sget-object v2, Lt/f;->h:Lx/i;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Lx/b;-><init>(Lx/l;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    invoke-virtual {p0}, Lt/f;->e()V

    .line 40
    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 1

    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lt/f;->d:I

    return v0
.end method

.method public final d([BI)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    add-int/2addr p2, v0

    .line 3
    :goto_0
    if-ge v0, p2, :cond_4

    .line 4
    .line 5
    iget v1, p0, Lt/f;->d:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_4

    .line 9
    .line 10
    iget v1, p0, Lt/f;->c:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    :goto_1
    if-ltz v1, :cond_3

    .line 14
    .line 15
    iget-object v3, p0, Lt/f;->b:[Lx/b;

    .line 16
    .line 17
    aget-object v4, v3, v1

    .line 18
    .line 19
    aget-byte v5, p1, v0

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Lx/b;->a(B)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v4, v2, :cond_1

    .line 26
    .line 27
    iget v4, p0, Lt/f;->c:I

    .line 28
    .line 29
    sub-int/2addr v4, v2

    .line 30
    iput v4, p0, Lt/f;->c:I

    .line 31
    .line 32
    if-gtz v4, :cond_0

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    iput p1, p0, Lt/f;->d:I

    .line 36
    .line 37
    return p1

    .line 38
    :cond_0
    if-eq v1, v4, :cond_2

    .line 39
    .line 40
    aget-object v5, v3, v4

    .line 41
    .line 42
    aget-object v6, v3, v1

    .line 43
    .line 44
    aput-object v6, v3, v4

    .line 45
    .line 46
    aput-object v5, v3, v1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    const/4 v5, 0x2

    .line 50
    if-ne v4, v5, :cond_2

    .line 51
    .line 52
    iput v5, p0, Lt/f;->d:I

    .line 53
    .line 54
    aget-object p1, v3, v1

    .line 55
    .line 56
    iget-object p1, p1, Lx/b;->a:Lx/l;

    .line 57
    .line 58
    iget-object p1, p1, Lx/l;->e:Ljava/lang/String;

    .line 59
    .line 60
    iput-object p1, p0, Lt/f;->e:Ljava/lang/String;

    .line 61
    .line 62
    return v5

    .line 63
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    iget p1, p0, Lt/f;->d:I

    .line 70
    .line 71
    return p1
.end method

.method public final e()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lt/f;->d:I

    .line 3
    .line 4
    iget-object v0, p0, Lt/f;->b:[Lx/b;

    .line 5
    .line 6
    array-length v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    aget-object v4, v0, v3

    .line 12
    .line 13
    iput v2, v4, Lx/b;->b:I

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length v0, v0

    .line 19
    iput v0, p0, Lt/f;->c:I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lt/f;->e:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method
