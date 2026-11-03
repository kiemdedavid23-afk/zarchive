.class public final Lf0/o$j;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/o$j;->e:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lf0/o$j;->e:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_3

    .line 18
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    const-string v0, "MD5"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v5, 0x1000

    .line 30
    .line 31
    new-array v5, v5, [B

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-lez v6, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lv0/c;->isCancelled()Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-nez v7, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v5, v3, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v5, Ljava/math/BigInteger;

    .line 60
    .line 61
    invoke-direct {v5, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const/16 v6, 0x10

    .line 70
    .line 71
    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    const/16 v6, 0x20

    .line 83
    .line 84
    if-ge v5, v6, :cond_3

    .line 85
    .line 86
    const-string v5, "0"

    .line 87
    .line 88
    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    move-object v4, v1

    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    :goto_1
    invoke-static {v4}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :catch_0
    move-object v1, v4

    .line 106
    :catch_1
    :goto_2
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    new-array v0, v2, [I

    .line 110
    .line 111
    const v1, 0x7f0700cc

    .line 112
    .line 113
    .line 114
    aput v1, v0, v3

    .line 115
    .line 116
    new-array v1, v2, [Ljava/lang/String;

    .line 117
    .line 118
    if-nez v4, :cond_4

    .line 119
    .line 120
    const-string v4, ""

    .line 121
    .line 122
    :cond_4
    aput-object v4, v1, v3

    .line 123
    .line 124
    new-instance v2, Lf0/o$c;

    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    invoke-direct {v2, v3, v1, v0}, Lf0/o$c;-><init>(I[Ljava/lang/String;[I)V

    .line 128
    .line 129
    .line 130
    return-object v2
.end method
