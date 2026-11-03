.class public final Li0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# instance fields
.field public a:I

.field public b:Ln0/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Li0/c;->a:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Li0/c;->b:Ln0/a;

    .line 9
    .line 10
    return-void
.end method

.method public static l(Ln0/a;Ljava/io/File;)Lg0/e$b;
    .locals 4

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x5

    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {p0, v0, v1, v2, v3}, Lo0/d;->d(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance p0, Lg0/e$b;

    .line 31
    .line 32
    invoke-direct {p0}, Lg0/e$b;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lo0/d$a;

    .line 41
    .line 42
    iget-object v1, v0, Lo0/d$a;->a:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-boolean p1, v0, Lo0/d$a;->g:Z

    .line 57
    .line 58
    xor-int/2addr p1, v3

    .line 59
    iput-boolean p1, p0, Lg0/e$b;->a:Z

    .line 60
    .line 61
    iget-wide v1, v0, Lo0/d$a;->c:J

    .line 62
    .line 63
    iput-wide v1, p0, Lg0/e$b;->b:J

    .line 64
    .line 65
    iget-wide v1, v0, Lo0/d$a;->b:J

    .line 66
    .line 67
    iput-wide v1, p0, Lg0/e$b;->c:J

    .line 68
    .line 69
    iget-boolean p1, v0, Lo0/d$a;->h:Z

    .line 70
    .line 71
    iput-boolean p1, p0, Lg0/e$b;->e:Z

    .line 72
    .line 73
    iget-object p1, v0, Lo0/d$a;->i:Ljava/lang/String;

    .line 74
    .line 75
    iput-object p1, p0, Lg0/e$b;->f:Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, v0, Lo0/d$a;->f:Ljava/lang/String;

    .line 78
    .line 79
    iput-object p1, p0, Lg0/e$b;->g:Ljava/lang/String;

    .line 80
    .line 81
    iget-object p1, v0, Lo0/d$a;->e:Ljava/lang/String;

    .line 82
    .line 83
    iput-object p1, p0, Lg0/e$b;->h:Ljava/lang/String;

    .line 84
    .line 85
    iget p1, v0, Lo0/d$a;->d:I

    .line 86
    .line 87
    iput p1, p0, Lg0/e$b;->i:I

    .line 88
    .line 89
    :cond_2
    return-object p0

    .line 90
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 91
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg0/h;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final b(Lg0/h;Lc0/b;I)Z
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput v4, v0, Li0/c;->a:I

    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Lg0/h;->toFile()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-nez v5, :cond_0

    .line 17
    .line 18
    return v4

    .line 19
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const/4 v7, 0x4

    .line 27
    const/4 v8, 0x3

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    invoke-static {v3, v7}, Lb/d;->K(II)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    new-instance v6, Lc0/d;

    .line 37
    .line 38
    const-string v9, ".."

    .line 39
    .line 40
    invoke-direct {v6, v9, v8}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    iget-object v9, v1, Lg0/h;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v9}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    if-eqz v9, :cond_2

    .line 57
    .line 58
    sget v9, Ls0/b;->m:I

    .line 59
    .line 60
    invoke-static {v9}, Ln0/a;->c(I)Ln0/a;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Ln0/a;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-nez v10, :cond_3

    .line 69
    .line 70
    iget v9, v9, Ln0/a;->j:I

    .line 71
    .line 72
    const/4 v10, 0x2

    .line 73
    if-ne v9, v10, :cond_2

    .line 74
    .line 75
    const v9, 0x7f0c00ff

    .line 76
    .line 77
    .line 78
    invoke-static {v9}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    const/4 v9, 0x0

    .line 82
    :cond_3
    if-nez v9, :cond_4

    .line 83
    .line 84
    invoke-static {v4}, Ln0/a;->c(I)Ln0/a;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    const/16 v10, 0x20

    .line 93
    .line 94
    invoke-static {v3, v10}, Lb/d;->K(II)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v11, 0x1e

    .line 101
    .line 102
    if-lt v10, v11, :cond_5

    .line 103
    .line 104
    const-string v10, "/data/data"

    .line 105
    .line 106
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    if-eqz v11, :cond_5

    .line 111
    .line 112
    const-string v11, "/data_mirror/data_ce/null/0"

    .line 113
    .line 114
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    move v3, v7

    .line 126
    goto :goto_0

    .line 127
    :cond_6
    move v3, v4

    .line 128
    :goto_0
    or-int/lit8 v3, v3, 0x8

    .line 129
    .line 130
    invoke-static {v9, v10, v5, v3, v4}, Lo0/d;->d(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {v9}, Ln0/a;->d()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    const/4 v15, 0x1

    .line 139
    if-eqz v3, :cond_d

    .line 140
    .line 141
    if-eq v11, v15, :cond_7

    .line 142
    .line 143
    if-eq v11, v8, :cond_7

    .line 144
    .line 145
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v16

    .line 149
    if-nez v16, :cond_d

    .line 150
    .line 151
    :cond_7
    invoke-static {v5, v15}, Li0/a;->n(Ljava/lang/String;Z)B

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_c

    .line 164
    .line 165
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v11

    .line 169
    check-cast v11, Lo0/d$a;

    .line 170
    .line 171
    iget-object v4, v11, Lo0/d$a;->a:Ljava/lang/String;

    .line 172
    .line 173
    if-nez v4, :cond_8

    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    goto :goto_1

    .line 177
    :cond_8
    iget-boolean v12, v11, Lo0/d$a;->g:Z

    .line 178
    .line 179
    if-eqz v12, :cond_a

    .line 180
    .line 181
    invoke-static {v4, v8}, Li0/a;->l(Ljava/lang/String;B)B

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-nez v4, :cond_9

    .line 186
    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const/16 v12, 0x2f

    .line 196
    .line 197
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object v12, v11, Lo0/d$a;->a:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v4}, Li0/a;->m(Ljava/lang/String;)B

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    :cond_9
    move/from16 v20, v4

    .line 214
    .line 215
    move/from16 v19, v7

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_a
    const/16 v19, -0x1

    .line 219
    .line 220
    const/16 v20, 0x0

    .line 221
    .line 222
    :goto_2
    new-instance v4, Lc0/d;

    .line 223
    .line 224
    iget-object v12, v11, Lo0/d$a;->a:Ljava/lang/String;

    .line 225
    .line 226
    move/from16 p3, v8

    .line 227
    .line 228
    iget-wide v7, v11, Lo0/d$a;->c:J

    .line 229
    .line 230
    iget-boolean v13, v11, Lo0/d$a;->h:Z

    .line 231
    .line 232
    if-eqz v13, :cond_b

    .line 233
    .line 234
    const-wide/16 v23, -0x2

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_b
    iget-wide v14, v11, Lo0/d$a;->b:J

    .line 238
    .line 239
    move-wide/from16 v23, v14

    .line 240
    .line 241
    :goto_3
    move-object/from16 v17, v4

    .line 242
    .line 243
    move-object/from16 v18, v12

    .line 244
    .line 245
    move-wide/from16 v21, v7

    .line 246
    .line 247
    invoke-direct/range {v17 .. v24}, Lc0/d;-><init>(Ljava/lang/String;BBJJ)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .line 252
    .line 253
    move/from16 v8, p3

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    const/4 v7, 0x4

    .line 257
    const/4 v15, 0x1

    .line 258
    goto :goto_1

    .line 259
    :catch_0
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    if-gt v2, v6, :cond_15

    .line 264
    .line 265
    const v2, 0x7f0c00e6

    .line 266
    .line 267
    .line 268
    iput v2, v0, Li0/c;->a:I

    .line 269
    .line 270
    goto/16 :goto_a

    .line 271
    .line 272
    :cond_d
    move v4, v15

    .line 273
    if-eq v11, v4, :cond_15

    .line 274
    .line 275
    if-eq v11, v8, :cond_15

    .line 276
    .line 277
    invoke-static {v5, v4}, Li0/a;->n(Ljava/lang/String;Z)B

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    invoke-static {v5}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-static {v4, v9}, Li0/g;->b(Ljava/lang/String;Ln0/a;)Ljava/util/ArrayList;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    if-eqz v7, :cond_13

    .line 298
    .line 299
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    check-cast v7, Ljava/lang/String;

    .line 304
    .line 305
    new-instance v8, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    :try_start_1
    invoke-static {v8}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    iget v11, v10, Landroid/system/StructStat;->st_mode:I

    .line 325
    .line 326
    invoke-static {v11}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    if-eqz v11, :cond_e

    .line 331
    .line 332
    invoke-static {v8}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    move-object v11, v10

    .line 337
    const/4 v10, 0x1

    .line 338
    goto :goto_5

    .line 339
    :cond_e
    move-object v11, v10

    .line 340
    const/4 v10, 0x0

    .line 341
    :goto_5
    iget v12, v11, Landroid/system/StructStat;->st_mode:I

    .line 342
    .line 343
    invoke-static {v12}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    .line 344
    .line 345
    .line 346
    move-result v12

    .line 347
    if-eqz v12, :cond_10

    .line 348
    .line 349
    invoke-static {v7, v3}, Li0/a;->l(Ljava/lang/String;B)B

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    if-nez v12, :cond_f

    .line 354
    .line 355
    invoke-static {v8}, Li0/a;->m(Ljava/lang/String;)B

    .line 356
    .line 357
    .line 358
    move-result v12

    .line 359
    :cond_f
    move/from16 v20, v12

    .line 360
    .line 361
    const/16 v19, 0x4

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_10
    const/16 v19, -0x1

    .line 365
    .line 366
    const/16 v20, 0x0

    .line 367
    .line 368
    :goto_6
    new-instance v12, Lc0/d;

    .line 369
    .line 370
    iget-wide v14, v11, Landroid/system/StructStat;->st_mtime:J

    .line 371
    .line 372
    const-wide/16 v17, 0x3e8

    .line 373
    .line 374
    mul-long v21, v14, v17

    .line 375
    .line 376
    if-eqz v10, :cond_11

    .line 377
    .line 378
    const-wide/16 v23, -0x2

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_11
    iget-wide v10, v11, Landroid/system/StructStat;->st_size:J

    .line 382
    .line 383
    move-wide/from16 v23, v10

    .line 384
    .line 385
    :goto_7
    move-object/from16 v17, v12

    .line 386
    .line 387
    move-object/from16 v18, v7

    .line 388
    .line 389
    invoke-direct/range {v17 .. v24}, Lc0/d;-><init>(Ljava/lang/String;BBJJ)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    .line 394
    .line 395
    goto :goto_8

    .line 396
    :catch_1
    const-string v10, "/storage/emulated"

    .line 397
    .line 398
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v8

    .line 402
    if-eqz v8, :cond_12

    .line 403
    .line 404
    new-instance v8, Lc0/d;

    .line 405
    .line 406
    const/4 v10, 0x4

    .line 407
    invoke-direct {v8, v7, v10}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_12
    :goto_8
    const/4 v10, 0x4

    .line 415
    goto :goto_4

    .line 416
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    if-le v2, v6, :cond_14

    .line 421
    .line 422
    const/4 v4, 0x1

    .line 423
    goto :goto_9

    .line 424
    :cond_14
    const/4 v4, 0x0

    .line 425
    :goto_9
    move v3, v4

    .line 426
    const/4 v4, 0x1

    .line 427
    goto :goto_b

    .line 428
    :cond_15
    :goto_a
    const/4 v4, 0x0

    .line 429
    :goto_b
    invoke-virtual {v9}, Ln0/a;->close()V

    .line 430
    .line 431
    .line 432
    if-eqz v3, :cond_16

    .line 433
    .line 434
    invoke-virtual {v9}, Ln0/a;->d()I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    if-eqz v2, :cond_17

    .line 439
    .line 440
    if-nez v4, :cond_17

    .line 441
    .line 442
    const-string v2, "root"

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Lg0/h;->q(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto :goto_c

    .line 448
    :cond_16
    const v1, 0x7f0c00d7

    .line 449
    .line 450
    .line 451
    iput v1, v0, Li0/c;->a:I

    .line 452
    .line 453
    :cond_17
    :goto_c
    const/4 v1, 0x1

    .line 454
    return v1
.end method

.method public final c(Lc0/i;)Lc0/i;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lc0/b;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v4, v0, [Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lc0/d;

    .line 23
    .line 24
    check-cast v3, Lc0/f;

    .line 25
    .line 26
    add-int/lit8 v5, v2, 0x1

    .line 27
    .line 28
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v7, v3, Lc0/f;->k:Lg0/h;

    .line 34
    .line 35
    iget-object v7, v7, Lg0/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v7, 0x2f

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, v3, Lc0/d;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    aput-object v3, v4, v2

    .line 55
    .line 56
    move v2, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Li0/c;->m()V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Li0/c;->b:Ln0/a;

    .line 67
    .line 68
    const-string v3, ""

    .line 69
    .line 70
    const/4 v5, 0x6

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v2, v7

    .line 73
    invoke-static/range {v1 .. v6}, Lo0/d;->e(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Li0/c;->b:Ln0/a;

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 82
    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Li0/c;->b:Ln0/a;

    .line 86
    .line 87
    :goto_1
    new-instance v0, Lc0/i;

    .line 88
    .line 89
    invoke-virtual {p1}, Lc0/b;->size()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-direct {v0, p1}, Lc0/i;-><init>(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lo0/d$a;

    .line 111
    .line 112
    new-instance v11, Lc0/f;

    .line 113
    .line 114
    new-instance v3, Lg0/h;

    .line 115
    .line 116
    iget-object v2, v1, Lo0/d$a;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v2}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v4, "root"

    .line 123
    .line 124
    invoke-direct {v3, v4, v2}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v2, v1, Lo0/d$a;->a:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v2}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const/4 v5, 0x0

    .line 134
    iget-boolean v2, v1, Lo0/d$a;->g:Z

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    const/4 v2, 0x4

    .line 139
    goto :goto_3

    .line 140
    :cond_2
    const/4 v2, -0x1

    .line 141
    :goto_3
    move v6, v2

    .line 142
    iget-boolean v2, v1, Lo0/d$a;->h:Z

    .line 143
    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    const-wide/16 v7, -0x2

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_3
    iget-wide v7, v1, Lo0/d$a;->b:J

    .line 150
    .line 151
    :goto_4
    iget-wide v9, v1, Lo0/d$a;->c:J

    .line 152
    .line 153
    move-object v2, v11

    .line 154
    invoke-direct/range {v2 .. v10}, Lc0/f;-><init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v11}, Lc0/i;->i(Lc0/f;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Li0/c;->a:I

    return v0
.end method

.method public final e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Li0/c;->m()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lg0/h;->toFile()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p2, p0, Li0/c;->b:Ln0/a;

    .line 19
    .line 20
    invoke-static {p2, p1}, Li0/c;->l(Ln0/a;Ljava/io/File;)Lg0/e$b;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object p2, v0

    .line 26
    :goto_0
    if-eqz p2, :cond_2

    .line 27
    .line 28
    iget-boolean v1, p2, Lg0/e$b;->a:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "/"

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Li0/c;->b:Ln0/a;

    .line 45
    .line 46
    const-string v2, "$C"

    .line 47
    .line 48
    iput-object v2, v1, Ln0/a;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, p1, p2}, Lo0/c;->c(Ln0/a;Ljava/lang/String;Lg0/e$b;)Z

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object p1, p0, Li0/c;->b:Ln0/a;

    .line 54
    .line 55
    if-nez p1, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {p1}, Ln0/a;->close()V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Li0/c;->b:Ln0/a;

    .line 62
    .line 63
    :goto_1
    return-object p2
.end method

.method public final f(Lg0/h;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final g([Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Lg0/h;)Lg0/e$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lg0/h;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Li0/c;->m()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    move-object/from16 v3, p2

    .line 16
    .line 17
    invoke-static {v3, v1}, Lu0/h;->c(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v4, v0, Li0/c;->b:Ln0/a;

    .line 22
    .line 23
    move-object/from16 v5, p1

    .line 24
    .line 25
    iget-object v5, v5, Lg0/h;->c:Ljava/lang/String;

    .line 26
    .line 27
    move/from16 v6, p4

    .line 28
    .line 29
    invoke-static {v6, v1}, Lb/d;->K(II)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v7, 0x0

    .line 34
    if-eqz v5, :cond_f

    .line 35
    .line 36
    invoke-static {}, Lo0/a;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lo0/a;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v9, " find \'"

    .line 57
    .line 58
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v9, "\'"

    .line 62
    .line 63
    const-string v10, "\'\\\'\'"

    .line 64
    .line 65
    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v11, "\' -name \'"

    .line 73
    .line 74
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    aget-object v11, v3, v2

    .line 78
    .line 79
    invoke-virtual {v11, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-lez v6, :cond_2

    .line 90
    .line 91
    const-string v9, " -maxdepth "

    .line 92
    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v4, v6}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-nez v6, :cond_3

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :cond_3
    invoke-static {v5}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    array-length v6, v3

    .line 116
    if-le v6, v1, :cond_4

    .line 117
    .line 118
    aget-object v3, v3, v1

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    move-object v3, v7

    .line 128
    :goto_0
    :try_start_0
    invoke-virtual {v4, v1}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-eqz v6, :cond_e

    .line 133
    .line 134
    if-eqz p6, :cond_5

    .line 135
    .line 136
    invoke-interface/range {p6 .. p6}, Lu0/d;->isCancelled()Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-eqz v8, :cond_5

    .line 141
    .line 142
    const-string v6, "$C\n"

    .line 143
    .line 144
    invoke-virtual {v4, v6}, Ln0/a;->m(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    const/4 v9, 0x2

    .line 154
    if-lt v8, v9, :cond_d

    .line 155
    .line 156
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    const/16 v10, 0x7e

    .line 161
    .line 162
    if-eq v8, v10, :cond_6

    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_6
    const/16 v8, 0x9

    .line 167
    .line 168
    invoke-static {v6, v8}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    array-length v8, v6

    .line 173
    if-lt v8, v9, :cond_d

    .line 174
    .line 175
    aget-object v8, v6, v1

    .line 176
    .line 177
    if-nez v8, :cond_7

    .line 178
    .line 179
    goto/16 :goto_5

    .line 180
    .line 181
    :cond_7
    move-object/from16 v10, p3

    .line 182
    .line 183
    invoke-static {v8, v10}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-nez v8, :cond_8

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_8
    aget-object v8, v6, v1

    .line 191
    .line 192
    const/16 v11, 0x2f

    .line 193
    .line 194
    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(I)I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-ge v8, v1, :cond_9

    .line 199
    .line 200
    aget-object v11, v6, v1

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_9
    aget-object v11, v6, v1

    .line 204
    .line 205
    add-int/lit8 v12, v8, 0x1

    .line 206
    .line 207
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v11

    .line 211
    :goto_1
    if-eqz v3, :cond_a

    .line 212
    .line 213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 214
    .line 215
    .line 216
    move-result-object v12

    .line 217
    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    invoke-virtual {v3, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 222
    .line 223
    .line 224
    move-result-object v12

    .line 225
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    .line 226
    .line 227
    .line 228
    move-result v12

    .line 229
    if-nez v12, :cond_a

    .line 230
    .line 231
    :goto_2
    goto :goto_6

    .line 232
    :cond_a
    new-instance v12, Lg0/e$b;

    .line 233
    .line 234
    invoke-direct {v12}, Lg0/e$b;-><init>()V

    .line 235
    .line 236
    .line 237
    aget-object v9, v6, v9

    .line 238
    .line 239
    const-wide/16 v13, 0x0

    .line 240
    .line 241
    move-object/from16 p1, v3

    .line 242
    .line 243
    invoke-static {v13, v14, v9}, Lb/d;->j0(JLjava/lang/String;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v2

    .line 247
    iput-wide v2, v12, Lg0/e$b;->c:J

    .line 248
    .line 249
    const-wide/16 v15, -0x1

    .line 250
    .line 251
    cmp-long v2, v2, v15

    .line 252
    .line 253
    if-eqz v2, :cond_b

    .line 254
    .line 255
    move v2, v1

    .line 256
    goto :goto_3

    .line 257
    :cond_b
    const/4 v2, 0x0

    .line 258
    :goto_3
    iput-boolean v2, v12, Lg0/e$b;->a:Z

    .line 259
    .line 260
    const/4 v2, 0x3

    .line 261
    aget-object v2, v6, v2

    .line 262
    .line 263
    invoke-static {v13, v14, v2}, Lb/d;->j0(JLjava/lang/String;)J

    .line 264
    .line 265
    .line 266
    move-result-wide v2

    .line 267
    const-wide/16 v13, 0x3e8

    .line 268
    .line 269
    mul-long/2addr v2, v13

    .line 270
    iput-wide v2, v12, Lg0/e$b;->b:J

    .line 271
    .line 272
    const/4 v2, 0x4

    .line 273
    aget-object v2, v6, v2

    .line 274
    .line 275
    iput-object v2, v12, Lg0/e$b;->h:Ljava/lang/String;

    .line 276
    .line 277
    const/4 v2, 0x5

    .line 278
    aget-object v2, v6, v2

    .line 279
    .line 280
    iput-object v2, v12, Lg0/e$b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .line 282
    const-string v2, "root"

    .line 283
    .line 284
    if-ge v8, v1, :cond_c

    .line 285
    .line 286
    :try_start_1
    new-instance v3, Lg0/h;

    .line 287
    .line 288
    invoke-direct {v3, v2, v5}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    move-object/from16 v2, p5

    .line 292
    .line 293
    const/4 v13, 0x0

    .line 294
    goto :goto_4

    .line 295
    :cond_c
    new-instance v3, Lg0/h;

    .line 296
    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    aget-object v6, v6, v1

    .line 306
    .line 307
    const/4 v13, 0x0

    .line 308
    invoke-virtual {v6, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v6

    .line 319
    invoke-direct {v3, v2, v6}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v2, p5

    .line 323
    .line 324
    :goto_4
    invoke-interface {v2, v12, v3, v11, v7}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_d
    :goto_5
    move-object/from16 v10, p3

    .line 329
    .line 330
    :goto_6
    move v13, v2

    .line 331
    move-object/from16 p1, v3

    .line 332
    .line 333
    move-object/from16 v2, p5

    .line 334
    .line 335
    :goto_7
    move-object/from16 v3, p1

    .line 336
    .line 337
    move v2, v13

    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :catch_0
    :cond_e
    move v2, v1

    .line 341
    goto :goto_9

    .line 342
    :cond_f
    :goto_8
    move v13, v2

    .line 343
    move v2, v13

    .line 344
    :goto_9
    iget-object v1, v0, Li0/c;->b:Ln0/a;

    .line 345
    .line 346
    if-nez v1, :cond_10

    .line 347
    .line 348
    goto :goto_a

    .line 349
    :cond_10
    invoke-virtual {v1}, Ln0/a;->close()V

    .line 350
    .line 351
    .line 352
    iput-object v7, v0, Li0/c;->b:Ln0/a;

    .line 353
    .line 354
    :goto_a
    return v2
.end method

.method public final j(Lg0/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lg0/h;->j()Z

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
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Li0/c;->m()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Li0/c;->b:Ln0/a;

    .line 18
    .line 19
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v6, 0x5

    .line 24
    const/4 v7, 0x1

    .line 25
    move-object v3, v0

    .line 26
    move-object v5, p2

    .line 27
    invoke-static/range {v2 .. v7}, Lo0/d;->e(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_5

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p2, Lg0/e$b;

    .line 41
    .line 42
    invoke-direct {p2}, Lg0/e$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lo0/d$a;

    .line 60
    .line 61
    if-eqz p3, :cond_3

    .line 62
    .line 63
    invoke-interface {p3}, Lu0/d;->isCancelled()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    iget-object p1, p0, Li0/c;->b:Ln0/a;

    .line 70
    .line 71
    const-string p3, "$C"

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Ln0/a;->m(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_3
    iget-boolean v3, v2, Lo0/d$a;->g:Z

    .line 78
    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    new-instance v3, Lg0/e$b;

    .line 82
    .line 83
    invoke-direct {v3}, Lg0/e$b;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Li0/c;->b:Ln0/a;

    .line 87
    .line 88
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget-object v2, v2, Lo0/d$a;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v5, v2}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v4, v2, v3}, Lo0/c;->c(Ln0/a;Ljava/lang/String;Lg0/e$b;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iget-wide v4, p2, Lg0/e$b;->c:J

    .line 105
    .line 106
    iget-wide v6, v3, Lg0/e$b;->c:J

    .line 107
    .line 108
    add-long/2addr v4, v6

    .line 109
    iput-wide v4, p2, Lg0/e$b;->c:J

    .line 110
    .line 111
    iget v2, p2, Lg0/e$b;->d:I

    .line 112
    .line 113
    iget v3, v3, Lg0/e$b;->d:I

    .line 114
    .line 115
    add-int/2addr v2, v3

    .line 116
    iput v2, p2, Lg0/e$b;->d:I

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    iget-wide v3, p2, Lg0/e$b;->c:J

    .line 120
    .line 121
    iget-wide v5, v2, Lo0/d$a;->b:J

    .line 122
    .line 123
    add-long/2addr v3, v5

    .line 124
    iput-wide v3, p2, Lg0/e$b;->c:J

    .line 125
    .line 126
    iget v2, p2, Lg0/e$b;->d:I

    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    iput v2, p2, Lg0/e$b;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    :goto_1
    return-object v1

    .line 134
    :catch_0
    move-object p2, v1

    .line 135
    :catch_1
    :cond_6
    iget-object p1, p0, Li0/c;->b:Ln0/a;

    .line 136
    .line 137
    if-nez p1, :cond_7

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_7
    invoke-virtual {p1}, Ln0/a;->close()V

    .line 141
    .line 142
    .line 143
    iput-object v1, p0, Li0/c;->b:Ln0/a;

    .line 144
    .line 145
    :goto_2
    return-object p2
.end method

.method public final m()V
    .locals 1

    .line 1
    sget v0, Ls0/b;->m:I

    .line 2
    .line 3
    invoke-static {v0}, Ln0/a;->g(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget v0, Ls0/b;->m:I

    .line 11
    .line 12
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Li0/c;->b:Ln0/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Ln0/a;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Li0/c;->b:Ln0/a;

    .line 26
    .line 27
    :cond_1
    return-void
.end method
