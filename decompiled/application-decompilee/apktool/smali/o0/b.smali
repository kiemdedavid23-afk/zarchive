.class public final Lo0/b;
.super Lo0/a;
.source "SourceFile"


# direct methods
.method public static c(Ln0/a;ZIZLjava/lang/String;Ljava/lang/String;)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-static {}, Lo0/a;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "\' \'"

    .line 12
    .line 13
    const-string v5, "\'\\\'\'"

    .line 14
    .line 15
    const/4 v6, -0x1

    .line 16
    const-string v7, "\'"

    .line 17
    .line 18
    const/4 v8, 0x1

    .line 19
    const/4 v9, 0x0

    .line 20
    if-nez v3, :cond_5

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v5, "mv -f \'"

    .line 32
    .line 33
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v10, "cp -Rf \'"

    .line 56
    .line 57
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_0
    invoke-virtual {v0, v1}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    invoke-virtual {v0, v9}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    iget v0, v0, Ln0/a;->h:I

    .line 95
    .line 96
    if-nez v0, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    :goto_1
    move v8, v9

    .line 100
    :goto_2
    if-eqz v8, :cond_4

    .line 101
    .line 102
    move v6, v9

    .line 103
    :cond_4
    return v6

    .line 104
    :cond_5
    const/16 v3, 0x11

    .line 105
    .line 106
    move/from16 v10, p2

    .line 107
    .line 108
    invoke-static {v10, v3}, Lb/d;->K(II)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lo0/a;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    if-eqz v3, :cond_6

    .line 127
    .line 128
    const-string v3, " mv -f"

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_6
    const-string v3, " mv -i"

    .line 132
    .line 133
    :goto_3
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_7
    if-eqz v3, :cond_8

    .line 138
    .line 139
    const-string v3, " cp -Rf"

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_8
    const-string v3, " cp -Ri"

    .line 143
    .line 144
    :goto_4
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    :goto_5
    if-eqz p3, :cond_9

    .line 148
    .line 149
    const/16 v3, 0x64

    .line 150
    .line 151
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    :cond_9
    const/16 v3, 0x70

    .line 155
    .line 156
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v3, " \'"

    .line 160
    .line 161
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-nez v1, :cond_a

    .line 193
    .line 194
    return v6

    .line 195
    :cond_a
    :goto_6
    :try_start_0
    invoke-virtual {v0, v8}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    if-eqz v1, :cond_1b

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_a

    .line 206
    .line 207
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    const/16 v3, 0x7e

    .line 212
    .line 213
    if-eq v2, v3, :cond_b

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_b
    const/16 v2, 0x9

    .line 217
    .line 218
    invoke-static {v1, v2}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    array-length v2, v1

    .line 223
    const/4 v3, 0x2

    .line 224
    if-lt v2, v3, :cond_a

    .line 225
    .line 226
    aget-object v2, v1, v8

    .line 227
    .line 228
    if-nez v2, :cond_c

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    const/16 v5, 0x82e

    .line 236
    .line 237
    if-eq v4, v5, :cond_f

    .line 238
    .line 239
    const/16 v5, 0xa00

    .line 240
    .line 241
    if-eq v4, v5, :cond_e

    .line 242
    .line 243
    const/16 v5, 0xa04

    .line 244
    .line 245
    if-eq v4, v5, :cond_d

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_d
    const-string v4, "PT"

    .line 249
    .line 250
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-eqz v2, :cond_10

    .line 255
    .line 256
    move v2, v9

    .line 257
    goto :goto_8

    .line 258
    :cond_e
    const-string v4, "PP"

    .line 259
    .line 260
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_10

    .line 265
    .line 266
    move v2, v8

    .line 267
    goto :goto_8

    .line 268
    :cond_f
    const-string v4, "AO"

    .line 269
    .line 270
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_10

    .line 275
    .line 276
    move v2, v3

    .line 277
    goto :goto_8

    .line 278
    :cond_10
    :goto_7
    move v2, v6

    .line 279
    :goto_8
    if-eqz v2, :cond_1a

    .line 280
    .line 281
    if-eq v2, v8, :cond_19

    .line 282
    .line 283
    if-eq v2, v3, :cond_11

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_11
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 287
    const/4 v4, 0x7

    .line 288
    if-ge v2, v4, :cond_12

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_12
    if-nez v10, :cond_13

    .line 292
    .line 293
    :try_start_1
    iget v11, v0, Ln0/a;->a:I

    .line 294
    .line 295
    const/4 v2, 0x6

    .line 296
    aget-object v12, v1, v2

    .line 297
    .line 298
    aget-object v3, v1, v3

    .line 299
    .line 300
    const-wide/16 v4, 0x0

    .line 301
    .line 302
    invoke-static {v4, v5, v3}, Lb/d;->j0(JLjava/lang/String;)J

    .line 303
    .line 304
    .line 305
    move-result-wide v13

    .line 306
    const/4 v3, 0x3

    .line 307
    aget-object v3, v1, v3

    .line 308
    .line 309
    invoke-static {v9, v3}, Lb/d;->i0(ILjava/lang/String;)I

    .line 310
    .line 311
    .line 312
    move-result v15

    .line 313
    aget-object v16, v1, v2

    .line 314
    .line 315
    const/4 v2, 0x4

    .line 316
    aget-object v2, v1, v2

    .line 317
    .line 318
    invoke-static {v4, v5, v2}, Lb/d;->j0(JLjava/lang/String;)J

    .line 319
    .line 320
    .line 321
    move-result-wide v17

    .line 322
    const/4 v2, 0x5

    .line 323
    aget-object v1, v1, v2

    .line 324
    .line 325
    invoke-static {v9, v1}, Lb/d;->i0(ILjava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v19

    .line 329
    invoke-static/range {v11 .. v19}, Lru/zdevs/zarchiver/archiver/C2JBridge;->jAskOverwrite(ILjava/lang/String;JILjava/lang/String;JI)I

    .line 330
    .line 331
    .line 332
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    goto :goto_9

    .line 334
    :catch_0
    const/16 v1, 0x8

    .line 335
    .line 336
    goto :goto_9

    .line 337
    :cond_13
    move v1, v10

    .line 338
    :goto_9
    :try_start_2
    const-string v2, "$"

    .line 339
    .line 340
    and-int/lit8 v3, v1, 0x1

    .line 341
    .line 342
    if-eqz v3, :cond_14

    .line 343
    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const/16 v2, 0x59

    .line 353
    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    :cond_14
    and-int/lit8 v3, v1, 0x2

    .line 362
    .line 363
    if-eqz v3, :cond_15

    .line 364
    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const/16 v2, 0x4e

    .line 374
    .line 375
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    :cond_15
    and-int/lit8 v3, v1, 0x8

    .line 383
    .line 384
    if-eqz v3, :cond_16

    .line 385
    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const/16 v2, 0x43

    .line 395
    .line 396
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    const/4 v10, -0x2

    .line 404
    :cond_16
    and-int/lit8 v3, v1, 0x4

    .line 405
    .line 406
    if-eqz v3, :cond_17

    .line 407
    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const/16 v2, 0x52

    .line 417
    .line 418
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    :cond_17
    and-int/lit8 v3, v1, 0x10

    .line 426
    .line 427
    if-eqz v3, :cond_18

    .line 428
    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const/16 v2, 0x41

    .line 438
    .line 439
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    or-int/2addr v1, v10

    .line 447
    move v10, v1

    .line 448
    :cond_18
    invoke-virtual {v0, v2}, Ln0/a;->m(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_6

    .line 452
    .line 453
    :cond_19
    iget v2, v0, Ln0/a;->a:I

    .line 454
    .line 455
    aget-object v1, v1, v3

    .line 456
    .line 457
    invoke-static {v9, v1}, Lb/d;->i0(ILjava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    invoke-static {v2, v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->jSetProcessPercent(II)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_6

    .line 465
    .line 466
    :cond_1a
    iget v2, v0, Ln0/a;->a:I

    .line 467
    .line 468
    aget-object v1, v1, v3

    .line 469
    .line 470
    invoke-static {v2, v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->jSetProcessText(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 471
    .line 472
    .line 473
    goto/16 :goto_6

    .line 474
    .line 475
    :catch_1
    :cond_1b
    iget v0, v0, Ln0/a;->h:I

    .line 476
    .line 477
    if-nez v0, :cond_1c

    .line 478
    .line 479
    move v6, v10

    .line 480
    :cond_1c
    return v6
.end method
