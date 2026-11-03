.class public final Lz/q0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lp0/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lc0/d;

.field public final h:Ljava/lang/String;

.field public final i:Lg0/h;

.field public final j:Z


# direct methods
.method public constructor <init>(ILp0/g;Lg0/h;Lc0/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lz/q0;->e:I

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lz/q0;->f:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    iput-object p4, p0, Lz/q0;->g:Lc0/d;

    .line 14
    .line 15
    iput-object p5, p0, Lz/q0;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lz/q0;->i:Lg0/h;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lz/q0;->j:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 14

    .line 1
    const-string v0, ".z2p"

    .line 2
    .line 3
    iget-object v1, p0, Lz/q0;->i:Lg0/h;

    .line 4
    .line 5
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    iget-object v6, p0, Lz/q0;->i:Lg0/h;

    .line 16
    .line 17
    invoke-virtual {v6}, Lg0/h;->l()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    iget-object v6, p0, Lz/q0;->i:Lg0/h;

    .line 24
    .line 25
    invoke-static {v6, v3}, Lw0/f;->d(Lg0/h;Z)B

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eq v6, v3, :cond_7

    .line 30
    .line 31
    :cond_0
    iget-boolean v6, p0, Lz/q0;->j:Z

    .line 32
    .line 33
    if-nez v6, :cond_7

    .line 34
    .line 35
    sget v0, Ls0/b;->m:I

    .line 36
    .line 37
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ln0/a;->f()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_6

    .line 46
    .line 47
    iget-object v1, p0, Lz/q0;->i:Lg0/h;

    .line 48
    .line 49
    invoke-virtual {v1}, Lg0/h;->r()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v6, p0, Lz/q0;->g:Lc0/d;

    .line 54
    .line 55
    iget-object v6, v6, Lc0/d;->a:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v7, p0, Lz/q0;->h:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v12, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v12, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v13, Ljava/io/File;

    .line 65
    .line 66
    invoke-direct {v13, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    const/4 v7, 0x1

    .line 85
    const/4 v9, 0x1

    .line 86
    const/4 v8, 0x0

    .line 87
    move-object v6, v0

    .line 88
    invoke-static/range {v6 .. v11}, Lo0/b;->c(Ln0/a;ZIZLjava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-lt v6, v2, :cond_2

    .line 93
    .line 94
    move v6, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    move v6, v5

    .line 97
    :goto_0
    if-nez v6, :cond_3

    .line 98
    .line 99
    :goto_1
    move v3, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    invoke-static {v1}, Lw0/f;->c(Ljava/lang/String;)B

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-ne v1, v3, :cond_4

    .line 106
    .line 107
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    xor-int/2addr v7, v3

    .line 120
    invoke-static {v6, v7}, Lp0/f;->a(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    invoke-static {v1, v7, v3}, Lp0/f;->c(Ljava/lang/String;ZZ)V

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_2
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 127
    .line 128
    .line 129
    if-nez v3, :cond_5

    .line 130
    .line 131
    iget-object v0, v0, Ln0/a;->c:Ljava/lang/String;

    .line 132
    .line 133
    goto/16 :goto_9

    .line 134
    .line 135
    :cond_5
    move-object v0, v4

    .line 136
    goto/16 :goto_9

    .line 137
    .line 138
    :cond_6
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 139
    .line 140
    const v1, 0x7f0c016e

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    move v3, v5

    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_7
    :try_start_0
    new-instance v6, Lg0/h;

    .line 151
    .line 152
    iget-object v7, p0, Lz/q0;->i:Lg0/h;

    .line 153
    .line 154
    iget-object v8, p0, Lz/q0;->g:Lc0/d;

    .line 155
    .line 156
    iget-object v8, v8, Lc0/d;->a:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {v6, v8, v7}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v6}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    iget-object v8, p0, Lz/q0;->g:Lc0/d;

    .line 166
    .line 167
    iget-object v8, v8, Lc0/d;->a:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v9, p0, Lz/q0;->h:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_8

    .line 176
    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v9, p0, Lz/q0;->h:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v7, v8}, Lg0/f;->y(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    if-eqz v8, :cond_8

    .line 199
    .line 200
    new-instance v7, Lg0/h;

    .line 201
    .line 202
    iget-object v8, p0, Lz/q0;->i:Lg0/h;

    .line 203
    .line 204
    new-instance v9, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v10, p0, Lz/q0;->h:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-direct {v7, v0, v8}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v7}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    if-eqz v1, :cond_8

    .line 229
    .line 230
    iget-object v0, v6, Lg0/h;->c:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v7}, Lg0/f;->k()Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    invoke-static {v0, v8, v3}, Lp0/f;->c(Ljava/lang/String;ZZ)V

    .line 237
    .line 238
    .line 239
    :cond_8
    iget-object v0, p0, Lz/q0;->h:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v7, v0}, Lg0/f;->y(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    if-nez v0, :cond_9

    .line 246
    .line 247
    :try_start_1
    invoke-virtual {v7}, Lg0/f;->h()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    goto :goto_7

    .line 252
    :catch_0
    move-exception v1

    .line 253
    goto :goto_5

    .line 254
    :cond_9
    if-eqz v1, :cond_d

    .line 255
    .line 256
    iget-object v1, v6, Lg0/h;->c:Ljava/lang/String;

    .line 257
    .line 258
    iget-object v6, p0, Lz/q0;->i:Lg0/h;

    .line 259
    .line 260
    iget-object v8, p0, Lz/q0;->h:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v9, v6, Lg0/h;->a:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v6}, Lg0/h;->g()Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-eqz v9, :cond_a

    .line 269
    .line 270
    iget-object v9, v6, Lg0/h;->c:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v6, v6, Lg0/h;->e:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v6, v8}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_a
    invoke-virtual {v6}, Lg0/h;->n()Z

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    if-eqz v9, :cond_b

    .line 283
    .line 284
    new-instance v9, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    iget-object v6, v6, Lg0/h;->c:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    goto :goto_3

    .line 302
    :cond_b
    iget-object v6, v6, Lg0/h;->c:Ljava/lang/String;

    .line 303
    .line 304
    invoke-static {v6, v8}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    :goto_3
    invoke-virtual {v7}, Lg0/f;->l()Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-nez v6, :cond_c

    .line 313
    .line 314
    move v6, v3

    .line 315
    goto :goto_4

    .line 316
    :cond_c
    move v6, v5

    .line 317
    :goto_4
    invoke-static {v9, v6}, Lp0/f;->a(Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    invoke-static {v1, v6, v3}, Lp0/f;->c(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :goto_5
    move v3, v0

    .line 325
    goto :goto_8

    .line 326
    :cond_d
    :goto_6
    move-object v1, v4

    .line 327
    :goto_7
    move v3, v0

    .line 328
    move-object v0, v1

    .line 329
    goto :goto_9

    .line 330
    :catch_1
    move-exception v0

    .line 331
    move-object v1, v0

    .line 332
    move v3, v5

    .line 333
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    :goto_9
    if-eqz v3, :cond_10

    .line 338
    .line 339
    iget-object v0, p0, Lz/q0;->g:Lc0/d;

    .line 340
    .line 341
    iget-object v1, p0, Lz/q0;->i:Lg0/h;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lc0/d;->e(Lg0/h;)I

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    iget-object v1, p0, Lz/q0;->g:Lc0/d;

    .line 348
    .line 349
    iget-object v3, p0, Lz/q0;->h:Ljava/lang/String;

    .line 350
    .line 351
    iput-object v3, v1, Lc0/d;->a:Ljava/lang/String;

    .line 352
    .line 353
    invoke-virtual {v1}, Lc0/d;->f()Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-nez v3, :cond_e

    .line 358
    .line 359
    iput-byte v2, v1, Lc0/d;->e:B

    .line 360
    .line 361
    iput-byte v5, v1, Lc0/d;->f:B

    .line 362
    .line 363
    :cond_e
    iput-object v4, v1, Lc0/d;->h:Ljava/lang/Object;

    .line 364
    .line 365
    iget-object v1, p0, Lz/q0;->f:Ljava/lang/ref/WeakReference;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    check-cast v1, Lp0/g;

    .line 372
    .line 373
    if-eqz v1, :cond_f

    .line 374
    .line 375
    iget-object v2, p0, Lz/q0;->g:Lc0/d;

    .line 376
    .line 377
    iget-object v3, p0, Lz/q0;->i:Lg0/h;

    .line 378
    .line 379
    invoke-virtual {v2, v3}, Lc0/d;->e(Lg0/h;)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v3

    .line 387
    iget-object v1, v1, Lp0/g;->d:Lp0/i;

    .line 388
    .line 389
    invoke-virtual {v1, v3}, Lp0/i;->b(Ljava/lang/Integer;)Lp0/e$a;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    if-eqz v3, :cond_f

    .line 394
    .line 395
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v1, v0}, Lp0/i;->d(Ljava/lang/Integer;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v1, v0, v3}, Lp0/i;->c(Ljava/lang/Integer;Lp0/e$a;)V

    .line 407
    .line 408
    .line 409
    :cond_f
    new-instance v0, Lz/s;

    .line 410
    .line 411
    iget v1, p0, Lz/q0;->e:I

    .line 412
    .line 413
    iget-object v2, p0, Lz/q0;->h:Ljava/lang/String;

    .line 414
    .line 415
    invoke-direct {v0, v1, v2}, Lz/s;-><init>(ILjava/lang/String;)V

    .line 416
    .line 417
    .line 418
    return-object v0

    .line 419
    :cond_10
    if-eqz v0, :cond_11

    .line 420
    .line 421
    new-instance v1, Lz/x;

    .line 422
    .line 423
    invoke-direct {v1, v0}, Lz/x;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    return-object v1

    .line 427
    :cond_11
    new-instance v0, Lz/x;

    .line 428
    .line 429
    const v1, 0x7f0c00e7

    .line 430
    .line 431
    .line 432
    invoke-direct {v0, v1}, Lz/x;-><init>(I)V

    .line 433
    .line 434
    .line 435
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method
