.class public final Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Comparable;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ln/d;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln/d;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a()Lo/a;
    .locals 14

    .line 1
    iget-object v0, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-long v0, v0

    .line 10
    iget-object v2, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 11
    .line 12
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 13
    .line 14
    invoke-static {v2}, Lb/d;->W(Ljava/nio/ByteBuffer;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 19
    .line 20
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    invoke-static {v3}, Lb/d;->W(Ljava/nio/ByteBuffer;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 27
    .line 28
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    long-to-int v4, v4

    .line 35
    if-eqz v2, :cond_5

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eq v2, v5, :cond_4

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    if-eq v2, v5, :cond_3

    .line 42
    .line 43
    packed-switch v2, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v0, Lm/a;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "Unexpected chunk Type: 0x"

    .line 51
    .line 52
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Lm/a;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :pswitch_0
    new-instance v2, Lp/a;

    .line 71
    .line 72
    int-to-long v4, v4

    .line 73
    invoke-direct {v2, v3, v4, v5}, Lp/a;-><init>(IJ)V

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 77
    .line 78
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 88
    .line 89
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    int-to-long v5, v3

    .line 92
    add-long/2addr v0, v5

    .line 93
    invoke-static {v4, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :pswitch_1
    new-instance v2, Lp/m;

    .line 98
    .line 99
    int-to-long v4, v4

    .line 100
    invoke-direct {v2, v3, v4, v5}, Lp/m;-><init>(IJ)V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 104
    .line 105
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    invoke-static {v4}, Lb/d;->U(Ljava/nio/ByteBuffer;)S

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    int-to-byte v4, v4

    .line 112
    iput-byte v4, v2, Lp/m;->d:B

    .line 113
    .line 114
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 115
    .line 116
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    invoke-static {v4}, Lb/d;->U(Ljava/nio/ByteBuffer;)S

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 122
    .line 123
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    invoke-static {v4}, Lb/d;->W(Ljava/nio/ByteBuffer;)I

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 129
    .line 130
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 133
    .line 134
    .line 135
    move-result-wide v4

    .line 136
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    iput v4, v2, Lp/m;->e:I

    .line 141
    .line 142
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 143
    .line 144
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    int-to-long v5, v3

    .line 147
    add-long/2addr v0, v5

    .line 148
    invoke-static {v4, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 149
    .line 150
    .line 151
    return-object v2

    .line 152
    :pswitch_2
    new-instance v2, Lp/k;

    .line 153
    .line 154
    int-to-long v6, v4

    .line 155
    invoke-direct {v2, v3, v6, v7}, Lp/k;-><init>(IJ)V

    .line 156
    .line 157
    .line 158
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 159
    .line 160
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    invoke-static {v4}, Lb/d;->U(Ljava/nio/ByteBuffer;)S

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    int-to-byte v4, v4

    .line 167
    iput-byte v4, v2, Lp/k;->d:B

    .line 168
    .line 169
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 170
    .line 171
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    invoke-static {v4}, Lb/d;->U(Ljava/nio/ByteBuffer;)S

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 177
    .line 178
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 179
    .line 180
    invoke-static {v4}, Lb/d;->W(Ljava/nio/ByteBuffer;)I

    .line 181
    .line 182
    .line 183
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 184
    .line 185
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 186
    .line 187
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 188
    .line 189
    .line 190
    move-result-wide v6

    .line 191
    invoke-static {v6, v7}, Lb/d;->m(J)I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    iput v4, v2, Lp/k;->e:I

    .line 196
    .line 197
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 198
    .line 199
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 200
    .line 201
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v6

    .line 205
    invoke-static {v6, v7}, Lb/d;->m(J)I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    iput v4, v2, Lp/k;->f:I

    .line 210
    .line 211
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 212
    .line 213
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 214
    .line 215
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    int-to-long v6, v4

    .line 220
    new-instance v4, Lp/c;

    .line 221
    .line 222
    invoke-direct {v4}, Lp/c;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v8, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 226
    .line 227
    check-cast v8, Ljava/nio/ByteBuffer;

    .line 228
    .line 229
    invoke-static {v8}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 230
    .line 231
    .line 232
    move-result-wide v8

    .line 233
    iget-object v10, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 234
    .line 235
    check-cast v10, Ljava/nio/ByteBuffer;

    .line 236
    .line 237
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    .line 238
    .line 239
    .line 240
    iget-object v10, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 241
    .line 242
    check-cast v10, Ljava/nio/ByteBuffer;

    .line 243
    .line 244
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    .line 245
    .line 246
    .line 247
    new-instance v10, Ljava/lang/String;

    .line 248
    .line 249
    iget-object v11, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 250
    .line 251
    check-cast v11, Ljava/nio/ByteBuffer;

    .line 252
    .line 253
    new-array v12, v5, [B

    .line 254
    .line 255
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 256
    .line 257
    .line 258
    invoke-direct {v10, v12}, Ljava/lang/String;-><init>([B)V

    .line 259
    .line 260
    .line 261
    const-string v11, "\u0000"

    .line 262
    .line 263
    const-string v12, ""

    .line 264
    .line 265
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    new-instance v10, Ljava/lang/String;

    .line 269
    .line 270
    iget-object v13, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 271
    .line 272
    check-cast v13, Ljava/nio/ByteBuffer;

    .line 273
    .line 274
    new-array v5, v5, [B

    .line 275
    .line 276
    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 277
    .line 278
    .line 279
    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    iget-object v5, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 286
    .line 287
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 288
    .line 289
    invoke-static {v5}, Lb/d;->U(Ljava/nio/ByteBuffer;)S

    .line 290
    .line 291
    .line 292
    iget-object v5, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 293
    .line 294
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 295
    .line 296
    invoke-static {v5}, Lb/d;->U(Ljava/nio/ByteBuffer;)S

    .line 297
    .line 298
    .line 299
    iget-object v5, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 300
    .line 301
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 302
    .line 303
    invoke-static {v5}, Lb/d;->W(Ljava/nio/ByteBuffer;)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    int-to-short v5, v5

    .line 308
    iput-short v5, v4, Lp/c;->a:S

    .line 309
    .line 310
    iget-object v5, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 311
    .line 312
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    int-to-long v10, v5

    .line 319
    iget-object v5, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 320
    .line 321
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 322
    .line 323
    sub-long/2addr v10, v6

    .line 324
    sub-long/2addr v8, v10

    .line 325
    long-to-int v6, v8

    .line 326
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    add-int/2addr v7, v6

    .line 331
    invoke-virtual {v5, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 332
    .line 333
    .line 334
    iput-object v4, v2, Lp/k;->g:Lp/c;

    .line 335
    .line 336
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 337
    .line 338
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    int-to-long v5, v3

    .line 341
    add-long/2addr v0, v5

    .line 342
    invoke-static {v4, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 343
    .line 344
    .line 345
    return-object v2

    .line 346
    :pswitch_3
    new-instance v2, Lp/b;

    .line 347
    .line 348
    int-to-long v4, v4

    .line 349
    invoke-direct {v2, v3, v4, v5}, Lp/b;-><init>(IJ)V

    .line 350
    .line 351
    .line 352
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 353
    .line 354
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 355
    .line 356
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 357
    .line 358
    .line 359
    move-result-wide v4

    .line 360
    long-to-int v4, v4

    .line 361
    iput v4, v2, Lp/b;->d:I

    .line 362
    .line 363
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 364
    .line 365
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 366
    .line 367
    sget-object v5, Lr/b;->a:Ljava/nio/charset/Charset;

    .line 368
    .line 369
    new-instance v5, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    const/16 v6, 0x80

    .line 372
    .line 373
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 374
    .line 375
    .line 376
    const/4 v7, 0x0

    .line 377
    move v8, v7

    .line 378
    :goto_0
    if-ge v8, v6, :cond_0

    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getChar()C

    .line 381
    .line 382
    .line 383
    move-result v9

    .line 384
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    add-int/lit8 v8, v8, 0x1

    .line 388
    .line 389
    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    move v5, v7

    .line 395
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-ge v5, v6, :cond_2

    .line 400
    .line 401
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    if-nez v6, :cond_1

    .line 406
    .line 407
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    goto :goto_2

    .line 411
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 412
    .line 413
    goto :goto_1

    .line 414
    :cond_2
    :goto_2
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 415
    .line 416
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 417
    .line 418
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 419
    .line 420
    .line 421
    move-result-wide v4

    .line 422
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    iput v4, v2, Lp/b;->e:I

    .line 427
    .line 428
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 429
    .line 430
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 431
    .line 432
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 433
    .line 434
    .line 435
    move-result-wide v4

    .line 436
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 437
    .line 438
    .line 439
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 440
    .line 441
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 442
    .line 443
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 444
    .line 445
    .line 446
    move-result-wide v4

    .line 447
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    iput v4, v2, Lp/b;->f:I

    .line 452
    .line 453
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 454
    .line 455
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 456
    .line 457
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v4

    .line 461
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 462
    .line 463
    .line 464
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 465
    .line 466
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 467
    .line 468
    int-to-long v5, v3

    .line 469
    add-long/2addr v0, v5

    .line 470
    invoke-static {v4, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 471
    .line 472
    .line 473
    return-object v2

    .line 474
    :cond_3
    new-instance v2, Lp/h;

    .line 475
    .line 476
    invoke-direct {v2, v3, v4}, Lp/h;-><init>(II)V

    .line 477
    .line 478
    .line 479
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 480
    .line 481
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 482
    .line 483
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 484
    .line 485
    .line 486
    move-result-wide v4

    .line 487
    long-to-int v4, v4

    .line 488
    iput v4, v2, Lp/h;->d:I

    .line 489
    .line 490
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 491
    .line 492
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 493
    .line 494
    int-to-long v5, v3

    .line 495
    add-long/2addr v0, v5

    .line 496
    invoke-static {v4, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 497
    .line 498
    .line 499
    return-object v2

    .line 500
    :cond_4
    new-instance v2, Lo/c;

    .line 501
    .line 502
    int-to-long v4, v4

    .line 503
    invoke-direct {v2, v3, v4, v5}, Lo/c;-><init>(IJ)V

    .line 504
    .line 505
    .line 506
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 507
    .line 508
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 509
    .line 510
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 511
    .line 512
    .line 513
    move-result-wide v4

    .line 514
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 515
    .line 516
    .line 517
    move-result v4

    .line 518
    iput v4, v2, Lo/c;->d:I

    .line 519
    .line 520
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 521
    .line 522
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 523
    .line 524
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 525
    .line 526
    .line 527
    move-result-wide v4

    .line 528
    invoke-static {v4, v5}, Lb/d;->m(J)I

    .line 529
    .line 530
    .line 531
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 532
    .line 533
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 534
    .line 535
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 536
    .line 537
    .line 538
    move-result-wide v4

    .line 539
    iput-wide v4, v2, Lo/c;->e:J

    .line 540
    .line 541
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 542
    .line 543
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 544
    .line 545
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 546
    .line 547
    .line 548
    move-result-wide v4

    .line 549
    iput-wide v4, v2, Lo/c;->f:J

    .line 550
    .line 551
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 552
    .line 553
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 554
    .line 555
    invoke-static {v4}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 556
    .line 557
    .line 558
    iget-object v4, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 559
    .line 560
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 561
    .line 562
    int-to-long v5, v3

    .line 563
    add-long/2addr v0, v5

    .line 564
    invoke-static {v4, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 565
    .line 566
    .line 567
    return-object v2

    .line 568
    :cond_5
    :pswitch_4
    iget-object v2, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 569
    .line 570
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 571
    .line 572
    int-to-long v5, v3

    .line 573
    add-long/2addr v0, v5

    .line 574
    invoke-static {v2, v0, v1}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 575
    .line 576
    .line 577
    new-instance v0, Lp/a;

    .line 578
    .line 579
    invoke-direct {v0, v3, v4}, Lp/a;-><init>(II)V

    .line 580
    .line 581
    .line 582
    return-object v0

    .line 583
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ln/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "<"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Ln/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ":"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Ln/d;->c:Ljava/lang/Comparable;

    .line 33
    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x3e

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
