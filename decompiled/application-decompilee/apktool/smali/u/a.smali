.class public final Lu/a;
.super Lu/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BI)I
    .locals 2

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0xff

    .line 4
    .line 5
    const/16 v1, 0xa4

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    aget-byte p1, p1, p2

    .line 12
    .line 13
    and-int/lit16 p1, p1, 0xff

    .line 14
    .line 15
    const/16 p2, 0xa1

    .line 16
    .line 17
    if-lt p1, p2, :cond_0

    .line 18
    .line 19
    const/16 v0, 0xf3

    .line 20
    .line 21
    if-gt p1, v0, :cond_0

    .line 22
    .line 23
    sub-int/2addr p1, p2

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, -0x1

    .line 26
    return p1
.end method
