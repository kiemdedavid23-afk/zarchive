.class public final Lu0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "/storage/emulated/"

    .line 2
    .line 3
    const-string v1, "/sdcard/"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lu0/f;->a:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "_data"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/4 v7, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v2, p0

    .line 18
    move-object v4, p1

    .line 19
    move-object v5, p2

    .line 20
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    move-object v7, p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    if-eqz p0, :cond_1

    .line 48
    .line 49
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-object v7

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    move-object p1, p0

    .line 55
    :goto_0
    if-eqz v7, :cond_2

    .line 56
    .line 57
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 58
    .line 59
    .line 60
    :cond_2
    throw p1

    .line 61
    :catch_0
    move-object p0, v7

    .line 62
    :catch_1
    if-eqz p0, :cond_3

    .line 63
    .line 64
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-object v7
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v2, p1

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :cond_1
    return-object v0

    .line 30
    :cond_2
    :try_start_1
    const-string p1, "_display_name"

    .line 31
    .line 32
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    :catch_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "/proc/self/fd/"

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    :try_start_0
    const-string v2, "r"

    .line 9
    .line 10
    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 17
    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {p0}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    move-object v1, p0

    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    move-object p1, p0

    .line 49
    :goto_0
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :catch_0
    move-object p0, v1

    .line 54
    :catch_1
    invoke-static {p0}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 55
    .line 56
    .line 57
    return-object v1
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_7

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v1, "com.android.externalstorage.documents"

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const-string v1, ":"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    aget-object p1, p0, v2

    .line 33
    .line 34
    const-string v1, "primary"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const-string v2, "/"

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    aget-object p0, p0, v3

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_0
    const-string v1, "home"

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    aget-object p0, p0, v3

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_1
    invoke-static {p1}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_9

    .line 109
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p1, Lw0/c$a;->b:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    aget-object p0, p0, v3

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_2
    const-string p0, "com.android.providers.downloads.documents"

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_3

    .line 144
    .line 145
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const-string p1, "content://downloads/public_downloads"

    .line 150
    .line 151
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v1

    .line 159
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0, v0, v0}, Lu0/f;->b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :cond_3
    const-string p0, "com.android.providers.media.documents"

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_9

    .line 179
    .line 180
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    aget-object p1, p0, v2

    .line 189
    .line 190
    const-string v1, "image"

    .line 191
    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_4

    .line 197
    .line 198
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_4
    const-string v1, "video"

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_5

    .line 208
    .line 209
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_5
    const-string v1, "audio"

    .line 213
    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_6

    .line 219
    .line 220
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 221
    .line 222
    :cond_6
    :goto_0
    new-array p1, v3, [Ljava/lang/String;

    .line 223
    .line 224
    aget-object p0, p0, v3

    .line 225
    .line 226
    aput-object p0, p1, v2

    .line 227
    .line 228
    const-string p0, "_id=?"

    .line 229
    .line 230
    invoke-static {v0, p0, p1}, Lu0/f;->b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    return-object p0

    .line 235
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const-string v1, "content"

    .line 240
    .line 241
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-eqz p0, :cond_9

    .line 246
    .line 247
    const-string p0, "com.google.android.apps.photos.content"

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result p0

    .line 257
    if-eqz p0, :cond_8

    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    return-object p0

    .line 264
    :cond_8
    invoke-static {p1, v0, v0}, Lu0/f;->b(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    return-object p0

    .line 269
    :cond_9
    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string v1, "file"

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string v1, "content"

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    :try_start_0
    invoke-static {p0, p1}, Lu0/f;->e(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-object v1, v0

    .line 50
    :goto_0
    invoke-static {v1}, Lu0/f;->a(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_3
    invoke-static {p0, p1}, Lu0/f;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lu0/f;->a(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    return-object p0

    .line 68
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    const-string v1, "file://"

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    add-int/lit8 v1, v1, 0x7

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lu0/f;->a(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    return-object p0

    .line 103
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string p1, "%3A"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-lez p1, :cond_7

    .line 114
    .line 115
    add-int/lit8 p1, p1, 0x3

    .line 116
    .line 117
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {}, Lw0/c;->k()Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_7

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Lw0/c$a;

    .line 144
    .line 145
    new-instance v3, Ljava/io/File;

    .line 146
    .line 147
    iget-object v2, v2, Lw0/c$a;->b:Ljava/lang/String;

    .line 148
    .line 149
    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :cond_7
    sget-object p1, Lu0/f;->a:[Ljava/lang/String;

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    :goto_1
    const/4 v2, 0x2

    .line 167
    if-ge v1, v2, :cond_b

    .line 168
    .line 169
    aget-object v2, p1, v1

    .line 170
    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-gez v2, :cond_8

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    const-string v3, "?"

    .line 179
    .line 180
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-gez v3, :cond_9

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    :cond_9
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-static {v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-static {v2}, Lu0/f;->a(Ljava/lang/String;)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_a

    .line 203
    .line 204
    return-object v2

    .line 205
    :cond_a
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_b
    return-object v0
.end method
