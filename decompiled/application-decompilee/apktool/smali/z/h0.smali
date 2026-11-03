.class public final Lz/h0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Lz/n;

.field public final f:Lru/zdevs/zarchiver/b;

.field public g:I

.field public final h:Landroid/graphics/Point;

.field public final i:Ljava/lang/String;

.field public final j:Lc0/b;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/b;Lg0/h;ZLjava/lang/String;IILandroid/graphics/Point;Lc0/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    new-instance v0, Lz/n;

    iget v1, p1, Lru/zdevs/zarchiver/b;->b:I

    invoke-direct {v0, v1, p2, p3, p5}, Lz/n;-><init>(ILg0/h;ZI)V

    iput-object v0, p0, Lz/h0;->e:Lz/n;

    .line 3
    iput-object p1, p0, Lz/h0;->f:Lru/zdevs/zarchiver/b;

    .line 4
    iput p6, p0, Lz/h0;->g:I

    .line 5
    iput-object p4, p0, Lz/h0;->i:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lz/h0;->h:Landroid/graphics/Point;

    .line 7
    iput-object p8, p0, Lz/h0;->j:Lc0/b;

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/h0;->e:Lz/n;

    .line 2
    .line 3
    iget-object v1, v0, Lz/n;->b:Lg0/h;

    .line 4
    .line 5
    invoke-virtual {v1}, Lg0/h;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v0, v0, Lz/n;->b:Lg0/h;

    .line 12
    .line 13
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v0}, Le0/d;->m(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    const/16 v1, 0xf

    .line 34
    .line 35
    invoke-static {v0, v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetStatus(II)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 40
    .line 41
    :cond_2
    :goto_0
    invoke-super {p0}, Lv0/c;->e()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 14
    .line 15
    .line 16
    sget-object v4, Lb/d;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lb/d;->Q()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 24
    .line 25
    iget-object v4, v4, Lz/n;->b:Lg0/h;

    .line 26
    .line 27
    invoke-virtual {v4}, Lg0/h;->o()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x2

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x1

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 38
    .line 39
    iget-object v4, v4, Lz/n;->b:Lg0/h;

    .line 40
    .line 41
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v4}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-eqz v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v4}, Lw0/c$a;->f()Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-nez v9, :cond_2

    .line 54
    .line 55
    sget-object v9, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 56
    .line 57
    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    const-string v10, "sNonRequestPermission"

    .line 62
    .line 63
    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    if-eqz v9, :cond_1

    .line 68
    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v11, "~!@"

    .line 72
    .line 73
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lw0/c$a;->a()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_1

    .line 95
    .line 96
    move v9, v8

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    move v9, v7

    .line 99
    :goto_0
    if-nez v9, :cond_2

    .line 100
    .line 101
    iget-object v9, v0, Lz/h0;->e:Lz/n;

    .line 102
    .line 103
    iput-object v4, v9, Lz/n;->g:Lw0/c$a;

    .line 104
    .line 105
    iget-object v4, v9, Lz/n;->b:Lg0/h;

    .line 106
    .line 107
    invoke-virtual {v4}, Lg0/h;->m()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_2

    .line 112
    .line 113
    iget v4, v0, Lz/h0;->g:I

    .line 114
    .line 115
    or-int/2addr v4, v5

    .line 116
    iput v4, v0, Lz/h0;->g:I

    .line 117
    .line 118
    :cond_2
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 119
    .line 120
    new-instance v9, Lc0/b;

    .line 121
    .line 122
    invoke-direct {v9, v7}, Lc0/b;-><init>(I)V

    .line 123
    .line 124
    .line 125
    iput-object v9, v4, Lz/n;->h:Lc0/b;

    .line 126
    .line 127
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 128
    .line 129
    iget-object v9, v4, Lz/n;->b:Lg0/h;

    .line 130
    .line 131
    iget-object v10, v4, Lz/n;->h:Lc0/b;

    .line 132
    .line 133
    iget v11, v0, Lz/h0;->g:I

    .line 134
    .line 135
    invoke-static {v8}, Ls0/b;->g(I)Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-eqz v12, :cond_3

    .line 140
    .line 141
    or-int/lit8 v11, v11, 0x4

    .line 142
    .line 143
    :cond_3
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 144
    .line 145
    .line 146
    move-result-object v12

    .line 147
    array-length v13, v12

    .line 148
    move v14, v7

    .line 149
    :goto_1
    if-ge v14, v13, :cond_5

    .line 150
    .line 151
    aget-object v15, v12, v14

    .line 152
    .line 153
    invoke-interface {v15, v9, v10, v11}, Lg0/b;->b(Lg0/h;Lc0/b;I)Z

    .line 154
    .line 155
    .line 156
    move-result v16

    .line 157
    if-eqz v16, :cond_4

    .line 158
    .line 159
    invoke-interface {v15}, Lg0/b;->d()I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    goto :goto_2

    .line 164
    :cond_4
    add-int/lit8 v14, v14, 0x1

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_5
    move v9, v7

    .line 168
    :goto_2
    iput v9, v4, Lz/n;->f:I

    .line 169
    .line 170
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 171
    .line 172
    iget-object v4, v4, Lz/n;->h:Lc0/b;

    .line 173
    .line 174
    invoke-virtual {v4}, Lc0/b;->size()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-le v4, v8, :cond_6

    .line 179
    .line 180
    iget-object v4, v0, Lz/h0;->f:Lru/zdevs/zarchiver/b;

    .line 181
    .line 182
    iget v4, v4, Lru/zdevs/zarchiver/b;->h:I

    .line 183
    .line 184
    iget-object v9, v0, Lz/h0;->e:Lz/n;

    .line 185
    .line 186
    iget-object v9, v9, Lz/n;->h:Lc0/b;

    .line 187
    .line 188
    invoke-static {v4, v9}, Lg0/e;->i(ILc0/b;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 192
    .line 193
    iget-object v9, v4, Lz/n;->b:Lg0/h;

    .line 194
    .line 195
    invoke-static {v9, v7}, Lw0/f;->d(Lg0/h;Z)B

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    iput-byte v9, v4, Lz/n;->j:B

    .line 200
    .line 201
    iget-object v4, v0, Lz/h0;->i:Ljava/lang/String;

    .line 202
    .line 203
    if-eqz v4, :cond_d

    .line 204
    .line 205
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 206
    .line 207
    iget-object v4, v4, Lz/n;->h:Lc0/b;

    .line 208
    .line 209
    invoke-virtual {v4}, Lc0/b;->size()I

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    move v9, v7

    .line 214
    :goto_3
    if-ge v9, v4, :cond_8

    .line 215
    .line 216
    iget-object v10, v0, Lz/h0;->i:Ljava/lang/String;

    .line 217
    .line 218
    iget-object v11, v0, Lz/h0;->e:Lz/n;

    .line 219
    .line 220
    iget-object v11, v11, Lz/n;->h:Lc0/b;

    .line 221
    .line 222
    invoke-virtual {v11, v9}, Lc0/b;->b(I)Lc0/d;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    iget-object v11, v11, Lc0/d;->a:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    if-eqz v10, :cond_7

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_8
    :goto_4
    iget v10, v0, Lz/h0;->g:I

    .line 239
    .line 240
    const/16 v11, 0x8

    .line 241
    .line 242
    invoke-static {v10, v11}, Lb/d;->K(II)Z

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-eqz v10, :cond_9

    .line 247
    .line 248
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 249
    .line 250
    iput v9, v3, Lz/n;->d:I

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_9
    iget-object v10, v0, Lz/h0;->h:Landroid/graphics/Point;

    .line 254
    .line 255
    if-eqz v10, :cond_d

    .line 256
    .line 257
    iget-object v10, v0, Lz/h0;->e:Lz/n;

    .line 258
    .line 259
    iput v7, v10, Lz/n;->d:I

    .line 260
    .line 261
    if-ge v9, v4, :cond_d

    .line 262
    .line 263
    invoke-virtual/range {p0 .. p0}, Lz/h0;->m()I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    div-int/2addr v4, v5

    .line 268
    if-le v9, v4, :cond_d

    .line 269
    .line 270
    iget-object v10, v0, Lz/h0;->e:Lz/n;

    .line 271
    .line 272
    sub-int/2addr v9, v4

    .line 273
    iput v9, v10, Lz/n;->d:I

    .line 274
    .line 275
    iget-object v4, v0, Lz/h0;->h:Landroid/graphics/Point;

    .line 276
    .line 277
    if-nez v4, :cond_a

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_a
    iget-object v11, v0, Lz/h0;->f:Lru/zdevs/zarchiver/b;

    .line 281
    .line 282
    iget v11, v11, Lru/zdevs/zarchiver/b;->g:I

    .line 283
    .line 284
    const v12, 0x7f08002d

    .line 285
    .line 286
    .line 287
    if-ne v11, v12, :cond_b

    .line 288
    .line 289
    sget v11, Ls0/b;->k:I

    .line 290
    .line 291
    int-to-float v11, v11

    .line 292
    const v12, 0x3fcccccd    # 1.6f

    .line 293
    .line 294
    .line 295
    mul-float/2addr v11, v12

    .line 296
    float-to-int v11, v11

    .line 297
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 298
    .line 299
    add-int/2addr v11, v3

    .line 300
    div-int/2addr v4, v11

    .line 301
    goto :goto_6

    .line 302
    :cond_b
    :goto_5
    move v4, v8

    .line 303
    :goto_6
    if-le v4, v8, :cond_c

    .line 304
    .line 305
    rem-int v3, v9, v4

    .line 306
    .line 307
    add-int/2addr v3, v9

    .line 308
    iput v3, v10, Lz/n;->d:I

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_c
    add-int/2addr v9, v8

    .line 312
    iput v9, v10, Lz/n;->d:I

    .line 313
    .line 314
    :cond_d
    :goto_7
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 315
    .line 316
    iget-object v3, v3, Lz/n;->b:Lg0/h;

    .line 317
    .line 318
    sget-object v4, Lc0/d;->i:Ljava/text/DateFormat;

    .line 319
    .line 320
    invoke-virtual {v3}, Lg0/h;->j()Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-eqz v4, :cond_e

    .line 325
    .line 326
    invoke-virtual {v3}, Lg0/h;->l()Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-nez v3, :cond_e

    .line 331
    .line 332
    move v3, v8

    .line 333
    goto :goto_8

    .line 334
    :cond_e
    move v3, v7

    .line 335
    :goto_8
    iget-object v4, v0, Lz/h0;->f:Lru/zdevs/zarchiver/b;

    .line 336
    .line 337
    iget v4, v4, Lru/zdevs/zarchiver/b;->g:I

    .line 338
    .line 339
    const v9, 0x7f08002c

    .line 340
    .line 341
    .line 342
    const/16 v10, 0x10

    .line 343
    .line 344
    if-ne v4, v9, :cond_f

    .line 345
    .line 346
    iget-object v4, v0, Lz/h0;->e:Lz/n;

    .line 347
    .line 348
    iget-object v4, v4, Lz/n;->b:Lg0/h;

    .line 349
    .line 350
    invoke-static {v4}, Lg0/e;->c(Lg0/h;)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    invoke-static {v4, v10}, Lb/d;->K(II)Z

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    if-eqz v4, :cond_f

    .line 359
    .line 360
    move v4, v8

    .line 361
    goto :goto_9

    .line 362
    :cond_f
    move v4, v7

    .line 363
    :goto_9
    if-nez v3, :cond_10

    .line 364
    .line 365
    if-eqz v4, :cond_1a

    .line 366
    .line 367
    :cond_10
    new-instance v9, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    iget-object v11, v0, Lz/h0;->e:Lz/n;

    .line 373
    .line 374
    iget-object v11, v11, Lz/n;->b:Lg0/h;

    .line 375
    .line 376
    iget-object v11, v11, Lg0/h;->c:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v11, "/"

    .line 382
    .line 383
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v9

    .line 390
    iget-object v11, v0, Lz/h0;->e:Lz/n;

    .line 391
    .line 392
    iget-object v11, v11, Lz/n;->b:Lg0/h;

    .line 393
    .line 394
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 395
    .line 396
    .line 397
    move-result-object v12

    .line 398
    array-length v13, v12

    .line 399
    move v14, v7

    .line 400
    :goto_a
    if-ge v14, v13, :cond_12

    .line 401
    .line 402
    aget-object v15, v12, v14

    .line 403
    .line 404
    invoke-interface {v15, v11}, Lg0/b;->j(Lg0/h;)Z

    .line 405
    .line 406
    .line 407
    move-result v16

    .line 408
    if-eqz v16, :cond_11

    .line 409
    .line 410
    goto :goto_b

    .line 411
    :cond_11
    add-int/lit8 v14, v14, 0x1

    .line 412
    .line 413
    goto :goto_a

    .line 414
    :cond_12
    move-object v15, v6

    .line 415
    :goto_b
    if-nez v15, :cond_13

    .line 416
    .line 417
    move v4, v7

    .line 418
    :cond_13
    iget-object v11, v0, Lz/h0;->e:Lz/n;

    .line 419
    .line 420
    iget v11, v11, Lz/n;->d:I

    .line 421
    .line 422
    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    .line 423
    .line 424
    .line 425
    move-result v11

    .line 426
    invoke-virtual/range {p0 .. p0}, Lz/h0;->m()I

    .line 427
    .line 428
    .line 429
    move-result v12

    .line 430
    add-int/2addr v12, v11

    .line 431
    iget-object v13, v0, Lz/h0;->e:Lz/n;

    .line 432
    .line 433
    iget-object v13, v13, Lz/n;->h:Lc0/b;

    .line 434
    .line 435
    invoke-virtual {v13}, Lc0/b;->size()I

    .line 436
    .line 437
    .line 438
    move-result v13

    .line 439
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 440
    .line 441
    .line 442
    move-result v12

    .line 443
    move v13, v11

    .line 444
    :goto_c
    if-ge v13, v12, :cond_17

    .line 445
    .line 446
    invoke-virtual/range {p0 .. p0}, Lv0/c;->isCancelled()Z

    .line 447
    .line 448
    .line 449
    move-result v14

    .line 450
    if-eqz v14, :cond_14

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 453
    .line 454
    .line 455
    return-object v6

    .line 456
    :cond_14
    iget-object v14, v0, Lz/h0;->e:Lz/n;

    .line 457
    .line 458
    iget-object v14, v14, Lz/n;->h:Lc0/b;

    .line 459
    .line 460
    invoke-virtual {v14, v13}, Lc0/b;->b(I)Lc0/d;

    .line 461
    .line 462
    .line 463
    move-result-object v14

    .line 464
    if-eqz v4, :cond_15

    .line 465
    .line 466
    invoke-virtual {v14}, Lc0/d;->f()Z

    .line 467
    .line 468
    .line 469
    move-result v16

    .line 470
    if-eqz v16, :cond_15

    .line 471
    .line 472
    invoke-virtual {v14}, Lc0/d;->g()Z

    .line 473
    .line 474
    .line 475
    move-result v16

    .line 476
    if-nez v16, :cond_15

    .line 477
    .line 478
    iget-object v6, v0, Lz/h0;->e:Lz/n;

    .line 479
    .line 480
    iget-object v6, v6, Lz/n;->b:Lg0/h;

    .line 481
    .line 482
    iget-object v8, v14, Lc0/d;->a:Ljava/lang/String;

    .line 483
    .line 484
    invoke-interface {v15, v8, v6}, Lg0/b;->a(Ljava/lang/String;Lg0/h;)I

    .line 485
    .line 486
    .line 487
    move-result v6

    .line 488
    if-ltz v6, :cond_16

    .line 489
    .line 490
    new-instance v8, Lp0/h;

    .line 491
    .line 492
    invoke-direct {v8, v6}, Lp0/h;-><init>(I)V

    .line 493
    .line 494
    .line 495
    iput-object v8, v14, Lc0/d;->h:Ljava/lang/Object;

    .line 496
    .line 497
    goto :goto_d

    .line 498
    :cond_15
    if-eqz v3, :cond_16

    .line 499
    .line 500
    invoke-virtual {v14, v9}, Lc0/d;->a(Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    :cond_16
    :goto_d
    add-int/lit8 v13, v13, 0x1

    .line 504
    .line 505
    const/4 v6, 0x0

    .line 506
    const/4 v8, 0x1

    .line 507
    goto :goto_c

    .line 508
    :cond_17
    if-nez v11, :cond_18

    .line 509
    .line 510
    iget-object v6, v0, Lz/h0;->e:Lz/n;

    .line 511
    .line 512
    iget-object v6, v6, Lz/n;->h:Lc0/b;

    .line 513
    .line 514
    invoke-virtual {v6}, Lc0/b;->size()I

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    if-eq v12, v6, :cond_1a

    .line 519
    .line 520
    :cond_18
    if-eqz v3, :cond_19

    .line 521
    .line 522
    iget v3, v0, Lz/h0;->g:I

    .line 523
    .line 524
    or-int/lit16 v3, v3, 0x100

    .line 525
    .line 526
    iput v3, v0, Lz/h0;->g:I

    .line 527
    .line 528
    :cond_19
    if-eqz v4, :cond_1a

    .line 529
    .line 530
    iget v3, v0, Lz/h0;->g:I

    .line 531
    .line 532
    or-int/lit16 v3, v3, 0x200

    .line 533
    .line 534
    iput v3, v0, Lz/h0;->g:I

    .line 535
    .line 536
    :cond_1a
    iget v3, v0, Lz/h0;->g:I

    .line 537
    .line 538
    const/16 v4, 0x40

    .line 539
    .line 540
    invoke-static {v3, v4}, Lb/d;->K(II)Z

    .line 541
    .line 542
    .line 543
    move-result v3

    .line 544
    if-eqz v3, :cond_47

    .line 545
    .line 546
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 547
    .line 548
    iget-object v3, v3, Lz/n;->h:Lc0/b;

    .line 549
    .line 550
    invoke-virtual {v3}, Lc0/b;->size()I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    const/16 v4, 0x7530

    .line 555
    .line 556
    if-ge v3, v4, :cond_47

    .line 557
    .line 558
    iget-object v3, v0, Lz/h0;->f:Lru/zdevs/zarchiver/b;

    .line 559
    .line 560
    iget v3, v3, Lru/zdevs/zarchiver/b;->h:I

    .line 561
    .line 562
    if-eqz v3, :cond_39

    .line 563
    .line 564
    const-string v4, "DIR"

    .line 565
    .line 566
    if-eq v3, v10, :cond_32

    .line 567
    .line 568
    const/16 v6, 0x20

    .line 569
    .line 570
    if-eq v3, v6, :cond_1b

    .line 571
    .line 572
    goto/16 :goto_24

    .line 573
    .line 574
    :cond_1b
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 575
    .line 576
    iget-object v6, v3, Lz/n;->h:Lc0/b;

    .line 577
    .line 578
    invoke-virtual {v6}, Lc0/b;->size()I

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    if-ge v8, v5, :cond_1c

    .line 583
    .line 584
    goto/16 :goto_13

    .line 585
    .line 586
    :cond_1c
    new-instance v5, Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .line 590
    .line 591
    new-instance v9, Ljava/util/ArrayList;

    .line 592
    .line 593
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .line 595
    .line 596
    const-wide/16 v11, -0x1

    .line 597
    .line 598
    move v13, v7

    .line 599
    :goto_e
    if-ge v13, v8, :cond_30

    .line 600
    .line 601
    invoke-virtual {v6, v13}, Lc0/b;->b(I)Lc0/d;

    .line 602
    .line 603
    .line 604
    move-result-object v14

    .line 605
    invoke-virtual {v14}, Lc0/d;->f()Z

    .line 606
    .line 607
    .line 608
    move-result v15

    .line 609
    const-wide v17, 0x280000000L

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    const-wide/32 v19, 0x40000000

    .line 615
    .line 616
    .line 617
    const-wide/32 v21, 0x6400000

    .line 618
    .line 619
    .line 620
    const-wide/32 v23, 0xa00000

    .line 621
    .line 622
    .line 623
    const-wide/32 v25, 0x100000

    .line 624
    .line 625
    .line 626
    const-wide/32 v27, 0x19000

    .line 627
    .line 628
    .line 629
    const-wide/16 v29, 0x2800

    .line 630
    .line 631
    const-wide/16 v31, 0x400

    .line 632
    .line 633
    if-eqz v15, :cond_1d

    .line 634
    .line 635
    const-wide/16 v33, 0x0

    .line 636
    .line 637
    move-wide/from16 v35, v33

    .line 638
    .line 639
    move/from16 v33, v8

    .line 640
    .line 641
    move-wide/from16 v7, v35

    .line 642
    .line 643
    goto :goto_f

    .line 644
    :cond_1d
    move/from16 v33, v8

    .line 645
    .line 646
    iget-wide v7, v14, Lc0/d;->d:J

    .line 647
    .line 648
    cmp-long v34, v7, v31

    .line 649
    .line 650
    if-gez v34, :cond_1e

    .line 651
    .line 652
    move-wide/from16 v7, v31

    .line 653
    .line 654
    goto :goto_f

    .line 655
    :cond_1e
    cmp-long v34, v7, v29

    .line 656
    .line 657
    if-gez v34, :cond_1f

    .line 658
    .line 659
    move-wide/from16 v7, v29

    .line 660
    .line 661
    goto :goto_f

    .line 662
    :cond_1f
    cmp-long v34, v7, v27

    .line 663
    .line 664
    if-gez v34, :cond_20

    .line 665
    .line 666
    move-wide/from16 v7, v27

    .line 667
    .line 668
    goto :goto_f

    .line 669
    :cond_20
    cmp-long v34, v7, v25

    .line 670
    .line 671
    if-gez v34, :cond_21

    .line 672
    .line 673
    move-wide/from16 v7, v25

    .line 674
    .line 675
    goto :goto_f

    .line 676
    :cond_21
    cmp-long v34, v7, v23

    .line 677
    .line 678
    if-gez v34, :cond_22

    .line 679
    .line 680
    move-wide/from16 v7, v23

    .line 681
    .line 682
    goto :goto_f

    .line 683
    :cond_22
    cmp-long v34, v7, v21

    .line 684
    .line 685
    if-gez v34, :cond_23

    .line 686
    .line 687
    move-wide/from16 v7, v21

    .line 688
    .line 689
    goto :goto_f

    .line 690
    :cond_23
    cmp-long v34, v7, v19

    .line 691
    .line 692
    if-gez v34, :cond_24

    .line 693
    .line 694
    move-wide/from16 v7, v19

    .line 695
    .line 696
    goto :goto_f

    .line 697
    :cond_24
    cmp-long v7, v7, v17

    .line 698
    .line 699
    if-gez v7, :cond_25

    .line 700
    .line 701
    move-wide/from16 v7, v17

    .line 702
    .line 703
    goto :goto_f

    .line 704
    :cond_25
    const-wide v7, 0x1900000000L

    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :goto_f
    cmp-long v34, v7, v11

    .line 710
    .line 711
    if-eqz v34, :cond_2f

    .line 712
    .line 713
    invoke-virtual {v14}, Lc0/d;->f()Z

    .line 714
    .line 715
    .line 716
    move-result v11

    .line 717
    if-eqz v11, :cond_26

    .line 718
    .line 719
    move-object v11, v4

    .line 720
    move-object/from16 v25, v11

    .line 721
    .line 722
    goto/16 :goto_11

    .line 723
    .line 724
    :cond_26
    iget-wide v11, v14, Lc0/d;->d:J

    .line 725
    .line 726
    cmp-long v14, v11, v31

    .line 727
    .line 728
    const-string v15, "1"

    .line 729
    .line 730
    if-gez v14, :cond_27

    .line 731
    .line 732
    new-instance v11, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    sget-object v12, Lu0/h;->d:Ljava/lang/String;

    .line 738
    .line 739
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v11

    .line 746
    goto :goto_10

    .line 747
    :cond_27
    cmp-long v14, v11, v29

    .line 748
    .line 749
    if-gez v14, :cond_28

    .line 750
    .line 751
    new-instance v11, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    sget-object v12, Lu0/h;->c:Ljava/lang/String;

    .line 757
    .line 758
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    .line 760
    .line 761
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v11

    .line 765
    goto :goto_10

    .line 766
    :cond_28
    cmp-long v14, v11, v27

    .line 767
    .line 768
    const-string v10, "10"

    .line 769
    .line 770
    if-gez v14, :cond_29

    .line 771
    .line 772
    new-instance v11, Ljava/lang/StringBuilder;

    .line 773
    .line 774
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    sget-object v10, Lu0/h;->c:Ljava/lang/String;

    .line 778
    .line 779
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v11

    .line 786
    :goto_10
    move-object/from16 v25, v4

    .line 787
    .line 788
    goto/16 :goto_11

    .line 789
    .line 790
    :cond_29
    cmp-long v14, v11, v25

    .line 791
    .line 792
    move-object/from16 v25, v4

    .line 793
    .line 794
    const-string v4, "100"

    .line 795
    .line 796
    if-gez v14, :cond_2a

    .line 797
    .line 798
    new-instance v10, Ljava/lang/StringBuilder;

    .line 799
    .line 800
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    sget-object v4, Lu0/h;->c:Ljava/lang/String;

    .line 804
    .line 805
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v11

    .line 812
    goto :goto_11

    .line 813
    :cond_2a
    cmp-long v14, v11, v23

    .line 814
    .line 815
    if-gez v14, :cond_2b

    .line 816
    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    .line 818
    .line 819
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    sget-object v10, Lu0/h;->b:Ljava/lang/String;

    .line 823
    .line 824
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v11

    .line 831
    goto :goto_11

    .line 832
    :cond_2b
    cmp-long v14, v11, v21

    .line 833
    .line 834
    if-gez v14, :cond_2c

    .line 835
    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    sget-object v10, Lu0/h;->b:Ljava/lang/String;

    .line 842
    .line 843
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v11

    .line 850
    goto :goto_11

    .line 851
    :cond_2c
    cmp-long v14, v11, v19

    .line 852
    .line 853
    if-gez v14, :cond_2d

    .line 854
    .line 855
    new-instance v10, Ljava/lang/StringBuilder;

    .line 856
    .line 857
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    sget-object v4, Lu0/h;->b:Ljava/lang/String;

    .line 861
    .line 862
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v11

    .line 869
    goto :goto_11

    .line 870
    :cond_2d
    cmp-long v4, v11, v17

    .line 871
    .line 872
    if-gez v4, :cond_2e

    .line 873
    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    sget-object v10, Lu0/h;->a:Ljava/lang/String;

    .line 880
    .line 881
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    .line 883
    .line 884
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 885
    .line 886
    .line 887
    move-result-object v11

    .line 888
    goto :goto_11

    .line 889
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    .line 890
    .line 891
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    .line 893
    .line 894
    sget-object v10, Lu0/h;->a:Ljava/lang/String;

    .line 895
    .line 896
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    .line 898
    .line 899
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v11

    .line 903
    :goto_11
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    move-wide v11, v7

    .line 914
    goto :goto_12

    .line 915
    :cond_2f
    move-object/from16 v25, v4

    .line 916
    .line 917
    :goto_12
    add-int/lit8 v13, v13, 0x1

    .line 918
    .line 919
    move-object/from16 v4, v25

    .line 920
    .line 921
    move/from16 v8, v33

    .line 922
    .line 923
    const/4 v7, 0x0

    .line 924
    const/16 v10, 0x10

    .line 925
    .line 926
    goto/16 :goto_e

    .line 927
    .line 928
    :cond_30
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 929
    .line 930
    .line 931
    move-result v4

    .line 932
    const/4 v6, 0x3

    .line 933
    if-ge v4, v6, :cond_31

    .line 934
    .line 935
    :goto_13
    const/4 v4, 0x0

    .line 936
    goto :goto_14

    .line 937
    :cond_31
    new-instance v4, Lc0/a;

    .line 938
    .line 939
    const/4 v6, 0x0

    .line 940
    new-array v7, v6, [Ljava/lang/Integer;

    .line 941
    .line 942
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v7

    .line 946
    check-cast v7, [Ljava/lang/Integer;

    .line 947
    .line 948
    new-array v8, v6, [Ljava/lang/String;

    .line 949
    .line 950
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v5

    .line 954
    check-cast v5, [Ljava/lang/String;

    .line 955
    .line 956
    invoke-direct {v4, v7, v5}, Lc0/a;-><init>([Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    :goto_14
    iput-object v4, v3, Lz/n;->i:Lc0/a;

    .line 960
    .line 961
    goto/16 :goto_24

    .line 962
    .line 963
    :cond_32
    move-object/from16 v25, v4

    .line 964
    .line 965
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 966
    .line 967
    iget-object v4, v3, Lz/n;->h:Lc0/b;

    .line 968
    .line 969
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 970
    .line 971
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v4}, Lc0/b;->size()I

    .line 975
    .line 976
    .line 977
    move-result v6

    .line 978
    const/4 v7, 0x0

    .line 979
    const/4 v8, 0x0

    .line 980
    :goto_15
    if-ge v7, v6, :cond_38

    .line 981
    .line 982
    invoke-virtual {v4, v7}, Lc0/b;->b(I)Lc0/d;

    .line 983
    .line 984
    .line 985
    move-result-object v9

    .line 986
    invoke-virtual {v9}, Lc0/d;->g()Z

    .line 987
    .line 988
    .line 989
    move-result v10

    .line 990
    if-eqz v10, :cond_33

    .line 991
    .line 992
    const/4 v8, 0x1

    .line 993
    goto :goto_18

    .line 994
    :cond_33
    iget-object v10, v9, Lc0/d;->a:Ljava/lang/String;

    .line 995
    .line 996
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 997
    .line 998
    .line 999
    move-result v11

    .line 1000
    if-nez v11, :cond_37

    .line 1001
    .line 1002
    invoke-virtual {v9}, Lc0/d;->g()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v11

    .line 1006
    if-eqz v11, :cond_34

    .line 1007
    .line 1008
    goto :goto_18

    .line 1009
    :cond_34
    invoke-virtual {v9}, Lc0/d;->f()Z

    .line 1010
    .line 1011
    .line 1012
    move-result v9

    .line 1013
    if-eqz v9, :cond_35

    .line 1014
    .line 1015
    move-object/from16 v9, v25

    .line 1016
    .line 1017
    goto :goto_16

    .line 1018
    :cond_35
    invoke-static {v10}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v9

    .line 1022
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v9

    .line 1026
    :goto_16
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v10

    .line 1030
    if-nez v10, :cond_37

    .line 1031
    .line 1032
    if-eqz v8, :cond_36

    .line 1033
    .line 1034
    add-int/lit8 v8, v7, -0x1

    .line 1035
    .line 1036
    goto :goto_17

    .line 1037
    :cond_36
    move v8, v7

    .line 1038
    :goto_17
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v8

    .line 1042
    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    const/4 v8, 0x0

    .line 1046
    :cond_37
    :goto_18
    add-int/lit8 v7, v7, 0x1

    .line 1047
    .line 1048
    goto :goto_15

    .line 1049
    :cond_38
    new-instance v4, Lc0/a;

    .line 1050
    .line 1051
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v6

    .line 1055
    const/4 v7, 0x0

    .line 1056
    new-array v8, v7, [Ljava/lang/Integer;

    .line 1057
    .line 1058
    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v6

    .line 1062
    check-cast v6, [Ljava/lang/Integer;

    .line 1063
    .line 1064
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v5

    .line 1068
    new-array v8, v7, [Ljava/lang/String;

    .line 1069
    .line 1070
    invoke-interface {v5, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v5

    .line 1074
    check-cast v5, [Ljava/lang/String;

    .line 1075
    .line 1076
    invoke-direct {v4, v6, v5}, Lc0/a;-><init>([Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    iput-object v4, v3, Lz/n;->i:Lc0/a;

    .line 1080
    .line 1081
    goto/16 :goto_24

    .line 1082
    .line 1083
    :cond_39
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 1084
    .line 1085
    iget-object v4, v3, Lz/n;->h:Lc0/b;

    .line 1086
    .line 1087
    new-instance v6, Ljava/util/ArrayList;

    .line 1088
    .line 1089
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    new-instance v7, Ljava/util/ArrayList;

    .line 1093
    .line 1094
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v4}, Lc0/b;->size()I

    .line 1098
    .line 1099
    .line 1100
    move-result v8

    .line 1101
    const/4 v9, 0x0

    .line 1102
    const/4 v10, 0x0

    .line 1103
    const/16 v31, 0x0

    .line 1104
    .line 1105
    :goto_19
    if-ge v9, v8, :cond_3f

    .line 1106
    .line 1107
    invoke-virtual {v4, v9}, Lc0/b;->b(I)Lc0/d;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v11

    .line 1111
    invoke-virtual {v11}, Lc0/d;->g()Z

    .line 1112
    .line 1113
    .line 1114
    move-result v12

    .line 1115
    if-eqz v12, :cond_3a

    .line 1116
    .line 1117
    const/16 v31, 0x1

    .line 1118
    .line 1119
    goto :goto_1a

    .line 1120
    :cond_3a
    iget-object v12, v11, Lc0/d;->a:Ljava/lang/String;

    .line 1121
    .line 1122
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v13

    .line 1126
    if-eqz v13, :cond_3b

    .line 1127
    .line 1128
    :goto_1a
    const/4 v13, 0x0

    .line 1129
    goto :goto_1d

    .line 1130
    :cond_3b
    const/4 v13, 0x0

    .line 1131
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    .line 1132
    .line 1133
    .line 1134
    move-result v14

    .line 1135
    invoke-virtual {v11}, Lc0/d;->f()Z

    .line 1136
    .line 1137
    .line 1138
    move-result v11

    .line 1139
    if-eqz v11, :cond_3c

    .line 1140
    .line 1141
    invoke-static {v14}, Ljava/lang/Character;->toUpperCase(C)C

    .line 1142
    .line 1143
    .line 1144
    move-result v11

    .line 1145
    goto :goto_1b

    .line 1146
    :cond_3c
    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    .line 1147
    .line 1148
    .line 1149
    move-result v11

    .line 1150
    :goto_1b
    if-eq v11, v10, :cond_3e

    .line 1151
    .line 1152
    const/4 v14, 0x1

    .line 1153
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v10

    .line 1157
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v10

    .line 1161
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    if-eqz v31, :cond_3d

    .line 1165
    .line 1166
    add-int/lit8 v10, v9, -0x1

    .line 1167
    .line 1168
    goto :goto_1c

    .line 1169
    :cond_3d
    move v10, v9

    .line 1170
    :goto_1c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v10

    .line 1174
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1175
    .line 1176
    .line 1177
    move v10, v11

    .line 1178
    move/from16 v31, v13

    .line 1179
    .line 1180
    :cond_3e
    :goto_1d
    add-int/lit8 v9, v9, 0x1

    .line 1181
    .line 1182
    goto :goto_19

    .line 1183
    :cond_3f
    const/4 v13, 0x0

    .line 1184
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1185
    .line 1186
    const/16 v9, 0x1a

    .line 1187
    .line 1188
    if-lt v4, v9, :cond_46

    .line 1189
    .line 1190
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1191
    .line 1192
    .line 1193
    move-result v4

    .line 1194
    const/4 v9, 0x1

    .line 1195
    if-le v4, v9, :cond_45

    .line 1196
    .line 1197
    div-int v9, v8, v4

    .line 1198
    .line 1199
    if-le v9, v5, :cond_45

    .line 1200
    .line 1201
    mul-int/lit8 v10, v9, 0x2

    .line 1202
    .line 1203
    div-int/lit8 v11, v9, 0x2

    .line 1204
    .line 1205
    move v12, v13

    .line 1206
    :goto_1e
    if-ge v12, v4, :cond_45

    .line 1207
    .line 1208
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v14

    .line 1212
    check-cast v14, Ljava/lang/Integer;

    .line 1213
    .line 1214
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 1215
    .line 1216
    .line 1217
    move-result v14

    .line 1218
    add-int/lit8 v15, v12, 0x1

    .line 1219
    .line 1220
    if-ge v15, v4, :cond_40

    .line 1221
    .line 1222
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v15

    .line 1226
    check-cast v15, Ljava/lang/Integer;

    .line 1227
    .line 1228
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 1229
    .line 1230
    .line 1231
    move-result v15

    .line 1232
    goto :goto_1f

    .line 1233
    :cond_40
    move v15, v8

    .line 1234
    :goto_1f
    sub-int/2addr v15, v14

    .line 1235
    if-le v15, v10, :cond_43

    .line 1236
    .line 1237
    div-int v18, v15, v9

    .line 1238
    .line 1239
    mul-int/lit8 v13, v18, 0x2

    .line 1240
    .line 1241
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v18

    .line 1245
    move-object/from16 v5, v18

    .line 1246
    .line 1247
    check-cast v5, Ljava/lang/String;

    .line 1248
    .line 1249
    move/from16 v18, v8

    .line 1250
    .line 1251
    move/from16 v20, v15

    .line 1252
    .line 1253
    const/4 v8, 0x0

    .line 1254
    :goto_20
    if-ge v8, v13, :cond_44

    .line 1255
    .line 1256
    add-int/lit8 v21, v13, 0x1

    .line 1257
    .line 1258
    div-int v21, v15, v21

    .line 1259
    .line 1260
    add-int/lit8 v8, v8, 0x1

    .line 1261
    .line 1262
    mul-int v21, v21, v8

    .line 1263
    .line 1264
    add-int v21, v21, v14

    .line 1265
    .line 1266
    sub-int v22, v21, v20

    .line 1267
    .line 1268
    move/from16 v23, v8

    .line 1269
    .line 1270
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    .line 1271
    .line 1272
    .line 1273
    move-result v8

    .line 1274
    if-ge v8, v11, :cond_41

    .line 1275
    .line 1276
    goto :goto_22

    .line 1277
    :cond_41
    add-int/lit8 v12, v12, 0x1

    .line 1278
    .line 1279
    if-ge v12, v4, :cond_42

    .line 1280
    .line 1281
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v8

    .line 1285
    invoke-virtual {v7, v12, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-virtual {v6, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1289
    .line 1290
    .line 1291
    goto :goto_21

    .line 1292
    :cond_42
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v8

    .line 1296
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    .line 1301
    .line 1302
    :goto_21
    add-int/lit8 v4, v4, 0x1

    .line 1303
    .line 1304
    move/from16 v20, v21

    .line 1305
    .line 1306
    :goto_22
    move/from16 v8, v23

    .line 1307
    .line 1308
    goto :goto_20

    .line 1309
    :cond_43
    move/from16 v18, v8

    .line 1310
    .line 1311
    :cond_44
    const/4 v5, 0x1

    .line 1312
    add-int/2addr v12, v5

    .line 1313
    move/from16 v8, v18

    .line 1314
    .line 1315
    const/4 v5, 0x2

    .line 1316
    const/4 v13, 0x0

    .line 1317
    goto :goto_1e

    .line 1318
    :cond_45
    new-instance v4, Lc0/a;

    .line 1319
    .line 1320
    invoke-direct {v4, v7, v6}, Lc0/a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1321
    .line 1322
    .line 1323
    goto :goto_23

    .line 1324
    :cond_46
    new-instance v4, Lc0/a;

    .line 1325
    .line 1326
    invoke-direct {v4, v7, v6}, Lc0/a;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1327
    .line 1328
    .line 1329
    :goto_23
    iput-object v4, v3, Lz/n;->i:Lc0/a;

    .line 1330
    .line 1331
    :cond_47
    :goto_24
    iget v3, v0, Lz/h0;->g:I

    .line 1332
    .line 1333
    const/16 v4, 0x10

    .line 1334
    .line 1335
    invoke-static {v3, v4}, Lb/d;->K(II)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v3

    .line 1339
    if-eqz v3, :cond_4e

    .line 1340
    .line 1341
    iget-object v3, v0, Lz/h0;->j:Lc0/b;

    .line 1342
    .line 1343
    if-eqz v3, :cond_4e

    .line 1344
    .line 1345
    iget v3, v3, Lc0/b;->a:I

    .line 1346
    .line 1347
    if-lez v3, :cond_4e

    .line 1348
    .line 1349
    iget-object v3, v0, Lz/h0;->e:Lz/n;

    .line 1350
    .line 1351
    iget-object v3, v3, Lz/n;->h:Lc0/b;

    .line 1352
    .line 1353
    invoke-virtual {v3}, Lc0/b;->size()I

    .line 1354
    .line 1355
    .line 1356
    move-result v3

    .line 1357
    iget-object v4, v0, Lz/h0;->j:Lc0/b;

    .line 1358
    .line 1359
    invoke-virtual {v4}, Lc0/b;->size()I

    .line 1360
    .line 1361
    .line 1362
    move-result v4

    .line 1363
    const/4 v5, 0x0

    .line 1364
    const/4 v6, 0x0

    .line 1365
    :goto_25
    if-ge v5, v4, :cond_4e

    .line 1366
    .line 1367
    iget-object v7, v0, Lz/h0;->j:Lc0/b;

    .line 1368
    .line 1369
    invoke-virtual {v7, v5}, Lc0/b;->b(I)Lc0/d;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v7

    .line 1373
    iget-boolean v8, v7, Lc0/d;->g:Z

    .line 1374
    .line 1375
    if-eqz v8, :cond_4d

    .line 1376
    .line 1377
    move v8, v6

    .line 1378
    :goto_26
    if-ge v8, v3, :cond_49

    .line 1379
    .line 1380
    iget-object v9, v0, Lz/h0;->e:Lz/n;

    .line 1381
    .line 1382
    iget-object v9, v9, Lz/n;->h:Lc0/b;

    .line 1383
    .line 1384
    invoke-virtual {v9, v8}, Lc0/b;->b(I)Lc0/d;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v9

    .line 1388
    iget-object v10, v7, Lc0/d;->a:Ljava/lang/String;

    .line 1389
    .line 1390
    iget-object v9, v9, Lc0/d;->a:Ljava/lang/String;

    .line 1391
    .line 1392
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v9

    .line 1396
    if-eqz v9, :cond_48

    .line 1397
    .line 1398
    iget-object v9, v0, Lz/h0;->e:Lz/n;

    .line 1399
    .line 1400
    iget-object v9, v9, Lz/n;->h:Lc0/b;

    .line 1401
    .line 1402
    invoke-virtual {v9, v8}, Lc0/b;->g(I)V

    .line 1403
    .line 1404
    .line 1405
    add-int/lit8 v8, v8, 0x1

    .line 1406
    .line 1407
    goto :goto_27

    .line 1408
    :cond_48
    add-int/lit8 v8, v8, 0x1

    .line 1409
    .line 1410
    goto :goto_26

    .line 1411
    :cond_49
    :goto_27
    if-lt v8, v3, :cond_4b

    .line 1412
    .line 1413
    const/4 v8, 0x0

    .line 1414
    :goto_28
    if-ge v8, v6, :cond_4b

    .line 1415
    .line 1416
    iget-object v9, v0, Lz/h0;->e:Lz/n;

    .line 1417
    .line 1418
    iget-object v9, v9, Lz/n;->h:Lc0/b;

    .line 1419
    .line 1420
    invoke-virtual {v9, v8}, Lc0/b;->b(I)Lc0/d;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v9

    .line 1424
    iget-object v10, v7, Lc0/d;->a:Ljava/lang/String;

    .line 1425
    .line 1426
    iget-object v9, v9, Lc0/d;->a:Ljava/lang/String;

    .line 1427
    .line 1428
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v9

    .line 1432
    if-eqz v9, :cond_4a

    .line 1433
    .line 1434
    iget-object v6, v0, Lz/h0;->e:Lz/n;

    .line 1435
    .line 1436
    iget-object v6, v6, Lz/n;->h:Lc0/b;

    .line 1437
    .line 1438
    invoke-virtual {v6, v8}, Lc0/b;->g(I)V

    .line 1439
    .line 1440
    .line 1441
    add-int/lit8 v8, v8, 0x1

    .line 1442
    .line 1443
    goto :goto_29

    .line 1444
    :cond_4a
    add-int/lit8 v8, v8, 0x1

    .line 1445
    .line 1446
    goto :goto_28

    .line 1447
    :cond_4b
    :goto_29
    invoke-virtual/range {p0 .. p0}, Lv0/c;->isCancelled()Z

    .line 1448
    .line 1449
    .line 1450
    move-result v6

    .line 1451
    if-eqz v6, :cond_4c

    .line 1452
    .line 1453
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1454
    .line 1455
    .line 1456
    const/4 v7, 0x0

    .line 1457
    return-object v7

    .line 1458
    :cond_4c
    const/4 v7, 0x0

    .line 1459
    move v6, v8

    .line 1460
    goto :goto_2a

    .line 1461
    :cond_4d
    const/4 v7, 0x0

    .line 1462
    :goto_2a
    add-int/lit8 v5, v5, 0x1

    .line 1463
    .line 1464
    goto :goto_25

    .line 1465
    :cond_4e
    sget-object v3, Lm0/d;->a:Ljava/lang/String;

    .line 1466
    .line 1467
    if-nez v3, :cond_4f

    .line 1468
    .line 1469
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 1470
    .line 1471
    .line 1472
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1473
    .line 1474
    const/16 v4, 0x1f

    .line 1475
    .line 1476
    if-ge v3, v4, :cond_4f

    .line 1477
    .line 1478
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 1479
    .line 1480
    sget-object v4, Lm0/d;->a:Ljava/lang/String;

    .line 1481
    .line 1482
    const-string v5, ".nomedia"

    .line 1483
    .line 1484
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1488
    .line 1489
    .line 1490
    :catch_0
    :cond_4f
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 1491
    .line 1492
    .line 1493
    iget-object v1, v0, Lz/h0;->e:Lz/n;

    .line 1494
    .line 1495
    iget v2, v0, Lz/h0;->g:I

    .line 1496
    .line 1497
    iput v2, v1, Lz/n;->c:I

    .line 1498
    .line 1499
    return-object v1
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lz/h0;->e:Lz/n;

    iget v0, v0, Lz/n;->a:I

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv0/c;->a:Lv0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lz/h0;->e:Lz/n;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lv0/a;->b(Lv0/a$b;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final m()I
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iget-object v1, p0, Lz/h0;->h:Landroid/graphics/Point;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget-object v2, p0, Lz/h0;->f:Lru/zdevs/zarchiver/b;

    .line 9
    .line 10
    iget v2, v2, Lru/zdevs/zarchiver/b;->g:I

    .line 11
    .line 12
    const v3, 0x7f08002d

    .line 13
    .line 14
    .line 15
    if-ne v2, v3, :cond_1

    .line 16
    .line 17
    sget v2, Ls0/b;->k:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    const v3, 0x3fcccccd    # 1.6f

    .line 21
    .line 22
    .line 23
    mul-float/2addr v2, v3

    .line 24
    float-to-int v2, v2

    .line 25
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 26
    .line 27
    add-int/2addr v2, v0

    .line 28
    sget v0, Ls0/b;->l:I

    .line 29
    .line 30
    mul-int/lit8 v0, v0, 0x3

    .line 31
    .line 32
    add-int/2addr v0, v2

    .line 33
    div-int/2addr v3, v0

    .line 34
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 35
    .line 36
    div-int/2addr v0, v2

    .line 37
    mul-int/2addr v0, v3

    .line 38
    return v0

    .line 39
    :cond_1
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 40
    .line 41
    sget v1, Ls0/b;->k:I

    .line 42
    .line 43
    div-int/2addr v0, v1

    .line 44
    return v0
.end method
