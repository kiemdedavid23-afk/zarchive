.class public final Lw0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lw0/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 7

    .line 1
    iget-byte v0, p0, Lw0/a$a;->e:B

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Lw0/a$a;->e:B

    .line 9
    .line 10
    sget-object v1, Lw0/a;->a:[Ljava/lang/String;

    .line 11
    .line 12
    move v2, v0

    .line 13
    :goto_0
    const/16 v3, 0xa

    .line 14
    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget-object v3, v1, v2

    .line 18
    .line 19
    iget-object v4, p0, Lw0/a$a;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-byte v0, p0, Lw0/a$a;->e:B

    .line 29
    .line 30
    return v0

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    sget-object v1, Lw0/a;->b:[Ljava/lang/String;

    .line 35
    .line 36
    move v2, v0

    .line 37
    :goto_1
    const/4 v3, 0x2

    .line 38
    if-ge v2, v3, :cond_4

    .line 39
    .line 40
    aget-object v4, v1, v2

    .line 41
    .line 42
    iget-object v5, p0, Lw0/a$a;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    iput-byte v3, p0, Lw0/a$a;->e:B

    .line 51
    .line 52
    return v3

    .line 53
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    sget-object v1, Lw0/a;->c:[Ljava/lang/String;

    .line 57
    .line 58
    move v2, v0

    .line 59
    :goto_2
    const/4 v4, 0x4

    .line 60
    if-ge v2, v4, :cond_6

    .line 61
    .line 62
    aget-object v4, v1, v2

    .line 63
    .line 64
    iget-object v5, p0, Lw0/a$a;->c:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    const/4 v0, 0x3

    .line 73
    iput-byte v0, p0, Lw0/a$a;->e:B

    .line 74
    .line 75
    return v0

    .line 76
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    sget-object v1, Lw0/a;->d:[Ljava/lang/String;

    .line 80
    .line 81
    move v2, v0

    .line 82
    :goto_3
    if-ge v2, v4, :cond_8

    .line 83
    .line 84
    aget-object v5, v1, v2

    .line 85
    .line 86
    iget-object v6, p0, Lw0/a$a;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    iput-byte v4, p0, Lw0/a$a;->e:B

    .line 95
    .line 96
    return v4

    .line 97
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_8
    sget-object v1, Lw0/a;->e:[Ljava/lang/String;

    .line 101
    .line 102
    :goto_4
    if-ge v0, v3, :cond_a

    .line 103
    .line 104
    aget-object v2, v1, v0

    .line 105
    .line 106
    iget-object v4, p0, Lw0/a$a;->c:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_9

    .line 113
    .line 114
    const/4 v0, 0x5

    .line 115
    iput-byte v0, p0, Lw0/a$a;->e:B

    .line 116
    .line 117
    return v0

    .line 118
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_a
    iget-byte v0, p0, Lw0/a$a;->e:B

    .line 122
    .line 123
    return v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lw0/a$a;

    .line 2
    .line 3
    iget-object v0, p0, Lw0/a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p1, p1, Lw0/a$a;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-ne v0, p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-le v0, p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, -0x1

    .line 24
    :goto_0
    return p1
.end method
