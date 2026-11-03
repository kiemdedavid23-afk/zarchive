.class public final Lr0/e;
.super Lr0/g;
.source "SourceFile"


# instance fields
.field public final synthetic i:I

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;II)V
    .locals 1

    .line 1
    iput p3, p0, Lr0/e;->i:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p3, v0, :cond_0

    .line 8
    .line 9
    const/16 p3, 0x8

    .line 10
    .line 11
    invoke-direct {p0, p1, p3, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/4 p3, 0x6

    .line 16
    invoke-direct {p0, p1, p3, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 p3, 0xb

    .line 21
    .line 22
    invoke-direct {p0, p1, p3, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lr0/e;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 8
    .line 9
    iget v1, p0, Lr0/g;->c:I

    .line 10
    .line 11
    aput-object p1, v0, v1

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final p()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lr0/e;->i:I

    .line 4
    .line 5
    iget-object v2, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 6
    .line 7
    iget v3, v1, Lr0/g;->c:I

    .line 8
    .line 9
    const/4 v6, 0x2

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_10

    .line 17
    .line 18
    :pswitch_0
    iget-object v0, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_e

    .line 23
    .line 24
    iget-object v10, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v10, Ljava/util/List;

    .line 27
    .line 28
    if-eqz v10, :cond_e

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v10, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v10, Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-eq v0, v10, :cond_0

    .line 43
    .line 44
    goto/16 :goto_9

    .line 45
    .line 46
    :cond_0
    iget-object v0, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_2

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Lg0/h;

    .line 65
    .line 66
    invoke-virtual {v1, v10, v8}, Lr0/g;->d(Lg0/h;Z)Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    if-nez v10, :cond_1

    .line 71
    .line 72
    goto/16 :goto_a

    .line 73
    .line 74
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 75
    .line 76
    iget-object v10, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v10, Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    invoke-direct {v0, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .line 86
    .line 87
    iget-object v10, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v10, Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    move v11, v8

    .line 96
    move v12, v9

    .line 97
    :goto_0
    if-ge v11, v10, :cond_c

    .line 98
    .line 99
    iget-object v13, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v13, Ljava/util/List;

    .line 102
    .line 103
    if-eqz v13, :cond_3

    .line 104
    .line 105
    sget-object v13, Lru/zdevs/zarchiver/archiver/C2JBridge;->k:[Ljava/lang/String;

    .line 106
    .line 107
    new-instance v14, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    iget-object v15, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v15, Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    check-cast v15, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v15, " ("

    .line 126
    .line 127
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    add-int/lit8 v15, v11, 0x1

    .line 131
    .line 132
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v15, "/"

    .line 136
    .line 137
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v15, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v15, Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v15, ")"

    .line 152
    .line 153
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    aput-object v14, v13, v3

    .line 161
    .line 162
    invoke-virtual {v2, v3, v14}, Lru/zdevs/zarchiver/service/ZArchiverService;->o(ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    iget-object v13, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v13, Ljava/util/List;

    .line 168
    .line 169
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    check-cast v13, Lg0/h;

    .line 174
    .line 175
    iget-object v13, v13, Lg0/h;->c:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v3, v9, v13}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object v13, Lru/zdevs/zarchiver/archiver/C2JBridge;->l:[Ld0/i;

    .line 181
    .line 182
    new-instance v14, Ld0/i;

    .line 183
    .line 184
    iget-object v15, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast v15, Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    check-cast v15, Lg0/h;

    .line 193
    .line 194
    iget-object v15, v15, Lg0/h;->c:Ljava/lang/String;

    .line 195
    .line 196
    invoke-direct {v14, v15}, Ld0/i;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    aput-object v14, v13, v3

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 202
    .line 203
    .line 204
    move-result v14

    .line 205
    if-eqz v14, :cond_4

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {v1, v9}, Lr0/g;->k(I)Z

    .line 209
    .line 210
    .line 211
    move-result v14

    .line 212
    if-eqz v14, :cond_8

    .line 213
    .line 214
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    iget-object v15, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 219
    .line 220
    check-cast v15, Ljava/util/List;

    .line 221
    .line 222
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    check-cast v15, Lg0/h;

    .line 227
    .line 228
    iget-object v15, v15, Lg0/h;->c:Ljava/lang/String;

    .line 229
    .line 230
    iget-object v4, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast v4, Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Ljava/lang/String;

    .line 239
    .line 240
    sget-object v16, Lq0/a;->a:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v14}, Ln0/a;->f()Z

    .line 243
    .line 244
    .line 245
    move-result v16

    .line 246
    if-nez v16, :cond_5

    .line 247
    .line 248
    :goto_1
    move v4, v8

    .line 249
    goto :goto_4

    .line 250
    :cond_5
    invoke-static {v14}, Lq0/a;->b(Ln0/a;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v15}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    invoke-static {v4}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-static {}, Lb/d;->r()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v9, " t \'"

    .line 274
    .line 275
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v9, "\'"

    .line 279
    .line 280
    const-string v5, "\'\\\'\'"

    .line 281
    .line 282
    invoke-virtual {v15, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v5, "\' "

    .line 290
    .line 291
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    invoke-virtual {v14, v4}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-nez v4, :cond_6

    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_6
    invoke-static {v14}, Lb/d;->S(Ln0/a;)I

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-ne v4, v6, :cond_7

    .line 313
    .line 314
    const/4 v4, 0x1

    .line 315
    goto :goto_3

    .line 316
    :cond_7
    :goto_2
    const/4 v4, 0x0

    .line 317
    :goto_3
    invoke-static {v14}, Lq0/a;->d(Ln0/a;)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lr0/g;->h()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_b

    .line 326
    .line 327
    iget-object v4, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v4, Ljava/util/List;

    .line 330
    .line 331
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    check-cast v4, Lg0/h;

    .line 336
    .line 337
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 338
    .line 339
    iget-object v5, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v5, Ljava/util/List;

    .line 342
    .line 343
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    check-cast v5, Ljava/lang/String;

    .line 348
    .line 349
    invoke-static {v3, v4, v5}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cTest(ILjava/lang/String;Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lr0/g;->n()V

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_9

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_9
    aget-object v5, v13, v3

    .line 364
    .line 365
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    aput-object v7, v13, v3

    .line 369
    .line 370
    if-eqz v12, :cond_a

    .line 371
    .line 372
    if-eqz v4, :cond_a

    .line 373
    .line 374
    const/4 v12, 0x1

    .line 375
    goto :goto_5

    .line 376
    :cond_a
    const/4 v12, 0x0

    .line 377
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 378
    .line 379
    const/4 v8, 0x0

    .line 380
    const/4 v9, 0x1

    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_b
    const/4 v8, 0x0

    .line 384
    goto :goto_7

    .line 385
    :cond_c
    :goto_6
    move v8, v12

    .line 386
    :goto_7
    if-eqz v8, :cond_d

    .line 387
    .line 388
    const/high16 v4, 0x120000

    .line 389
    .line 390
    goto :goto_8

    .line 391
    :cond_d
    const/high16 v4, 0x110000

    .line 392
    .line 393
    :goto_8
    invoke-virtual {v1, v4}, Lr0/g;->q(I)V

    .line 394
    .line 395
    .line 396
    iget-object v3, v1, Lr0/g;->h:Ljava/util/ArrayList;

    .line 397
    .line 398
    invoke-virtual {v2, v1, v8, v3, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 399
    .line 400
    .line 401
    goto :goto_a

    .line 402
    :cond_e
    :goto_9
    const/high16 v0, 0x120000

    .line 403
    .line 404
    invoke-virtual {v1, v0}, Lr0/g;->q(I)V

    .line 405
    .line 406
    .line 407
    const/4 v0, 0x1

    .line 408
    invoke-virtual {v2, v1, v0, v7, v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 409
    .line 410
    .line 411
    :goto_a
    return-void

    .line 412
    :pswitch_1
    move v0, v9

    .line 413
    iget-object v4, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v4, Lg0/h;

    .line 416
    .line 417
    invoke-virtual {v1, v4, v0}, Lr0/g;->d(Lg0/h;Z)Z

    .line 418
    .line 419
    .line 420
    move-result v4

    .line 421
    if-nez v4, :cond_f

    .line 422
    .line 423
    goto/16 :goto_f

    .line 424
    .line 425
    :cond_f
    iget-object v4, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v4, Lg0/h;

    .line 428
    .line 429
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 430
    .line 431
    const/4 v5, 0x0

    .line 432
    invoke-static {v3, v5, v4}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 436
    .line 437
    .line 438
    move-result v4

    .line 439
    if-eqz v4, :cond_10

    .line 440
    .line 441
    goto/16 :goto_c

    .line 442
    .line 443
    :cond_10
    invoke-virtual {v1, v0}, Lr0/g;->k(I)Z

    .line 444
    .line 445
    .line 446
    move-result v4

    .line 447
    if-eqz v4, :cond_13

    .line 448
    .line 449
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iget-object v4, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v4, Lg0/h;

    .line 456
    .line 457
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 458
    .line 459
    iget-object v5, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 460
    .line 461
    check-cast v5, Ljava/lang/String;

    .line 462
    .line 463
    iget-object v8, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v8, Ljava/lang/String;

    .line 466
    .line 467
    invoke-static {v4}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v9

    .line 471
    sget-object v10, Lq0/a;->a:Ljava/util/ArrayList;

    .line 472
    .line 473
    invoke-virtual {v0}, Ln0/a;->f()Z

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    if-nez v10, :cond_11

    .line 478
    .line 479
    goto/16 :goto_c

    .line 480
    .line 481
    :cond_11
    invoke-static {v0}, Lq0/a;->b(Ln0/a;)V

    .line 482
    .line 483
    .line 484
    invoke-static {v4}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-static {v9}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v11

    .line 492
    const/4 v9, 0x1

    .line 493
    invoke-static {v0, v11, v9}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v14

    .line 497
    const/4 v13, 0x0

    .line 498
    invoke-static {v5}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v9

    .line 502
    invoke-static {v8}, Lq0/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    move-object v8, v4

    .line 507
    move-object v12, v0

    .line 508
    invoke-static/range {v8 .. v13}, Lb/d;->g0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln0/a;Z)Z

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-eqz v14, :cond_12

    .line 513
    .line 514
    const/4 v5, 0x0

    .line 515
    invoke-static {v0, v14, v5}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    :cond_12
    invoke-static {v0}, Lq0/a;->d(Ln0/a;)V

    .line 519
    .line 520
    .line 521
    move v8, v4

    .line 522
    goto :goto_d

    .line 523
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lr0/g;->h()Z

    .line 524
    .line 525
    .line 526
    move-result v0

    .line 527
    if-eqz v0, :cond_16

    .line 528
    .line 529
    new-instance v0, Lg0/h;

    .line 530
    .line 531
    iget-object v4, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v4, Lg0/h;

    .line 534
    .line 535
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 536
    .line 537
    invoke-direct {v0, v4}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const/4 v4, 0x1

    .line 541
    invoke-static {v0, v4}, Lq0/c;->c(Lg0/h;Z)Lq0/c;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    if-eqz v0, :cond_14

    .line 546
    .line 547
    sget-object v4, Lb/d;->e:[B

    .line 548
    .line 549
    aget-byte v5, v4, v3

    .line 550
    .line 551
    or-int/lit8 v5, v5, -0x80

    .line 552
    .line 553
    int-to-byte v5, v5

    .line 554
    aput-byte v5, v4, v3

    .line 555
    .line 556
    invoke-virtual {v0, v1}, Lq0/c;->b(Lr0/a;)Z

    .line 557
    .line 558
    .line 559
    move-result v4

    .line 560
    if-nez v4, :cond_14

    .line 561
    .line 562
    const-string v0, "Failed to write to archive"

    .line 563
    .line 564
    const/4 v4, 0x0

    .line 565
    invoke-static {v3, v4, v0}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 566
    .line 567
    .line 568
    move-object v0, v7

    .line 569
    :cond_14
    if-eqz v0, :cond_15

    .line 570
    .line 571
    iget-object v4, v0, Lq0/c;->b:Ljava/lang/String;

    .line 572
    .line 573
    goto :goto_b

    .line 574
    :cond_15
    iget-object v4, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast v4, Lg0/h;

    .line 577
    .line 578
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 579
    .line 580
    :goto_b
    iget-object v5, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v5, Ljava/lang/String;

    .line 583
    .line 584
    iget-object v8, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v8, Ljava/lang/String;

    .line 587
    .line 588
    iget-object v9, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast v9, Lg0/h;

    .line 591
    .line 592
    iget-object v9, v9, Lg0/h;->c:Ljava/lang/String;

    .line 593
    .line 594
    invoke-static {v9}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-static {v3, v4, v5, v8, v9}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cDelFiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 599
    .line 600
    .line 601
    move-result v8

    .line 602
    if-eqz v0, :cond_17

    .line 603
    .line 604
    invoke-virtual {v0, v1}, Lq0/c;->a(Lr0/a;)Z

    .line 605
    .line 606
    .line 607
    goto :goto_d

    .line 608
    :cond_16
    :goto_c
    const/4 v8, 0x0

    .line 609
    :cond_17
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lr0/g;->n()V

    .line 610
    .line 611
    .line 612
    if-eqz v8, :cond_18

    .line 613
    .line 614
    const/high16 v4, 0x120000

    .line 615
    .line 616
    goto :goto_e

    .line 617
    :cond_18
    const/high16 v4, 0x110000

    .line 618
    .line 619
    :goto_e
    invoke-virtual {v1, v4}, Lr0/g;->q(I)V

    .line 620
    .line 621
    .line 622
    iget-object v0, v1, Lr0/g;->h:Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v2, v1, v8, v0, v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 625
    .line 626
    .line 627
    if-eqz v8, :cond_19

    .line 628
    .line 629
    invoke-virtual {v2, v3, v6, v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 630
    .line 631
    .line 632
    :cond_19
    :goto_f
    return-void

    .line 633
    :goto_10
    iget-object v0, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v0, Ljava/util/List;

    .line 636
    .line 637
    if-eqz v0, :cond_1a

    .line 638
    .line 639
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_1b

    .line 644
    .line 645
    :cond_1a
    iget-object v0, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 646
    .line 647
    check-cast v0, Ljava/util/List;

    .line 648
    .line 649
    if-eqz v0, :cond_35

    .line 650
    .line 651
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 652
    .line 653
    .line 654
    move-result v0

    .line 655
    if-eqz v0, :cond_1b

    .line 656
    .line 657
    goto/16 :goto_21

    .line 658
    .line 659
    :cond_1b
    iget-object v0, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Lg0/h;

    .line 662
    .line 663
    const/4 v4, 0x4

    .line 664
    if-eqz v0, :cond_1c

    .line 665
    .line 666
    iget-object v5, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 667
    .line 668
    check-cast v5, Ljava/util/List;

    .line 669
    .line 670
    if-eqz v5, :cond_1d

    .line 671
    .line 672
    const/4 v8, 0x0

    .line 673
    invoke-virtual {v1, v0, v5, v4, v8}, Lr0/g;->g(Lg0/h;Ljava/util/List;II)Z

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    if-nez v0, :cond_1d

    .line 678
    .line 679
    goto/16 :goto_22

    .line 680
    .line 681
    :cond_1c
    iget-object v0, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v0, Ljava/util/List;

    .line 684
    .line 685
    invoke-virtual {v1, v7, v0, v4}, Lr0/g;->f(Ljava/lang/String;Ljava/util/List;I)Z

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-nez v0, :cond_1d

    .line 690
    .line 691
    goto/16 :goto_22

    .line 692
    .line 693
    :cond_1d
    iget-object v0, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 694
    .line 695
    check-cast v0, Lg0/h;

    .line 696
    .line 697
    sget-object v4, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 698
    .line 699
    if-nez v0, :cond_28

    .line 700
    .line 701
    iget-object v0, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast v0, Ljava/util/List;

    .line 704
    .line 705
    const/4 v5, 0x0

    .line 706
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    check-cast v0, Lg0/h;

    .line 711
    .line 712
    invoke-virtual {v0}, Lg0/h;->j()Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    const/4 v8, 0x1

    .line 717
    invoke-virtual {v1, v8}, Lr0/g;->k(I)Z

    .line 718
    .line 719
    .line 720
    move-result v9

    .line 721
    if-nez v9, :cond_1e

    .line 722
    .line 723
    iget-object v8, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v8, Ljava/util/List;

    .line 726
    .line 727
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    check-cast v8, Lg0/h;

    .line 732
    .line 733
    invoke-static {v8}, Lp0/f;->b(Lg0/h;)Z

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    if-eqz v5, :cond_1e

    .line 738
    .line 739
    const/4 v5, 0x1

    .line 740
    goto :goto_11

    .line 741
    :cond_1e
    const/4 v5, 0x0

    .line 742
    :goto_11
    const/4 v8, 0x1

    .line 743
    invoke-virtual {v1, v8}, Lr0/g;->k(I)Z

    .line 744
    .line 745
    .line 746
    move-result v9

    .line 747
    if-eqz v9, :cond_1f

    .line 748
    .line 749
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 750
    .line 751
    .line 752
    move-result-object v9

    .line 753
    iget-object v10, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 754
    .line 755
    check-cast v10, Ljava/util/List;

    .line 756
    .line 757
    const/4 v11, 0x0

    .line 758
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v10

    .line 762
    check-cast v10, Lg0/h;

    .line 763
    .line 764
    iget-object v10, v10, Lg0/h;->c:Ljava/lang/String;

    .line 765
    .line 766
    invoke-static {v9, v10, v8}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v9

    .line 770
    goto :goto_12

    .line 771
    :cond_1f
    move-object v9, v7

    .line 772
    :goto_12
    iget-object v8, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 773
    .line 774
    check-cast v8, Ljava/util/List;

    .line 775
    .line 776
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 777
    .line 778
    .line 779
    move-result-object v8

    .line 780
    const/4 v10, 0x0

    .line 781
    const/4 v11, 0x1

    .line 782
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 783
    .line 784
    .line 785
    move-result v12

    .line 786
    if-eqz v12, :cond_27

    .line 787
    .line 788
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v12

    .line 792
    check-cast v12, Lg0/h;

    .line 793
    .line 794
    invoke-virtual {v12}, Lg0/h;->e()Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v13

    .line 798
    aput-object v13, v4, v3

    .line 799
    .line 800
    if-eqz v0, :cond_20

    .line 801
    .line 802
    invoke-virtual {v2, v3, v13}, Lru/zdevs/zarchiver/service/ZArchiverService;->a(ILjava/lang/String;)V

    .line 803
    .line 804
    .line 805
    goto :goto_14

    .line 806
    :cond_20
    mul-int/lit8 v14, v10, 0x64

    .line 807
    .line 808
    iget-object v15, v1, Lr0/e;->l:Ljava/lang/Object;

    .line 809
    .line 810
    check-cast v15, Ljava/util/List;

    .line 811
    .line 812
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 813
    .line 814
    .line 815
    move-result v15

    .line 816
    div-int/2addr v14, v15

    .line 817
    invoke-virtual {v2, v3, v14, v13}, Lru/zdevs/zarchiver/service/ZArchiverService;->p(IILjava/lang/String;)V

    .line 818
    .line 819
    .line 820
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 821
    .line 822
    .line 823
    move-result v14

    .line 824
    if-eqz v14, :cond_21

    .line 825
    .line 826
    goto :goto_17

    .line 827
    :cond_21
    invoke-virtual {v12}, Lg0/h;->k()Z

    .line 828
    .line 829
    .line 830
    move-result v14

    .line 831
    if-eqz v14, :cond_22

    .line 832
    .line 833
    invoke-static {v12}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 834
    .line 835
    .line 836
    move-result-object v12

    .line 837
    invoke-static {v12}, Lq0/b;->f(Lg0/f;)Z

    .line 838
    .line 839
    .line 840
    move-result v12

    .line 841
    if-eqz v12, :cond_24

    .line 842
    .line 843
    if-eqz v11, :cond_24

    .line 844
    .line 845
    const/4 v11, 0x1

    .line 846
    goto :goto_16

    .line 847
    :cond_22
    const/4 v14, 0x1

    .line 848
    invoke-virtual {v1, v14}, Lr0/g;->k(I)Z

    .line 849
    .line 850
    .line 851
    move-result v15

    .line 852
    if-eqz v15, :cond_25

    .line 853
    .line 854
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 855
    .line 856
    .line 857
    move-result-object v14

    .line 858
    sget-object v15, Lq0/a;->a:Ljava/util/ArrayList;

    .line 859
    .line 860
    invoke-virtual {v14}, Ln0/a;->f()Z

    .line 861
    .line 862
    .line 863
    move-result v15

    .line 864
    if-nez v15, :cond_23

    .line 865
    .line 866
    const/4 v12, 0x0

    .line 867
    goto :goto_15

    .line 868
    :cond_23
    invoke-static {v14}, Lq0/a;->b(Ln0/a;)V

    .line 869
    .line 870
    .line 871
    iget-object v12, v12, Lg0/h;->c:Ljava/lang/String;

    .line 872
    .line 873
    invoke-static {v12}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v12

    .line 877
    const/4 v15, 0x1

    .line 878
    invoke-static {v14, v12, v15}, Lo0/g;->c(Ln0/a;Ljava/lang/String;Z)Z

    .line 879
    .line 880
    .line 881
    move-result v12

    .line 882
    invoke-static {v14}, Lq0/a;->d(Ln0/a;)V

    .line 883
    .line 884
    .line 885
    :goto_15
    if-nez v12, :cond_26

    .line 886
    .line 887
    invoke-virtual {v1, v13}, Lr0/g;->o(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    :cond_24
    const/4 v11, 0x0

    .line 891
    goto :goto_16

    .line 892
    :cond_25
    invoke-static {v12}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 893
    .line 894
    .line 895
    move-result-object v13

    .line 896
    invoke-virtual {v13}, Lg0/f;->d()Z

    .line 897
    .line 898
    .line 899
    move-result v14

    .line 900
    if-eqz v14, :cond_26

    .line 901
    .line 902
    invoke-virtual {v13}, Lg0/f;->g()Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v14

    .line 906
    invoke-static {v14}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object v14

    .line 910
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 911
    .line 912
    .line 913
    move-result v14

    .line 914
    invoke-static {v1, v13, v14}, Lq0/b;->e(Lr0/a;Lg0/f;I)V

    .line 915
    .line 916
    .line 917
    if-eqz v5, :cond_26

    .line 918
    .line 919
    iget-object v12, v12, Lg0/h;->c:Ljava/lang/String;

    .line 920
    .line 921
    const/4 v13, 0x0

    .line 922
    const/4 v14, 0x1

    .line 923
    invoke-static {v12, v14, v13}, Lp0/f;->c(Ljava/lang/String;ZZ)V

    .line 924
    .line 925
    .line 926
    :cond_26
    :goto_16
    add-int/lit8 v10, v10, 0x1

    .line 927
    .line 928
    goto/16 :goto_13

    .line 929
    .line 930
    :cond_27
    :goto_17
    if-eqz v9, :cond_33

    .line 931
    .line 932
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    const/4 v4, 0x0

    .line 937
    invoke-static {v0, v9, v4}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    goto/16 :goto_1f

    .line 941
    .line 942
    :cond_28
    invoke-virtual {v0}, Lg0/h;->k()Z

    .line 943
    .line 944
    .line 945
    move-result v0

    .line 946
    iget-object v5, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v5, Lg0/h;

    .line 949
    .line 950
    invoke-virtual {v5}, Lg0/h;->j()Z

    .line 951
    .line 952
    .line 953
    move-result v5

    .line 954
    const/4 v8, 0x1

    .line 955
    invoke-virtual {v1, v8}, Lr0/g;->k(I)Z

    .line 956
    .line 957
    .line 958
    move-result v9

    .line 959
    if-nez v9, :cond_29

    .line 960
    .line 961
    iget-object v9, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast v9, Lg0/h;

    .line 964
    .line 965
    invoke-static {v9}, Lp0/f;->b(Lg0/h;)Z

    .line 966
    .line 967
    .line 968
    move-result v9

    .line 969
    if-eqz v9, :cond_29

    .line 970
    .line 971
    move v9, v8

    .line 972
    goto :goto_18

    .line 973
    :cond_29
    const/4 v9, 0x0

    .line 974
    :goto_18
    invoke-virtual {v1, v8}, Lr0/g;->k(I)Z

    .line 975
    .line 976
    .line 977
    move-result v10

    .line 978
    if-eqz v10, :cond_2a

    .line 979
    .line 980
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 981
    .line 982
    .line 983
    move-result-object v10

    .line 984
    iget-object v11, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 985
    .line 986
    check-cast v11, Lg0/h;

    .line 987
    .line 988
    iget-object v11, v11, Lg0/h;->c:Ljava/lang/String;

    .line 989
    .line 990
    invoke-static {v10, v11, v8}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v10

    .line 994
    goto :goto_19

    .line 995
    :cond_2a
    move-object v10, v7

    .line 996
    :goto_19
    iget-object v8, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 997
    .line 998
    check-cast v8, Ljava/util/List;

    .line 999
    .line 1000
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v8

    .line 1004
    const/4 v11, 0x1

    .line 1005
    const/4 v12, 0x0

    .line 1006
    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1007
    .line 1008
    .line 1009
    move-result v13

    .line 1010
    if-eqz v13, :cond_32

    .line 1011
    .line 1012
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v13

    .line 1016
    check-cast v13, Ljava/lang/String;

    .line 1017
    .line 1018
    aput-object v13, v4, v3

    .line 1019
    .line 1020
    if-eqz v5, :cond_2b

    .line 1021
    .line 1022
    invoke-virtual {v2, v3, v13}, Lru/zdevs/zarchiver/service/ZArchiverService;->a(ILjava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    goto :goto_1b

    .line 1026
    :cond_2b
    mul-int/lit8 v14, v12, 0x64

    .line 1027
    .line 1028
    iget-object v15, v1, Lr0/e;->k:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v15, Ljava/util/List;

    .line 1031
    .line 1032
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 1033
    .line 1034
    .line 1035
    move-result v15

    .line 1036
    div-int/2addr v14, v15

    .line 1037
    monitor-enter v2

    .line 1038
    :try_start_0
    iget-object v15, v2, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 1039
    .line 1040
    const/16 v6, 0x16

    .line 1041
    .line 1042
    invoke-virtual {v15, v3, v6, v14, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v6

    .line 1046
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    .line 1048
    .line 1049
    monitor-exit v2

    .line 1050
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 1051
    .line 1052
    .line 1053
    move-result v6

    .line 1054
    if-eqz v6, :cond_2c

    .line 1055
    .line 1056
    goto/16 :goto_1e

    .line 1057
    .line 1058
    :cond_2c
    new-instance v6, Lg0/h;

    .line 1059
    .line 1060
    iget-object v14, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 1061
    .line 1062
    check-cast v14, Lg0/h;

    .line 1063
    .line 1064
    invoke-direct {v6, v13, v14}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 1065
    .line 1066
    .line 1067
    if-eqz v0, :cond_2d

    .line 1068
    .line 1069
    invoke-static {v6}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v6

    .line 1073
    invoke-static {v6}, Lq0/b;->f(Lg0/f;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v6

    .line 1077
    if-eqz v6, :cond_2f

    .line 1078
    .line 1079
    if-eqz v11, :cond_2f

    .line 1080
    .line 1081
    const/4 v11, 0x1

    .line 1082
    goto :goto_1d

    .line 1083
    :cond_2d
    const/4 v14, 0x1

    .line 1084
    invoke-virtual {v1, v14}, Lr0/g;->k(I)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v15

    .line 1088
    if-eqz v15, :cond_30

    .line 1089
    .line 1090
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v14

    .line 1094
    sget-object v15, Lq0/a;->a:Ljava/util/ArrayList;

    .line 1095
    .line 1096
    invoke-virtual {v14}, Ln0/a;->f()Z

    .line 1097
    .line 1098
    .line 1099
    move-result v15

    .line 1100
    if-nez v15, :cond_2e

    .line 1101
    .line 1102
    const/4 v6, 0x0

    .line 1103
    goto :goto_1c

    .line 1104
    :cond_2e
    invoke-static {v14}, Lq0/a;->b(Ln0/a;)V

    .line 1105
    .line 1106
    .line 1107
    iget-object v6, v6, Lg0/h;->c:Ljava/lang/String;

    .line 1108
    .line 1109
    invoke-static {v6}, Lu0/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v6

    .line 1113
    const/4 v15, 0x1

    .line 1114
    invoke-static {v14, v6, v15}, Lo0/g;->c(Ln0/a;Ljava/lang/String;Z)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v6

    .line 1118
    invoke-static {v14}, Lq0/a;->d(Ln0/a;)V

    .line 1119
    .line 1120
    .line 1121
    :goto_1c
    if-nez v6, :cond_31

    .line 1122
    .line 1123
    invoke-virtual {v1, v13}, Lr0/g;->o(Ljava/lang/String;)V

    .line 1124
    .line 1125
    .line 1126
    :cond_2f
    const/4 v11, 0x0

    .line 1127
    goto :goto_1d

    .line 1128
    :cond_30
    invoke-static {v6}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v13

    .line 1132
    invoke-virtual {v13}, Lg0/f;->d()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v14

    .line 1136
    if-eqz v14, :cond_31

    .line 1137
    .line 1138
    invoke-virtual {v13}, Lg0/f;->g()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v14

    .line 1142
    invoke-static {v14}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v14

    .line 1146
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 1147
    .line 1148
    .line 1149
    move-result v14

    .line 1150
    invoke-static {v1, v13, v14}, Lq0/b;->e(Lr0/a;Lg0/f;I)V

    .line 1151
    .line 1152
    .line 1153
    if-eqz v9, :cond_31

    .line 1154
    .line 1155
    iget-object v6, v6, Lg0/h;->c:Ljava/lang/String;

    .line 1156
    .line 1157
    const/4 v13, 0x0

    .line 1158
    const/4 v14, 0x1

    .line 1159
    invoke-static {v6, v14, v13}, Lp0/f;->c(Ljava/lang/String;ZZ)V

    .line 1160
    .line 1161
    .line 1162
    :cond_31
    :goto_1d
    add-int/lit8 v12, v12, 0x1

    .line 1163
    .line 1164
    const/4 v6, 0x2

    .line 1165
    goto/16 :goto_1a

    .line 1166
    .line 1167
    :catchall_0
    move-exception v0

    .line 1168
    monitor-exit v2

    .line 1169
    throw v0

    .line 1170
    :cond_32
    :goto_1e
    if-eqz v10, :cond_33

    .line 1171
    .line 1172
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    const/4 v4, 0x0

    .line 1177
    invoke-static {v0, v10, v4}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    :cond_33
    :goto_1f
    if-eqz v11, :cond_34

    .line 1181
    .line 1182
    const/high16 v4, 0x120000

    .line 1183
    .line 1184
    goto :goto_20

    .line 1185
    :cond_34
    const/high16 v4, 0x110000

    .line 1186
    .line 1187
    :goto_20
    invoke-virtual {v1, v4}, Lr0/g;->q(I)V

    .line 1188
    .line 1189
    .line 1190
    iget-object v0, v1, Lr0/g;->h:Ljava/util/ArrayList;

    .line 1191
    .line 1192
    invoke-virtual {v2, v1, v11, v0, v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1193
    .line 1194
    .line 1195
    iget-object v0, v1, Lr0/e;->j:Ljava/lang/Object;

    .line 1196
    .line 1197
    check-cast v0, Lg0/h;

    .line 1198
    .line 1199
    const/4 v4, 0x2

    .line 1200
    invoke-virtual {v2, v3, v4, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 1201
    .line 1202
    .line 1203
    goto :goto_22

    .line 1204
    :cond_35
    :goto_21
    const/high16 v0, 0x120000

    .line 1205
    .line 1206
    invoke-virtual {v1, v0}, Lr0/g;->q(I)V

    .line 1207
    .line 1208
    .line 1209
    const/4 v0, 0x1

    .line 1210
    invoke-virtual {v2, v1, v0, v7, v7}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1211
    .line 1212
    .line 1213
    :goto_22
    return-void

    .line 1214
    nop

    .line 1215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lr0/e;->i:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iput-object p2, p0, Lr0/e;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput p1, p0, Lr0/g;->d:I

    .line 10
    .line 11
    return-void

    .line 12
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lr0/e;->k:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lr0/g;->d:I

    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
