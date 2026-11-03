.class public final Lr0/b;
.super Lr0/g;
.source "SourceFile"


# instance fields
.field public final synthetic i:I

.field public j:Lg0/h;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V
    .locals 1

    .line 1
    iput p3, p0, Lr0/b;->i:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_0

    .line 5
    .line 6
    const/4 p3, 0x7

    .line 7
    invoke-direct {p0, p1, p3, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 p3, 0x9

    .line 12
    .line 13
    invoke-direct {p0, p1, p3, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final p()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lr0/b;->i:I

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v6, 0x3

    .line 7
    const/4 v7, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    move v4, v7

    .line 12
    goto/16 :goto_19

    .line 13
    .line 14
    :pswitch_0
    const/4 v0, 0x4

    .line 15
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    if-eqz v8, :cond_0

    .line 20
    .line 21
    move v6, v0

    .line 22
    :cond_0
    iget-object v8, v1, Lr0/b;->j:Lg0/h;

    .line 23
    .line 24
    invoke-virtual {v1, v8, v7}, Lr0/g;->d(Lg0/h;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-nez v8, :cond_1

    .line 29
    .line 30
    goto/16 :goto_18

    .line 31
    .line 32
    :cond_1
    iget-object v8, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v8, Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    move v9, v5

    .line 41
    :goto_0
    const/16 v10, 0x5c

    .line 42
    .line 43
    if-ge v9, v8, :cond_3

    .line 44
    .line 45
    iget-object v11, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v11, Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    check-cast v11, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v11, v10}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    iget-object v11, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v11, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    check-cast v11, Lg0/h;

    .line 72
    .line 73
    invoke-virtual {v1, v11, v10, v6, v7}, Lr0/g;->g(Lg0/h;Ljava/util/List;II)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-nez v10, :cond_2

    .line 78
    .line 79
    goto/16 :goto_18

    .line 80
    .line 81
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v1, v7}, Lr0/g;->k(I)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_a

    .line 89
    .line 90
    new-instance v6, Lg0/h;

    .line 91
    .line 92
    iget-object v8, v1, Lr0/b;->j:Lg0/h;

    .line 93
    .line 94
    iget-object v8, v8, Lg0/h;->c:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {v6, v8}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v6, v7}, Lq0/c;->c(Lg0/h;Z)Lq0/c;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    if-eqz v8, :cond_4

    .line 104
    .line 105
    sget-object v9, Lb/d;->e:[B

    .line 106
    .line 107
    iget v11, v1, Lr0/g;->c:I

    .line 108
    .line 109
    aget-byte v12, v9, v11

    .line 110
    .line 111
    or-int/lit8 v12, v12, -0x80

    .line 112
    .line 113
    int-to-byte v12, v12

    .line 114
    aput-byte v12, v9, v11

    .line 115
    .line 116
    invoke-virtual {v8, v1}, Lq0/c;->b(Lr0/a;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_4

    .line 121
    .line 122
    iget-object v0, v1, Lr0/b;->j:Lg0/h;

    .line 123
    .line 124
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v2, "Failed to write to archive"

    .line 129
    .line 130
    invoke-virtual {v1, v0, v2}, Lr0/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_18

    .line 134
    .line 135
    :cond_4
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-nez v9, :cond_5

    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :cond_5
    iget-object v9, v1, Lr0/b;->j:Lg0/h;

    .line 144
    .line 145
    invoke-virtual {v9}, Lg0/h;->r()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    iget-object v11, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v11, Ljava/util/List;

    .line 152
    .line 153
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    move v12, v5

    .line 158
    :goto_1
    if-ge v12, v11, :cond_9

    .line 159
    .line 160
    iget-object v13, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v13, Ljava/util/List;

    .line 163
    .line 164
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v13

    .line 168
    check-cast v13, Lg0/h;

    .line 169
    .line 170
    invoke-virtual {v13}, Lg0/h;->r()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v13

    .line 174
    invoke-static {v13}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v13

    .line 178
    iget-object v14, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v14, Ljava/util/List;

    .line 181
    .line 182
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    check-cast v14, Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v14, v10}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    array-length v15, v14

    .line 193
    move v2, v5

    .line 194
    :goto_2
    if-ge v2, v15, :cond_8

    .line 195
    .line 196
    aget-object v3, v14, v2

    .line 197
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v10, "/"

    .line 204
    .line 205
    invoke-virtual {v3, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v16

    .line 209
    if-eqz v16, :cond_6

    .line 210
    .line 211
    const-string v16, ""

    .line 212
    .line 213
    move-object/from16 v0, v16

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    move-object v0, v13

    .line 217
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_7

    .line 235
    .line 236
    new-array v0, v7, [Lg0/h;

    .line 237
    .line 238
    iget-object v2, v1, Lr0/b;->j:Lg0/h;

    .line 239
    .line 240
    aput-object v2, v0, v5

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 244
    .line 245
    const/4 v0, 0x4

    .line 246
    const/16 v10, 0x5c

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_8
    add-int/lit8 v12, v12, 0x1

    .line 250
    .line 251
    const/4 v0, 0x4

    .line 252
    const/16 v10, 0x5c

    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_9
    :goto_4
    const/4 v0, 0x0

    .line 256
    goto :goto_5

    .line 257
    :cond_a
    const/4 v0, 0x0

    .line 258
    const/4 v6, 0x0

    .line 259
    const/4 v8, 0x0

    .line 260
    :goto_5
    iget-object v2, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast v2, Ljava/util/List;

    .line 263
    .line 264
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    move v3, v5

    .line 269
    move v9, v3

    .line 270
    move v4, v7

    .line 271
    :goto_6
    if-ge v3, v2, :cond_13

    .line 272
    .line 273
    iget-object v10, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v10, Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    check-cast v10, Ljava/lang/String;

    .line 282
    .line 283
    iget-object v11, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v11, Ljava/util/List;

    .line 286
    .line 287
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    check-cast v11, Lg0/h;

    .line 292
    .line 293
    iget v12, v1, Lr0/g;->c:I

    .line 294
    .line 295
    iget-object v13, v1, Lr0/b;->j:Lg0/h;

    .line 296
    .line 297
    iget-object v13, v13, Lg0/h;->c:Ljava/lang/String;

    .line 298
    .line 299
    invoke-static {v12, v5, v13}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 303
    .line 304
    .line 305
    move-result v12

    .line 306
    if-eqz v12, :cond_b

    .line 307
    .line 308
    move v10, v5

    .line 309
    goto :goto_8

    .line 310
    :cond_b
    invoke-virtual {v1, v7}, Lr0/g;->k(I)Z

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    if-eqz v12, :cond_c

    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 317
    .line 318
    .line 319
    move-result-object v12

    .line 320
    iget-object v13, v1, Lr0/b;->j:Lg0/h;

    .line 321
    .line 322
    iget-object v13, v13, Lg0/h;->c:Ljava/lang/String;

    .line 323
    .line 324
    iget-object v14, v1, Lr0/b;->k:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v11, v11, Lg0/h;->c:Ljava/lang/String;

    .line 327
    .line 328
    invoke-static {v12, v13, v14, v10, v11}, Lq0/a;->a(Ln0/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v10

    .line 332
    goto :goto_8

    .line 333
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lr0/g;->h()Z

    .line 334
    .line 335
    .line 336
    move-result v12

    .line 337
    if-eqz v12, :cond_12

    .line 338
    .line 339
    if-eqz v8, :cond_d

    .line 340
    .line 341
    iget-object v12, v8, Lq0/c;->b:Ljava/lang/String;

    .line 342
    .line 343
    goto :goto_7

    .line 344
    :cond_d
    iget-object v12, v1, Lr0/b;->j:Lg0/h;

    .line 345
    .line 346
    iget-object v12, v12, Lg0/h;->c:Ljava/lang/String;

    .line 347
    .line 348
    :goto_7
    iget v13, v1, Lr0/g;->c:I

    .line 349
    .line 350
    iget-object v14, v1, Lr0/b;->k:Ljava/lang/String;

    .line 351
    .line 352
    iget-object v11, v11, Lg0/h;->c:Ljava/lang/String;

    .line 353
    .line 354
    invoke-static {v13, v12, v14, v10, v11}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cAddFiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v10

    .line 358
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lr0/g;->n()V

    .line 359
    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 362
    .line 363
    .line 364
    move-result v11

    .line 365
    if-eqz v11, :cond_e

    .line 366
    .line 367
    goto :goto_c

    .line 368
    :cond_e
    if-eqz v4, :cond_f

    .line 369
    .line 370
    if-eqz v10, :cond_f

    .line 371
    .line 372
    move v4, v7

    .line 373
    goto :goto_9

    .line 374
    :cond_f
    move v4, v5

    .line 375
    :goto_9
    if-nez v9, :cond_11

    .line 376
    .line 377
    if-eqz v10, :cond_10

    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_10
    move v9, v5

    .line 381
    goto :goto_b

    .line 382
    :cond_11
    :goto_a
    move v9, v7

    .line 383
    :goto_b
    add-int/lit8 v3, v3, 0x1

    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_12
    move v4, v5

    .line 387
    :cond_13
    :goto_c
    if-eqz v8, :cond_14

    .line 388
    .line 389
    invoke-virtual {v8, v1}, Lq0/c;->a(Lr0/a;)Z

    .line 390
    .line 391
    .line 392
    :cond_14
    invoke-virtual {v1, v7}, Lr0/g;->k(I)Z

    .line 393
    .line 394
    .line 395
    move-result v2

    .line 396
    if-nez v2, :cond_1e

    .line 397
    .line 398
    const/4 v2, 0x4

    .line 399
    invoke-virtual {v1, v2}, Lr0/g;->k(I)Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz v2, :cond_1e

    .line 404
    .line 405
    if-eqz v4, :cond_1e

    .line 406
    .line 407
    invoke-virtual/range {p0 .. p0}, Lr0/g;->l()Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-nez v2, :cond_1e

    .line 412
    .line 413
    invoke-static {v6}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lg0/f;->d()Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_15

    .line 422
    .line 423
    invoke-virtual {v2}, Lg0/f;->o()J

    .line 424
    .line 425
    .line 426
    move-result-wide v2

    .line 427
    const-wide/16 v10, 0xc8

    .line 428
    .line 429
    cmp-long v2, v2, v10

    .line 430
    .line 431
    if-lez v2, :cond_15

    .line 432
    .line 433
    move v2, v7

    .line 434
    goto :goto_d

    .line 435
    :cond_15
    move v2, v5

    .line 436
    :goto_d
    if-eqz v2, :cond_1e

    .line 437
    .line 438
    iget-object v2, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast v2, Ljava/util/List;

    .line 441
    .line 442
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    check-cast v2, Ljava/lang/String;

    .line 447
    .line 448
    const/16 v3, 0x5c

    .line 449
    .line 450
    invoke-static {v2, v3}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    array-length v3, v2

    .line 455
    if-nez v3, :cond_16

    .line 456
    .line 457
    goto/16 :goto_15

    .line 458
    .line 459
    :cond_16
    aget-object v3, v2, v5

    .line 460
    .line 461
    const-string v6, "/"

    .line 462
    .line 463
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    if-eqz v3, :cond_17

    .line 468
    .line 469
    new-instance v3, Lg0/h;

    .line 470
    .line 471
    aget-object v2, v2, v5

    .line 472
    .line 473
    invoke-direct {v3, v2}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    goto :goto_e

    .line 477
    :cond_17
    new-instance v3, Lg0/h;

    .line 478
    .line 479
    iget-object v8, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v8, Ljava/util/List;

    .line 482
    .line 483
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v8

    .line 487
    check-cast v8, Lg0/h;

    .line 488
    .line 489
    aget-object v2, v2, v5

    .line 490
    .line 491
    invoke-direct {v3, v2, v8}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 492
    .line 493
    .line 494
    :goto_e
    invoke-virtual {v3}, Lg0/h;->j()Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_18

    .line 499
    .line 500
    invoke-static {v3}, Lw0/f;->b(Lg0/h;)B

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    if-ne v2, v7, :cond_18

    .line 505
    .line 506
    move v2, v7

    .line 507
    goto :goto_f

    .line 508
    :cond_18
    move v2, v5

    .line 509
    :goto_f
    if-eqz v0, :cond_19

    .line 510
    .line 511
    array-length v3, v0

    .line 512
    if-eqz v3, :cond_19

    .line 513
    .line 514
    move v3, v7

    .line 515
    goto :goto_10

    .line 516
    :cond_19
    move v3, v5

    .line 517
    :goto_10
    iget-object v8, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v8, Ljava/util/List;

    .line 520
    .line 521
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    move v10, v5

    .line 526
    :goto_11
    if-ge v10, v8, :cond_1e

    .line 527
    .line 528
    iget-object v11, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v11, Ljava/util/List;

    .line 531
    .line 532
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v11

    .line 536
    check-cast v11, Lg0/h;

    .line 537
    .line 538
    iget-object v12, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v12, Ljava/util/List;

    .line 541
    .line 542
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v12

    .line 546
    check-cast v12, Ljava/lang/String;

    .line 547
    .line 548
    const/16 v13, 0x5c

    .line 549
    .line 550
    invoke-static {v12, v13}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v12

    .line 554
    array-length v13, v12

    .line 555
    move v14, v5

    .line 556
    :goto_12
    if-ge v14, v13, :cond_1d

    .line 557
    .line 558
    aget-object v15, v12, v14

    .line 559
    .line 560
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 561
    .line 562
    .line 563
    move-result v16

    .line 564
    if-eqz v16, :cond_1a

    .line 565
    .line 566
    goto :goto_14

    .line 567
    :cond_1a
    invoke-virtual {v15, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 568
    .line 569
    .line 570
    move-result v16

    .line 571
    new-instance v7, Lg0/h;

    .line 572
    .line 573
    if-eqz v16, :cond_1b

    .line 574
    .line 575
    invoke-direct {v7, v15}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    goto :goto_13

    .line 579
    :cond_1b
    invoke-direct {v7, v15, v11}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 580
    .line 581
    .line 582
    :goto_13
    invoke-static {v7}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 583
    .line 584
    .line 585
    move-result-object v15

    .line 586
    invoke-virtual {v15}, Lg0/f;->d()Z

    .line 587
    .line 588
    .line 589
    move-result v16

    .line 590
    if-eqz v16, :cond_1c

    .line 591
    .line 592
    invoke-static {v1, v15, v0}, Lq0/b;->g(Lr0/a;Lg0/f;[Lg0/h;)V

    .line 593
    .line 594
    .line 595
    if-eqz v2, :cond_1c

    .line 596
    .line 597
    iget-object v7, v7, Lg0/h;->c:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v15}, Lg0/f;->k()Z

    .line 600
    .line 601
    .line 602
    move-result v15

    .line 603
    invoke-static {v7, v15, v3}, Lp0/f;->c(Ljava/lang/String;ZZ)V

    .line 604
    .line 605
    .line 606
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    .line 607
    .line 608
    const/4 v7, 0x1

    .line 609
    goto :goto_12

    .line 610
    :cond_1d
    :goto_14
    add-int/lit8 v10, v10, 0x1

    .line 611
    .line 612
    const/4 v7, 0x1

    .line 613
    goto :goto_11

    .line 614
    :cond_1e
    :goto_15
    if-eqz v4, :cond_1f

    .line 615
    .line 616
    const/high16 v2, 0x120000

    .line 617
    .line 618
    goto :goto_16

    .line 619
    :cond_1f
    const/high16 v2, 0x110000

    .line 620
    .line 621
    :goto_16
    invoke-virtual {v1, v2}, Lr0/g;->q(I)V

    .line 622
    .line 623
    .line 624
    iget-object v0, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 625
    .line 626
    iget-object v2, v1, Lr0/g;->h:Ljava/util/ArrayList;

    .line 627
    .line 628
    const/4 v3, 0x0

    .line 629
    invoke-virtual {v0, v1, v4, v2, v3}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 630
    .line 631
    .line 632
    const/16 v0, 0x100

    .line 633
    .line 634
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-eqz v0, :cond_22

    .line 639
    .line 640
    if-eqz v4, :cond_22

    .line 641
    .line 642
    iget-object v0, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v0, Ljava/util/List;

    .line 645
    .line 646
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    check-cast v0, Lg0/h;

    .line 651
    .line 652
    if-eqz v0, :cond_22

    .line 653
    .line 654
    invoke-virtual {v0}, Lg0/h;->j()Z

    .line 655
    .line 656
    .line 657
    move-result v2

    .line 658
    if-eqz v2, :cond_22

    .line 659
    .line 660
    iget-object v2, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v2, Ljava/util/List;

    .line 663
    .line 664
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    check-cast v2, Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    if-nez v3, :cond_22

    .line 675
    .line 676
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    const/16 v4, 0x5c

    .line 681
    .line 682
    if-ne v3, v4, :cond_20

    .line 683
    .line 684
    const/4 v3, 0x1

    .line 685
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    :cond_20
    const-string v3, "\\"

    .line 690
    .line 691
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    if-nez v3, :cond_22

    .line 696
    .line 697
    iget-object v3, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 698
    .line 699
    iget v4, v1, Lr0/g;->c:I

    .line 700
    .line 701
    new-instance v6, Ljava/lang/StringBuilder;

    .line 702
    .line 703
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v0}, Lg0/h;->r()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    const/16 v0, 0x2f

    .line 714
    .line 715
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    monitor-enter v3

    .line 726
    :try_start_0
    iget-boolean v2, v3, Lru/zdevs/zarchiver/service/ZArchiverService;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .line 728
    if-nez v2, :cond_21

    .line 729
    .line 730
    monitor-exit v3

    .line 731
    goto :goto_17

    .line 732
    :cond_21
    :try_start_1
    invoke-static {v4, v5}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    const-string v4, "iAction"

    .line 737
    .line 738
    const/16 v5, 0x14

    .line 739
    .line 740
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    .line 742
    .line 743
    const-string v4, "sFilePath"

    .line 744
    .line 745
    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .line 750
    .line 751
    monitor-exit v3

    .line 752
    goto :goto_17

    .line 753
    :catchall_0
    move-exception v0

    .line 754
    monitor-exit v3

    .line 755
    throw v0

    .line 756
    :cond_22
    :goto_17
    if-eqz v9, :cond_23

    .line 757
    .line 758
    iget-object v0, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 759
    .line 760
    iget v2, v1, Lr0/g;->c:I

    .line 761
    .line 762
    const/4 v3, 0x0

    .line 763
    const/4 v4, 0x1

    .line 764
    invoke-virtual {v0, v2, v4, v3}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 765
    .line 766
    .line 767
    :cond_23
    :goto_18
    return-void

    .line 768
    :goto_19
    iget-object v0, v1, Lr0/b;->j:Lg0/h;

    .line 769
    .line 770
    invoke-virtual {v1, v0, v4}, Lr0/g;->d(Lg0/h;Z)Z

    .line 771
    .line 772
    .line 773
    move-result v0

    .line 774
    if-nez v0, :cond_24

    .line 775
    .line 776
    goto/16 :goto_1f

    .line 777
    .line 778
    :cond_24
    iget-object v0, v1, Lr0/b;->j:Lg0/h;

    .line 779
    .line 780
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 781
    .line 782
    iget v2, v1, Lr0/g;->c:I

    .line 783
    .line 784
    invoke-static {v2, v5, v0}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-eqz v0, :cond_25

    .line 792
    .line 793
    goto/16 :goto_1d

    .line 794
    .line 795
    :cond_25
    invoke-virtual {v1, v4}, Lr0/g;->k(I)Z

    .line 796
    .line 797
    .line 798
    move-result v0

    .line 799
    if-eqz v0, :cond_2a

    .line 800
    .line 801
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    iget-object v3, v1, Lr0/b;->j:Lg0/h;

    .line 806
    .line 807
    iget-object v3, v3, Lg0/h;->c:Ljava/lang/String;

    .line 808
    .line 809
    iget-object v4, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v4, Ljava/lang/String;

    .line 812
    .line 813
    iget-object v7, v1, Lr0/b;->k:Ljava/lang/String;

    .line 814
    .line 815
    iget-object v8, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 816
    .line 817
    check-cast v8, Ljava/lang/String;

    .line 818
    .line 819
    sget-object v9, Lq0/a;->a:Ljava/util/ArrayList;

    .line 820
    .line 821
    invoke-virtual {v0}, Ln0/a;->f()Z

    .line 822
    .line 823
    .line 824
    move-result v9

    .line 825
    if-nez v9, :cond_26

    .line 826
    .line 827
    goto/16 :goto_1d

    .line 828
    .line 829
    :cond_26
    invoke-static {v0}, Lq0/a;->b(Ln0/a;)V

    .line 830
    .line 831
    .line 832
    invoke-static {v3}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    const/4 v9, 0x1

    .line 837
    invoke-static {v0, v3, v9}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v10

    .line 841
    invoke-static {v4}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v4

    .line 845
    new-instance v9, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .line 849
    .line 850
    invoke-static {}, Lb/d;->r()Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v11

    .line 854
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    const-string v11, " rn \'"

    .line 858
    .line 859
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    const-string v11, "\'"

    .line 863
    .line 864
    const-string v12, "\'\\\'\'"

    .line 865
    .line 866
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    const-string v3, "\' "

    .line 874
    .line 875
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    .line 877
    .line 878
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v3, " -- \'"

    .line 882
    .line 883
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v3, "\' \'"

    .line 894
    .line 895
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    invoke-virtual {v0, v3}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 913
    .line 914
    .line 915
    move-result v3

    .line 916
    if-nez v3, :cond_27

    .line 917
    .line 918
    goto :goto_1a

    .line 919
    :cond_27
    invoke-static {v0}, Lb/d;->S(Ln0/a;)I

    .line 920
    .line 921
    .line 922
    move-result v3

    .line 923
    const/4 v4, 0x2

    .line 924
    if-ne v3, v4, :cond_28

    .line 925
    .line 926
    const/4 v7, 0x1

    .line 927
    goto :goto_1b

    .line 928
    :cond_28
    :goto_1a
    move v7, v5

    .line 929
    :goto_1b
    if-eqz v10, :cond_29

    .line 930
    .line 931
    invoke-static {v0, v10, v5}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    :cond_29
    invoke-static {v0}, Lq0/a;->d(Ln0/a;)V

    .line 935
    .line 936
    .line 937
    move v5, v7

    .line 938
    goto :goto_1d

    .line 939
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lr0/g;->h()Z

    .line 940
    .line 941
    .line 942
    move-result v0

    .line 943
    if-eqz v0, :cond_2d

    .line 944
    .line 945
    new-instance v0, Lg0/h;

    .line 946
    .line 947
    iget-object v3, v1, Lr0/b;->j:Lg0/h;

    .line 948
    .line 949
    iget-object v3, v3, Lg0/h;->c:Ljava/lang/String;

    .line 950
    .line 951
    invoke-direct {v0, v3}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    const/4 v3, 0x1

    .line 955
    invoke-static {v0, v3}, Lq0/c;->c(Lg0/h;Z)Lq0/c;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    if-eqz v3, :cond_2b

    .line 960
    .line 961
    sget-object v0, Lb/d;->e:[B

    .line 962
    .line 963
    aget-byte v4, v0, v2

    .line 964
    .line 965
    or-int/lit8 v4, v4, -0x80

    .line 966
    .line 967
    int-to-byte v4, v4

    .line 968
    aput-byte v4, v0, v2

    .line 969
    .line 970
    invoke-virtual {v3, v1}, Lq0/c;->b(Lr0/a;)Z

    .line 971
    .line 972
    .line 973
    move-result v0

    .line 974
    if-nez v0, :cond_2b

    .line 975
    .line 976
    const-string v0, "Failed to write to archive"

    .line 977
    .line 978
    invoke-static {v2, v5, v0}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 979
    .line 980
    .line 981
    const/4 v3, 0x0

    .line 982
    :cond_2b
    if-eqz v3, :cond_2c

    .line 983
    .line 984
    iget-object v0, v3, Lq0/c;->b:Ljava/lang/String;

    .line 985
    .line 986
    goto :goto_1c

    .line 987
    :cond_2c
    iget-object v0, v1, Lr0/b;->j:Lg0/h;

    .line 988
    .line 989
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 990
    .line 991
    :goto_1c
    iget-object v4, v1, Lr0/b;->m:Ljava/lang/Object;

    .line 992
    .line 993
    check-cast v4, Ljava/lang/String;

    .line 994
    .line 995
    iget-object v5, v1, Lr0/b;->k:Ljava/lang/String;

    .line 996
    .line 997
    iget-object v7, v1, Lr0/b;->l:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v7, Ljava/lang/String;

    .line 1000
    .line 1001
    invoke-static {v2, v0, v4, v5, v7}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cRename(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    if-eqz v3, :cond_2d

    .line 1006
    .line 1007
    invoke-virtual {v3, v1}, Lq0/c;->a(Lr0/a;)Z

    .line 1008
    .line 1009
    .line 1010
    :cond_2d
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lr0/g;->n()V

    .line 1011
    .line 1012
    .line 1013
    if-eqz v5, :cond_2e

    .line 1014
    .line 1015
    const/high16 v0, 0x120000

    .line 1016
    .line 1017
    goto :goto_1e

    .line 1018
    :cond_2e
    const/high16 v0, 0x110000

    .line 1019
    .line 1020
    :goto_1e
    invoke-virtual {v1, v0}, Lr0/g;->q(I)V

    .line 1021
    .line 1022
    .line 1023
    iget-object v0, v1, Lr0/g;->h:Ljava/util/ArrayList;

    .line 1024
    .line 1025
    iget-object v3, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 1026
    .line 1027
    const/4 v4, 0x0

    .line 1028
    invoke-virtual {v3, v1, v5, v0, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1029
    .line 1030
    .line 1031
    if-eqz v5, :cond_2f

    .line 1032
    .line 1033
    invoke-virtual {v3, v2, v6, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 1034
    .line 1035
    .line 1036
    :cond_2f
    :goto_1f
    return-void

    .line 1037
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lg0/h;)V
    .locals 1

    .line 1
    iget v0, p0, Lr0/b;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iput-object p1, p0, Lr0/b;->j:Lg0/h;

    .line 8
    .line 9
    return-void

    .line 10
    :goto_0
    iput-object p1, p0, Lr0/b;->j:Lg0/h;

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lr0/b;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iput-object p2, p0, Lr0/b;->k:Ljava/lang/String;

    .line 8
    .line 9
    iput p1, p0, Lr0/g;->d:I

    .line 10
    .line 11
    return-void

    .line 12
    :goto_0
    iput-object p2, p0, Lr0/b;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iput p1, p0, Lr0/g;->d:I

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
