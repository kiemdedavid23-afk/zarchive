.class public abstract Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:[I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv/b;->d()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 4

    .line 1
    iget v0, p0, Lv/b;->b:I

    .line 2
    .line 3
    if-lez v0, :cond_2

    .line 4
    .line 5
    iget v1, p0, Lv/b;->a:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    if-gt v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const v2, 0x3f7d70a4    # 0.99f

    .line 12
    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    int-to-float v3, v1

    .line 17
    sub-int/2addr v0, v1

    .line 18
    int-to-float v0, v0

    .line 19
    iget v1, p0, Lv/b;->d:F

    .line 20
    .line 21
    mul-float/2addr v0, v1

    .line 22
    div-float/2addr v3, v0

    .line 23
    cmpg-float v0, v3, v2

    .line 24
    .line 25
    if-gez v0, :cond_1

    .line 26
    .line 27
    return v3

    .line 28
    :cond_1
    return v2

    .line 29
    :cond_2
    :goto_0
    const v0, 0x3c23d70a    # 0.01f

    .line 30
    .line 31
    .line 32
    return v0
.end method

.method public abstract b([BI)I
.end method

.method public final c([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lv/b;->b([BI)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, -0x1

    .line 10
    :goto_0
    if-ltz p1, :cond_1

    .line 11
    .line 12
    iget p2, p0, Lv/b;->b:I

    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    iput p2, p0, Lv/b;->b:I

    .line 17
    .line 18
    iget-object p2, p0, Lv/b;->c:[I

    .line 19
    .line 20
    array-length p3, p2

    .line 21
    if-ge p1, p3, :cond_1

    .line 22
    .line 23
    const/16 p3, 0x200

    .line 24
    .line 25
    aget p1, p2, p1

    .line 26
    .line 27
    if-le p3, p1, :cond_1

    .line 28
    .line 29
    iget p1, p0, Lv/b;->a:I

    .line 30
    .line 31
    add-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    iput p1, p0, Lv/b;->a:I

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv/b;->b:I

    .line 3
    .line 4
    iput v0, p0, Lv/b;->a:I

    .line 5
    .line 6
    return-void
.end method
