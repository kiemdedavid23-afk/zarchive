.class public final Ln/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/b;

.field public b:[Ljava/lang/String;

.field public final c:Ljava/nio/ByteBuffer;

.field public d:Ln/g;

.field public final e:Lp/g;

.field public f:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lp/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lr/a;->a:Ljava/util/Locale;

    .line 5
    .line 6
    iput-object v0, p0, Ln/b;->f:Ljava/util/Locale;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ln/b;->c:Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Ln/b;->e:Lp/g;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Ln/b;->b()Lo/a;

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
    invoke-virtual {p0}, Ln/b;->b()Lo/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    sget-object v1, Lr/b;->a:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iget-short v2, v0, Lo/a;->a:S

    .line 19
    .line 20
    if-ne v1, v2, :cond_17

    .line 21
    .line 22
    check-cast v0, Lo/c;

    .line 23
    .line 24
    iget-object v1, p0, Ln/b;->c:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-static {v1, v0}, Lr/b;->b(Ljava/nio/ByteBuffer;Lo/c;)Le/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Ln/b;->a:Le/b;

    .line 31
    .line 32
    invoke-virtual {p0}, Ln/b;->b()Lo/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-short v2, v0, Lo/a;->a:S

    .line 40
    .line 41
    const/16 v3, 0x180

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    if-ne v2, v3, :cond_5

    .line 45
    .line 46
    check-cast v0, Lq/b;

    .line 47
    .line 48
    iget-short v2, v0, Lo/a;->b:S

    .line 49
    .line 50
    iget v0, v0, Lo/a;->c:I

    .line 51
    .line 52
    sub-int/2addr v0, v2

    .line 53
    div-int/lit8 v0, v0, 0x4

    .line 54
    .line 55
    new-array v2, v0, [J

    .line 56
    .line 57
    move v3, v4

    .line 58
    :goto_0
    if-ge v3, v0, :cond_3

    .line 59
    .line 60
    invoke-static {v1}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    aput-wide v5, v2, v3

    .line 65
    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-array v3, v0, [Ljava/lang/String;

    .line 70
    .line 71
    iput-object v3, p0, Ln/b;->b:[Ljava/lang/String;

    .line 72
    .line 73
    move v3, v4

    .line 74
    :goto_1
    if-ge v3, v0, :cond_4

    .line 75
    .line 76
    iget-object v5, p0, Ln/b;->b:[Ljava/lang/String;

    .line 77
    .line 78
    aget-wide v6, v2, v3

    .line 79
    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v9, "AttrId:0x"

    .line 83
    .line 84
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    aput-object v6, v5, v3

    .line 99
    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0}, Ln/b;->b()Lo/a;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :cond_5
    :goto_2
    if-eqz v0, :cond_16

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    int-to-long v2, v2

    .line 114
    iget-short v5, v0, Lo/a;->b:S

    .line 115
    .line 116
    iget v6, v0, Lo/a;->c:I

    .line 117
    .line 118
    iget-short v0, v0, Lo/a;->a:S

    .line 119
    .line 120
    packed-switch v0, :pswitch_data_0

    .line 121
    .line 122
    .line 123
    goto/16 :goto_5

    .line 124
    .line 125
    :pswitch_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-lez v0, :cond_6

    .line 130
    .line 131
    iget-object v7, p0, Ln/b;->a:Le/b;

    .line 132
    .line 133
    invoke-virtual {v7, v0}, Le/b;->a(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    :cond_6
    iget-object v0, p0, Ln/b;->a:Le/b;

    .line 137
    .line 138
    invoke-static {v1, v0}, Lr/b;->a(Ljava/nio/ByteBuffer;Le/b;)Lo/b;

    .line 139
    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :pswitch_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-lez v0, :cond_7

    .line 152
    .line 153
    iget-object v8, p0, Ln/b;->a:Le/b;

    .line 154
    .line 155
    invoke-virtual {v8, v0}, Le/b;->a(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    :cond_7
    iget-object v0, p0, Ln/b;->a:Le/b;

    .line 159
    .line 160
    invoke-virtual {v0, v7}, Le/b;->a(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Ln/b;->d:Ln/g;

    .line 164
    .line 165
    if-eqz v0, :cond_14

    .line 166
    .line 167
    invoke-interface {v0}, Ln/g;->a()V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_6

    .line 171
    .line 172
    :pswitch_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    new-instance v8, Ln/d;

    .line 181
    .line 182
    invoke-direct {v8}, Ln/d;-><init>()V

    .line 183
    .line 184
    .line 185
    if-lez v0, :cond_8

    .line 186
    .line 187
    iget-object v9, p0, Ln/b;->a:Le/b;

    .line 188
    .line 189
    invoke-virtual {v9, v0}, Le/b;->a(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iput-object v0, v8, Ln/d;->b:Ljava/lang/Object;

    .line 194
    .line 195
    :cond_8
    iget-object v0, p0, Ln/b;->a:Le/b;

    .line 196
    .line 197
    invoke-virtual {v0, v7}, Le/b;->a(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, v8, Ln/d;->c:Ljava/lang/Comparable;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    const v7, 0xffff

    .line 214
    .line 215
    .line 216
    and-int/2addr v0, v7

    .line 217
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 224
    .line 225
    .line 226
    new-instance v7, Le/b;

    .line 227
    .line 228
    const/4 v9, 0x2

    .line 229
    invoke-direct {v7, v0, v9}, Le/b;-><init>(II)V

    .line 230
    .line 231
    .line 232
    move v9, v4

    .line 233
    :goto_3
    if-ge v9, v0, :cond_f

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    new-instance v12, Lq/a;

    .line 244
    .line 245
    invoke-direct {v12}, Lq/a;-><init>()V

    .line 246
    .line 247
    .line 248
    if-lez v10, :cond_9

    .line 249
    .line 250
    iget-object v13, p0, Ln/b;->a:Le/b;

    .line 251
    .line 252
    iget-object v14, v13, Le/b;->a:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v14, [Ljava/lang/String;

    .line 255
    .line 256
    array-length v14, v14

    .line 257
    if-ge v10, v14, :cond_9

    .line 258
    .line 259
    invoke-virtual {v13, v10}, Le/b;->a(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    iput-object v10, v12, Lq/a;->a:Ljava/lang/String;

    .line 264
    .line 265
    :cond_9
    iget-object v10, p0, Ln/b;->a:Le/b;

    .line 266
    .line 267
    invoke-virtual {v10, v11}, Le/b;->a(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    iput-object v10, v12, Lq/a;->b:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v10

    .line 277
    if-eqz v10, :cond_a

    .line 278
    .line 279
    iget-object v10, p0, Ln/b;->b:[Ljava/lang/String;

    .line 280
    .line 281
    if-eqz v10, :cond_a

    .line 282
    .line 283
    array-length v13, v10

    .line 284
    if-ge v11, v13, :cond_a

    .line 285
    .line 286
    aget-object v10, v10, v11

    .line 287
    .line 288
    iput-object v10, v12, Lq/a;->b:Ljava/lang/String;

    .line 289
    .line 290
    :cond_a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 291
    .line 292
    .line 293
    move-result v10

    .line 294
    if-lez v10, :cond_b

    .line 295
    .line 296
    iget-object v11, p0, Ln/b;->a:Le/b;

    .line 297
    .line 298
    invoke-virtual {v11, v10}, Le/b;->a(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    iput-object v10, v12, Lq/a;->c:Ljava/lang/String;

    .line 303
    .line 304
    :cond_b
    iget-object v10, p0, Ln/b;->a:Le/b;

    .line 305
    .line 306
    invoke-static {v1, v10}, Lr/b;->a(Ljava/nio/ByteBuffer;Le/b;)Lo/b;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    iput-object v10, v12, Lq/a;->d:Lo/b;

    .line 311
    .line 312
    iget-object v11, p0, Ln/b;->d:Ln/g;

    .line 313
    .line 314
    if-eqz v11, :cond_e

    .line 315
    .line 316
    iget-object v11, p0, Ln/b;->f:Ljava/util/Locale;

    .line 317
    .line 318
    iget-object v13, v12, Lq/a;->c:Ljava/lang/String;

    .line 319
    .line 320
    if-eqz v13, :cond_c

    .line 321
    .line 322
    goto :goto_4

    .line 323
    :cond_c
    if-eqz v10, :cond_d

    .line 324
    .line 325
    iget-object v13, p0, Ln/b;->e:Lp/g;

    .line 326
    .line 327
    invoke-virtual {v10, v13, v11}, Lo/b;->c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v13

    .line 331
    goto :goto_4

    .line 332
    :cond_d
    const-string v13, ""

    .line 333
    .line 334
    :goto_4
    iput-object v13, v12, Lq/a;->e:Ljava/lang/String;

    .line 335
    .line 336
    iget-object v10, v7, Le/b;->a:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v10, [Lq/a;

    .line 339
    .line 340
    aput-object v12, v10, v9

    .line 341
    .line 342
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_f
    iput-object v7, v8, Ln/d;->d:Ljava/lang/Object;

    .line 346
    .line 347
    iget-object v0, p0, Ln/b;->d:Ln/g;

    .line 348
    .line 349
    if-eqz v0, :cond_14

    .line 350
    .line 351
    invoke-interface {v0, v8}, Ln/g;->b(Ln/d;)V

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :pswitch_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 360
    .line 361
    .line 362
    move-result v7

    .line 363
    if-lez v0, :cond_10

    .line 364
    .line 365
    iget-object v8, p0, Ln/b;->a:Le/b;

    .line 366
    .line 367
    invoke-virtual {v8, v0}, Le/b;->a(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    :cond_10
    if-lez v7, :cond_11

    .line 371
    .line 372
    iget-object v0, p0, Ln/b;->a:Le/b;

    .line 373
    .line 374
    invoke-virtual {v0, v7}, Le/b;->a(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    :cond_11
    iget-object v0, p0, Ln/b;->d:Ln/g;

    .line 378
    .line 379
    invoke-interface {v0}, Ln/g;->c()V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :pswitch_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-lez v0, :cond_12

    .line 392
    .line 393
    iget-object v8, p0, Ln/b;->a:Le/b;

    .line 394
    .line 395
    invoke-virtual {v8, v0}, Le/b;->a(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    :cond_12
    if-lez v7, :cond_13

    .line 399
    .line 400
    iget-object v0, p0, Ln/b;->a:Le/b;

    .line 401
    .line 402
    invoke-virtual {v0, v7}, Le/b;->a(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    :cond_13
    iget-object v0, p0, Ln/b;->d:Ln/g;

    .line 406
    .line 407
    invoke-interface {v0}, Ln/g;->d()V

    .line 408
    .line 409
    .line 410
    goto :goto_6

    .line 411
    :goto_5
    const/16 v7, 0x100

    .line 412
    .line 413
    if-lt v0, v7, :cond_15

    .line 414
    .line 415
    const/16 v7, 0x17f

    .line 416
    .line 417
    if-gt v0, v7, :cond_15

    .line 418
    .line 419
    sub-int v0, v6, v5

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    add-int/2addr v7, v0

    .line 426
    invoke-virtual {v1, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 427
    .line 428
    .line 429
    :cond_14
    :goto_6
    sub-int/2addr v6, v5

    .line 430
    int-to-long v5, v6

    .line 431
    add-long/2addr v2, v5

    .line 432
    invoke-static {v1, v2, v3}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0}, Ln/b;->b()Lo/a;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    goto/16 :goto_2

    .line 440
    .line 441
    :cond_15
    new-instance v1, Lm/a;

    .line 442
    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    const-string v3, "Unexpected chunk type:"

    .line 446
    .line 447
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-direct {v1, v0}, Lm/a;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    throw v1

    .line 461
    :cond_16
    return-void

    .line 462
    :cond_17
    new-instance v0, Lm/a;

    .line 463
    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v4, "Expect chunk type:"

    .line 467
    .line 468
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v1, ", but got:"

    .line 479
    .line 480
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-direct {v0, v1}, Lm/a;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v0

    .line 498
    nop

    .line 499
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lo/a;
    .locals 9

    .line 1
    iget-object v0, p0, Ln/b;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    int-to-long v1, v1

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const v4, 0xffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v3, v4

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    and-int/2addr v4, v5

    .line 29
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    if-eq v3, v7, :cond_3

    .line 37
    .line 38
    const/4 v7, 0x3

    .line 39
    if-eq v3, v7, :cond_2

    .line 40
    .line 41
    const/16 v7, 0x180

    .line 42
    .line 43
    if-eq v3, v7, :cond_1

    .line 44
    .line 45
    packed-switch v3, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    new-instance v0, Lm/a;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "Unexpected chunk type:"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Lm/a;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :pswitch_0
    new-instance v7, Lp/a;

    .line 69
    .line 70
    invoke-direct {v7, v3, v4, v5, v6}, Lp/a;-><init>(IIJ)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 74
    .line 75
    .line 76
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 77
    .line 78
    .line 79
    int-to-long v3, v4

    .line 80
    add-long/2addr v1, v3

    .line 81
    invoke-static {v0, v1, v2}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 82
    .line 83
    .line 84
    return-object v7

    .line 85
    :cond_1
    int-to-long v7, v4

    .line 86
    add-long/2addr v1, v7

    .line 87
    invoke-static {v0, v1, v2}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lq/b;

    .line 91
    .line 92
    invoke-direct {v0, v3, v4, v5, v6}, Lq/b;-><init>(IIJ)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_2
    new-instance v0, Lp/a;

    .line 97
    .line 98
    invoke-direct {v0, v3, v4, v5, v6}, Lp/a;-><init>(IIJ)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_3
    new-instance v3, Lo/c;

    .line 103
    .line 104
    invoke-direct {v3, v4, v5, v6}, Lo/c;-><init>(IJ)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    invoke-static {v5, v6}, Lb/d;->m(J)I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    iput v5, v3, Lo/c;->d:I

    .line 116
    .line 117
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v5

    .line 121
    invoke-static {v5, v6}, Lb/d;->m(J)I

    .line 122
    .line 123
    .line 124
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    iput-wide v5, v3, Lo/c;->e:J

    .line 129
    .line 130
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    iput-wide v5, v3, Lo/c;->f:J

    .line 135
    .line 136
    invoke-static {v0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 137
    .line 138
    .line 139
    int-to-long v4, v4

    .line 140
    add-long/2addr v1, v4

    .line 141
    invoke-static {v0, v1, v2}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 142
    .line 143
    .line 144
    return-object v3

    .line 145
    :cond_4
    new-instance v0, Lp/a;

    .line 146
    .line 147
    invoke-direct {v0, v3, v4, v5, v6}, Lp/a;-><init>(IIJ)V

    .line 148
    .line 149
    .line 150
    return-object v0

    .line 151
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
