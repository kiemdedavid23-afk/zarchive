.class public final Lo/b$d;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

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
    .locals 1

    iget v0, p0, Lo/b;->a:I

    return v0
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 1
    iget p1, p0, Lo/b;->a:I

    .line 2
    .line 3
    shr-int/lit8 p2, p1, 0x0

    .line 4
    .line 5
    and-int/lit8 p2, p2, 0xf

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "unknown type:0x"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p2, "%p"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string p2, "%"

    .line 35
    .line 36
    :goto_0
    shr-int/lit8 p1, p1, 0x4

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method
