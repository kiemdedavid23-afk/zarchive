.class public final Lp0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/f$a;,
        Lp0/f$d;,
        Lp0/f$b;,
        Lp0/f$c;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lp0/f;->a:[Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "(?i)^/storage/([^/]+)"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lp0/f;->b:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lu0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    if-eqz p1, :cond_2

    .line 12
    .line 13
    new-instance p1, Ljava/io/File;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    new-instance p0, Lp0/f$a;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lp0/f$a;-><init>(Ljava/io/File;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Lp0/f$d;

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lp0/f$d;-><init>(Ljava/io/File;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :cond_2
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    aput-object p0, v0, v1

    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    invoke-static {p1, v0, p0, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    :catchall_0
    return-void
.end method

.method public static b(Lg0/h;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1e

    .line 14
    .line 15
    if-lt v0, v2, :cond_1

    .line 16
    .line 17
    sget-object v0, Lm0/h;->a:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_1
    invoke-static {p0}, Lw0/f;->e(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->q(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    xor-int/lit8 p0, p0, 0x1

    .line 37
    .line 38
    return p0
.end method

.method public static c(Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lu0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    :cond_1
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "external"

    .line 26
    .line 27
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "includePending"

    .line 36
    .line 37
    const-string v3, "1"

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "deletedata"

    .line 44
    .line 45
    const-string v3, "false"

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v1, 0x2

    .line 56
    const/4 v2, 0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    :try_start_1
    new-array p2, v2, [Ljava/lang/String;

    .line 62
    .line 63
    sget-object v3, Lp0/f;->a:[Ljava/lang/String;

    .line 64
    .line 65
    const-string v4, "_data >= ? AND _data < ?"

    .line 66
    .line 67
    new-array v5, v1, [Ljava/lang/String;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v6, "/"

    .line 78
    .line 79
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    aput-object v1, v5, v8

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p0, "0"

    .line 97
    .line 98
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    aput-object p0, v5, v2

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v1, v0

    .line 109
    move-object v2, v7

    .line 110
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {p0}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_2

    .line 129
    .line 130
    aput-object p0, p2, v8

    .line 131
    .line 132
    const-string p0, "_data = ?"

    .line 133
    .line 134
    invoke-virtual {v0, v7, p0, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    :try_start_2
    invoke-static {p1}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :goto_1
    invoke-static {p1}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_4
    if-eqz p1, :cond_5

    .line 149
    .line 150
    const-string p1, "_data=? OR _data LIKE ?"

    .line 151
    .line 152
    new-array p2, v1, [Ljava/lang/String;

    .line 153
    .line 154
    aput-object p0, p2, v8

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p0, "/%"

    .line 165
    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    aput-object p0, p2, v2

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_5
    const-string p1, "_data=?"

    .line 177
    .line 178
    new-array p2, v2, [Ljava/lang/String;

    .line 179
    .line 180
    aput-object p0, p2, v8

    .line 181
    .line 182
    :goto_2
    invoke-virtual {v0, v7, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    .line 184
    .line 185
    :catch_0
    :goto_3
    return-void
.end method
