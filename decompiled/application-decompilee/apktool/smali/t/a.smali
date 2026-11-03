.class public final Lt/a;
.super Lt/b;
.source "SourceFile"


# static fields
.field public static final f:Lx/a;


# instance fields
.field public final b:Lx/b;

.field public c:I

.field public final d:Lv/a;

.field public final e:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/a;

    invoke-direct {v0}, Lx/a;-><init>()V

    sput-object v0, Lt/a;->f:Lx/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lt/b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx/b;

    .line 5
    .line 6
    sget-object v1, Lt/a;->f:Lx/a;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lx/b;-><init>(Lx/l;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lt/a;->b:Lx/b;

    .line 12
    .line 13
    new-instance v0, Lv/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lv/a;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lt/a;->d:Lv/a;

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v0, v0, [B

    .line 22
    .line 23
    iput-object v0, p0, Lt/a;->e:[B

    .line 24
    .line 25
    invoke-virtual {p0}, Lt/a;->e()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ls/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 1

    iget-object v0, p0, Lt/a;->d:Lv/a;

    invoke-virtual {v0}, Lv/b;->a()F

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lt/a;->c:I

    return v0
.end method

.method public final d([BI)I
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    add-int/2addr p2, v0

    .line 3
    move v1, v0

    .line 4
    :goto_0
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object v4, p0, Lt/a;->e:[B

    .line 7
    .line 8
    iget-object v5, p0, Lt/a;->d:Lv/a;

    .line 9
    .line 10
    if-ge v1, p2, :cond_4

    .line 11
    .line 12
    aget-byte v6, p1, v1

    .line 13
    .line 14
    iget-object v7, p0, Lt/a;->b:Lx/b;

    .line 15
    .line 16
    invoke-virtual {v7, v6}, Lx/b;->a(B)I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    if-ne v6, v3, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    iput v1, p0, Lt/a;->c:I

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    if-ne v6, v2, :cond_1

    .line 27
    .line 28
    iput v2, p0, Lt/a;->c:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    if-nez v6, :cond_3

    .line 32
    .line 33
    iget v2, v7, Lx/b;->c:I

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    aget-byte v6, p1, v0

    .line 38
    .line 39
    aput-byte v6, v4, v3

    .line 40
    .line 41
    invoke-virtual {v5, v4, v0, v2}, Lv/b;->c([BII)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .line 46
    .line 47
    invoke-virtual {v5, p1, v3, v2}, Lv/b;->c([BII)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    :goto_2
    sub-int/2addr p2, v3

    .line 54
    aget-byte p1, p1, p2

    .line 55
    .line 56
    aput-byte p1, v4, v0

    .line 57
    .line 58
    iget p1, p0, Lt/a;->c:I

    .line 59
    .line 60
    if-ne p1, v3, :cond_6

    .line 61
    .line 62
    iget p1, v5, Lv/b;->b:I

    .line 63
    .line 64
    const/16 p2, 0x400

    .line 65
    .line 66
    if-le p1, p2, :cond_5

    .line 67
    .line 68
    move v0, v3

    .line 69
    :cond_5
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Lt/a;->b()F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const p2, 0x3f733333    # 0.95f

    .line 76
    .line 77
    .line 78
    cmpl-float p1, p1, p2

    .line 79
    .line 80
    if-lez p1, :cond_6

    .line 81
    .line 82
    iput v2, p0, Lt/a;->c:I

    .line 83
    .line 84
    :cond_6
    iget p1, p0, Lt/a;->c:I

    .line 85
    .line 86
    return p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/a;->b:Lx/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lx/b;->b:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lt/a;->c:I

    .line 8
    .line 9
    iget-object v0, p0, Lt/a;->d:Lv/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lv/b;->d()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lt/a;->e:[B

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
