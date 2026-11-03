.class public final Lr0/f;
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

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg0/h;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V
    .locals 1

    const/4 v0, 0x1

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
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lr0/f;->i:Ljava/util/List;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    if-eqz v0, :cond_3b

    .line 8
    .line 9
    iget-object v5, v1, Lr0/f;->l:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v5, :cond_3b

    .line 12
    .line 13
    iget-object v5, v1, Lr0/f;->j:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v5, :cond_3b

    .line 16
    .line 17
    iget-object v5, v1, Lr0/f;->k:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v5, v1, Lr0/f;->k:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ne v0, v5, :cond_3b

    .line 32
    .line 33
    :cond_0
    iget-object v0, v1, Lr0/f;->i:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v5, v1, Lr0/f;->l:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-ne v0, v5, :cond_3b

    .line 46
    .line 47
    iget-object v0, v1, Lr0/f;->i:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iget-object v5, v1, Lr0/f;->j:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eq v0, v5, :cond_1

    .line 60
    .line 61
    goto/16 :goto_22

    .line 62
    .line 63
    :cond_1
    iget v0, v1, Lr0/g;->d:I

    .line 64
    .line 65
    and-int/lit8 v0, v0, -0x2

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    move v0, v4

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v0, v5

    .line 73
    :goto_0
    const/4 v6, 0x3

    .line 74
    const/4 v7, 0x2

    .line 75
    if-nez v0, :cond_6

    .line 76
    .line 77
    iget-object v8, v1, Lr0/f;->i:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_4

    .line 88
    .line 89
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    check-cast v9, Lg0/h;

    .line 94
    .line 95
    invoke-virtual {v1, v7, v5, v3, v9}, Lr0/g;->e(IILjava/lang/String;Lg0/h;)Z

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-nez v9, :cond_3

    .line 100
    .line 101
    return-void

    .line 102
    :cond_4
    const/16 v8, 0x40

    .line 103
    .line 104
    invoke-virtual {v1, v8}, Lr0/g;->k(I)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_5

    .line 109
    .line 110
    const/16 v8, 0xe

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Lr0/g;->r(B)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const/4 v8, 0x5

    .line 117
    invoke-virtual {v1, v8}, Lr0/g;->r(B)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    iget-object v8, v1, Lr0/f;->i:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_8

    .line 132
    .line 133
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    check-cast v9, Lg0/h;

    .line 138
    .line 139
    invoke-virtual {v1, v9, v5}, Lr0/g;->d(Lg0/h;Z)Z

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    if-nez v9, :cond_7

    .line 144
    .line 145
    return-void

    .line 146
    :cond_8
    iget-object v8, v1, Lr0/f;->i:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    check-cast v8, Lg0/h;

    .line 153
    .line 154
    iget-object v8, v8, Lg0/h;->c:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v8}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    iget-object v9, v1, Lr0/f;->l:Ljava/util/List;

    .line 161
    .line 162
    invoke-virtual {v1, v8, v9, v6}, Lr0/g;->f(Ljava/lang/String;Ljava/util/List;I)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-nez v8, :cond_9

    .line 167
    .line 168
    return-void

    .line 169
    :cond_9
    :goto_1
    const/16 v8, 0x10

    .line 170
    .line 171
    invoke-virtual {v1, v8}, Lr0/g;->k(I)Z

    .line 172
    .line 173
    .line 174
    move-result v9

    .line 175
    if-eqz v9, :cond_b

    .line 176
    .line 177
    iget-object v9, v1, Lr0/f;->i:Ljava/util/List;

    .line 178
    .line 179
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    if-ne v9, v4, :cond_a

    .line 184
    .line 185
    iget-object v9, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 186
    .line 187
    iget-object v10, v1, Lr0/f;->l:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    check-cast v10, Lg0/h;

    .line 194
    .line 195
    iget-object v10, v1, Lr0/f;->k:Ljava/util/List;

    .line 196
    .line 197
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    check-cast v10, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    :cond_a
    move v9, v4

    .line 207
    goto :goto_2

    .line 208
    :cond_b
    move v9, v5

    .line 209
    :goto_2
    iget-object v10, v1, Lr0/f;->i:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    move/from16 v17, v4

    .line 216
    .line 217
    move v15, v5

    .line 218
    move/from16 v18, v15

    .line 219
    .line 220
    :goto_3
    if-ge v15, v10, :cond_2b

    .line 221
    .line 222
    iget-object v11, v1, Lr0/f;->l:Ljava/util/List;

    .line 223
    .line 224
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Lg0/h;

    .line 229
    .line 230
    iget-object v12, v1, Lr0/f;->i:Ljava/util/List;

    .line 231
    .line 232
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result v12

    .line 236
    if-le v12, v4, :cond_c

    .line 237
    .line 238
    iget-object v12, v1, Lr0/f;->m:Ljava/util/List;

    .line 239
    .line 240
    if-eqz v12, :cond_c

    .line 241
    .line 242
    sget-object v12, Lru/zdevs/zarchiver/archiver/C2JBridge;->k:[Ljava/lang/String;

    .line 243
    .line 244
    iget v13, v1, Lr0/g;->c:I

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    iget-object v6, v1, Lr0/f;->m:Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    check-cast v6, Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v6, " ("

    .line 263
    .line 264
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    add-int/lit8 v6, v15, 0x1

    .line 268
    .line 269
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    const-string v6, "/"

    .line 273
    .line 274
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    iget-object v6, v1, Lr0/f;->m:Ljava/util/List;

    .line 278
    .line 279
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const-string v6, ")"

    .line 287
    .line 288
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    aput-object v2, v12, v13

    .line 296
    .line 297
    iget-object v2, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 298
    .line 299
    iget v6, v1, Lr0/g;->c:I

    .line 300
    .line 301
    aget-object v12, v12, v6

    .line 302
    .line 303
    invoke-virtual {v2, v6, v12}, Lru/zdevs/zarchiver/service/ZArchiverService;->o(ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    :cond_c
    iget-object v2, v1, Lr0/f;->i:Ljava/util/List;

    .line 307
    .line 308
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    check-cast v2, Lg0/h;

    .line 313
    .line 314
    iget-object v12, v2, Lg0/h;->c:Ljava/lang/String;

    .line 315
    .line 316
    iget v2, v1, Lr0/g;->c:I

    .line 317
    .line 318
    invoke-static {v2, v4, v12}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object v2, v1, Lr0/f;->k:Ljava/util/List;

    .line 322
    .line 323
    if-eqz v2, :cond_d

    .line 324
    .line 325
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Ljava/lang/String;

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_d
    const-string v2, ""

    .line 333
    .line 334
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    if-eqz v6, :cond_e

    .line 339
    .line 340
    const/16 v6, 0x5c

    .line 341
    .line 342
    goto/16 :goto_18

    .line 343
    .line 344
    :cond_e
    invoke-virtual {v1, v4}, Lr0/g;->k(I)Z

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    if-eqz v6, :cond_20

    .line 349
    .line 350
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    iget-object v13, v1, Lr0/f;->j:Ljava/util/List;

    .line 355
    .line 356
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v13

    .line 360
    check-cast v13, Ljava/lang/String;

    .line 361
    .line 362
    iget-object v8, v11, Lg0/h;->c:Ljava/lang/String;

    .line 363
    .line 364
    sget-object v16, Lq0/a;->a:Ljava/util/ArrayList;

    .line 365
    .line 366
    invoke-virtual {v6}, Ln0/a;->f()Z

    .line 367
    .line 368
    .line 369
    move-result v16

    .line 370
    if-nez v16, :cond_f

    .line 371
    .line 372
    move v4, v5

    .line 373
    goto/16 :goto_8

    .line 374
    .line 375
    :cond_f
    invoke-static {v6}, Lq0/a;->b(Ln0/a;)V

    .line 376
    .line 377
    .line 378
    invoke-static {v12}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    invoke-static {v8}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    invoke-static {v6, v8, v4}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-static {v13}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v13

    .line 394
    invoke-static {v2}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v4

    .line 398
    invoke-static {v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 399
    .line 400
    .line 401
    move-result v16

    .line 402
    new-instance v14, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    const-string v7, "cd "

    .line 405
    .line 406
    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    invoke-virtual {v6, v7}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    if-nez v7, :cond_10

    .line 421
    .line 422
    goto :goto_6

    .line 423
    :cond_10
    invoke-virtual {v6, v5}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    new-instance v7, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-static {}, Lb/d;->r()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    if-eqz v16, :cond_11

    .line 439
    .line 440
    const-string v14, " xp \'"

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_11
    const-string v14, " x \'"

    .line 444
    .line 445
    :goto_5
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v14, "\'"

    .line 449
    .line 450
    const-string v5, "\'\\\'\'"

    .line 451
    .line 452
    invoke-virtual {v12, v14, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v12, "\' "

    .line 460
    .line 461
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v12, " \'-o"

    .line 468
    .line 469
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v8, v14, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v5

    .line 476
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v5, "\' -- "

    .line 480
    .line 481
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v6, v4}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-nez v4, :cond_12

    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_12
    invoke-static {v6}, Lb/d;->S(Ln0/a;)I

    .line 499
    .line 500
    .line 501
    move-result v4

    .line 502
    const/4 v5, 0x2

    .line 503
    if-ne v4, v5, :cond_13

    .line 504
    .line 505
    const/4 v4, 0x1

    .line 506
    goto :goto_7

    .line 507
    :cond_13
    :goto_6
    const/4 v4, 0x0

    .line 508
    :goto_7
    if-eqz v3, :cond_14

    .line 509
    .line 510
    const/4 v5, 0x0

    .line 511
    invoke-static {v6, v3, v5}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    :cond_14
    invoke-static {v6}, Lq0/a;->d(Ln0/a;)V

    .line 515
    .line 516
    .line 517
    :goto_8
    const/4 v3, 0x4

    .line 518
    invoke-static {v3}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-eqz v3, :cond_15

    .line 523
    .line 524
    invoke-static {v11}, Lo0/f;->a(Lg0/h;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_15

    .line 529
    .line 530
    const/4 v3, 0x1

    .line 531
    goto :goto_9

    .line 532
    :cond_15
    const/4 v3, 0x0

    .line 533
    :goto_9
    if-nez v3, :cond_16

    .line 534
    .line 535
    iget-object v5, v11, Lg0/h;->c:Ljava/lang/String;

    .line 536
    .line 537
    invoke-static {v5}, Lw0/f;->e(Ljava/lang/String;)Z

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-eqz v5, :cond_16

    .line 542
    .line 543
    const/4 v5, 0x1

    .line 544
    goto :goto_a

    .line 545
    :cond_16
    const/4 v5, 0x0

    .line 546
    :goto_a
    if-nez v3, :cond_17

    .line 547
    .line 548
    if-eqz v5, :cond_18

    .line 549
    .line 550
    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 551
    .line 552
    .line 553
    move-result v5

    .line 554
    if-eqz v5, :cond_19

    .line 555
    .line 556
    :cond_18
    const/16 v6, 0x5c

    .line 557
    .line 558
    const/4 v8, 0x2

    .line 559
    goto :goto_11

    .line 560
    :cond_19
    iget-object v5, v1, Lr0/f;->j:Ljava/util/List;

    .line 561
    .line 562
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v5

    .line 566
    check-cast v5, Ljava/lang/String;

    .line 567
    .line 568
    const/16 v6, 0x5c

    .line 569
    .line 570
    invoke-static {v5, v6}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    array-length v6, v5

    .line 575
    const/4 v7, 0x0

    .line 576
    :goto_b
    if-ge v7, v6, :cond_1b

    .line 577
    .line 578
    aget-object v8, v5, v7

    .line 579
    .line 580
    const-string v12, "-z"

    .line 581
    .line 582
    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v12

    .line 586
    if-eqz v12, :cond_1a

    .line 587
    .line 588
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    const/4 v8, 0x2

    .line 593
    sub-int/2addr v5, v8

    .line 594
    const/4 v6, 0x1

    .line 595
    add-int/2addr v5, v6

    .line 596
    goto :goto_c

    .line 597
    :cond_1a
    const/4 v8, 0x2

    .line 598
    add-int/lit8 v7, v7, 0x1

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_1b
    const/4 v8, 0x2

    .line 602
    const/4 v5, 0x0

    .line 603
    :goto_c
    const/16 v6, 0x5c

    .line 604
    .line 605
    invoke-static {v2, v6}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    if-eqz v3, :cond_1d

    .line 610
    .line 611
    array-length v3, v2

    .line 612
    const/4 v7, 0x0

    .line 613
    :goto_d
    if-ge v7, v3, :cond_1f

    .line 614
    .line 615
    aget-object v12, v2, v7

    .line 616
    .line 617
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 618
    .line 619
    .line 620
    move-result-object v13

    .line 621
    if-nez v5, :cond_1c

    .line 622
    .line 623
    goto :goto_e

    .line 624
    :cond_1c
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v12

    .line 628
    :goto_e
    invoke-static {v13, v11, v12}, Lb/d;->d0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    add-int/lit8 v7, v7, 0x1

    .line 632
    .line 633
    goto :goto_d

    .line 634
    :cond_1d
    array-length v3, v2

    .line 635
    const/4 v7, 0x0

    .line 636
    :goto_f
    if-ge v7, v3, :cond_1f

    .line 637
    .line 638
    aget-object v12, v2, v7

    .line 639
    .line 640
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 641
    .line 642
    .line 643
    move-result-object v13

    .line 644
    if-nez v5, :cond_1e

    .line 645
    .line 646
    goto :goto_10

    .line 647
    :cond_1e
    invoke-virtual {v12, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v12

    .line 651
    :goto_10
    invoke-static {v13, v11, v12}, Lb/d;->c0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    add-int/lit8 v7, v7, 0x1

    .line 655
    .line 656
    goto :goto_f

    .line 657
    :cond_1f
    :goto_11
    move-object v3, v11

    .line 658
    move v2, v15

    .line 659
    const/4 v11, 0x0

    .line 660
    goto/16 :goto_15

    .line 661
    .line 662
    :cond_20
    move v8, v7

    .line 663
    const/16 v6, 0x5c

    .line 664
    .line 665
    invoke-virtual/range {p0 .. p0}, Lr0/g;->h()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    if-eqz v3, :cond_2a

    .line 670
    .line 671
    const/4 v3, 0x0

    .line 672
    invoke-static {v11, v3}, Lq0/c;->c(Lg0/h;Z)Lq0/c;

    .line 673
    .line 674
    .line 675
    move-result-object v4

    .line 676
    if-eqz v4, :cond_21

    .line 677
    .line 678
    sget-object v3, Lb/d;->e:[B

    .line 679
    .line 680
    iget v5, v1, Lr0/g;->c:I

    .line 681
    .line 682
    aget-byte v7, v3, v5

    .line 683
    .line 684
    or-int/lit8 v7, v7, -0x80

    .line 685
    .line 686
    int-to-byte v7, v7

    .line 687
    aput-byte v7, v3, v5

    .line 688
    .line 689
    :cond_21
    if-nez v4, :cond_22

    .line 690
    .line 691
    invoke-virtual {v11}, Lg0/h;->o()Z

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    if-eqz v3, :cond_22

    .line 696
    .line 697
    iget-object v3, v11, Lg0/h;->c:Ljava/lang/String;

    .line 698
    .line 699
    const/4 v5, 0x1

    .line 700
    :goto_12
    const/16 v7, 0xa

    .line 701
    .line 702
    if-ge v5, v7, :cond_22

    .line 703
    .line 704
    invoke-static {v11}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    invoke-virtual {v7}, Lg0/f;->d()Z

    .line 709
    .line 710
    .line 711
    move-result v13

    .line 712
    if-eqz v13, :cond_22

    .line 713
    .line 714
    invoke-virtual {v7}, Lg0/f;->k()Z

    .line 715
    .line 716
    .line 717
    move-result v7

    .line 718
    if-nez v7, :cond_22

    .line 719
    .line 720
    new-instance v7, Lg0/h;

    .line 721
    .line 722
    iget-object v11, v11, Lg0/h;->a:Ljava/lang/String;

    .line 723
    .line 724
    invoke-static {v3}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v13

    .line 728
    new-instance v14, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .line 732
    .line 733
    invoke-static {v3}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v6

    .line 737
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .line 739
    .line 740
    const-string v6, "~"

    .line 741
    .line 742
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v6

    .line 752
    invoke-static {v13, v6}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v6

    .line 756
    invoke-direct {v7, v11, v6}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    add-int/lit8 v5, v5, 0x1

    .line 760
    .line 761
    move-object v11, v7

    .line 762
    const/16 v6, 0x5c

    .line 763
    .line 764
    goto :goto_12

    .line 765
    :cond_22
    move-object v3, v11

    .line 766
    iget v11, v1, Lr0/g;->c:I

    .line 767
    .line 768
    iget-object v5, v1, Lr0/f;->j:Ljava/util/List;

    .line 769
    .line 770
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    move-object v13, v5

    .line 775
    check-cast v13, Ljava/lang/String;

    .line 776
    .line 777
    if-eqz v4, :cond_23

    .line 778
    .line 779
    iget-object v5, v4, Lq0/c;->b:Ljava/lang/String;

    .line 780
    .line 781
    goto :goto_13

    .line 782
    :cond_23
    iget-object v5, v3, Lg0/h;->c:Ljava/lang/String;

    .line 783
    .line 784
    :goto_13
    const/16 v6, 0x5c

    .line 785
    .line 786
    move-object v14, v2

    .line 787
    move v2, v15

    .line 788
    move-object v15, v5

    .line 789
    move/from16 v16, v9

    .line 790
    .line 791
    invoke-static/range {v11 .. v16}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cExtract(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 792
    .line 793
    .line 794
    move-result v5

    .line 795
    if-eqz v4, :cond_24

    .line 796
    .line 797
    :try_start_0
    iget-object v7, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 798
    .line 799
    iget v11, v1, Lr0/g;->c:I

    .line 800
    .line 801
    const/4 v12, -0x1

    .line 802
    invoke-virtual {v7, v11, v12}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .line 804
    .line 805
    :catch_0
    invoke-virtual {v4, v1}, Lq0/c;->a(Lr0/a;)Z

    .line 806
    .line 807
    .line 808
    move-result v4

    .line 809
    if-nez v4, :cond_24

    .line 810
    .line 811
    iget v4, v1, Lr0/g;->c:I

    .line 812
    .line 813
    const-string v7, "Failed to move files to destination"

    .line 814
    .line 815
    const/4 v11, 0x0

    .line 816
    invoke-static {v4, v11, v7}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 817
    .line 818
    .line 819
    goto :goto_14

    .line 820
    :cond_24
    const/4 v11, 0x0

    .line 821
    :goto_14
    move v4, v5

    .line 822
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 823
    .line 824
    .line 825
    move-result v5

    .line 826
    if-eqz v5, :cond_25

    .line 827
    .line 828
    move v5, v11

    .line 829
    goto :goto_18

    .line 830
    :cond_25
    if-nez v4, :cond_26

    .line 831
    .line 832
    iget v5, v1, Lr0/g;->c:I

    .line 833
    .line 834
    invoke-static {v5, v11}, Ld0/a;->c(IZ)V

    .line 835
    .line 836
    .line 837
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lr0/g;->n()V

    .line 838
    .line 839
    .line 840
    if-eqz v17, :cond_27

    .line 841
    .line 842
    if-eqz v4, :cond_27

    .line 843
    .line 844
    const/16 v17, 0x1

    .line 845
    .line 846
    goto :goto_16

    .line 847
    :cond_27
    const/16 v17, 0x0

    .line 848
    .line 849
    :goto_16
    if-nez v18, :cond_29

    .line 850
    .line 851
    invoke-static {v3}, Lw0/f;->b(Lg0/h;)B

    .line 852
    .line 853
    .line 854
    move-result v4

    .line 855
    const/4 v5, 0x1

    .line 856
    if-ne v4, v5, :cond_28

    .line 857
    .line 858
    invoke-static {v3}, Lp0/f;->b(Lg0/h;)Z

    .line 859
    .line 860
    .line 861
    move-result v3

    .line 862
    if-eqz v3, :cond_28

    .line 863
    .line 864
    const/16 v18, 0x1

    .line 865
    .line 866
    goto :goto_17

    .line 867
    :cond_28
    const/16 v18, 0x0

    .line 868
    .line 869
    :cond_29
    :goto_17
    add-int/lit8 v15, v2, 0x1

    .line 870
    .line 871
    move v7, v8

    .line 872
    const/4 v3, 0x0

    .line 873
    const/4 v4, 0x1

    .line 874
    const/4 v5, 0x0

    .line 875
    const/4 v6, 0x3

    .line 876
    const/16 v8, 0x10

    .line 877
    .line 878
    goto/16 :goto_3

    .line 879
    .line 880
    :cond_2a
    const/4 v5, 0x0

    .line 881
    goto :goto_18

    .line 882
    :cond_2b
    const/16 v6, 0x5c

    .line 883
    .line 884
    move/from16 v5, v17

    .line 885
    .line 886
    :goto_18
    if-eqz v0, :cond_2e

    .line 887
    .line 888
    if-eqz v18, :cond_2e

    .line 889
    .line 890
    iget-object v2, v1, Lr0/f;->i:Ljava/util/List;

    .line 891
    .line 892
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 893
    .line 894
    .line 895
    move-result v2

    .line 896
    const/4 v3, 0x0

    .line 897
    :goto_19
    if-ge v3, v2, :cond_2e

    .line 898
    .line 899
    iget-object v4, v1, Lr0/f;->l:Ljava/util/List;

    .line 900
    .line 901
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    check-cast v4, Lg0/h;

    .line 906
    .line 907
    invoke-static {v4}, Lw0/f;->b(Lg0/h;)B

    .line 908
    .line 909
    .line 910
    move-result v7

    .line 911
    const/4 v8, 0x1

    .line 912
    if-ne v7, v8, :cond_2d

    .line 913
    .line 914
    invoke-static {v4}, Lp0/f;->b(Lg0/h;)Z

    .line 915
    .line 916
    .line 917
    move-result v7

    .line 918
    if-nez v7, :cond_2c

    .line 919
    .line 920
    goto :goto_1a

    .line 921
    :cond_2c
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 922
    .line 923
    invoke-static {v4, v8}, Lp0/f;->a(Ljava/lang/String;Z)V

    .line 924
    .line 925
    .line 926
    :cond_2d
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    .line 927
    .line 928
    goto :goto_19

    .line 929
    :cond_2e
    if-eqz v5, :cond_2f

    .line 930
    .line 931
    const/high16 v2, 0x120000

    .line 932
    .line 933
    goto :goto_1b

    .line 934
    :cond_2f
    const/high16 v2, 0x110000

    .line 935
    .line 936
    :goto_1b
    invoke-virtual {v1, v2}, Lr0/g;->q(I)V

    .line 937
    .line 938
    .line 939
    iget-object v2, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 940
    .line 941
    iget-object v3, v1, Lr0/g;->h:Ljava/util/ArrayList;

    .line 942
    .line 943
    const/4 v4, 0x0

    .line 944
    invoke-virtual {v2, v1, v5, v3, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 945
    .line 946
    .line 947
    if-eqz v0, :cond_30

    .line 948
    .line 949
    iget-object v0, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 950
    .line 951
    iget v2, v1, Lr0/g;->c:I

    .line 952
    .line 953
    const/4 v3, 0x1

    .line 954
    invoke-virtual {v0, v2, v3, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 955
    .line 956
    .line 957
    goto :goto_1c

    .line 958
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    if-eqz v0, :cond_31

    .line 963
    .line 964
    return-void

    .line 965
    :cond_31
    :goto_1c
    const/16 v0, 0x10

    .line 966
    .line 967
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    if-eqz v0, :cond_36

    .line 972
    .line 973
    if-eqz v5, :cond_33

    .line 974
    .line 975
    invoke-virtual/range {p0 .. p0}, Lr0/g;->l()Z

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    if-eqz v0, :cond_32

    .line 980
    .line 981
    goto :goto_1d

    .line 982
    :cond_32
    const/4 v4, 0x0

    .line 983
    goto :goto_1e

    .line 984
    :cond_33
    :goto_1d
    const/4 v4, 0x1

    .line 985
    :goto_1e
    invoke-virtual {v1, v4}, Lr0/f;->s(Z)Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    if-eqz v0, :cond_3a

    .line 990
    .line 991
    const-string v0, ""

    .line 992
    .line 993
    iget-object v2, v1, Lr0/f;->j:Ljava/util/List;

    .line 994
    .line 995
    const/4 v3, 0x0

    .line 996
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    check-cast v2, Ljava/lang/String;

    .line 1001
    .line 1002
    const-string v3, "\\-p"

    .line 1003
    .line 1004
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v3

    .line 1008
    if-eqz v3, :cond_34

    .line 1009
    .line 1010
    const-string v0, "\\-p"

    .line 1011
    .line 1012
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1013
    .line 1014
    .line 1015
    move-result v0

    .line 1016
    const/4 v3, 0x3

    .line 1017
    add-int/2addr v0, v3

    .line 1018
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    const-string v2, "\\"

    .line 1023
    .line 1024
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    if-eqz v2, :cond_34

    .line 1029
    .line 1030
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1031
    .line 1032
    .line 1033
    move-result v2

    .line 1034
    const/4 v3, 0x0

    .line 1035
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    :cond_34
    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v0

    .line 1043
    if-eqz v0, :cond_35

    .line 1044
    .line 1045
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->f:[Ljava/lang/String;

    .line 1046
    .line 1047
    iget v2, v1, Lr0/g;->c:I

    .line 1048
    .line 1049
    aget-object v2, v0, v2

    .line 1050
    .line 1051
    invoke-static {v2}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v2

    .line 1055
    if-nez v2, :cond_35

    .line 1056
    .line 1057
    iget v2, v1, Lr0/g;->c:I

    .line 1058
    .line 1059
    aget-object v0, v0, v2

    .line 1060
    .line 1061
    :cond_35
    iget-object v0, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 1062
    .line 1063
    iget v2, v1, Lr0/g;->c:I

    .line 1064
    .line 1065
    iget-object v3, v1, Lr0/f;->i:Ljava/util/List;

    .line 1066
    .line 1067
    const/4 v4, 0x0

    .line 1068
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v3

    .line 1072
    check-cast v3, Lg0/h;

    .line 1073
    .line 1074
    iget v3, v1, Lr0/g;->d:I

    .line 1075
    .line 1076
    and-int/lit8 v3, v3, 0x8

    .line 1077
    .line 1078
    const/4 v4, 0x0

    .line 1079
    invoke-virtual {v0, v2, v4, v3}, Lru/zdevs/zarchiver/service/ZArchiverService;->k(ILg0/h;I)V

    .line 1080
    .line 1081
    .line 1082
    goto :goto_21

    .line 1083
    :cond_36
    const/16 v0, 0x20

    .line 1084
    .line 1085
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v0

    .line 1089
    if-eqz v0, :cond_37

    .line 1090
    .line 1091
    iget-object v2, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 1092
    .line 1093
    iget v0, v1, Lr0/g;->c:I

    .line 1094
    .line 1095
    iget-object v3, v1, Lr0/f;->i:Ljava/util/List;

    .line 1096
    .line 1097
    const/4 v4, 0x0

    .line 1098
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v3

    .line 1102
    check-cast v3, Lg0/h;

    .line 1103
    .line 1104
    iget-object v5, v1, Lr0/f;->l:Ljava/util/List;

    .line 1105
    .line 1106
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v5

    .line 1110
    check-cast v5, Lg0/h;

    .line 1111
    .line 1112
    monitor-enter v2

    .line 1113
    :try_start_1
    invoke-static {v0, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->h(II)Landroid/content/Intent;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    const-string v4, "iAction"

    .line 1118
    .line 1119
    const/16 v6, 0x17

    .line 1120
    .line 1121
    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1122
    .line 1123
    .line 1124
    const-string v4, "oPath"

    .line 1125
    .line 1126
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1127
    .line 1128
    .line 1129
    const-string v4, "sFilePath"

    .line 1130
    .line 1131
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1135
    .line 1136
    .line 1137
    monitor-exit v2

    .line 1138
    goto :goto_21

    .line 1139
    :catchall_0
    move-exception v0

    .line 1140
    monitor-exit v2

    .line 1141
    throw v0

    .line 1142
    :cond_37
    const/16 v0, 0x80

    .line 1143
    .line 1144
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v2

    .line 1148
    if-eqz v2, :cond_3a

    .line 1149
    .line 1150
    if-eqz v5, :cond_39

    .line 1151
    .line 1152
    invoke-virtual/range {p0 .. p0}, Lr0/g;->l()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v2

    .line 1156
    if-eqz v2, :cond_38

    .line 1157
    .line 1158
    goto :goto_1f

    .line 1159
    :cond_38
    const/4 v4, 0x0

    .line 1160
    goto :goto_20

    .line 1161
    :cond_39
    :goto_1f
    const/4 v4, 0x1

    .line 1162
    :goto_20
    invoke-virtual {v1, v4}, Lr0/f;->s(Z)Ljava/lang/String;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v2

    .line 1166
    if-eqz v2, :cond_3a

    .line 1167
    .line 1168
    iget-object v2, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 1169
    .line 1170
    iget v3, v1, Lr0/g;->c:I

    .line 1171
    .line 1172
    iget-object v4, v1, Lr0/f;->i:Ljava/util/List;

    .line 1173
    .line 1174
    const/4 v5, 0x0

    .line 1175
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v4

    .line 1179
    check-cast v4, Lg0/h;

    .line 1180
    .line 1181
    const/4 v4, 0x0

    .line 1182
    invoke-virtual {v2, v3, v4, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->k(ILg0/h;I)V

    .line 1183
    .line 1184
    .line 1185
    :cond_3a
    :goto_21
    return-void

    .line 1186
    :cond_3b
    :goto_22
    move-object v4, v3

    .line 1187
    const/high16 v0, 0x120000

    .line 1188
    .line 1189
    invoke-virtual {v1, v0}, Lr0/g;->q(I)V

    .line 1190
    .line 1191
    .line 1192
    iget-object v0, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 1193
    .line 1194
    const/4 v2, 0x1

    .line 1195
    invoke-virtual {v0, v1, v2, v4, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1196
    .line 1197
    .line 1198
    return-void
.end method

.method public final s(Z)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lr0/f;->k:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x5c

    .line 25
    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_1
    if-nez p1, :cond_2

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-wide v2, p1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    const-wide/16 v2, -0x1

    .line 44
    .line 45
    :goto_0
    const-wide/16 v4, 0x0

    .line 46
    .line 47
    cmp-long p1, v2, v4

    .line 48
    .line 49
    if-lez p1, :cond_3

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_3
    return-object v1
.end method
