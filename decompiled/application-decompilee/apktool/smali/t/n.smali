.class public final Lt/n;
.super Lt/b;
.source "SourceFile"


# static fields
.field public static final e:Lx/m;


# instance fields
.field public final b:Lx/b;

.field public c:I

.field public d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/m;

    invoke-direct {v0}, Lx/m;-><init>()V

    sput-object v0, Lt/n;->e:Lx/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lt/n;->d:I

    .line 6
    .line 7
    new-instance v0, Lx/b;

    .line 8
    .line 9
    sget-object v1, Lt/n;->e:Lx/m;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lx/b;-><init>(Lx/l;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lt/n;->b:Lx/b;

    .line 15
    .line 16
    invoke-virtual {p0}, Lt/n;->e()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ls/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 3

    .line 1
    iget v0, p0, Lt/n;->d:I

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    const v2, 0x3f7d70a4    # 0.99f

    .line 5
    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget v1, p0, Lt/n;->d:I

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/high16 v1, 0x3f000000    # 0.5f

    .line 15
    .line 16
    mul-float/2addr v2, v1

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float/2addr v0, v2

    .line 23
    return v0

    .line 24
    :cond_1
    return v2
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lt/n;->c:I

    return v0
.end method

.method public final d([BI)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    add-int/2addr p2, v0

    .line 3
    :goto_0
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ge v0, p2, :cond_3

    .line 6
    .line 7
    aget-byte v3, p1, v0

    .line 8
    .line 9
    iget-object v4, p0, Lt/n;->b:Lx/b;

    .line 10
    .line 11
    invoke-virtual {v4, v3}, Lx/b;->a(B)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-ne v3, v2, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lt/n;->c:I

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    if-ne v3, v1, :cond_1

    .line 22
    .line 23
    iput v1, p0, Lt/n;->c:I

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    if-nez v3, :cond_2

    .line 27
    .line 28
    iget v3, v4, Lx/b;->c:I

    .line 29
    .line 30
    if-lt v3, v1, :cond_2

    .line 31
    .line 32
    iget v1, p0, Lt/n;->d:I

    .line 33
    .line 34
    add-int/2addr v1, v2

    .line 35
    iput v1, p0, Lt/n;->d:I

    .line 36
    .line 37
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_1
    iget p1, p0, Lt/n;->c:I

    .line 41
    .line 42
    if-ne p1, v2, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lt/n;->b()F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const p2, 0x3f733333    # 0.95f

    .line 49
    .line 50
    .line 51
    cmpl-float p1, p1, p2

    .line 52
    .line 53
    if-lez p1, :cond_4

    .line 54
    .line 55
    iput v1, p0, Lt/n;->c:I

    .line 56
    .line 57
    :cond_4
    iget p1, p0, Lt/n;->c:I

    .line 58
    .line 59
    return p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/n;->b:Lx/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lx/b;->b:I

    .line 5
    .line 6
    iput v1, p0, Lt/n;->d:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lt/n;->c:I

    .line 10
    .line 11
    return-void
.end method
