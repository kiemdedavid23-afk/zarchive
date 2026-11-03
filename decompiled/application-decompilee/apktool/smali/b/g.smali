.class public final Lb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F

.field public e:I

.field public f:[Lb/b;

.field public g:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lb/g;->a:I

    .line 6
    .line 7
    iput v0, p0, Lb/g;->b:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lb/g;->c:I

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    new-array v1, v1, [Lb/b;

    .line 15
    .line 16
    iput-object v1, p0, Lb/g;->f:[Lb/b;

    .line 17
    .line 18
    iput v0, p0, Lb/g;->g:I

    .line 19
    .line 20
    iput p1, p0, Lb/g;->e:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lb/b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lb/g;->g:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_2

    .line 6
    .line 7
    iget-object v2, p0, Lb/g;->f:[Lb/b;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-ne v2, p1, :cond_1

    .line 12
    .line 13
    :goto_1
    iget p1, p0, Lb/g;->g:I

    .line 14
    .line 15
    sub-int v2, p1, v1

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lb/g;->f:[Lb/b;

    .line 22
    .line 23
    add-int v2, v1, v0

    .line 24
    .line 25
    add-int/lit8 v3, v2, 0x1

    .line 26
    .line 27
    aget-object v3, p1, v3

    .line 28
    .line 29
    aput-object v3, p1, v2

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 35
    .line 36
    iput p1, p0, Lb/g;->g:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lb/g;->e:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/g;->c:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lb/g;->a:I

    .line 9
    .line 10
    iput v1, p0, Lb/g;->b:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lb/g;->d:F

    .line 14
    .line 15
    iput v0, p0, Lb/g;->g:I

    .line 16
    .line 17
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
