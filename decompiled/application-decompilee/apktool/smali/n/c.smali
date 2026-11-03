.class public final Ln/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/g;


# instance fields
.field public final a:Ll/a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lp/g;

.field public final d:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lp/g;Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ll/a;

    .line 5
    .line 6
    invoke-direct {v0}, Ll/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln/c;->a:Ll/a;

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ln/c;->b:Ljava/util/List;

    .line 16
    .line 17
    iput-object p1, p0, Ln/c;->c:Lp/g;

    .line 18
    .line 19
    iput-object p2, p0, Ln/c;->d:Ljava/util/Locale;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ln/d;)V
    .locals 10

    .line 1
    iget-object v0, p1, Ln/d;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Le/b;

    .line 4
    .line 5
    iget-object p1, p1, Ln/d;->c:Ljava/lang/Comparable;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    sparse-switch v1, :sswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string v1, "uses-feature"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x6

    .line 32
    goto :goto_1

    .line 33
    :sswitch_1
    const-string v1, "application"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x5

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    const-string v1, "supports-screens"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 p1, 0x4

    .line 54
    goto :goto_1

    .line 55
    :sswitch_3
    const-string v1, "uses-permission"

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 p1, 0x3

    .line 65
    goto :goto_1

    .line 66
    :sswitch_4
    const-string v1, "manifest"

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    const/4 p1, 0x2

    .line 76
    goto :goto_1

    .line 77
    :sswitch_5
    const-string v1, "uses-sdk"

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    move p1, v2

    .line 87
    goto :goto_1

    .line 88
    :sswitch_6
    const-string v1, "permission"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    move p1, v3

    .line 98
    goto :goto_1

    .line 99
    :goto_0
    const/4 p1, -0x1

    .line 100
    :goto_1
    const-wide v4, 0xffffffffL

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const-string v1, "icon"

    .line 106
    .line 107
    const-string v6, "label"

    .line 108
    .line 109
    const-string v7, "name"

    .line 110
    .line 111
    iget-object v8, p0, Ln/c;->a:Ll/a;

    .line 112
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 114
    .line 115
    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :pswitch_0
    invoke-virtual {v0, v7}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const-string v1, "required"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Le/b;->b(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    if-eqz p1, :cond_12

    .line 128
    .line 129
    new-instance v0, Ll/c;

    .line 130
    .line 131
    invoke-direct {v0, p1}, Ll/c;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v8, Ll/a;->k:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto/16 :goto_5

    .line 140
    .line 141
    :pswitch_1
    const-string p1, "debuggable"

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v6}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    iput-object p1, v8, Ll/a;->b:Ljava/lang/String;

    .line 156
    .line 157
    :cond_7
    iget-object p1, v0, Le/b;->a:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p1, [Lq/a;

    .line 160
    .line 161
    array-length v0, p1

    .line 162
    move v6, v3

    .line 163
    :goto_2
    if-ge v6, v0, :cond_9

    .line 164
    .line 165
    aget-object v7, p1, v6

    .line 166
    .line 167
    iget-object v9, v7, Lq/a;->b:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-eqz v9, :cond_8

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_9
    const/4 v7, 0x0

    .line 180
    :goto_3
    if-eqz v7, :cond_12

    .line 181
    .line 182
    iget-object p1, v7, Lq/a;->d:Lo/b;

    .line 183
    .line 184
    instance-of v0, p1, Lo/b$i;

    .line 185
    .line 186
    if-eqz v0, :cond_d

    .line 187
    .line 188
    check-cast p1, Lo/b$i;

    .line 189
    .line 190
    iget p1, p1, Lo/b;->a:I

    .line 191
    .line 192
    int-to-long v0, p1

    .line 193
    and-long/2addr v0, v4

    .line 194
    iget-object p1, p0, Ln/c;->c:Lp/g;

    .line 195
    .line 196
    invoke-virtual {p1, v0, v1}, Lp/g;->a(J)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    if-nez v1, :cond_12

    .line 205
    .line 206
    new-instance v1, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    move v4, v3

    .line 216
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-eqz v5, :cond_b

    .line 221
    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    check-cast v5, Lp/g$a;

    .line 227
    .line 228
    iget-object v6, v5, Lp/g$a;->b:Lp/j;

    .line 229
    .line 230
    iget-object v7, p0, Ln/c;->d:Ljava/util/Locale;

    .line 231
    .line 232
    iget-object v5, v5, Lp/g$a;->c:Lp/d;

    .line 233
    .line 234
    invoke-virtual {v5, p1, v7}, Lp/d;->a(Lp/g;Ljava/util/Locale;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    iget v6, v6, Lp/j;->g:I

    .line 239
    .line 240
    if-nez v6, :cond_a

    .line 241
    .line 242
    iput-object v5, v8, Ll/a;->c:Ljava/lang/String;

    .line 243
    .line 244
    move v4, v2

    .line 245
    :cond_a
    new-instance v7, Ll/b;

    .line 246
    .line 247
    invoke-direct {v7, v6, v5}, Ll/b;-><init>(ILjava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_b
    if-nez v4, :cond_c

    .line 255
    .line 256
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Ll/b;

    .line 261
    .line 262
    iget-object p1, p1, Ll/b;->a:Ljava/lang/String;

    .line 263
    .line 264
    iput-object p1, v8, Ll/a;->c:Ljava/lang/String;

    .line 265
    .line 266
    :cond_c
    iput-object v1, p0, Ln/c;->b:Ljava/util/List;

    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_d
    iget-object p1, v7, Lq/a;->e:Ljava/lang/String;

    .line 271
    .line 272
    if-eqz p1, :cond_12

    .line 273
    .line 274
    iput-object p1, v8, Ll/a;->c:Ljava/lang/String;

    .line 275
    .line 276
    new-instance v0, Ll/b;

    .line 277
    .line 278
    invoke-direct {v0, v3, p1}, Ll/b;-><init>(ILjava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iput-object p1, p0, Ln/c;->b:Ljava/util/List;

    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :pswitch_2
    const-string p1, "anyDensity"

    .line 290
    .line 291
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    const-string p1, "smallScreens"

    .line 298
    .line 299
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    const-string p1, "normalScreens"

    .line 303
    .line 304
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    const-string p1, "largeScreens"

    .line 308
    .line 309
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    goto/16 :goto_5

    .line 313
    .line 314
    :pswitch_3
    invoke-virtual {v0, v7}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    iget-object v0, v8, Ll/a;->j:Ljava/util/ArrayList;

    .line 319
    .line 320
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    goto/16 :goto_5

    .line 324
    .line 325
    :pswitch_4
    const-string p1, "package"

    .line 326
    .line 327
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    iput-object p1, v8, Ll/a;->a:Ljava/lang/String;

    .line 332
    .line 333
    const-string p1, "versionName"

    .line 334
    .line 335
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    iput-object p1, v8, Ll/a;->d:Ljava/lang/String;

    .line 340
    .line 341
    const-string p1, "revisionCode"

    .line 342
    .line 343
    invoke-virtual {v0, p1}, Le/b;->c(Ljava/lang/String;)Ljava/lang/Long;

    .line 344
    .line 345
    .line 346
    const-string p1, "split"

    .line 347
    .line 348
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iput-object p1, v8, Ll/a;->f:Ljava/lang/String;

    .line 353
    .line 354
    const-string p1, "configForSplit"

    .line 355
    .line 356
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    const-string p1, "isFeatureSplit"

    .line 360
    .line 361
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    const-string p1, "isSplitRequired"

    .line 365
    .line 366
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 367
    .line 368
    .line 369
    const-string p1, "isolatedSplits"

    .line 370
    .line 371
    invoke-virtual {v0, p1}, Le/b;->b(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    const-string p1, "versionCodeMajor"

    .line 375
    .line 376
    invoke-virtual {v0, p1}, Le/b;->c(Ljava/lang/String;)Ljava/lang/Long;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    const-string v1, "versionCode"

    .line 381
    .line 382
    invoke-virtual {v0, v1}, Le/b;->c(Ljava/lang/String;)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    if-eqz p1, :cond_f

    .line 387
    .line 388
    if-nez v1, :cond_e

    .line 389
    .line 390
    const-wide/16 v1, 0x0

    .line 391
    .line 392
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 397
    .line 398
    .line 399
    move-result-wide v2

    .line 400
    const/16 p1, 0x20

    .line 401
    .line 402
    shl-long/2addr v2, p1

    .line 403
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 404
    .line 405
    .line 406
    move-result-wide v6

    .line 407
    and-long/2addr v4, v6

    .line 408
    or-long v1, v2, v4

    .line 409
    .line 410
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    :cond_f
    iput-object v1, v8, Ll/a;->e:Ljava/lang/Long;

    .line 415
    .line 416
    const-string p1, "installLocation"

    .line 417
    .line 418
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    const-string p1, "compileSdkVersion"

    .line 422
    .line 423
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    const-string p1, "compileSdkVersionCodename"

    .line 427
    .line 428
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    const-string p1, "platformBuildVersionCode"

    .line 432
    .line 433
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    const-string p1, "platformBuildVersionName"

    .line 437
    .line 438
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    goto :goto_5

    .line 442
    :pswitch_5
    const-string p1, "minSdkVersion"

    .line 443
    .line 444
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    if-eqz p1, :cond_10

    .line 449
    .line 450
    iput-object p1, v8, Ll/a;->g:Ljava/lang/String;

    .line 451
    .line 452
    :cond_10
    const-string p1, "targetSdkVersion"

    .line 453
    .line 454
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    if-eqz p1, :cond_11

    .line 459
    .line 460
    iput-object p1, v8, Ll/a;->h:Ljava/lang/String;

    .line 461
    .line 462
    :cond_11
    const-string p1, "maxSdkVersion"

    .line 463
    .line 464
    invoke-virtual {v0, p1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    if-eqz p1, :cond_12

    .line 469
    .line 470
    iput-object p1, v8, Ll/a;->i:Ljava/lang/String;

    .line 471
    .line 472
    goto :goto_5

    .line 473
    :pswitch_6
    new-instance p1, Lb/d;

    .line 474
    .line 475
    invoke-virtual {v0, v7}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0, v6}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    const-string v1, "description"

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    const-string v1, "group"

    .line 490
    .line 491
    invoke-virtual {v0, v1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    const-string v1, "android:protectionLevel"

    .line 495
    .line 496
    invoke-virtual {v0, v1}, Le/b;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    invoke-direct {p1}, Lb/d;-><init>()V

    .line 500
    .line 501
    .line 502
    iget-object v0, v8, Ll/a;->l:Ljava/util/ArrayList;

    .line 503
    .line 504
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    :cond_12
    :goto_5
    return-void

    .line 508
    nop

    .line 509
    :sswitch_data_0
    .sparse-switch
        -0x1eda3a31 -> :sswitch_6
        -0xfe5a947 -> :sswitch_5
        0x7c92e2f -> :sswitch_4
        0x23c12e70 -> :sswitch_3
        0x3573e73e -> :sswitch_2
        0x5ca40550 -> :sswitch_1
        0x6adbbdf5 -> :sswitch_0
    .end sparse-switch

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
