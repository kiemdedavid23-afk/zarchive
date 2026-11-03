.class public final Lt/c;
.super Lt/b;
.source "SourceFile"


# static fields
.field public static final g:Lx/c;


# instance fields
.field public final b:Lx/b;

.field public c:I

.field public final d:Lu/a;

.field public final e:Lv/c;

.field public final f:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/c;

    invoke-direct {v0}, Lx/c;-><init>()V

    sput-object v0, Lt/c;->g:Lx/c;

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
    sget-object v1, Lt/c;->g:Lx/c;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lx/b;-><init>(Lx/l;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lt/c;->b:Lx/b;

    .line 12
    .line 13
    new-instance v0, Lu/a;

    .line 14
    .line 15
    invoke-direct {v0}, Lu/a;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lt/c;->d:Lu/a;

    .line 19
    .line 20
    new-instance v0, Lv/c;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {v0, v1}, Lv/c;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lt/c;->e:Lv/c;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    new-array v0, v0, [B

    .line 30
    .line 31
    iput-object v0, p0, Lt/c;->f:[B

    .line 32
    .line 33
    invoke-virtual {p0}, Lt/c;->e()V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    sget-object v0, Ls/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final b()F
    .locals 3

    .line 1
    iget-object v0, p0, Lt/c;->d:Lu/a;

    .line 2
    .line 3
    iget v1, v0, Lu/b;->b:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    if-le v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lu/b;->a:[I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v0, v0, v2

    .line 12
    .line 13
    sub-int v0, v1, v0

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    int-to-float v1, v1

    .line 17
    div-float/2addr v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lt/c;->e:Lv/c;

    .line 22
    .line 23
    invoke-virtual {v1}, Lv/b;->a()F

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lt/c;->c:I

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
    iget-object v4, p0, Lt/c;->d:Lu/a;

    .line 7
    .line 8
    iget-object v5, p0, Lt/c;->f:[B

    .line 9
    .line 10
    if-ge v1, p2, :cond_4

    .line 11
    .line 12
    aget-byte v6, p1, v1

    .line 13
    .line 14
    iget-object v7, p0, Lt/c;->b:Lx/b;

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
    iput v1, p0, Lt/c;->c:I

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    if-ne v6, v2, :cond_1

    .line 27
    .line 28
    iput v2, p0, Lt/c;->c:I

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
    iget-object v6, p0, Lt/c;->e:Lv/c;

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    aget-byte v7, p1, v0

    .line 40
    .line 41
    aput-byte v7, v5, v3

    .line 42
    .line 43
    invoke-virtual {v4, v5, v0, v2}, Lu/b;->b([BII)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v5, v0, v2}, Lv/b;->c([BII)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .line 51
    .line 52
    invoke-virtual {v4, p1, v3, v2}, Lu/b;->b([BII)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p1, v3, v2}, Lv/b;->c([BII)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    :goto_2
    sub-int/2addr p2, v3

    .line 62
    aget-byte p1, p1, p2

    .line 63
    .line 64
    aput-byte p1, v5, v0

    .line 65
    .line 66
    iget p1, p0, Lt/c;->c:I

    .line 67
    .line 68
    if-ne p1, v3, :cond_6

    .line 69
    .line 70
    iget p1, v4, Lu/b;->b:I

    .line 71
    .line 72
    const/16 p2, 0x64

    .line 73
    .line 74
    if-le p1, p2, :cond_5

    .line 75
    .line 76
    move v0, v3

    .line 77
    :cond_5
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p0}, Lt/c;->b()F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const p2, 0x3f733333    # 0.95f

    .line 84
    .line 85
    .line 86
    cmpl-float p1, p1, p2

    .line 87
    .line 88
    if-lez p1, :cond_6

    .line 89
    .line 90
    iput v2, p0, Lt/c;->c:I

    .line 91
    .line 92
    :cond_6
    iget p1, p0, Lt/c;->c:I

    .line 93
    .line 94
    return p1
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/c;->b:Lx/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lx/b;->b:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lt/c;->c:I

    .line 8
    .line 9
    iget-object v0, p0, Lt/c;->d:Lu/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lu/b;->c()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lt/c;->e:Lv/c;

    .line 15
    .line 16
    invoke-virtual {v0}, Lv/b;->d()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lt/c;->f:[B

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
