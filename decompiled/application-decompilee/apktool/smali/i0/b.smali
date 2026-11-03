.class public final Li0/b;
.super Li0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lg0/h;Lc0/b;I)Z
    .locals 29

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
    iput v4, v0, Li0/a;->a:I

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
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/4 v10, 0x3

    .line 26
    const/16 v11, 0x1e

    .line 27
    .line 28
    const/4 v12, 0x2

    .line 29
    const/16 v13, 0x21

    .line 30
    .line 31
    const/4 v14, 0x1

    .line 32
    if-lt v7, v11, :cond_a

    .line 33
    .line 34
    invoke-static {v6}, Lw0/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v15

    .line 38
    if-eqz v15, :cond_a

    .line 39
    .line 40
    const-string v8, "Android/data"

    .line 41
    .line 42
    aget-object v11, v15, v12

    .line 43
    .line 44
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    const-string v11, "Android/obb"

    .line 49
    .line 50
    if-nez v8, :cond_2

    .line 51
    .line 52
    aget-object v8, v15, v12

    .line 53
    .line 54
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move v8, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    move v8, v14

    .line 64
    :goto_1
    const/high16 v16, 0x4000000

    .line 65
    .line 66
    invoke-static/range {v16 .. v16}, Ls0/b;->f(I)Z

    .line 67
    .line 68
    .line 69
    move-result v16

    .line 70
    if-eqz v16, :cond_3

    .line 71
    .line 72
    const/16 v7, 0xa

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v15}, Lm0/h;->b([Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v16

    .line 79
    if-eqz v16, :cond_4

    .line 80
    .line 81
    new-instance v5, Ljava/io/File;

    .line 82
    .line 83
    aget-object v7, v15, v12

    .line 84
    .line 85
    invoke-static {v6, v7}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/16 v7, 0xb

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    if-lt v7, v13, :cond_6

    .line 96
    .line 97
    if-eqz v8, :cond_6

    .line 98
    .line 99
    aget-object v7, v15, v12

    .line 100
    .line 101
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_5

    .line 106
    .line 107
    invoke-static {}, Lg1/h;->b()Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_8

    .line 112
    .line 113
    :cond_5
    move v7, v12

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    aget-object v7, v15, v12

    .line 116
    .line 117
    invoke-static {v7}, Lru/zdevs/zarchiver/io/SAF;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    aget-object v11, v15, v4

    .line 122
    .line 123
    invoke-static {v11}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    if-eqz v11, :cond_7

    .line 128
    .line 129
    invoke-virtual {v11, v7}, Lw0/c$a;->d(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    if-eqz v15, :cond_7

    .line 134
    .line 135
    invoke-virtual {v11}, Lw0/c$a;->a()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    invoke-static {v11, v7, v14, v4}, Lru/zdevs/zarchiver/io/SAF;->m(Ljava/lang/String;Ljava/lang/String;ZZ)Lg0/h;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    if-eqz v7, :cond_7

    .line 144
    .line 145
    iget-object v2, v7, Lg0/h;->c:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lg0/h;->p(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, v7, Lg0/h;->a:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lg0/h;->q(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return v4

    .line 156
    :cond_7
    if-eqz v8, :cond_9

    .line 157
    .line 158
    :cond_8
    move v7, v14

    .line 159
    goto :goto_2

    .line 160
    :cond_9
    move v7, v10

    .line 161
    goto :goto_2

    .line 162
    :cond_a
    move v7, v4

    .line 163
    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_b

    .line 168
    .line 169
    if-eq v7, v12, :cond_b

    .line 170
    .line 171
    return v4

    .line 172
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 173
    .line 174
    .line 175
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 179
    const-string v11, ".."

    .line 180
    .line 181
    if-ne v7, v12, :cond_f

    .line 182
    .line 183
    if-nez v8, :cond_c

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_c
    :try_start_1
    array-length v15, v8

    .line 187
    move v13, v4

    .line 188
    :goto_3
    if-ge v13, v15, :cond_e

    .line 189
    .line 190
    aget-object v9, v8, v13

    .line 191
    .line 192
    const-string v14, "."

    .line 193
    .line 194
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    if-nez v14, :cond_d

    .line 199
    .line 200
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-nez v14, :cond_d

    .line 205
    .line 206
    const-string v14, "ru.zdevs.zarchiver"

    .line 207
    .line 208
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    if-nez v9, :cond_d

    .line 213
    .line 214
    move v14, v4

    .line 215
    goto :goto_4

    .line 216
    :cond_d
    add-int/lit8 v13, v13, 0x1

    .line 217
    .line 218
    const/4 v14, 0x1

    .line 219
    goto :goto_3

    .line 220
    :cond_e
    const/4 v14, 0x1

    .line 221
    :goto_4
    if-eqz v14, :cond_f

    .line 222
    .line 223
    invoke-static {}, Lw0/c;->i()Lw0/c$a;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    iget-object v8, v8, Lw0/c$a;->b:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    invoke-static {v6, v8}, Li0/g;->a(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    :cond_f
    const/4 v9, 0x4

    .line 238
    const v13, 0x7f0c00d7

    .line 239
    .line 240
    .line 241
    if-nez v8, :cond_12

    .line 242
    .line 243
    invoke-static {v3, v12}, Lb/d;->K(II)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_11

    .line 248
    .line 249
    const-string v1, "/"

    .line 250
    .line 251
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-nez v1, :cond_10

    .line 256
    .line 257
    invoke-static {v3, v9}, Lb/d;->K(II)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_10

    .line 262
    .line 263
    new-instance v1, Lc0/d;

    .line 264
    .line 265
    invoke-direct {v1, v11, v10}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    :cond_10
    iput v13, v0, Li0/a;->a:I

    .line 272
    .line 273
    const/4 v1, 0x1

    .line 274
    return v1

    .line 275
    :cond_11
    return v4

    .line 276
    :cond_12
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    invoke-static {v14}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    sget-object v15, Lm0/h;->a:Ljava/lang/String;

    .line 285
    .line 286
    const-string v13, ""

    .line 287
    .line 288
    invoke-virtual {v6, v15, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v13

    .line 292
    invoke-static {v13, v4}, Li0/a;->n(Ljava/lang/String;Z)B

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    const/16 v15, 0x20

    .line 297
    .line 298
    invoke-static {v3, v15}, Lb/d;->K(II)Z

    .line 299
    .line 300
    .line 301
    move-result v15

    .line 302
    if-nez v15, :cond_13

    .line 303
    .line 304
    const/4 v15, 0x1

    .line 305
    goto :goto_5

    .line 306
    :cond_13
    move v15, v4

    .line 307
    :goto_5
    array-length v12, v8

    .line 308
    const/4 v4, 0x1

    .line 309
    add-int/2addr v12, v4

    .line 310
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 311
    .line 312
    .line 313
    const/16 v12, 0x2f

    .line 314
    .line 315
    invoke-virtual {v14, v12}, Ljava/lang/String;->lastIndexOf(I)I

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    if-le v12, v4, :cond_14

    .line 320
    .line 321
    invoke-static {v3, v9}, Lb/d;->K(II)Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_14

    .line 326
    .line 327
    new-instance v4, Lc0/d;

    .line 328
    .line 329
    invoke-direct {v4, v11, v10}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 330
    .line 331
    .line 332
    const/4 v11, 0x0

    .line 333
    invoke-virtual {v2, v11, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    const/4 v11, 0x2

    .line 341
    invoke-static {v3, v11}, Lb/d;->K(II)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-nez v3, :cond_15

    .line 346
    .line 347
    const/4 v11, 0x1

    .line 348
    goto :goto_6

    .line 349
    :cond_15
    const/4 v11, 0x0

    .line 350
    :goto_6
    array-length v12, v8

    .line 351
    move/from16 v17, v11

    .line 352
    .line 353
    const/4 v9, 0x0

    .line 354
    move v11, v3

    .line 355
    const/4 v3, 0x0

    .line 356
    :goto_7
    if-ge v9, v12, :cond_24

    .line 357
    .line 358
    aget-object v10, v8, v9

    .line 359
    .line 360
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result v18

    .line 364
    if-nez v18, :cond_23

    .line 365
    .line 366
    move-object/from16 v26, v8

    .line 367
    .line 368
    move/from16 p3, v12

    .line 369
    .line 370
    if-eqz v15, :cond_16

    .line 371
    .line 372
    const/4 v8, 0x0

    .line 373
    invoke-virtual {v10, v8}, Ljava/lang/String;->charAt(I)C

    .line 374
    .line 375
    .line 376
    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 377
    const/16 v8, 0x2e

    .line 378
    .line 379
    if-ne v12, v8, :cond_16

    .line 380
    .line 381
    goto/16 :goto_d

    .line 382
    .line 383
    :cond_16
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v8

    .line 398
    invoke-static {v8}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 399
    .line 400
    .line 401
    move-result-object v12
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 402
    move-object/from16 v27, v14

    .line 403
    .line 404
    :try_start_3
    iget v14, v12, Landroid/system/StructStat;->st_mode:I

    .line 405
    .line 406
    invoke-static {v14}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    .line 407
    .line 408
    .line 409
    move-result v14

    .line 410
    if-eqz v14, :cond_17

    .line 411
    .line 412
    invoke-static {v8}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 413
    .line 414
    .line 415
    move-result-object v12
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 416
    move/from16 v28, v15

    .line 417
    .line 418
    const/4 v14, 0x1

    .line 419
    goto :goto_8

    .line 420
    :cond_17
    move/from16 v28, v15

    .line 421
    .line 422
    const/4 v14, 0x0

    .line 423
    :goto_8
    :try_start_4
    iget v15, v12, Landroid/system/StructStat;->st_mode:I

    .line 424
    .line 425
    invoke-static {v15}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    .line 426
    .line 427
    .line 428
    move-result v15

    .line 429
    const-wide/16 v18, -0x2

    .line 430
    .line 431
    if-eqz v15, :cond_1a

    .line 432
    .line 433
    invoke-static {v10, v13}, Li0/a;->l(Ljava/lang/String;B)B

    .line 434
    .line 435
    .line 436
    move-result v15

    .line 437
    if-nez v15, :cond_18

    .line 438
    .line 439
    invoke-static {v8}, Li0/a;->m(Ljava/lang/String;)B

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    move v15, v8

    .line 444
    :cond_18
    if-eqz v14, :cond_19

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_19
    const-wide/16 v18, 0x0

    .line 448
    .line 449
    :goto_9
    move/from16 v21, v15

    .line 450
    .line 451
    move-wide/from16 v24, v18

    .line 452
    .line 453
    const/16 v20, 0x4

    .line 454
    .line 455
    goto :goto_b

    .line 456
    :cond_1a
    if-eqz v14, :cond_1b

    .line 457
    .line 458
    goto :goto_a

    .line 459
    :cond_1b
    iget-wide v14, v12, Landroid/system/StructStat;->st_size:J

    .line 460
    .line 461
    move-wide/from16 v18, v14

    .line 462
    .line 463
    :goto_a
    const/4 v8, -0x1

    .line 464
    move/from16 v20, v8

    .line 465
    .line 466
    move-wide/from16 v24, v18

    .line 467
    .line 468
    const/16 v17, 0x0

    .line 469
    .line 470
    const/16 v21, 0x0

    .line 471
    .line 472
    :goto_b
    iget-wide v14, v12, Landroid/system/StructStat;->st_mtime:J
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 473
    .line 474
    :try_start_5
    new-instance v8, Lc0/d;

    .line 475
    .line 476
    const-wide/16 v18, 0x3e8

    .line 477
    .line 478
    mul-long v22, v14, v18

    .line 479
    .line 480
    move-object/from16 v18, v8

    .line 481
    .line 482
    move-object/from16 v19, v10

    .line 483
    .line 484
    invoke-direct/range {v18 .. v25}, Lc0/d;-><init>(Ljava/lang/String;BBJJ)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    goto :goto_e

    .line 491
    :catch_0
    move-object/from16 v27, v14

    .line 492
    .line 493
    :catch_1
    move/from16 v28, v15

    .line 494
    .line 495
    :catch_2
    if-eqz v11, :cond_1c

    .line 496
    .line 497
    goto :goto_e

    .line 498
    :cond_1c
    const/16 v8, 0xa

    .line 499
    .line 500
    if-eq v7, v8, :cond_22

    .line 501
    .line 502
    if-nez v7, :cond_1d

    .line 503
    .line 504
    invoke-static {v6}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 505
    .line 506
    .line 507
    move-result v12

    .line 508
    if-eqz v12, :cond_1d

    .line 509
    .line 510
    goto :goto_c

    .line 511
    :cond_1d
    const/4 v12, 0x2

    .line 512
    if-ne v7, v12, :cond_1e

    .line 513
    .line 514
    new-instance v14, Lc0/d;

    .line 515
    .line 516
    const/16 v20, 0x4

    .line 517
    .line 518
    const/16 v21, 0x7e

    .line 519
    .line 520
    const-wide/16 v22, -0x1

    .line 521
    .line 522
    const-wide/16 v24, 0x0

    .line 523
    .line 524
    move-object/from16 v18, v14

    .line 525
    .line 526
    move-object/from16 v19, v10

    .line 527
    .line 528
    invoke-direct/range {v18 .. v25}, Lc0/d;-><init>(Ljava/lang/String;BBJJ)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    const/4 v10, 0x3

    .line 535
    goto :goto_f

    .line 536
    :cond_1e
    const/4 v3, 0x1

    .line 537
    if-ne v7, v3, :cond_1f

    .line 538
    .line 539
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 540
    .line 541
    const/16 v10, 0x21

    .line 542
    .line 543
    if-lt v3, v10, :cond_20

    .line 544
    .line 545
    :cond_1f
    const/4 v10, 0x3

    .line 546
    if-ne v7, v10, :cond_21

    .line 547
    .line 548
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 549
    .line 550
    .line 551
    const v1, 0x7f0c00d7

    .line 552
    .line 553
    .line 554
    iput v1, v0, Li0/a;->a:I

    .line 555
    .line 556
    const/4 v1, 0x1

    .line 557
    return v1

    .line 558
    :cond_21
    const/4 v3, 0x1

    .line 559
    const/4 v11, 0x1

    .line 560
    goto :goto_f

    .line 561
    :cond_22
    :goto_c
    const/4 v1, 0x0

    .line 562
    return v1

    .line 563
    :cond_23
    move-object/from16 v26, v8

    .line 564
    .line 565
    move/from16 p3, v12

    .line 566
    .line 567
    :goto_d
    move-object/from16 v27, v14

    .line 568
    .line 569
    move/from16 v28, v15

    .line 570
    .line 571
    :goto_e
    const/16 v8, 0xa

    .line 572
    .line 573
    const/4 v10, 0x3

    .line 574
    const/4 v12, 0x2

    .line 575
    :goto_f
    add-int/lit8 v9, v9, 0x1

    .line 576
    .line 577
    move/from16 v12, p3

    .line 578
    .line 579
    move-object/from16 v8, v26

    .line 580
    .line 581
    move-object/from16 v14, v27

    .line 582
    .line 583
    move/from16 v15, v28

    .line 584
    .line 585
    goto/16 :goto_7

    .line 586
    .line 587
    :cond_24
    if-eqz v17, :cond_26

    .line 588
    .line 589
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 590
    .line 591
    const/16 v8, 0x21

    .line 592
    .line 593
    if-ge v6, v8, :cond_25

    .line 594
    .line 595
    const/16 v8, 0x1e

    .line 596
    .line 597
    if-lt v6, v8, :cond_26

    .line 598
    .line 599
    sget-object v6, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 600
    .line 601
    invoke-static {v6}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 602
    .line 603
    .line 604
    move-result v6

    .line 605
    if-nez v6, :cond_26

    .line 606
    .line 607
    :cond_25
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    if-nez v6, :cond_26

    .line 612
    .line 613
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 614
    .line 615
    .line 616
    const v6, 0x7f0c00d7

    .line 617
    .line 618
    .line 619
    iput v6, v0, Li0/a;->a:I

    .line 620
    .line 621
    goto :goto_11

    .line 622
    :cond_26
    const v6, 0x7f0c00d7

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 626
    .line 627
    .line 628
    move-result v2

    .line 629
    if-gt v2, v4, :cond_28

    .line 630
    .line 631
    if-eqz v3, :cond_27

    .line 632
    .line 633
    move v13, v6

    .line 634
    goto :goto_10

    .line 635
    :cond_27
    const v13, 0x7f0c00e6

    .line 636
    .line 637
    .line 638
    :goto_10
    iput v13, v0, Li0/a;->a:I

    .line 639
    .line 640
    goto :goto_11

    .line 641
    :cond_28
    const/16 v2, 0xb

    .line 642
    .line 643
    if-ne v7, v2, :cond_29

    .line 644
    .line 645
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v2

    .line 649
    invoke-virtual {v1, v2}, Lg0/h;->p(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 650
    .line 651
    .line 652
    :cond_29
    :goto_11
    const-string v2, "file"

    .line 653
    .line 654
    invoke-virtual {v1, v2}, Lg0/h;->q(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    const/4 v1, 0x1

    .line 658
    return v1

    .line 659
    :catch_3
    const/4 v1, 0x0

    .line 660
    return v1
.end method

.method public final c(Lc0/i;)Lc0/i;
    .locals 4

    .line 1
    new-instance v0, Lc0/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc0/b;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lc0/i;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lc0/d;

    .line 25
    .line 26
    check-cast v1, Lc0/f;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v3, v1, Lc0/f;->k:Lg0/h;

    .line 34
    .line 35
    iget-object v3, v3, Lg0/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x2f

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lc0/d;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :try_start_0
    sget v3, Landroid/system/OsConstants;->F_OK:I

    .line 55
    .line 56
    invoke-static {v2, v3}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lc0/i;->i(Lc0/f;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-object v0
.end method

.method public final e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Li0/a;->e(Lg0/h;Lu0/d;)Lg0/e$b;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget p1, p1, Landroid/system/StructStat;->st_mode:I

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    const/4 v1, 0x0

    .line 21
    move v2, v1

    .line 22
    :goto_0
    const/4 v3, 0x3

    .line 23
    if-ge v1, v3, :cond_0

    .line 24
    .line 25
    rem-int/lit8 v3, p1, 0x8

    .line 26
    .line 27
    mul-int/2addr v3, v0

    .line 28
    add-int/2addr v2, v3

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    mul-int/lit8 v0, v0, 0xa

    .line 32
    .line 33
    div-int/lit8 p1, p1, 0x8

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iput v2, p2, Lg0/e$b;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    :catch_0
    :cond_1
    return-object p2
.end method

.method public final h(Lg0/h;)Lg0/e$a;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lg0/h;->r()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v6, Lg0/e$a;

    .line 23
    .line 24
    iget-wide v0, p1, Landroid/system/StructStatVfs;->f_bavail:J

    .line 25
    .line 26
    iget-wide v2, p1, Landroid/system/StructStatVfs;->f_bsize:J

    .line 27
    .line 28
    mul-long v4, v0, v2

    .line 29
    .line 30
    iget-wide v0, p1, Landroid/system/StructStatVfs;->f_blocks:J

    .line 31
    .line 32
    mul-long v7, v0, v2

    .line 33
    .line 34
    const-string v1, "Local"

    .line 35
    .line 36
    move-object v0, v6

    .line 37
    move-wide v2, v4

    .line 38
    move-wide v4, v7

    .line 39
    invoke-direct/range {v0 .. v5}, Lg0/e$a;-><init>(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    return-object v6

    .line 43
    :catch_0
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    return-object p1
.end method
