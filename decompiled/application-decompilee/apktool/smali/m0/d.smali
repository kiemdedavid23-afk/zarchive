.class public final Lm0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/d$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "[|:<*>?\\\\]"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Name contains an invalid character: "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public static b(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static c(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static d(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static f(Ljava/util/zip/ZipFile;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lm0/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lm0/d;->a:Ljava/lang/String;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lw0/c;->i()Lw0/c$a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lw0/c$a;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "/Android/data/ru.zdevs.zarchiver/files"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lm0/d;->a:Ljava/lang/String;

    .line 48
    .line 49
    :goto_0
    sget-object v0, Lm0/d;->a:Ljava/lang/String;

    .line 50
    .line 51
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lm0/d;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 4
    .line 5
    .line 6
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move v2, v0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    :cond_0
    move v2, v1

    .line 12
    :goto_0
    if-nez v2, :cond_3

    .line 13
    .line 14
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v4, 0x21

    .line 17
    .line 18
    if-le v3, v4, :cond_3

    .line 19
    .line 20
    sget-boolean v2, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    invoke-static {p0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cIsExist(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v0, v1

    .line 39
    :goto_1
    move v1, v0

    .line 40
    :goto_2
    move v2, v1

    .line 41
    :cond_3
    return v2
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-static {p0, v0}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lm0/d;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const-string v0, "/Android/data/ru.zdevs.zarchiver/files/"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public static l(Ljava/io/InputStream;Lru/zdevs/zarchiver/ui/editor/b;Ljava/lang/String;Lu0/d;)Lm0/d$a;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const/16 v1, 0x1000

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    new-instance p2, Ljava/io/BufferedInputStream;

    .line 13
    .line 14
    invoke-direct {p2, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 15
    .line 16
    .line 17
    move-object p0, p2

    .line 18
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Ls/b;->a(Ljava/io/InputStream;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 26
    .line 27
    .line 28
    const-string v1, "US-ASCII"

    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    move-object p2, v0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    const-string p2, "UTF-8"

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const-string v2, "UTF-"

    .line 44
    .line 45
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v3, 0x10

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 60
    .line 61
    invoke-direct {v2, p0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 62
    .line 63
    .line 64
    move-object p0, v2

    .line 65
    :cond_3
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x4

    .line 69
    new-array v3, v2, [B

    .line 70
    .line 71
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-ne v4, v2, :cond_6

    .line 76
    .line 77
    invoke-static {v3}, Ls/b;->b([B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/16 v5, 0x38

    .line 88
    .line 89
    if-ne v4, v5, :cond_4

    .line 90
    .line 91
    const/4 v2, 0x3

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/16 v5, 0x31

    .line 94
    .line 95
    if-ne v4, v5, :cond_5

    .line 96
    .line 97
    const/4 v2, 0x2

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const/16 v5, 0x33

    .line 100
    .line 101
    if-ne v4, v5, :cond_6

    .line 102
    .line 103
    :goto_0
    new-array v4, v2, [B

    .line 104
    .line 105
    invoke-static {v3, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    move-object v4, v0

    .line 110
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 111
    .line 112
    .line 113
    if-eqz v4, :cond_8

    .line 114
    .line 115
    array-length v2, v4

    .line 116
    int-to-long v2, v2

    .line 117
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    :goto_2
    move-object v4, v0

    .line 122
    :cond_8
    :goto_3
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 133
    .line 134
    .line 135
    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 138
    .line 139
    .line 140
    new-instance v3, Lm0/g;

    .line 141
    .line 142
    new-instance v5, Ljava/io/InputStreamReader;

    .line 143
    .line 144
    invoke-direct {v5, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    .line 145
    .line 146
    .line 147
    invoke-direct {v3, v5}, Lm0/g;-><init>(Ljava/io/InputStreamReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    .line 149
    .line 150
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    :goto_4
    invoke-virtual {v3, p0}, Lm0/g;->c(Ljava/lang/StringBuilder;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_a

    .line 160
    .line 161
    if-eqz p3, :cond_9

    .line 162
    .line 163
    invoke-interface {p3}, Lu0/d;->isCancelled()Z

    .line 164
    .line 165
    .line 166
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v2, :cond_9

    .line 168
    .line 169
    invoke-static {v3}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_9
    :try_start_2
    invoke-virtual {p1, p0}, Lru/zdevs/zarchiver/ui/editor/b;->o(Ljava/lang/StringBuilder;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_a
    iget p0, p1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 181
    .line 182
    if-nez p0, :cond_b

    .line 183
    .line 184
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/b;->clear()V

    .line 185
    .line 186
    .line 187
    :cond_b
    new-instance p0, Lm0/d$a;

    .line 188
    .line 189
    iget-boolean p1, v3, Lm0/g;->f:Z

    .line 190
    .line 191
    invoke-direct {p0, v4, p2, p1}, Lm0/d$a;-><init>([BLjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    .line 193
    .line 194
    invoke-static {v3}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 195
    .line 196
    .line 197
    return-object p0

    .line 198
    :catchall_0
    move-exception p0

    .line 199
    move-object v0, v3

    .line 200
    goto :goto_5

    .line 201
    :catchall_1
    move-exception p0

    .line 202
    :goto_5
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 203
    .line 204
    .line 205
    throw p0
.end method

.method public static m(Ljava/io/DataInputStream;Z)Ljava/lang/String;
    .locals 6

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :cond_0
    :goto_0
    const/4 v3, -0x1

    .line 8
    if-nez p1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-lez v4, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move v4, v3

    .line 18
    goto :goto_2

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    :goto_2
    const-string v5, "UTF-8"

    .line 24
    .line 25
    if-eq v4, v3, :cond_4

    .line 26
    .line 27
    const/16 v3, 0xa

    .line 28
    .line 29
    if-eq v4, v3, :cond_3

    .line 30
    .line 31
    const/16 v3, 0xd

    .line 32
    .line 33
    if-eq v4, v3, :cond_0

    .line 34
    .line 35
    add-int/lit8 v3, v2, 0x1

    .line 36
    .line 37
    int-to-byte v4, v4

    .line 38
    aput-byte v4, v0, v2

    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-direct {p0, v0, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_4
    if-nez v2, :cond_5

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_5
    new-instance p0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-direct {p0, v0, v1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object p0
.end method

.method public static n(Ljava/io/OutputStream;Ljava/lang/CharSequence;Lm0/d$a;J)V
    .locals 10

    .line 1
    iget-object v0, p2, Lm0/d$a;->a:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    instance-of v1, p1, Landroid/text/GetChars;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x2000

    .line 17
    .line 18
    new-array v2, v2, [C

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_0
    const/4 v3, 0x0

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    move v6, v3

    .line 26
    :goto_1
    if-ge v6, v0, :cond_4

    .line 27
    .line 28
    add-int/lit16 v7, v6, 0x2000

    .line 29
    .line 30
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move-object v8, p1

    .line 37
    check-cast v8, Landroid/text/GetChars;

    .line 38
    .line 39
    invoke-interface {v8, v6, v7, v2, v3}, Landroid/text/GetChars;->getChars(II[CI)V

    .line 40
    .line 41
    .line 42
    new-instance v8, Ljava/lang/String;

    .line 43
    .line 44
    sub-int v6, v7, v6

    .line 45
    .line 46
    invoke-direct {v8, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-interface {p1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    :goto_2
    iget-boolean v6, p2, Lm0/d$a;->c:Z

    .line 59
    .line 60
    if-eqz v6, :cond_3

    .line 61
    .line 62
    const-string v6, "\n"

    .line 63
    .line 64
    const-string v9, "\r\n"

    .line 65
    .line 66
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    :cond_3
    iget-object v6, p2, Lm0/d$a;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v8, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    .line 77
    .line 78
    .line 79
    array-length v6, v6

    .line 80
    int-to-long v8, v6

    .line 81
    add-long/2addr v4, v8

    .line 82
    move v6, v7

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 85
    .line 86
    .line 87
    cmp-long p1, p3, v4

    .line 88
    .line 89
    if-lez p1, :cond_5

    .line 90
    .line 91
    instance-of p1, p0, Ljava/io/FileOutputStream;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    check-cast p0, Ljava/io/FileOutputStream;

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0, v4, v5}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :catch_0
    :cond_5
    return-void
.end method
