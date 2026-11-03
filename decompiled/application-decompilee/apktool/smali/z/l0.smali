.class public final Lz/l0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Lz/a;

.field public final f:Lg0/h;

.field public final g:J

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:B


# direct methods
.method public constructor <init>(Lg0/h;JZIIB)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz/l0;->e:Lz/a;

    .line 3
    iput-object p1, p0, Lz/l0;->f:Lg0/h;

    .line 4
    iput-wide p2, p0, Lz/l0;->g:J

    .line 5
    iput-boolean p4, p0, Lz/l0;->h:Z

    .line 6
    iput p5, p0, Lz/l0;->i:I

    .line 7
    iput p6, p0, Lz/l0;->j:I

    .line 8
    iput-byte p7, p0, Lz/l0;->k:B

    return-void
.end method

.method public constructor <init>(Lz/a;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 10
    iput-object p1, p0, Lz/l0;->e:Lz/a;

    .line 11
    invoke-virtual {p1}, Lz/a;->g()Lg0/h;

    move-result-object p1

    iput-object p1, p0, Lz/l0;->f:Lg0/h;

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lz/l0;->g:J

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lz/l0;->h:Z

    .line 14
    iput p1, p0, Lz/l0;->i:I

    .line 15
    iput p1, p0, Lz/l0;->j:I

    const/4 p1, 0x1

    .line 16
    iput-byte p1, p0, Lz/l0;->k:B

    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lz/l0;->e:Lz/a;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lz/l0;->n(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v2, p0, Lz/l0;->f:Lg0/h;

    .line 14
    .line 15
    invoke-virtual {v2}, Lg0/h;->g()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    if-eqz v3, :cond_b

    .line 22
    .line 23
    invoke-virtual {v2}, Lg0/h;->h()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_a

    .line 28
    .line 29
    iget-wide v6, p0, Lz/l0;->g:J

    .line 30
    .line 31
    invoke-static {v2, v6, v7}, Ld0/b;->h(Lg0/h;J)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_a

    .line 36
    .line 37
    iget-object v3, v2, Lg0/h;->c:Ljava/lang/String;

    .line 38
    .line 39
    iget-boolean v6, p0, Lz/l0;->h:Z

    .line 40
    .line 41
    if-eqz v6, :cond_7

    .line 42
    .line 43
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v6, v3}, Ld0/h;->e(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_7

    .line 52
    .line 53
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6, v3}, Le0/a;->n(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 62
    .line 63
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Le0/a;->i()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    move-object v3, v0

    .line 73
    :goto_0
    invoke-static {v0}, Ld0/b;->g(Le0/d;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-static {v6}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_2

    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_2
    :try_start_0
    iget-object v7, v2, Lg0/h;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v7, v3, v6}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 87
    .line 88
    .line 89
    move-result-object v3
    :try_end_0
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcPasswordException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    :try_start_1
    iget-object v7, v2, Lg0/h;->d:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v8, -0x1

    .line 95
    invoke-static {v8, v7}, Lb/d;->i0(ILjava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    iget-object v8, v2, Lg0/h;->e:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v3, v7, v8}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 102
    .line 103
    .line 104
    move-result-object v7
    :try_end_1
    .catch Lru/zdevs/zarchiver/archiver/NArc$NArcPasswordException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move-object v7, v0

    .line 109
    :goto_1
    if-eqz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v3, v7}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    move v3, v4

    .line 115
    goto :goto_4

    .line 116
    :catchall_1
    move-exception v1

    .line 117
    move-object v3, v0

    .line 118
    :goto_2
    if-eqz v3, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    throw v1

    .line 124
    :catch_0
    move-object v3, v0

    .line 125
    :catch_1
    if-eqz v3, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_2
    move-object v3, v0

    .line 129
    :catch_3
    if-eqz v3, :cond_6

    .line 130
    .line 131
    :goto_3
    invoke-virtual {v3, v0}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 132
    .line 133
    .line 134
    :cond_6
    move v3, v5

    .line 135
    :goto_4
    if-eqz v3, :cond_8

    .line 136
    .line 137
    new-instance v0, Lz/x;

    .line 138
    .line 139
    const v1, 0x7f0c004d

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Lz/x;-><init>(I)V

    .line 143
    .line 144
    .line 145
    return-object v0

    .line 146
    :cond_7
    move-object v6, v0

    .line 147
    :cond_8
    if-eqz v1, :cond_9

    .line 148
    .line 149
    invoke-virtual {p0, v6}, Lz/l0;->m(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    move v3, v5

    .line 153
    goto :goto_5

    .line 154
    :cond_9
    move v3, v4

    .line 155
    :goto_5
    move-object v11, v6

    .line 156
    goto :goto_8

    .line 157
    :cond_a
    invoke-virtual {p0, v0}, Lz/l0;->m(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_6

    .line 161
    :cond_b
    invoke-virtual {v2}, Lg0/h;->k()Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_d

    .line 166
    .line 167
    iget-object v3, v2, Lg0/h;->a:Ljava/lang/String;

    .line 168
    .line 169
    const-string v6, "plglocal"

    .line 170
    .line 171
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_e

    .line 176
    .line 177
    invoke-static {v2}, Lg0/e;->c(Lg0/h;)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-static {v3, v5}, Lb/d;->K(II)Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_c

    .line 186
    .line 187
    goto :goto_7

    .line 188
    :cond_c
    invoke-virtual {p0, v0}, Lz/l0;->m(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :goto_6
    move-object v11, v0

    .line 192
    move v3, v5

    .line 193
    goto :goto_8

    .line 194
    :cond_d
    invoke-virtual {v2}, Lg0/h;->o()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_14

    .line 199
    .line 200
    iget-byte v3, p0, Lz/l0;->k:B

    .line 201
    .line 202
    if-eq v3, v5, :cond_e

    .line 203
    .line 204
    invoke-virtual {v2}, Lg0/h;->j()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_e

    .line 209
    .line 210
    invoke-virtual {v2}, Lg0/h;->l()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-nez v3, :cond_e

    .line 215
    .line 216
    iget-object v3, v2, Lg0/h;->c:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v3}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_e

    .line 223
    .line 224
    new-instance v3, Ljava/io/File;

    .line 225
    .line 226
    iget-object v6, v2, Lg0/h;->c:Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_e

    .line 236
    .line 237
    const-string v3, "root"

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Lg0/h;->q(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_e
    :goto_7
    move-object v11, v0

    .line 243
    move v3, v4

    .line 244
    :goto_8
    if-nez v3, :cond_13

    .line 245
    .line 246
    if-eqz v1, :cond_f

    .line 247
    .line 248
    goto :goto_a

    .line 249
    :cond_f
    new-instance v12, Landroid/os/Bundle;

    .line 250
    .line 251
    invoke-direct {v12, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 252
    .line 253
    .line 254
    const-string v1, "zaSortType"

    .line 255
    .line 256
    iget v3, p0, Lz/l0;->j:I

    .line 257
    .line 258
    invoke-virtual {v12, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    iget v1, p0, Lz/l0;->i:I

    .line 262
    .line 263
    const/16 v3, 0x8

    .line 264
    .line 265
    invoke-static {v1, v3}, Lb/d;->K(II)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_11

    .line 270
    .line 271
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    if-eqz v6, :cond_10

    .line 276
    .line 277
    iget-object v7, p0, Lz/l0;->f:Lg0/h;

    .line 278
    .line 279
    const/4 v8, 0x0

    .line 280
    iget-wide v9, p0, Lz/l0;->g:J

    .line 281
    .line 282
    invoke-static/range {v6 .. v12}, Lu0/e;->d(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;Landroid/net/Uri;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 283
    .line 284
    .line 285
    :cond_10
    return-object v0

    .line 286
    :cond_11
    invoke-virtual {v2}, Lg0/h;->e()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-static {v1}, Lb/d;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_12

    .line 299
    .line 300
    invoke-static {v4, v1}, Lb/d;->p(ILjava/lang/String;)Lt0/b;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    goto :goto_9

    .line 305
    :cond_12
    move-object v1, v0

    .line 306
    :goto_9
    :try_start_2
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    if-eqz v6, :cond_13

    .line 311
    .line 312
    iget-object v7, p0, Lz/l0;->f:Lg0/h;

    .line 313
    .line 314
    iget-wide v8, p0, Lz/l0;->g:J

    .line 315
    .line 316
    move-object v10, v11

    .line 317
    move-object v11, v1

    .line 318
    invoke-static/range {v6 .. v12}, Lu0/e;->c(Lru/zdevs/zarchiver/ZArchiver;Lg0/h;JLjava/lang/String;Lt0/b;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lu0/e$a; {:try_start_2 .. :try_end_2} :catch_4

    .line 319
    .line 320
    .line 321
    goto :goto_a

    .line 322
    :catch_4
    invoke-virtual {p0, v0}, Lz/l0;->m(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_13
    :goto_a
    return-object v0

    .line 326
    :cond_14
    new-instance v0, Lz/x;

    .line 327
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    const-string v3, "Unsupported path "

    .line 331
    .line 332
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-direct {v0, v1}, Lz/x;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x6f

    return v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lz/l0;->e:Lz/a;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p0, p1}, Lz/l0;->n(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 21
    .line 22
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 23
    .line 24
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->g:Lru/zdevs/zarchiver/c;

    .line 25
    .line 26
    iget-object v0, p0, Lz/l0;->f:Lg0/h;

    .line 27
    .line 28
    iget v1, p0, Lz/l0;->i:I

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lru/zdevs/zarchiver/c;->e(Lg0/h;I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lz/l0;->e:Lz/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lz/a;->h()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lz/l0;->f:Lg0/h;

    .line 8
    .line 9
    invoke-virtual {v2}, Lg0/h;->g()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    iget-object v5, v0, Lz/a;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v2, v2, Lg0/h;->c:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ld0/h;->e(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    move v2, v6

    .line 34
    :goto_0
    if-ge v2, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lc0/d;

    .line 41
    .line 42
    iget-byte v3, v3, Lc0/d;->f:B

    .line 43
    .line 44
    const/16 v7, 0x1c

    .line 45
    .line 46
    if-ne v3, v7, :cond_0

    .line 47
    .line 48
    move v3, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v3, v6

    .line 51
    :goto_1
    if-eqz v3, :cond_1

    .line 52
    .line 53
    return v6

    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    return v4

    .line 64
    :cond_3
    if-le v1, v4, :cond_9

    .line 65
    .line 66
    new-instance v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    move v7, v6

    .line 72
    :goto_2
    if-ge v7, v1, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Lz/a;->a(I)Lg0/h;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    check-cast v9, Lc0/d;

    .line 83
    .line 84
    iget-wide v9, v9, Lc0/d;->d:J

    .line 85
    .line 86
    invoke-static {v2, v8, v9, v10, p1}, Lu0/e;->b(Landroid/content/Context;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_6

    .line 103
    .line 104
    const p1, 0x7f0c004c

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_6
    new-instance p1, Landroid/content/Intent;

    .line 113
    .line 114
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 115
    .line 116
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/high16 v0, 0x10000000

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    const-string v0, "*/*"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    const-string v1, "android.intent.extra.STREAM"

    .line 130
    .line 131
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 v5, 0x18

    .line 137
    .line 138
    if-lt v1, v5, :cond_8

    .line 139
    .line 140
    new-instance v1, Landroid/content/ClipData;

    .line 141
    .line 142
    filled-new-array {v0}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    new-instance v5, Landroid/content/ClipData$Item;

    .line 147
    .line 148
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Landroid/net/Uri;

    .line 153
    .line 154
    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 155
    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    invoke-direct {v1, v6, v0, v5}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    move v5, v4

    .line 166
    :goto_3
    if-ge v5, v0, :cond_7

    .line 167
    .line 168
    new-instance v6, Landroid/content/ClipData$Item;

    .line 169
    .line 170
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    check-cast v7, Landroid/net/Uri;

    .line 175
    .line 176
    invoke-direct {v6, v7}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v5, v5, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    :cond_8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const v1, 0x7f0c00c6

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_9
    invoke-virtual {v0, v6}, Lz/a;->a(I)Lg0/h;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Lc0/d;

    .line 219
    .line 220
    iget-wide v7, v3, Lc0/d;->d:J

    .line 221
    .line 222
    invoke-static {v2, v1, v7, v8, p1}, Lu0/e;->b(Landroid/content/Context;Lg0/h;JLjava/lang/String;)Landroid/net/Uri;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    if-eqz p1, :cond_a

    .line 227
    .line 228
    invoke-virtual {v0, v6}, Lz/a;->b(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v2, p1, v0}, Lu0/e;->e(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_a
    :goto_4
    return v4
.end method
