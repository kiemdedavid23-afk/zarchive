.class public final Lo/b$g;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lo/b$g;->b:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lo/b;->a:I

    int-to-float v0, v0

    return v0
.end method

.method public final b()I
    .locals 3

    iget v0, p0, Lo/b$g;->b:I

    const/4 v1, 0x6

    iget v2, p0, Lo/b;->a:I

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr v0, v2

    return v0

    :cond_0
    return v2
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lo/b$g;->b:I

    .line 7
    .line 8
    div-int/lit8 p2, p2, 0x2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sub-int/2addr p2, v0

    .line 12
    :goto_0
    if-ltz p2, :cond_1

    .line 13
    .line 14
    mul-int/lit8 v1, p2, 0x8

    .line 15
    .line 16
    iget v2, p0, Lo/b;->a:I

    .line 17
    .line 18
    shr-int v1, v2, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ne v2, v0, :cond_0

    .line 31
    .line 32
    const/16 v2, 0x30

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 p2, p2, -0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method
