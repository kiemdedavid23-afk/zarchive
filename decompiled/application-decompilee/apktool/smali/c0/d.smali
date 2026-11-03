.class public Lc0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/text/DateFormat;

.field public static final j:Ljava/text/DateFormat;


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public e:B

.field public f:B

.field public g:Z

.field public h:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sput-object v1, Lc0/d;->i:Ljava/text/DateFormat;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lc0/d;->j:Ljava/text/DateFormat;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc0/d;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lc0/d;->b:Ljava/lang/String;

    .line 4
    iput-byte p2, p0, Lc0/d;->e:B

    const/4 p2, 0x0

    .line 5
    iput-byte p2, p0, Lc0/d;->f:B

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lc0/d;->c:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lc0/d;->d:J

    .line 8
    iput-boolean p2, p0, Lc0/d;->g:Z

    .line 9
    iput-object p1, p0, Lc0/d;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;BBJJ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lc0/d;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lc0/d;->b:Ljava/lang/String;

    .line 13
    iput-byte p2, p0, Lc0/d;->e:B

    .line 14
    iput-byte p3, p0, Lc0/d;->f:B

    .line 15
    iput-wide p4, p0, Lc0/d;->c:J

    .line 16
    iput-wide p6, p0, Lc0/d;->d:J

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lc0/d;->g:Z

    .line 18
    iput-object p1, p0, Lc0/d;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;BBJJ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc0/d;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lc0/d;->b:Ljava/lang/String;

    .line 22
    iput-byte p3, p0, Lc0/d;->e:B

    .line 23
    iput-byte p4, p0, Lc0/d;->f:B

    .line 24
    iput-wide p5, p0, Lc0/d;->c:J

    .line 25
    iput-wide p7, p0, Lc0/d;->d:J

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lc0/d;->g:Z

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lc0/d;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc0/d;->d()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-byte v1, p0, Lc0/d;->f:B

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, -0x2

    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    if-ne v1, v2, :cond_4

    .line 12
    .line 13
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lc0/d;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v4, 0x0

    .line 31
    :try_start_0
    invoke-static {p1}, Lru/zdevs/zarchiver/media/MimeLib;->cGetType(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    int-to-byte p1, p1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move p1, v4

    .line 38
    :goto_0
    if-ne v0, v3, :cond_1

    .line 39
    .line 40
    move v0, p1

    .line 41
    :cond_1
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    const/16 v4, 0x1e

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    const/16 v4, 0x1d

    .line 50
    .line 51
    :goto_1
    iput-byte v0, p0, Lc0/d;->e:B

    .line 52
    .line 53
    iget-byte p1, p0, Lc0/d;->f:B

    .line 54
    .line 55
    if-gtz p1, :cond_4

    .line 56
    .line 57
    iput-byte v4, p0, Lc0/d;->f:B

    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method public final b()J
    .locals 5

    iget-wide v0, p0, Lc0/d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public final c(Z)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lc0/d;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    const-wide/16 v2, -0x2

    .line 11
    .line 12
    iget-wide v4, p0, Lc0/d;->d:J

    .line 13
    .line 14
    cmp-long v0, v4, v2

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p1, "<LINK>"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    iget-object p1, p0, Lc0/d;->h:Ljava/lang/Object;

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move p1, v0

    .line 31
    :cond_3
    :goto_0
    iget-byte v2, p0, Lc0/d;->e:B

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    if-ne v2, v3, :cond_5

    .line 35
    .line 36
    if-eqz p1, :cond_4

    .line 37
    .line 38
    iget-object p1, p0, Lc0/d;->h:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    const-string p1, "<DIR>"

    .line 46
    .line 47
    :goto_1
    return-object p1

    .line 48
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-static {v4, v5, v0, v3}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "  \t\u2022\t"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lc0/d;->h:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method

.method public final d()B
    .locals 4

    .line 1
    iget-byte v0, p0, Lc0/d;->e:B

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lc0/d;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Lb/d;->E(Ljava/lang/String;)B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-byte v0, p0, Lc0/d;->e:B

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Lc0/d;->d:J

    .line 17
    .line 18
    const-wide/16 v2, 0xc8

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-lez v0, :cond_3

    .line 23
    .line 24
    const/4 v0, -0x2

    .line 25
    iput-byte v0, p0, Lc0/d;->e:B

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-byte v2, p0, Lc0/d;->f:B

    .line 29
    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    const/16 v2, 0x17

    .line 33
    .line 34
    if-eq v0, v2, :cond_2

    .line 35
    .line 36
    const/16 v2, 0x19

    .line 37
    .line 38
    if-eq v0, v2, :cond_2

    .line 39
    .line 40
    const/16 v2, 0xf

    .line 41
    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 48
    :goto_1
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iput-byte v1, p0, Lc0/d;->f:B

    .line 51
    .line 52
    :cond_3
    :goto_2
    iget-byte v0, p0, Lc0/d;->e:B

    .line 53
    .line 54
    return v0
.end method

.method public final e(Lg0/h;)I
    .locals 3

    invoke-virtual {p1}, Lg0/h;->hashCode()I

    move-result p1

    iget-object v0, p0, Lc0/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lc0/d;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa06

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lc0/d;->d:J

    long-to-int p1, v1

    :goto_0
    shl-int/lit8 p1, p1, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method public final f()Z
    .locals 2

    iget-byte v0, p0, Lc0/d;->e:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final g()Z
    .locals 2

    iget-byte v0, p0, Lc0/d;->e:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 2

    iget-byte v0, p0, Lc0/d;->e:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
