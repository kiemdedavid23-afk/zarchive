.class public final Lw0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:B

.field public e:Ljava/lang/Object;

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;BLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lw0/c$a;->a:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lw0/c$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lw0/c$a;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-byte p2, p0, Lw0/c$a;->d:B

    .line 12
    .line 13
    iput-object v0, p0, Lw0/c$a;->e:Ljava/lang/Object;

    .line 14
    .line 15
    const/16 p1, 0x1000

    .line 16
    .line 17
    iput p1, p0, Lw0/c$a;->f:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw0/c$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "primary"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw0/c$a;->c:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lw0/c$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-gt v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Lb/d;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 30
    return-object p1
.end method

.method public final c(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw0/c$a;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, ":"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "%3A"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :goto_0
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const/4 p2, 0x4

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p2, 0x0

    .line 49
    :goto_1
    const-string v0, ""

    .line 50
    .line 51
    invoke-static {p1, v0, p2}, Lru/zdevs/zarchiver/io/SAF;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lw0/c$a;->f:I

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-static {p1, v0}, Lb/d;->K(II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, v0}, Lw0/c$a;->c(Ljava/lang/String;Z)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    sget-object v2, Lw0/c;->b:Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    sget-object v3, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :cond_3
    return v1
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lw0/c$a;->f:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/d;->K(II)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 8

    .line 1
    iget v0, p0, Lw0/c$a;->f:I

    .line 2
    .line 3
    const/16 v1, 0x4000

    .line 4
    .line 5
    invoke-static {v0, v1}, Lb/d;->K(II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    iget v0, p0, Lw0/c$a;->f:I

    .line 14
    .line 15
    const/16 v3, 0x2000

    .line 16
    .line 17
    invoke-static {v0, v3}, Lb/d;->K(II)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return v4

    .line 25
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v5, 0x1e

    .line 28
    .line 29
    const/16 v6, 0x8

    .line 30
    .line 31
    if-ge v0, v5, :cond_5

    .line 32
    .line 33
    invoke-virtual {p0}, Lw0/c$a;->e()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_7

    .line 38
    .line 39
    iget v0, p0, Lw0/c$a;->f:I

    .line 40
    .line 41
    invoke-static {v0, v6}, Lb/d;->K(II)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    sget-object v0, Lw0/c;->a:Ljava/util/ArrayList;

    .line 49
    .line 50
    new-instance v0, Ljava/io/File;

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v6, p0, Lw0/c$a;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v7, "/Android"

    .line 63
    .line 64
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_3

    .line 79
    .line 80
    new-instance v0, Ljava/io/File;

    .line 81
    .line 82
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    new-instance v5, Ljava/io/File;

    .line 86
    .line 87
    const-string v6, ".rw"

    .line 88
    .line 89
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_4

    .line 97
    .line 98
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 99
    .line 100
    .line 101
    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move v2, v4

    .line 104
    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    move v2, v0

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    iget v0, p0, Lw0/c$a;->f:I

    .line 119
    .line 120
    const/4 v5, 0x4

    .line 121
    invoke-static {v0, v5}, Lb/d;->K(II)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_7

    .line 126
    .line 127
    iget v0, p0, Lw0/c$a;->f:I

    .line 128
    .line 129
    invoke-static {v0, v6}, Lb/d;->K(II)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_6

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    move v2, v4

    .line 137
    :cond_7
    :goto_1
    iget v0, p0, Lw0/c$a;->f:I

    .line 138
    .line 139
    if-eqz v2, :cond_8

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_8
    move v1, v3

    .line 143
    :goto_2
    or-int/2addr v0, v1

    .line 144
    iput v0, p0, Lw0/c$a;->f:I

    .line 145
    .line 146
    return v2
.end method
