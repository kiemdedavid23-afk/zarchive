.class public final Lb0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lg0/h;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Lg0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb0/e;->a:I

    .line 5
    .line 6
    iput-object p3, p0, Lb0/e;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lb0/e;->c:Lg0/h;

    .line 9
    .line 10
    const-string p1, ""

    .line 11
    .line 12
    iput-object p1, p0, Lb0/e;->d:Ljava/lang/String;

    .line 13
    .line 14
    int-to-byte p1, p2

    .line 15
    iput p1, p0, Lb0/e;->e:I

    .line 16
    .line 17
    return-void
.end method

.method public static a(ILjava/lang/String;)Lb0/e;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    const/16 v0, 0x29

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x5d

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ltz v0, :cond_2

    .line 23
    .line 24
    if-gez v1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    add-int/2addr v1, v2

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Lb0/e;

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    new-instance v3, Lg0/h;

    .line 50
    .line 51
    invoke-direct {v3, p1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v1, v2, p0, v0, v3}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_2
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final b(I)Z
    .locals 1

    iget v0, p0, Lb0/e;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lb0/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb0/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb0/e;->c:Lg0/h;

    invoke-virtual {v1}, Lg0/h;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
