.class public final Lf0/o$f;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf0/o$f;->e:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p2}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "7z"

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    const/4 p2, 0x5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p2, 0x4

    .line 21
    :goto_0
    invoke-static {p1, p2}, Lf0/o;->r(Landroid/app/Dialog;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Ld0/b;->a:Ld0/b$a;

    .line 3
    .line 4
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    const/16 v1, 0xf

    .line 10
    .line 11
    invoke-static {v0, v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetStatus(II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-super {p0}, Lv0/c;->e()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 12

    .line 1
    iget-object v0, p0, Lf0/o$f;->e:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {v0}, Ld0/b;->c(Ljava/lang/String;)Ld0/b$a;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Ld0/b$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-object v2, v1

    .line 10
    :goto_0
    if-nez v2, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    const/4 v3, 0x5

    .line 14
    new-array v4, v3, [Ljava/lang/String;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    iget-object v6, v2, Ld0/b$a;->a:Ljava/lang/String;

    .line 18
    .line 19
    aput-object v6, v4, v5

    .line 20
    .line 21
    iget v5, v2, Ld0/b$a;->d:I

    .line 22
    .line 23
    and-int/lit8 v6, v5, 0x3

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-eqz v6, :cond_2

    .line 27
    .line 28
    and-int/2addr v5, v7

    .line 29
    if-eqz v5, :cond_1

    .line 30
    .line 31
    const-string v5, "+"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v5, "-"

    .line 35
    .line 36
    :goto_1
    aput-object v5, v4, v7

    .line 37
    .line 38
    :cond_2
    iget v5, v2, Ld0/b$a;->b:I

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    if-ltz v5, :cond_3

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v8, ""

    .line 46
    .line 47
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v8, v2, Ld0/b$a;->b:I

    .line 51
    .line 52
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    aput-object v5, v4, v6

    .line 60
    .line 61
    :cond_3
    iget-wide v8, v2, Ld0/b$a;->c:J

    .line 62
    .line 63
    const-wide/16 v10, 0x0

    .line 64
    .line 65
    cmp-long v5, v8, v10

    .line 66
    .line 67
    if-ltz v5, :cond_4

    .line 68
    .line 69
    invoke-static {v8, v9, v6, v1}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v5, 0x3

    .line 74
    aput-object v1, v4, v5

    .line 75
    .line 76
    :try_start_1
    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catch_1
    const-wide/16 v0, -0x1

    .line 84
    .line 85
    :goto_2
    cmp-long v5, v0, v10

    .line 86
    .line 87
    if-lez v5, :cond_4

    .line 88
    .line 89
    iget-wide v5, v2, Ld0/b$a;->c:J

    .line 90
    .line 91
    cmp-long v5, v5, v0

    .line 92
    .line 93
    if-lez v5, :cond_4

    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-wide/16 v8, 0x64

    .line 101
    .line 102
    mul-long/2addr v0, v8

    .line 103
    iget-wide v8, v2, Ld0/b$a;->c:J

    .line 104
    .line 105
    div-long/2addr v0, v8

    .line 106
    long-to-int v0, v0

    .line 107
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "%"

    .line 111
    .line 112
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v1, 0x4

    .line 120
    aput-object v0, v4, v1

    .line 121
    .line 122
    :cond_4
    new-array v0, v3, [I

    .line 123
    .line 124
    fill-array-data v0, :array_0

    .line 125
    .line 126
    .line 127
    new-instance v1, Lf0/o$c;

    .line 128
    .line 129
    invoke-direct {v1, v7, v4, v0}, Lf0/o$c;-><init>(I[Ljava/lang/String;[I)V

    .line 130
    .line 131
    .line 132
    return-object v1

    .line 133
    :array_0
    .array-data 4
        0x7f0c0058
        0x7f0c0057
        0x7f0c0054
        0x7f0c0056
        0x7f0c005e
    .end array-data
.end method
