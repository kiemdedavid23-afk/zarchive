.class public final Lf0/o$g;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public final e:Lg0/h;

.field public final f:[Lg0/h;

.field public final g:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Lg0/h;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    aget-object p1, p1, v0

    .line 11
    .line 12
    iput-object p1, p0, Lf0/o$g;->e:Lg0/h;

    .line 13
    .line 14
    iput-object v2, p0, Lf0/o$g;->f:[Lg0/h;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object v2, p0, Lf0/o$g;->e:Lg0/h;

    .line 18
    .line 19
    iput-object p1, p0, Lf0/o$g;->f:[Lg0/h;

    .line 20
    .line 21
    :goto_0
    iput-object p2, p0, Lf0/o$g;->g:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lf0/o$g;->g:[Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lf0/o$g;->e:Lg0/h;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    invoke-static {v3, v1, p0}, Lg0/e;->f(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    iget-object v3, p0, Lf0/o$g;->f:[Lg0/h;

    .line 15
    .line 16
    if-eqz v3, :cond_4

    .line 17
    .line 18
    if-eqz v1, :cond_4

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    if-eqz v4, :cond_4

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    array-length v5, v1

    .line 25
    if-eq v4, v5, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    array-length v5, v4

    .line 33
    move v6, v2

    .line 34
    :goto_0
    if-ge v6, v5, :cond_4

    .line 35
    .line 36
    aget-object v7, v4, v6

    .line 37
    .line 38
    invoke-interface {v7, v3, v1, p0}, Lg0/b;->g([Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    move-object v1, v7

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    invoke-virtual {p0}, Lv0/c;->isCancelled()Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    :goto_1
    move-object v1, v0

    .line 57
    :goto_2
    const/4 v3, 0x2

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    new-array v4, v3, [Ljava/lang/String;

    .line 61
    .line 62
    iget-wide v5, v1, Lg0/e$b;->c:J

    .line 63
    .line 64
    invoke-static {v5, v6, v3, v0}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    aput-object v0, v4, v2

    .line 69
    .line 70
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 71
    .line 72
    const/4 v5, 0x1

    .line 73
    new-array v6, v5, [Ljava/lang/Object;

    .line 74
    .line 75
    iget v1, v1, Lg0/e$b;->d:I

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    aput-object v1, v6, v2

    .line 82
    .line 83
    const-string v1, "%d"

    .line 84
    .line 85
    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aput-object v0, v4, v5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    const-string v0, "-"

    .line 93
    .line 94
    filled-new-array {v0, v0}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    :goto_3
    new-array v0, v3, [I

    .line 99
    .line 100
    fill-array-data v0, :array_0

    .line 101
    .line 102
    .line 103
    new-instance v1, Lf0/o$c;

    .line 104
    .line 105
    invoke-direct {v1, v3, v4, v0}, Lf0/o$c;-><init>(I[Ljava/lang/String;[I)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :array_0
    .array-data 4
        0x7f0700ce
        0x7f0700ca
    .end array-data
.end method
