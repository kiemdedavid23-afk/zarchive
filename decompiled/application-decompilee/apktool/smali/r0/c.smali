.class public final Lr0/c;
.super Lr0/g;
.source "SourceFile"


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg0/h;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lg0/h;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(J)V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lr0/c;->i:Ljava/util/List;

    .line 4
    .line 5
    iget-object v4, v0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    if-eqz v1, :cond_32

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_32

    .line 15
    .line 16
    iget-object v1, v0, Lr0/c;->j:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v1, :cond_32

    .line 19
    .line 20
    iget-object v1, v0, Lr0/c;->k:Lg0/h;

    .line 21
    .line 22
    if-eqz v1, :cond_32

    .line 23
    .line 24
    iget-object v1, v0, Lr0/c;->i:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-le v1, v5, :cond_0

    .line 31
    .line 32
    iget-object v1, v0, Lr0/c;->i:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iget-object v6, v0, Lr0/c;->j:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eq v1, v6, :cond_0

    .line 45
    .line 46
    goto/16 :goto_20

    .line 47
    .line 48
    :cond_0
    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Lr0/g;->k(I)Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-eqz v6, :cond_1

    .line 54
    .line 55
    move v6, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v6, 0x3

    .line 58
    :goto_0
    iget-object v7, v0, Lr0/c;->i:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_3

    .line 69
    .line 70
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    check-cast v8, Lg0/h;

    .line 75
    .line 76
    invoke-virtual {v0, v8, v5}, Lr0/g;->d(Lg0/h;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_2

    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    iget-object v7, v0, Lr0/c;->k:Lg0/h;

    .line 84
    .line 85
    iget-object v8, v0, Lr0/c;->j:Ljava/util/List;

    .line 86
    .line 87
    invoke-virtual {v0, v7, v8, v6, v5}, Lr0/g;->g(Lg0/h;Ljava/util/List;II)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_4

    .line 92
    .line 93
    return-void

    .line 94
    :cond_4
    invoke-virtual {v0, v1}, Lr0/g;->k(I)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    const/4 v7, 0x0

    .line 99
    const-string v8, ""

    .line 100
    .line 101
    const-string v9, "/"

    .line 102
    .line 103
    if-nez v6, :cond_5

    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    .line 108
    .line 109
    iget-object v10, v0, Lr0/c;->i:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .line 117
    .line 118
    iget-object v10, v0, Lr0/c;->k:Lg0/h;

    .line 119
    .line 120
    invoke-virtual {v10}, Lg0/h;->r()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-static {v10}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    iget-object v11, v0, Lr0/c;->i:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    if-eqz v12, :cond_9

    .line 139
    .line 140
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    check-cast v12, Lg0/h;

    .line 145
    .line 146
    invoke-virtual {v12}, Lg0/h;->r()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v13

    .line 150
    iget-object v14, v0, Lr0/c;->j:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    if-eqz v15, :cond_6

    .line 161
    .line 162
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    check-cast v15, Ljava/lang/String;

    .line 167
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v16

    .line 177
    if-eqz v16, :cond_8

    .line 178
    .line 179
    move-object v3, v8

    .line 180
    goto :goto_2

    .line 181
    :cond_8
    move-object v3, v10

    .line 182
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_7

    .line 200
    .line 201
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-lez v2, :cond_a

    .line 210
    .line 211
    new-array v2, v7, [Lg0/h;

    .line 212
    .line 213
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, [Lg0/h;

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_a
    :goto_3
    const/4 v2, 0x0

    .line 221
    :goto_4
    iget-object v3, v0, Lr0/c;->i:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    move v10, v5

    .line 228
    move v6, v7

    .line 229
    :goto_5
    iget v11, v0, Lr0/g;->c:I

    .line 230
    .line 231
    if-ge v6, v3, :cond_30

    .line 232
    .line 233
    iget-object v12, v0, Lr0/c;->i:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    check-cast v12, Lg0/h;

    .line 240
    .line 241
    iget-object v13, v12, Lg0/h;->c:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v14, v0, Lr0/c;->i:Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-le v14, v5, :cond_b

    .line 250
    .line 251
    sget-object v14, Lru/zdevs/zarchiver/archiver/C2JBridge;->k:[Ljava/lang/String;

    .line 252
    .line 253
    new-instance v15, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v12}, Lg0/h;->e()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v1, " ("

    .line 266
    .line 267
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    add-int/lit8 v1, v6, 0x1

    .line 271
    .line 272
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v1, v0, Lr0/c;->i:Ljava/util/List;

    .line 279
    .line 280
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v1, ")"

    .line 288
    .line 289
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    aput-object v1, v14, v11

    .line 297
    .line 298
    invoke-virtual {v4, v11, v1}, Lru/zdevs/zarchiver/service/ZArchiverService;->o(ILjava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v14, "\\"

    .line 304
    .line 305
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v14, v0, Lr0/c;->j:Ljava/util/List;

    .line 309
    .line 310
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    check-cast v14, Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    goto :goto_6

    .line 324
    :cond_b
    iget-object v1, v0, Lr0/c;->j:Ljava/util/List;

    .line 325
    .line 326
    invoke-static {v1}, Ld0/b;->e(Ljava/util/List;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    :goto_6
    invoke-static {v11, v7, v13}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 334
    .line 335
    .line 336
    move-result v14

    .line 337
    if-eqz v14, :cond_c

    .line 338
    .line 339
    move-object/from16 v17, v2

    .line 340
    .line 341
    move/from16 v23, v3

    .line 342
    .line 343
    move-object/from16 v24, v4

    .line 344
    .line 345
    move v10, v7

    .line 346
    move-object/from16 v25, v8

    .line 347
    .line 348
    goto/16 :goto_1a

    .line 349
    .line 350
    :cond_c
    invoke-virtual {v0, v5}, Lr0/g;->k(I)Z

    .line 351
    .line 352
    .line 353
    move-result v14

    .line 354
    const/16 v15, 0x64

    .line 355
    .line 356
    const/4 v7, 0x2

    .line 357
    const-string v5, ".t"

    .line 358
    .line 359
    if-eqz v14, :cond_19

    .line 360
    .line 361
    invoke-virtual {v0, v7}, Lr0/g;->k(I)Z

    .line 362
    .line 363
    .line 364
    move-result v12

    .line 365
    if-eqz v12, :cond_e

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 368
    .line 369
    .line 370
    move-result-object v12

    .line 371
    new-instance v14, Ljava/util/ArrayList;

    .line 372
    .line 373
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .line 375
    .line 376
    const/4 v7, 0x0

    .line 377
    :goto_7
    if-ge v7, v15, :cond_e

    .line 378
    .line 379
    new-instance v15, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 398
    .line 399
    .line 400
    move/from16 v23, v3

    .line 401
    .line 402
    const/4 v3, 0x5

    .line 403
    move-object/from16 v24, v4

    .line 404
    .line 405
    const/4 v4, 0x1

    .line 406
    invoke-static {v12, v14, v15, v3, v4}, Lo0/d;->d(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-eqz v3, :cond_f

    .line 411
    .line 412
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eqz v3, :cond_d

    .line 417
    .line 418
    goto :goto_8

    .line 419
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 420
    .line 421
    move/from16 v3, v23

    .line 422
    .line 423
    move-object/from16 v4, v24

    .line 424
    .line 425
    const/16 v15, 0x64

    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_e
    move/from16 v23, v3

    .line 429
    .line 430
    move-object/from16 v24, v4

    .line 431
    .line 432
    move-object v15, v13

    .line 433
    :cond_f
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    iget-object v4, v0, Lr0/c;->l:Ljava/lang/String;

    .line 438
    .line 439
    iget-object v5, v0, Lr0/c;->k:Lg0/h;

    .line 440
    .line 441
    iget-object v5, v5, Lg0/h;->c:Ljava/lang/String;

    .line 442
    .line 443
    sget-object v7, Lq0/a;->a:Ljava/util/ArrayList;

    .line 444
    .line 445
    invoke-virtual {v3}, Ln0/a;->f()Z

    .line 446
    .line 447
    .line 448
    move-result v7

    .line 449
    if-nez v7, :cond_10

    .line 450
    .line 451
    move-object/from16 v25, v8

    .line 452
    .line 453
    const/4 v1, 0x0

    .line 454
    goto/16 :goto_b

    .line 455
    .line 456
    :cond_10
    invoke-static {v3}, Lq0/a;->b(Ln0/a;)V

    .line 457
    .line 458
    .line 459
    invoke-static {v15}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v7

    .line 463
    invoke-static {v5}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    const-string v12, "\\-m0=FLZMA2"

    .line 468
    .line 469
    invoke-virtual {v4, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v4

    .line 473
    const/4 v12, 0x1

    .line 474
    invoke-static {v3, v7, v12}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v14

    .line 478
    invoke-static {v4}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-static {v1}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    new-instance v12, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    move-object/from16 v25, v8

    .line 489
    .line 490
    const-string v8, "cd "

    .line 491
    .line 492
    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v5

    .line 502
    invoke-virtual {v3, v5}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    move-result v5

    .line 506
    if-nez v5, :cond_11

    .line 507
    .line 508
    goto :goto_9

    .line 509
    :cond_11
    const/4 v5, 0x0

    .line 510
    invoke-virtual {v3, v5}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    invoke-static {}, Lb/d;->r()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v8, " a \'"

    .line 526
    .line 527
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    const-string v8, "\'"

    .line 531
    .line 532
    const-string v12, "\'\\\'\'"

    .line 533
    .line 534
    invoke-virtual {v7, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v7, "\' "

    .line 542
    .line 543
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    const-string v4, " -- "

    .line 550
    .line 551
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v3, v1}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-nez v1, :cond_12

    .line 566
    .line 567
    goto :goto_9

    .line 568
    :cond_12
    invoke-static {v3}, Lb/d;->S(Ln0/a;)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    const/4 v4, 0x2

    .line 573
    if-ne v1, v4, :cond_13

    .line 574
    .line 575
    const/4 v1, 0x1

    .line 576
    goto :goto_a

    .line 577
    :cond_13
    :goto_9
    const/4 v1, 0x0

    .line 578
    :goto_a
    if-eqz v14, :cond_14

    .line 579
    .line 580
    const/4 v4, 0x0

    .line 581
    invoke-static {v3, v14, v4}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    :cond_14
    invoke-static {v3}, Lq0/a;->d(Ln0/a;)V

    .line 585
    .line 586
    .line 587
    :goto_b
    if-eqz v1, :cond_15

    .line 588
    .line 589
    if-eqz v10, :cond_15

    .line 590
    .line 591
    const/4 v1, 0x1

    .line 592
    goto :goto_c

    .line 593
    :cond_15
    const/4 v1, 0x0

    .line 594
    :goto_c
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    if-nez v3, :cond_18

    .line 599
    .line 600
    if-eqz v1, :cond_17

    .line 601
    .line 602
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 603
    .line 604
    .line 605
    move-result-object v17

    .line 606
    const/16 v18, 0x1

    .line 607
    .line 608
    const/16 v20, 0x1

    .line 609
    .line 610
    const/16 v19, 0x11

    .line 611
    .line 612
    move-object/from16 v21, v15

    .line 613
    .line 614
    move-object/from16 v22, v13

    .line 615
    .line 616
    invoke-static/range {v17 .. v22}, Lo0/b;->c(Ln0/a;ZIZLjava/lang/String;Ljava/lang/String;)I

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    const/4 v3, -0x1

    .line 621
    if-lt v1, v3, :cond_16

    .line 622
    .line 623
    const/4 v1, 0x1

    .line 624
    goto :goto_d

    .line 625
    :cond_16
    const/4 v1, 0x0

    .line 626
    goto :goto_d

    .line 627
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    const/4 v4, 0x0

    .line 632
    invoke-static {v3, v15, v4}, Lo0/g;->c(Ln0/a;Ljava/lang/String;Z)Z

    .line 633
    .line 634
    .line 635
    :cond_18
    :goto_d
    move v10, v1

    .line 636
    move-object/from16 v17, v2

    .line 637
    .line 638
    goto/16 :goto_1a

    .line 639
    .line 640
    :cond_19
    move/from16 v23, v3

    .line 641
    .line 642
    move-object/from16 v24, v4

    .line 643
    .line 644
    move-object/from16 v25, v8

    .line 645
    .line 646
    invoke-virtual/range {p0 .. p0}, Lr0/g;->h()Z

    .line 647
    .line 648
    .line 649
    move-result v3

    .line 650
    if-eqz v3, :cond_2f

    .line 651
    .line 652
    const/4 v3, 0x1

    .line 653
    invoke-static {v12, v3}, Lq0/c;->c(Lg0/h;Z)Lq0/c;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    if-eqz v4, :cond_1a

    .line 658
    .line 659
    sget-object v3, Lb/d;->e:[B

    .line 660
    .line 661
    aget-byte v5, v3, v11

    .line 662
    .line 663
    or-int/lit8 v5, v5, -0x80

    .line 664
    .line 665
    int-to-byte v5, v5

    .line 666
    aput-byte v5, v3, v11

    .line 667
    .line 668
    iget-object v3, v4, Lq0/c;->b:Ljava/lang/String;

    .line 669
    .line 670
    goto :goto_f

    .line 671
    :cond_1a
    const/4 v3, 0x2

    .line 672
    invoke-virtual {v0, v3}, Lr0/g;->k(I)Z

    .line 673
    .line 674
    .line 675
    move-result v7

    .line 676
    if-eqz v7, :cond_1c

    .line 677
    .line 678
    invoke-static {v13}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    new-instance v7, Lg0/h;

    .line 683
    .line 684
    invoke-static {v13}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v8

    .line 688
    invoke-direct {v7, v8}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-static {v7}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    const/4 v8, 0x0

    .line 696
    const/16 v14, 0x64

    .line 697
    .line 698
    :goto_e
    if-ge v8, v14, :cond_1c

    .line 699
    .line 700
    new-instance v15, Ljava/lang/StringBuilder;

    .line 701
    .line 702
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v15

    .line 718
    invoke-virtual {v7, v15}, Lg0/f;->f(Ljava/lang/String;)Z

    .line 719
    .line 720
    .line 721
    move-result v15

    .line 722
    if-nez v15, :cond_1b

    .line 723
    .line 724
    new-instance v3, Ljava/lang/StringBuilder;

    .line 725
    .line 726
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .line 734
    .line 735
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 736
    .line 737
    .line 738
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    goto :goto_f

    .line 743
    :cond_1b
    add-int/lit8 v8, v8, 0x1

    .line 744
    .line 745
    goto :goto_e

    .line 746
    :cond_1c
    move-object v3, v13

    .line 747
    :goto_f
    iget-object v5, v0, Lr0/c;->l:Ljava/lang/String;

    .line 748
    .line 749
    iget-object v7, v0, Lr0/c;->k:Lg0/h;

    .line 750
    .line 751
    iget-object v7, v7, Lg0/h;->c:Ljava/lang/String;

    .line 752
    .line 753
    invoke-static {v11, v3, v5, v1, v7}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cCompress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 754
    .line 755
    .line 756
    move-result v1

    .line 757
    if-eqz v1, :cond_1d

    .line 758
    .line 759
    if-eqz v10, :cond_1d

    .line 760
    .line 761
    const/4 v1, 0x1

    .line 762
    goto :goto_10

    .line 763
    :cond_1d
    const/4 v1, 0x0

    .line 764
    :goto_10
    const/4 v5, 0x4

    .line 765
    invoke-virtual {v0, v5}, Lr0/g;->k(I)Z

    .line 766
    .line 767
    .line 768
    move-result v7

    .line 769
    if-eqz v7, :cond_28

    .line 770
    .line 771
    if-eqz v1, :cond_28

    .line 772
    .line 773
    invoke-virtual/range {p0 .. p0}, Lr0/g;->l()Z

    .line 774
    .line 775
    .line 776
    move-result v7

    .line 777
    if-nez v7, :cond_28

    .line 778
    .line 779
    if-nez v4, :cond_1e

    .line 780
    .line 781
    move-object v7, v12

    .line 782
    goto :goto_11

    .line 783
    :cond_1e
    iget-object v7, v4, Lq0/c;->c:Lg0/h;

    .line 784
    .line 785
    :goto_11
    iget-object v8, v0, Lr0/c;->l:Ljava/lang/String;

    .line 786
    .line 787
    const-string v10, "\\-v"

    .line 788
    .line 789
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 790
    .line 791
    .line 792
    move-result v8

    .line 793
    if-eqz v8, :cond_1f

    .line 794
    .line 795
    new-instance v7, Lg0/h;

    .line 796
    .line 797
    iget-object v8, v12, Lg0/h;->a:Ljava/lang/String;

    .line 798
    .line 799
    new-instance v10, Ljava/lang/StringBuilder;

    .line 800
    .line 801
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 802
    .line 803
    .line 804
    iget-object v14, v12, Lg0/h;->c:Ljava/lang/String;

    .line 805
    .line 806
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v14, ".001"

    .line 810
    .line 811
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v10

    .line 818
    invoke-direct {v7, v8, v10}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    :cond_1f
    invoke-static {v7}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    invoke-virtual {v7}, Lg0/f;->d()Z

    .line 826
    .line 827
    .line 828
    move-result v8

    .line 829
    if-eqz v8, :cond_20

    .line 830
    .line 831
    invoke-virtual {v7}, Lg0/f;->o()J

    .line 832
    .line 833
    .line 834
    move-result-wide v7

    .line 835
    const-wide/16 v14, 0xc8

    .line 836
    .line 837
    cmp-long v7, v7, v14

    .line 838
    .line 839
    if-lez v7, :cond_20

    .line 840
    .line 841
    const/4 v7, 0x1

    .line 842
    goto :goto_12

    .line 843
    :cond_20
    const/4 v7, 0x0

    .line 844
    :goto_12
    if-eqz v7, :cond_28

    .line 845
    .line 846
    if-eqz v2, :cond_21

    .line 847
    .line 848
    const/4 v7, 0x2

    .line 849
    invoke-virtual {v0, v7}, Lr0/g;->k(I)Z

    .line 850
    .line 851
    .line 852
    move-result v7

    .line 853
    if-eqz v7, :cond_21

    .line 854
    .line 855
    if-nez v4, :cond_21

    .line 856
    .line 857
    array-length v7, v2

    .line 858
    const/4 v8, 0x1

    .line 859
    add-int/2addr v7, v8

    .line 860
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v7

    .line 864
    check-cast v7, [Lg0/h;

    .line 865
    .line 866
    array-length v10, v7

    .line 867
    sub-int/2addr v10, v8

    .line 868
    new-instance v8, Lg0/h;

    .line 869
    .line 870
    invoke-direct {v8, v3}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    aput-object v8, v7, v10

    .line 874
    .line 875
    goto :goto_13

    .line 876
    :cond_21
    move-object v7, v2

    .line 877
    :goto_13
    if-nez v6, :cond_22

    .line 878
    .line 879
    iget-object v8, v0, Lr0/c;->i:Ljava/util/List;

    .line 880
    .line 881
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 882
    .line 883
    .line 884
    move-result v8

    .line 885
    const/4 v10, 0x1

    .line 886
    if-ne v8, v10, :cond_22

    .line 887
    .line 888
    iget-object v8, v0, Lr0/c;->j:Ljava/util/List;

    .line 889
    .line 890
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 891
    .line 892
    .line 893
    move-result v8

    .line 894
    goto :goto_14

    .line 895
    :cond_22
    add-int/lit8 v8, v6, 0x1

    .line 896
    .line 897
    :goto_14
    iget-object v10, v0, Lr0/c;->k:Lg0/h;

    .line 898
    .line 899
    invoke-virtual {v10}, Lg0/h;->j()Z

    .line 900
    .line 901
    .line 902
    move-result v10

    .line 903
    if-eqz v10, :cond_23

    .line 904
    .line 905
    iget-object v10, v0, Lr0/c;->k:Lg0/h;

    .line 906
    .line 907
    invoke-static {v10}, Lw0/f;->b(Lg0/h;)B

    .line 908
    .line 909
    .line 910
    move-result v10

    .line 911
    const/4 v14, 0x1

    .line 912
    if-ne v10, v14, :cond_23

    .line 913
    .line 914
    const/4 v10, 0x1

    .line 915
    goto :goto_15

    .line 916
    :cond_23
    const/4 v10, 0x0

    .line 917
    :goto_15
    if-eqz v7, :cond_24

    .line 918
    .line 919
    array-length v14, v7

    .line 920
    if-eqz v14, :cond_24

    .line 921
    .line 922
    move v15, v6

    .line 923
    const/4 v14, 0x1

    .line 924
    goto :goto_16

    .line 925
    :cond_24
    move v15, v6

    .line 926
    const/4 v14, 0x0

    .line 927
    :goto_16
    if-ge v15, v8, :cond_28

    .line 928
    .line 929
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 930
    .line 931
    .line 932
    move-result v17

    .line 933
    if-eqz v17, :cond_25

    .line 934
    .line 935
    goto :goto_18

    .line 936
    :cond_25
    iget-object v5, v0, Lr0/c;->j:Ljava/util/List;

    .line 937
    .line 938
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v5

    .line 942
    check-cast v5, Ljava/lang/String;

    .line 943
    .line 944
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 945
    .line 946
    .line 947
    move-result v17

    .line 948
    if-eqz v17, :cond_26

    .line 949
    .line 950
    move-object/from16 v17, v2

    .line 951
    .line 952
    new-instance v2, Lg0/h;

    .line 953
    .line 954
    invoke-direct {v2, v5}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    move/from16 v18, v8

    .line 958
    .line 959
    goto :goto_17

    .line 960
    :cond_26
    move-object/from16 v17, v2

    .line 961
    .line 962
    new-instance v2, Lg0/h;

    .line 963
    .line 964
    move/from16 v18, v8

    .line 965
    .line 966
    iget-object v8, v0, Lr0/c;->k:Lg0/h;

    .line 967
    .line 968
    invoke-direct {v2, v5, v8}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 969
    .line 970
    .line 971
    :goto_17
    invoke-static {v2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    invoke-virtual {v5}, Lg0/f;->d()Z

    .line 976
    .line 977
    .line 978
    move-result v8

    .line 979
    if-eqz v8, :cond_27

    .line 980
    .line 981
    invoke-static {v0, v5, v7}, Lq0/b;->g(Lr0/a;Lg0/f;[Lg0/h;)V

    .line 982
    .line 983
    .line 984
    if-eqz v10, :cond_27

    .line 985
    .line 986
    iget-object v2, v2, Lg0/h;->c:Ljava/lang/String;

    .line 987
    .line 988
    invoke-virtual {v5}, Lg0/f;->k()Z

    .line 989
    .line 990
    .line 991
    move-result v5

    .line 992
    invoke-static {v2, v5, v14}, Lp0/f;->c(Ljava/lang/String;ZZ)V

    .line 993
    .line 994
    .line 995
    :cond_27
    add-int/lit8 v15, v15, 0x1

    .line 996
    .line 997
    move-object/from16 v2, v17

    .line 998
    .line 999
    move/from16 v8, v18

    .line 1000
    .line 1001
    const/4 v5, 0x4

    .line 1002
    goto :goto_16

    .line 1003
    :cond_28
    :goto_18
    move-object/from16 v17, v2

    .line 1004
    .line 1005
    if-eqz v4, :cond_29

    .line 1006
    .line 1007
    invoke-virtual {v4, v0}, Lq0/c;->a(Lr0/a;)Z

    .line 1008
    .line 1009
    .line 1010
    move-result v2

    .line 1011
    if-nez v2, :cond_2b

    .line 1012
    .line 1013
    const-string v2, "Failed to move archive to destination"

    .line 1014
    .line 1015
    const/4 v3, 0x0

    .line 1016
    invoke-static {v11, v3, v2}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 1017
    .line 1018
    .line 1019
    goto :goto_19

    .line 1020
    :cond_29
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    if-nez v2, :cond_2b

    .line 1025
    .line 1026
    new-instance v2, Lg0/h;

    .line 1027
    .line 1028
    invoke-direct {v2, v3}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    if-eqz v1, :cond_2a

    .line 1032
    .line 1033
    :try_start_0
    invoke-static {v12}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    invoke-virtual {v3}, Lg0/f;->c()Z

    .line 1038
    .line 1039
    .line 1040
    invoke-static {v2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v2

    .line 1044
    invoke-virtual {v12}, Lg0/h;->e()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v3

    .line 1048
    invoke-virtual {v2, v3}, Lg0/f;->y(Ljava/lang/String;)Z

    .line 1049
    .line 1050
    .line 1051
    goto :goto_19

    .line 1052
    :cond_2a
    invoke-static {v2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    invoke-virtual {v2}, Lg0/f;->c()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .line 1058
    .line 1059
    goto :goto_19

    .line 1060
    :catch_0
    const-string v2, "Failed to rename output file to original"

    .line 1061
    .line 1062
    const/4 v3, 0x0

    .line 1063
    invoke-static {v11, v3, v2}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 1064
    .line 1065
    .line 1066
    :cond_2b
    :goto_19
    move v10, v1

    .line 1067
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lr0/g;->n()V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 1071
    .line 1072
    .line 1073
    move-result v1

    .line 1074
    if-eqz v1, :cond_2c

    .line 1075
    .line 1076
    goto :goto_1d

    .line 1077
    :cond_2c
    iget-object v1, v0, Lr0/c;->i:Ljava/util/List;

    .line 1078
    .line 1079
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v1

    .line 1083
    check-cast v1, Lg0/h;

    .line 1084
    .line 1085
    invoke-static {v1}, Lw0/f;->b(Lg0/h;)B

    .line 1086
    .line 1087
    .line 1088
    move-result v1

    .line 1089
    const/4 v2, 0x1

    .line 1090
    if-ne v1, v2, :cond_2e

    .line 1091
    .line 1092
    iget-object v1, v0, Lr0/c;->i:Ljava/util/List;

    .line 1093
    .line 1094
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v1

    .line 1098
    check-cast v1, Lg0/h;

    .line 1099
    .line 1100
    invoke-static {v1}, Lp0/f;->b(Lg0/h;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v2

    .line 1104
    if-nez v2, :cond_2d

    .line 1105
    .line 1106
    goto :goto_1b

    .line 1107
    :cond_2d
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 1108
    .line 1109
    const/4 v2, 0x0

    .line 1110
    invoke-static {v1, v2}, Lp0/f;->a(Ljava/lang/String;Z)V

    .line 1111
    .line 1112
    .line 1113
    goto :goto_1c

    .line 1114
    :cond_2e
    :goto_1b
    const/4 v2, 0x0

    .line 1115
    :goto_1c
    add-int/lit8 v6, v6, 0x1

    .line 1116
    .line 1117
    move v7, v2

    .line 1118
    move-object/from16 v2, v17

    .line 1119
    .line 1120
    move/from16 v3, v23

    .line 1121
    .line 1122
    move-object/from16 v4, v24

    .line 1123
    .line 1124
    move-object/from16 v8, v25

    .line 1125
    .line 1126
    const/4 v1, 0x4

    .line 1127
    const/4 v5, 0x1

    .line 1128
    goto/16 :goto_5

    .line 1129
    .line 1130
    :cond_2f
    const/4 v2, 0x0

    .line 1131
    move v7, v2

    .line 1132
    goto :goto_1e

    .line 1133
    :cond_30
    move-object/from16 v24, v4

    .line 1134
    .line 1135
    :goto_1d
    move v7, v10

    .line 1136
    :goto_1e
    if-eqz v7, :cond_31

    .line 1137
    .line 1138
    const/high16 v2, 0x120000

    .line 1139
    .line 1140
    goto :goto_1f

    .line 1141
    :cond_31
    const/high16 v2, 0x110000

    .line 1142
    .line 1143
    :goto_1f
    invoke-virtual {v0, v2}, Lr0/g;->q(I)V

    .line 1144
    .line 1145
    .line 1146
    iget-object v1, v0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 1147
    .line 1148
    move-object/from16 v3, v24

    .line 1149
    .line 1150
    const/4 v2, 0x0

    .line 1151
    invoke-virtual {v3, v0, v7, v1, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1152
    .line 1153
    .line 1154
    const/4 v1, 0x1

    .line 1155
    invoke-virtual {v3, v11, v1, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 1156
    .line 1157
    .line 1158
    return-void

    .line 1159
    :cond_32
    :goto_20
    move-object v3, v4

    .line 1160
    move v1, v5

    .line 1161
    const/4 v2, 0x0

    .line 1162
    const/high16 v4, 0x120000

    .line 1163
    .line 1164
    invoke-virtual {v0, v4}, Lr0/g;->q(I)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v3, v0, v1, v2, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1168
    .line 1169
    .line 1170
    return-void
.end method
