.class public final Li0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/String;


# direct methods
.method public static a(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    invoke-static {}, Lb/d;->o()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_1
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const/16 p1, 0x22

    .line 21
    .line 22
    if-ge v0, p1, :cond_2

    .line 23
    .line 24
    move p1, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    move p1, v3

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_7

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v6, "/"

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    if-eq p1, v3, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    invoke-static {v5}, Lm0/d;->i(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    goto :goto_2

    .line 75
    :cond_5
    invoke-static {v5}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    :goto_2
    if-eqz v5, :cond_3

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :cond_6
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    if-eqz v2, :cond_8

    .line 95
    .line 96
    new-array p0, v4, [Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, [Ljava/lang/String;

    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_8
    new-array p0, v4, [Ljava/lang/String;

    .line 106
    .line 107
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ln0/a;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln0/a;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "/data/app/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x2f

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_a

    .line 11
    .line 12
    const-string v0, "/apex/"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    sget-object p1, Li0/g;->a:[Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    if-nez p1, :cond_4

    .line 26
    .line 27
    const-class p1, Li0/g;

    .line 28
    .line 29
    monitor-enter p1

    .line 30
    :try_start_0
    sget-object v3, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    sget-object v4, Li0/g;->a:[Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v5, "tree"

    .line 49
    .line 50
    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v5, Ljava/io/BufferedReader;

    .line 55
    .line 56
    new-instance v6, Ljava/io/InputStreamReader;

    .line 57
    .line 58
    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->ready()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :try_start_2
    new-array v3, v0, [Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, [Ljava/lang/String;

    .line 88
    .line 89
    sput-object v3, Li0/g;->a:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    .line 91
    monitor-exit p1

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_1
    monitor-exit p1

    .line 94
    goto :goto_2

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    monitor-exit p1

    .line 97
    throw p0

    .line 98
    :cond_4
    :goto_2
    sget-object p1, Li0/g;->a:[Ljava/lang/String;

    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    new-instance p0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_5
    invoke-static {p0, v1}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    sget-object v3, Li0/g;->a:[Ljava/lang/String;

    .line 118
    .line 119
    array-length v4, v3

    .line 120
    move v5, v0

    .line 121
    :goto_3
    if-ge v0, v4, :cond_9

    .line 122
    .line 123
    aget-object v6, v3, v0

    .line 124
    .line 125
    array-length v7, p0

    .line 126
    if-lt v5, v7, :cond_7

    .line 127
    .line 128
    if-lez v5, :cond_6

    .line 129
    .line 130
    add-int/lit8 v7, v5, -0x1

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-ne v7, v1, :cond_6

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_6
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-ne v7, v1, :cond_8

    .line 144
    .line 145
    add-int/lit8 v7, v5, 0x1

    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    sub-int/2addr v8, v2

    .line 152
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-ne v7, v1, :cond_8

    .line 165
    .line 166
    aget-object v7, p0, v5

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    sub-int/2addr v8, v5

    .line 173
    add-int/lit8 v8, v8, -0x2

    .line 174
    .line 175
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-ne v8, v9, :cond_8

    .line 180
    .line 181
    add-int/lit8 v8, v5, 0x1

    .line 182
    .line 183
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_8

    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    sub-int/2addr v7, v2

    .line 194
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-ne v6, v1, :cond_8

    .line 199
    .line 200
    move v5, v8

    .line 201
    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_9
    :goto_5
    return-object p1

    .line 205
    :cond_a
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .line 209
    .line 210
    invoke-static {p0}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    const-string v4, "pm list packages -f | grep "

    .line 219
    .line 220
    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {p1, v4}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_b

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :catch_1
    :cond_b
    :goto_7
    invoke-virtual {p1, v2}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    if-eqz v4, :cond_e

    .line 236
    .line 237
    const-string v5, "package:"

    .line 238
    .line 239
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-nez v5, :cond_c

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_c
    const/16 v5, 0x8

    .line 247
    .line 248
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-nez v5, :cond_d

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_d
    add-int/lit8 v5, v3, 0x1

    .line 260
    .line 261
    :try_start_3
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->indexOf(II)I

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 270
    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_e
    :goto_8
    return-object v0
.end method
