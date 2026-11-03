.class public Lo0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "/system/lib/ru.zdevs.zarchiver/libcoreutils.so"

    .line 2
    .line 3
    const-string v1, "/system/lib/libcoreutils.so"

    .line 4
    .line 5
    const-string v2, "/data/data/ru.zdevs.zarchiver/lib/libcoreutils.so"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lo0/a;->a:[Ljava/lang/String;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput v0, Lo0/a;->b:I

    .line 15
    .line 16
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lo0/a;->b:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->c(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "/libcoreutils.so"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :cond_1
    sget-object v2, Lo0/a;->a:[Ljava/lang/String;

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    aget-object v0, v2, v0

    .line 38
    .line 39
    return-object v0
.end method

.method public static b()Z
    .locals 6

    .line 1
    sget v0, Lo0/a;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    sput v1, Lo0/a;->b:I

    .line 7
    .line 8
    move v0, v1

    .line 9
    :goto_0
    :try_start_0
    sget-object v2, Lo0/a;->a:[Ljava/lang/String;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-ge v0, v3, :cond_4

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3}, Lru/zdevs/zarchiver/archiver/C2JBridge;->c(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    sget-object v3, Lru/zdevs/zarchiver/archiver/C2JBridge;->d:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, "/libcoreutils.so"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    aget-object v2, v2, v0

    .line 45
    .line 46
    :goto_1
    new-instance v3, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_3

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    add-int/lit8 v0, v0, 0x2

    .line 64
    .line 65
    sput v0, Lo0/a;->b:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    new-instance v3, Ln0/b;

    .line 69
    .line 70
    invoke-direct {v3}, Ln0/b;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v5, "chmod 755 \'"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v5, "\'"

    .line 87
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v3, v4}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ln0/a;->close()V

    .line 99
    .line 100
    .line 101
    new-instance v3, Ljava/io/File;

    .line 102
    .line 103
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/io/File;->canExecute()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    add-int/lit8 v0, v0, 0x2

    .line 113
    .line 114
    sput v0, Lo0/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    :cond_4
    :goto_2
    sget v0, Lo0/a;->b:I

    .line 121
    .line 122
    if-ne v0, v1, :cond_5

    .line 123
    .line 124
    const-string v0, "coreutils"

    .line 125
    .line 126
    const-string v2, "Internal operation don\'t supported!"

    .line 127
    .line 128
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_5
    sget v0, Lo0/a;->b:I

    .line 132
    .line 133
    if-eq v0, v1, :cond_6

    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    const/4 v0, 0x0

    .line 138
    :goto_3
    return v0
.end method
