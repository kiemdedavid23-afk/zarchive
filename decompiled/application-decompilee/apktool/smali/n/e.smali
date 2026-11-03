.class public final Ln/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/g;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ln/e;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Ln/e;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Ln/e;->b:Ljava/lang/Long;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ln/d;)V
    .locals 7

    .line 1
    iget-object v0, p1, Ln/d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iget-object p1, p1, Ln/d;->c:Ljava/lang/Comparable;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v1, "uses-sdk"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_3

    .line 19
    .line 20
    const-string v1, "manifest"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "package"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Ln/e;->a:Ljava/lang/String;

    .line 36
    .line 37
    const-string p1, "versionName"

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    const-string p1, "revisionCode"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Le/b;->c(Ljava/lang/String;)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    const-string p1, "split"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Ln/e;->c:Ljava/lang/String;

    .line 54
    .line 55
    const-string p1, "versionCodeMajor"

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Le/b;->c(Ljava/lang/String;)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "versionCode"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Le/b;->c(Ljava/lang/String;)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Ln/e;->b:Ljava/lang/Long;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    const-wide/16 v1, 0x0

    .line 74
    .line 75
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput-object v1, p0, Ln/e;->b:Ljava/lang/Long;

    .line 80
    .line 81
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v1

    .line 85
    const/16 p1, 0x20

    .line 86
    .line 87
    shl-long/2addr v1, p1

    .line 88
    iget-object p1, p0, Ln/e;->b:Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    const-wide v5, 0xffffffffL

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    and-long/2addr v3, v5

    .line 100
    or-long/2addr v1, v3

    .line 101
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Ln/e;->b:Ljava/lang/Long;

    .line 106
    .line 107
    :cond_2
    const-string p1, "compileSdkVersion"

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    const-string p1, "targetSdkVersion"

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    const-string p1, "maxSdkVersion"

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
