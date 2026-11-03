.class public final Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/e$a;
    }
.end annotation


# direct methods
.method public static a(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lg0/h;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p2, 0x1

    .line 27
    invoke-static {p0, p1, p2}, Lru/zdevs/zarchiver/io/SAF;->h(Landroid/content/Context;Lg0/h;Z)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lu0/e;->b(Landroid/content/Context;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/16 v2, 0x1a

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    if-nez p4, :cond_1

    .line 17
    .line 18
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    iget-object v0, p1, Lg0/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p4, v0, v1}, Ld0/h;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move-object v9, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v9, p4

    .line 37
    :goto_0
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 38
    .line 39
    .line 40
    move-result-object p4

    .line 41
    iget-object v0, p1, Lg0/h;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p4, v0}, Le0/a;->n(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    if-eqz p4, :cond_2

    .line 48
    .line 49
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    invoke-virtual {p4}, Le0/a;->i()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_2
    move-object v6, v3

    .line 58
    sget p4, Ls0/b;->g:I

    .line 59
    .line 60
    shl-int/lit8 p4, p4, 0x10

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    invoke-static {v0}, Ls0/b;->f(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    or-int/lit8 p4, p4, 0x4

    .line 70
    .line 71
    :cond_3
    move v10, p4

    .line 72
    move-object v4, p0

    .line 73
    move-object v5, p1

    .line 74
    move-wide v7, p2

    .line 75
    invoke-static/range {v4 .. v10}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->d(Landroid/content/Context;Lg0/h;Ljava/lang/String;JLjava/lang/String;I)Landroid/net/Uri;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    return-object p0

    .line 80
    :cond_4
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    const-string p4, "ru.zdevs.zarchiver.external"

    .line 85
    .line 86
    const-string v0, "content"

    .line 87
    .line 88
    if-eqz p0, :cond_7

    .line 89
    .line 90
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    if-ge p0, v2, :cond_5

    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_5
    iget-object p0, p1, Lg0/h;->a:Ljava/lang/String;

    .line 96
    .line 97
    const-string p2, "plglocal"

    .line 98
    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_6

    .line 104
    .line 105
    invoke-virtual {p1}, Lg0/h;->e()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    sget-object p2, Lru/zdevs/zarchiver/provider/PluginFileProvider;->a:[Ljava/lang/String;

    .line 110
    .line 111
    new-instance p2, Landroid/net/Uri$Builder;

    .line 112
    .line 113
    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const-string p3, "ru.zdevs.zarchiver.plugin"

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1}, Lg0/h;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :cond_6
    sget-object p0, Lru/zdevs/zarchiver/provider/FileProvider;->a:[Ljava/lang/String;

    .line 144
    .line 145
    new-instance p0, Landroid/net/Uri$Builder;

    .line 146
    .line 147
    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p0, p4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string p3, "/u/"

    .line 161
    .line 162
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p3, p1, Lg0/h;->b:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/16 p3, 0x2f

    .line 171
    .line 172
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object p3, p1, Lg0/h;->e:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_7
    invoke-virtual {p1}, Lg0/h;->m()Z

    .line 199
    .line 200
    .line 201
    move-result p0

    .line 202
    if-eqz p0, :cond_8

    .line 203
    .line 204
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {v1, p0}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :cond_8
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 214
    .line 215
    const/16 v1, 0x18

    .line 216
    .line 217
    if-ge p0, v1, :cond_9

    .line 218
    .line 219
    invoke-static {p1}, Lru/zdevs/zarchiver/io/KitKatExtSD;->c(Lg0/h;)Landroid/net/Uri;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    return-object p0

    .line 224
    :cond_9
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_c

    .line 229
    .line 230
    if-lt p0, v2, :cond_b

    .line 231
    .line 232
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-static {p0}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    if-nez p0, :cond_a

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_a
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    sget p1, Ls0/b;->m:I

    .line 248
    .line 249
    sget-object v1, Lru/zdevs/zarchiver/provider/FileProvider;->a:[Ljava/lang/String;

    .line 250
    .line 251
    new-instance v1, Landroid/net/Uri$Builder;

    .line 252
    .line 253
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0, p4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 261
    .line 262
    .line 263
    move-result-object p4

    .line 264
    invoke-virtual {p4, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    new-instance p4, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string v0, "R:"

    .line 271
    .line 272
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string p2, ":0:"

    .line 279
    .line 280
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    :cond_b
    :goto_1
    invoke-static {p1}, Lru/zdevs/zarchiver/io/KitKatExtSD;->c(Lg0/h;)Landroid/net/Uri;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    return-object p0

    .line 304
    :cond_c
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-static {p0}, Lru/zdevs/zarchiver/provider/FileProvider;->c(Ljava/lang/String;)Landroid/net/Uri;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    return-object p0
.end method

.method public static c(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;Lt0/b;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p5

    .line 3
    invoke-virtual {p1}, Lg0/h;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {v2}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {v2}, Lb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "android.intent.action.VIEW"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eqz v1, :cond_4

    .line 21
    .line 22
    iget v7, v1, Lt0/b;->d:I

    .line 23
    .line 24
    if-nez v7, :cond_1

    .line 25
    .line 26
    invoke-static {p1}, Lru/zdevs/zarchiver/io/KitKatExtSD;->c(Lg0/h;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    if-nez v7, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Lg0/h;->g()Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-nez v8, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lu0/e$a;

    .line 40
    .line 41
    invoke-direct {v0}, Lu0/e$a;-><init>()V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lu0/e;->a(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    move v6, v4

    .line 50
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 51
    .line 52
    new-instance v8, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v9, v1, Lt0/b;->b:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, v1, Lt0/b;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    const-string v1, "*/*"

    .line 65
    .line 66
    invoke-virtual {v8, v7, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move-object v8, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    move-object v7, v5

    .line 73
    move-object v8, v7

    .line 74
    :goto_1
    if-nez v7, :cond_6

    .line 75
    .line 76
    invoke-static {p0, p1, p2, p3, p4}, Lu0/e;->a(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-nez v7, :cond_5

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    move v6, v4

    .line 84
    :cond_6
    if-nez v8, :cond_7

    .line 85
    .line 86
    new-instance v8, Landroid/content/Intent;

    .line 87
    .line 88
    invoke-direct {v8, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "android.intent.category.DEFAULT"

    .line 92
    .line 93
    invoke-virtual {v8, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v7, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    :cond_7
    const/high16 v1, 0x10000000

    .line 100
    .line 101
    invoke-virtual {v8, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    const-string v1, "isZA"

    .line 105
    .line 106
    invoke-virtual {v8, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-object/from16 v9, p6

    .line 110
    .line 111
    invoke-virtual {v8, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_8

    .line 119
    .line 120
    const-string v1, "AbsolutePath"

    .line 121
    .line 122
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    :cond_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 v2, 0x18

    .line 132
    .line 133
    if-lt v1, v2, :cond_9

    .line 134
    .line 135
    const-string v1, "file"

    .line 136
    .line 137
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_9

    .line 146
    .line 147
    invoke-virtual {v8, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lg0/h;->o()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_9

    .line 155
    .line 156
    move-object v1, p1

    .line 157
    iget-object v2, v1, Lg0/h;->c:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v2}, Lm0/d;->k(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-nez v2, :cond_a

    .line 164
    .line 165
    const/4 v2, 0x2

    .line 166
    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_9
    move-object v1, p1

    .line 171
    :cond_a
    :goto_2
    invoke-static {p0, v8}, Lu0/e;->g(Landroid/content/Context;Landroid/content/Intent;)I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v3, -0x2

    .line 176
    if-ne v2, v3, :cond_b

    .line 177
    .line 178
    invoke-static {p0, p1, p2, p3, p4}, Lu0/e;->a(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v8, v7, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    invoke-static {p0, v8}, Lu0/e;->g(Landroid/content/Context;Landroid/content/Intent;)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    goto :goto_3

    .line 194
    :cond_b
    move v4, v6

    .line 195
    :goto_3
    if-eqz v2, :cond_d

    .line 196
    .line 197
    if-eqz v4, :cond_c

    .line 198
    .line 199
    move-object v2, v7

    .line 200
    goto :goto_4

    .line 201
    :cond_c
    move-object v2, v5

    .line 202
    :goto_4
    move-object v0, p0

    .line 203
    move-object v1, p1

    .line 204
    move-wide v3, p2

    .line 205
    move-object v5, p4

    .line 206
    move-object/from16 v6, p6

    .line 207
    .line 208
    invoke-static/range {v0 .. v6}, Lu0/e;->d(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;Landroid/net/Uri;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    return-void
.end method

.method public static d(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;Landroid/net/Uri;JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    new-instance v4, Landroid/content/Intent;

    .line 13
    .line 14
    const-string v5, "android.intent.action.VIEW"

    .line 15
    .line 16
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/high16 v5, 0x10000000

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v5, "isZA"

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lru/zdevs/zarchiver/io/KitKatExtSD;->c(Lg0/h;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v7, "*/*"

    .line 35
    .line 36
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lu0/e;->f()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    move v5, v6

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v5, v8

    .line 55
    :goto_0
    const/high16 v9, 0x20000

    .line 56
    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_2

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 78
    .line 79
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 80
    .line 81
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 82
    .line 83
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 84
    .line 85
    const/16 v12, 0x1c

    .line 86
    .line 87
    if-le v11, v12, :cond_1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    new-instance v11, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 96
    .line 97
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 103
    .line 104
    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    if-nez p2, :cond_3

    .line 116
    .line 117
    move-wide/from16 v10, p3

    .line 118
    .line 119
    move-object/from16 v5, p5

    .line 120
    .line 121
    invoke-static {p0, p1, v10, v11, v5}, Lu0/e;->a(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    if-nez v5, :cond_4

    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    move-object v5, p2

    .line 129
    :cond_4
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    const-string v7, "AbsolutePath"

    .line 133
    .line 134
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-virtual {v4, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 142
    .line 143
    const/16 v10, 0x18

    .line 144
    .line 145
    if-lt v7, v10, :cond_5

    .line 146
    .line 147
    const-string v7, "file"

    .line 148
    .line 149
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_5

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lg0/h;->o()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    iget-object v5, v1, Lg0/h;->c:Ljava/lang/String;

    .line 169
    .line 170
    invoke-static {v5}, Lm0/d;->k(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-nez v5, :cond_5

    .line 175
    .line 176
    const/4 v5, 0x2

    .line 177
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    .line 179
    .line 180
    :cond_5
    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_6

    .line 193
    .line 194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 199
    .line 200
    new-instance v6, Landroid/content/Intent;

    .line 201
    .line 202
    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 203
    .line 204
    .line 205
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 206
    .line 207
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .line 214
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_6
    new-instance v3, Landroid/content/Intent;

    .line 226
    .line 227
    const-class v4, Lru/zdevs/zarchiver/activity/OpenAsDlg;

    .line 228
    .line 229
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .line 231
    .line 232
    const/high16 v4, 0x40400000    # 3.0f

    .line 233
    .line 234
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    .line 236
    .line 237
    new-array v4, v8, [Landroid/os/Parcelable;

    .line 238
    .line 239
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    check-cast v2, [Landroid/os/Parcelable;

    .line 244
    .line 245
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    .line 246
    .line 247
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    const-string v2, "OpenAsDlg.EXTRA_FILE_NAME"

    .line 251
    .line 252
    invoke-virtual {p1}, Lg0/h;->e()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    const-string v1, "OpenAsDlg.EXTRA_EXTRA"

    .line 260
    .line 261
    move-object/from16 v2, p6

    .line 262
    .line 263
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p0, 0x7f0c004c

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "android.intent.action.SEND"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/high16 v1, 0x10000000

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string v1, "*/*"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v1, "android.intent.extra.STREAM"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v1, "android.intent.extra.SUBJECT"

    .line 33
    .line 34
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 v1, 0x18

    .line 40
    .line 41
    if-lt p2, v1, :cond_1

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-static {p2, p1}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const p2, 0x7f0c00c6

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Lg1/h;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static f()Z
    .locals 5

    .line 1
    const-class v0, Landroid/os/StrictMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    const-string v3, "disableDeathOnFileUriExposure"

    .line 6
    .line 7
    new-array v4, v2, [Ljava/lang/Class;

    .line 8
    .line 9
    invoke-static {v0, v3, v4}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-array v4, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    return v0

    .line 22
    :catch_0
    :cond_0
    :try_start_1
    const-string v3, "vmFileUriExposureEnabled"

    .line 23
    .line 24
    new-array v4, v2, [Ljava/lang/Class;

    .line 25
    .line 26
    invoke-static {v0, v3, v4}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    new-array v3, v2, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    return v0

    .line 47
    :catch_1
    :cond_1
    return v2
.end method

.method public static g(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v0, 0x18

    .line 10
    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    instance-of p1, p0, Landroid/os/FileUriExposedException;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x2

    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "Failed to start activity: "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/16 p0, -0x64

    .line 41
    .line 42
    return p0

    .line 43
    :catch_0
    const p0, 0x7f0c00d7

    .line 44
    .line 45
    .line 46
    invoke-static {p0}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 47
    .line 48
    .line 49
    const/4 p0, -0x3

    .line 50
    return p0

    .line 51
    :catch_1
    const/4 p0, -0x1

    .line 52
    return p0
.end method
