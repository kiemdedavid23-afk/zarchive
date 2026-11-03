.class public final Lv/c;
.super Lv/g;
.source "SourceFile"


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv/c;->f:I

    invoke-direct {p0}, Lv/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final b([BI)I
    .locals 4

    .line 1
    iget v0, p0, Lv/c;->f:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    aget-byte v0, p1, p2

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xff

    .line 11
    .line 12
    const/16 v2, 0xa1

    .line 13
    .line 14
    if-lt v0, v2, :cond_0

    .line 15
    .line 16
    add-int/lit8 p2, p2, 0x1

    .line 17
    .line 18
    aget-byte p1, p1, p2

    .line 19
    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    sub-int/2addr v0, v2

    .line 23
    mul-int/lit8 v0, v0, 0x5e

    .line 24
    .line 25
    add-int/2addr v0, p1

    .line 26
    add-int/lit16 v1, v0, -0xa1

    .line 27
    .line 28
    :cond_0
    return v1

    .line 29
    :goto_0
    aget-byte v0, p1, p2

    .line 30
    .line 31
    and-int/lit16 v0, v0, 0xff

    .line 32
    .line 33
    const/16 v2, 0x81

    .line 34
    .line 35
    if-lt v0, v2, :cond_1

    .line 36
    .line 37
    const/16 v3, 0x9f

    .line 38
    .line 39
    if-gt v0, v3, :cond_1

    .line 40
    .line 41
    sub-int/2addr v0, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/16 v2, 0xe0

    .line 44
    .line 45
    if-lt v0, v2, :cond_3

    .line 46
    .line 47
    const/16 v3, 0xef

    .line 48
    .line 49
    if-gt v0, v3, :cond_3

    .line 50
    .line 51
    sub-int/2addr v0, v2

    .line 52
    add-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    :goto_1
    mul-int/lit16 v0, v0, 0xbc

    .line 55
    .line 56
    add-int/lit8 p2, p2, 0x1

    .line 57
    .line 58
    aget-byte p1, p1, p2

    .line 59
    .line 60
    and-int/lit16 p1, p1, 0xff

    .line 61
    .line 62
    add-int/lit8 p2, p1, -0x40

    .line 63
    .line 64
    add-int/2addr p2, v0

    .line 65
    const/16 v0, 0x80

    .line 66
    .line 67
    if-lt p1, v0, :cond_2

    .line 68
    .line 69
    add-int/lit8 p2, p2, -0x1

    .line 70
    .line 71
    :cond_2
    move v1, p2

    .line 72
    :cond_3
    return v1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
