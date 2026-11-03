.class public final Lp/e;
.super Lp/d;
.source "SourceFile"


# instance fields
.field public e:J

.field public f:J

.field public g:[Lp/i;


# direct methods
.method public constructor <init>(Lp/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp/d;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lp/d;->a:I

    .line 5
    .line 6
    iput v0, p0, Lp/d;->a:I

    .line 7
    .line 8
    iget v0, p1, Lp/d;->b:I

    .line 9
    .line 10
    iput v0, p0, Lp/d;->b:I

    .line 11
    .line 12
    iget-object p1, p1, Lp/d;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lp/d;->c:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lp/e;->g:[Lp/i;

    .line 2
    .line 3
    array-length p2, p1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-lez p2, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    aget-object p1, p1, p2

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ResourceMapEntry{parent="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lp/e;->e:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", count="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lp/e;->f:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", resourceTableMaps="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lp/e;->g:[Lp/i;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x7d

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
