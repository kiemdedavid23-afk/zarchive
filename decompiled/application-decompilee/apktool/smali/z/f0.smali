.class public final Lz/f0;
.super Lv0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c00a2

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 14

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-object v2

    .line 18
    :cond_0
    new-instance v1, Lz/f0$a;

    .line 19
    .line 20
    invoke-direct {v1}, Lz/f0$a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    const-wide/32 v5, 0xa4cb80

    .line 35
    .line 36
    .line 37
    sub-long/2addr v3, v5

    .line 38
    array-length v1, v0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v6, v2

    .line 41
    :goto_0
    if-ge v5, v1, :cond_b

    .line 42
    .line 43
    aget-object v7, v0, v5

    .line 44
    .line 45
    invoke-virtual {p0}, Lv0/c;->isCancelled()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    new-instance v8, Ljava/io/File;

    .line 53
    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v10, ".hash"

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-nez v9, :cond_3

    .line 83
    .line 84
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    cmp-long v8, v8, v3

    .line 89
    .line 90
    if-gez v8, :cond_a

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 96
    .line 97
    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :cond_3
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    .line 101
    .line 102
    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 103
    .line 104
    .line 105
    new-instance v10, Ljava/io/LineNumberReader;

    .line 106
    .line 107
    invoke-direct {v10, v9}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :try_start_1
    invoke-virtual {v10}, Ljava/io/Reader;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-object v11, v2

    .line 122
    :catch_1
    :goto_1
    if-nez v11, :cond_4

    .line 123
    .line 124
    goto/16 :goto_5

    .line 125
    .line 126
    :cond_4
    const-string v9, "S:"

    .line 127
    .line 128
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_5

    .line 133
    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 140
    .line 141
    .line 142
    move-result-wide v12

    .line 143
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    goto :goto_4

    .line 151
    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v9

    .line 155
    :try_start_2
    new-instance v10, Ljava/util/zip/CheckedInputStream;

    .line 156
    .line 157
    new-instance v12, Ljava/io/FileInputStream;

    .line 158
    .line 159
    invoke-direct {v12, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v9, Ljava/util/zip/CRC32;

    .line 163
    .line 164
    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-direct {v10, v12, v9}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 168
    .line 169
    .line 170
    const/16 v9, 0x80

    .line 171
    .line 172
    :try_start_3
    new-array v9, v9, [B

    .line 173
    .line 174
    :cond_6
    invoke-virtual {v10, v9}, Ljava/io/InputStream;->read([B)I

    .line 175
    .line 176
    .line 177
    move-result v12

    .line 178
    if-ltz v12, :cond_7

    .line 179
    .line 180
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    if-eqz v12, :cond_6

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_7
    invoke-virtual {v10}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-interface {v9}, Ljava/util/zip/Checksum;->getValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v12

    .line 195
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catchall_0
    move-exception v0

    .line 204
    move-object v2, v10

    .line 205
    goto :goto_2

    .line 206
    :catchall_1
    move-exception v0

    .line 207
    :goto_2
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 208
    .line 209
    .line 210
    throw v0

    .line 211
    :catch_2
    move-object v10, v2

    .line 212
    :catch_3
    :goto_3
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 213
    .line 214
    .line 215
    move-object v9, v2

    .line 216
    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-nez v10, :cond_9

    .line 221
    .line 222
    if-eqz v9, :cond_9

    .line 223
    .line 224
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-nez v9, :cond_9

    .line 229
    .line 230
    if-nez v6, :cond_8

    .line 231
    .line 232
    new-instance v6, Ljava/util/ArrayList;

    .line 233
    .line 234
    const/4 v8, 0x1

    .line 235
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .line 237
    .line 238
    :cond_8
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    .line 243
    .line 244
    .line 245
    move-result-wide v9

    .line 246
    cmp-long v9, v9, v3

    .line 247
    .line 248
    if-gez v9, :cond_a

    .line 249
    .line 250
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 257
    .line 258
    .line 259
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_b
    if-nez v6, :cond_c

    .line 264
    .line 265
    return-object v2

    .line 266
    :cond_c
    new-instance v0, Lz/q;

    .line 267
    .line 268
    invoke-direct {v0, v6}, Lz/q;-><init>(Ljava/util/ArrayList;)V

    .line 269
    .line 270
    .line 271
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
