.class public final Lg1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/String;

.field public final c:[B

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lg1/b;->d:I

    .line 8
    .line 9
    new-array v0, p1, [I

    .line 10
    .line 11
    iput-object v0, p0, Lg1/b;->a:[I

    .line 12
    .line 13
    new-array v0, p1, [Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lg1/b;->b:[Ljava/lang/String;

    .line 16
    .line 17
    new-array p1, p1, [B

    .line 18
    .line 19
    iput-object p1, p0, Lg1/b;->c:[B

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "Capacity: "

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)B
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget v3, p0, Lg1/b;->d:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_4

    .line 10
    .line 11
    iget-object v3, p0, Lg1/b;->a:[I

    .line 12
    .line 13
    aget v3, v3, v2

    .line 14
    .line 15
    if-ne v3, v0, :cond_3

    .line 16
    .line 17
    iget-object v3, p0, Lg1/b;->b:[Ljava/lang/String;

    .line 18
    .line 19
    aget-object v3, v3, v2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ne v4, v5, :cond_2

    .line 30
    .line 31
    move v5, v1

    .line 32
    :goto_1
    add-int/lit8 v6, v4, -0x1

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eq v4, v7, :cond_0

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    move v4, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v3, 0x1

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    :goto_2
    move v3, v1

    .line 54
    :goto_3
    if-eqz v3, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lg1/b;->c:[B

    .line 57
    .line 58
    aget-byte p1, p1, v2

    .line 59
    .line 60
    return p1

    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return v1
.end method

.method public final b(Ljava/lang/String;B)V
    .locals 3

    .line 1
    iget v0, p0, Lg1/b;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lg1/b;->a:[I

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    aput v2, v1, v0

    .line 13
    .line 14
    iget v0, p0, Lg1/b;->d:I

    .line 15
    .line 16
    iget-object v1, p0, Lg1/b;->b:[Ljava/lang/String;

    .line 17
    .line 18
    aput-object p1, v1, v0

    .line 19
    .line 20
    iget-object p1, p0, Lg1/b;->c:[B

    .line 21
    .line 22
    aput-byte p2, p1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lg1/b;->d:I

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "Capacity: "

    .line 34
    .line 35
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    array-length v0, v1

    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method
