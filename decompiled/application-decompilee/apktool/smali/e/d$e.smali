.class public final Le/d$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final o:Landroid/graphics/Matrix;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/Path;

.field public final c:Landroid/graphics/Matrix;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/PathMeasure;

.field public final g:Le/d$c;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public m:Ljava/lang/String;

.field public final n:Landroid/util/ArrayMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Le/d$e;->o:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/d$e;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Le/d$e;->h:F

    .line 4
    iput v0, p0, Le/d$e;->i:F

    .line 5
    iput v0, p0, Le/d$e;->j:F

    .line 6
    iput v0, p0, Le/d$e;->k:F

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Le/d$e;->l:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Le/d$e;->m:Ljava/lang/String;

    .line 9
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Le/d$e;->n:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Le/d$c;

    invoke-direct {v0}, Le/d$c;-><init>()V

    iput-object v0, p0, Le/d$e;->g:Le/d$c;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/d$e;->a:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/d$e;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Le/d$e;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/d$e;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Le/d$e;->h:F

    .line 16
    iput v0, p0, Le/d$e;->i:F

    .line 17
    iput v0, p0, Le/d$e;->j:F

    .line 18
    iput v0, p0, Le/d$e;->k:F

    const/16 v0, 0xff

    .line 19
    iput v0, p0, Le/d$e;->l:I

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Le/d$e;->m:Ljava/lang/String;

    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Le/d$e;->n:Landroid/util/ArrayMap;

    .line 22
    new-instance v1, Le/d$c;

    iget-object v2, p1, Le/d$e;->g:Le/d$c;

    invoke-direct {v1, v2, v0}, Le/d$c;-><init>(Le/d$c;Landroid/util/ArrayMap;)V

    iput-object v1, p0, Le/d$e;->g:Le/d$c;

    .line 23
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Le/d$e;->a:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Le/d$e;->a:Landroid/graphics/Path;

    .line 24
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p1, Le/d$e;->b:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, p0, Le/d$e;->b:Landroid/graphics/Path;

    .line 25
    iget v1, p1, Le/d$e;->h:F

    iput v1, p0, Le/d$e;->h:F

    .line 26
    iget v1, p1, Le/d$e;->i:F

    iput v1, p0, Le/d$e;->i:F

    .line 27
    iget v1, p1, Le/d$e;->j:F

    iput v1, p0, Le/d$e;->j:F

    .line 28
    iget v1, p1, Le/d$e;->k:F

    iput v1, p0, Le/d$e;->k:F

    .line 29
    iget v1, p1, Le/d$e;->l:I

    iput v1, p0, Le/d$e;->l:I

    .line 30
    iget-object v1, p1, Le/d$e;->m:Ljava/lang/String;

    iput-object v1, p0, Le/d$e;->m:Ljava/lang/String;

    .line 31
    iget-object p1, p1, Le/d$e;->m:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Le/d$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V
    .locals 42

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v8, p3

    .line 6
    .line 7
    iget-object v0, v7, Le/d$c;->a:Landroid/graphics/Matrix;

    .line 8
    .line 9
    move-object/from16 v1, p2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 12
    .line 13
    .line 14
    iget-object v9, v7, Le/d$c;->a:Landroid/graphics/Matrix;

    .line 15
    .line 16
    iget-object v0, v7, Le/d$c;->j:Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->save()I

    .line 22
    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    move-object v12, v6

    .line 26
    move v11, v10

    .line 27
    :goto_0
    iget-object v0, v7, Le/d$c;->b:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ge v11, v1, :cond_32

    .line 34
    .line 35
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    instance-of v1, v0, Le/d$c;

    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Le/d$c;

    .line 45
    .line 46
    move-object/from16 v0, p0

    .line 47
    .line 48
    move-object v2, v9

    .line 49
    move-object/from16 v3, p3

    .line 50
    .line 51
    move/from16 v4, p4

    .line 52
    .line 53
    move/from16 v5, p5

    .line 54
    .line 55
    invoke-virtual/range {v0 .. v5}, Le/d$e;->a(Le/d$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_1f

    .line 59
    .line 60
    :cond_0
    instance-of v1, v0, Le/d$d;

    .line 61
    .line 62
    if-eqz v1, :cond_31

    .line 63
    .line 64
    check-cast v0, Le/d$d;

    .line 65
    .line 66
    move/from16 v1, p4

    .line 67
    .line 68
    int-to-float v2, v1

    .line 69
    iget v3, v12, Le/d$e;->j:F

    .line 70
    .line 71
    div-float/2addr v2, v3

    .line 72
    move/from16 v3, p5

    .line 73
    .line 74
    int-to-float v4, v3

    .line 75
    iget v5, v12, Le/d$e;->k:F

    .line 76
    .line 77
    div-float/2addr v4, v5

    .line 78
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iget-object v13, v12, Le/d$e;->c:Landroid/graphics/Matrix;

    .line 83
    .line 84
    invoke-virtual {v13, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v13, v2, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x4

    .line 91
    new-array v4, v2, [F

    .line 92
    .line 93
    fill-array-data v4, :array_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v4}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 97
    .line 98
    .line 99
    aget v14, v4, v10

    .line 100
    .line 101
    float-to-double v14, v14

    .line 102
    const/4 v2, 0x1

    .line 103
    aget v10, v4, v2

    .line 104
    .line 105
    float-to-double v2, v10

    .line 106
    invoke-static {v14, v15, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    double-to-float v2, v2

    .line 111
    const/4 v3, 0x2

    .line 112
    aget v10, v4, v3

    .line 113
    .line 114
    float-to-double v14, v10

    .line 115
    const/4 v10, 0x3

    .line 116
    aget v3, v4, v10

    .line 117
    .line 118
    move/from16 v19, v11

    .line 119
    .line 120
    float-to-double v10, v3

    .line 121
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    double-to-float v3, v10

    .line 126
    const/4 v10, 0x0

    .line 127
    aget v11, v4, v10

    .line 128
    .line 129
    const/4 v10, 0x1

    .line 130
    aget v14, v4, v10

    .line 131
    .line 132
    const/4 v10, 0x2

    .line 133
    aget v15, v4, v10

    .line 134
    .line 135
    const/4 v10, 0x3

    .line 136
    aget v4, v4, v10

    .line 137
    .line 138
    mul-float/2addr v11, v4

    .line 139
    mul-float/2addr v14, v15

    .line 140
    sub-float/2addr v11, v14

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    const/4 v3, 0x0

    .line 146
    cmpl-float v4, v2, v3

    .line 147
    .line 148
    if-lez v4, :cond_1

    .line 149
    .line 150
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    div-float/2addr v4, v2

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    move v4, v3

    .line 157
    :goto_1
    cmpl-float v2, v4, v3

    .line 158
    .line 159
    if-nez v2, :cond_2

    .line 160
    .line 161
    move-object v0, v6

    .line 162
    move-object v5, v8

    .line 163
    move-object/from16 v33, v9

    .line 164
    .line 165
    goto/16 :goto_1a

    .line 166
    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    iget-object v2, v12, Le/d$e;->a:Landroid/graphics/Path;

    .line 171
    .line 172
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 173
    .line 174
    .line 175
    iget-object v10, v0, Le/d$d;->a:[Ld/a$a;

    .line 176
    .line 177
    if-eqz v10, :cond_24

    .line 178
    .line 179
    const/4 v11, 0x6

    .line 180
    new-array v12, v11, [F

    .line 181
    .line 182
    array-length v14, v10

    .line 183
    const/4 v11, 0x0

    .line 184
    const/16 v21, 0x6d

    .line 185
    .line 186
    :goto_2
    if-ge v11, v14, :cond_24

    .line 187
    .line 188
    aget-object v3, v10, v11

    .line 189
    .line 190
    iget-char v15, v3, Ld/a$a;->a:C

    .line 191
    .line 192
    const/16 v16, 0x0

    .line 193
    .line 194
    aget v22, v12, v16

    .line 195
    .line 196
    const/16 v17, 0x1

    .line 197
    .line 198
    aget v23, v12, v17

    .line 199
    .line 200
    const/16 v18, 0x2

    .line 201
    .line 202
    aget v24, v12, v18

    .line 203
    .line 204
    const/16 v20, 0x3

    .line 205
    .line 206
    aget v25, v12, v20

    .line 207
    .line 208
    const/16 v26, 0x4

    .line 209
    .line 210
    aget v1, v12, v26

    .line 211
    .line 212
    const/16 v31, 0x5

    .line 213
    .line 214
    aget v7, v12, v31

    .line 215
    .line 216
    sparse-switch v15, :sswitch_data_0

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :sswitch_0
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v1, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 224
    .line 225
    .line 226
    move/from16 v22, v1

    .line 227
    .line 228
    move/from16 v24, v22

    .line 229
    .line 230
    move/from16 v23, v7

    .line 231
    .line 232
    move/from16 v25, v23

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :sswitch_1
    const/16 v32, 0x4

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :sswitch_2
    const/16 v32, 0x1

    .line 239
    .line 240
    goto :goto_4

    .line 241
    :sswitch_3
    const/16 v32, 0x6

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :sswitch_4
    const/16 v26, 0x7

    .line 245
    .line 246
    move/from16 v32, v26

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :goto_3
    const/16 v32, 0x2

    .line 250
    .line 251
    :goto_4
    move/from16 v36, v4

    .line 252
    .line 253
    move/from16 v37, v5

    .line 254
    .line 255
    move-object/from16 v33, v9

    .line 256
    .line 257
    move-object/from16 v34, v10

    .line 258
    .line 259
    move/from16 v35, v14

    .line 260
    .line 261
    move/from16 v10, v21

    .line 262
    .line 263
    move/from16 v14, v22

    .line 264
    .line 265
    move/from16 v4, v23

    .line 266
    .line 267
    const/4 v9, 0x0

    .line 268
    :goto_5
    iget-object v5, v3, Ld/a$a;->b:[F

    .line 269
    .line 270
    array-length v8, v5

    .line 271
    if-ge v9, v8, :cond_23

    .line 272
    .line 273
    const/16 v8, 0x41

    .line 274
    .line 275
    if-eq v15, v8, :cond_20

    .line 276
    .line 277
    const/16 v8, 0x43

    .line 278
    .line 279
    if-eq v15, v8, :cond_1f

    .line 280
    .line 281
    const/16 v8, 0x48

    .line 282
    .line 283
    if-eq v15, v8, :cond_1e

    .line 284
    .line 285
    const/16 v8, 0x51

    .line 286
    .line 287
    if-eq v15, v8, :cond_1d

    .line 288
    .line 289
    const/16 v8, 0x56

    .line 290
    .line 291
    if-eq v15, v8, :cond_1c

    .line 292
    .line 293
    const/16 v8, 0x61

    .line 294
    .line 295
    if-eq v15, v8, :cond_19

    .line 296
    .line 297
    const/16 v8, 0x63

    .line 298
    .line 299
    if-eq v15, v8, :cond_18

    .line 300
    .line 301
    const/16 v8, 0x68

    .line 302
    .line 303
    if-eq v15, v8, :cond_17

    .line 304
    .line 305
    const/16 v8, 0x71

    .line 306
    .line 307
    if-eq v15, v8, :cond_16

    .line 308
    .line 309
    const/16 v8, 0x76

    .line 310
    .line 311
    if-eq v15, v8, :cond_15

    .line 312
    .line 313
    const/16 v8, 0x4c

    .line 314
    .line 315
    if-eq v15, v8, :cond_14

    .line 316
    .line 317
    const/16 v8, 0x4d

    .line 318
    .line 319
    if-eq v15, v8, :cond_12

    .line 320
    .line 321
    const/16 v8, 0x53

    .line 322
    .line 323
    move-object/from16 v38, v13

    .line 324
    .line 325
    const/16 v13, 0x73

    .line 326
    .line 327
    const/high16 v27, 0x40000000    # 2.0f

    .line 328
    .line 329
    if-eq v15, v8, :cond_f

    .line 330
    .line 331
    const/16 v8, 0x54

    .line 332
    .line 333
    if-eq v15, v8, :cond_c

    .line 334
    .line 335
    const/16 v8, 0x6c

    .line 336
    .line 337
    if-eq v15, v8, :cond_b

    .line 338
    .line 339
    const/16 v8, 0x6d

    .line 340
    .line 341
    if-eq v15, v8, :cond_9

    .line 342
    .line 343
    if-eq v15, v13, :cond_6

    .line 344
    .line 345
    const/16 v8, 0x74

    .line 346
    .line 347
    if-eq v15, v8, :cond_3

    .line 348
    .line 349
    move/from16 v39, v15

    .line 350
    .line 351
    goto/16 :goto_c

    .line 352
    .line 353
    :cond_3
    const/16 v13, 0x71

    .line 354
    .line 355
    if-eq v10, v13, :cond_5

    .line 356
    .line 357
    if-eq v10, v8, :cond_5

    .line 358
    .line 359
    const/16 v8, 0x51

    .line 360
    .line 361
    if-eq v10, v8, :cond_5

    .line 362
    .line 363
    const/16 v8, 0x54

    .line 364
    .line 365
    if-ne v10, v8, :cond_4

    .line 366
    .line 367
    goto :goto_6

    .line 368
    :cond_4
    const/4 v8, 0x0

    .line 369
    const/4 v10, 0x0

    .line 370
    goto :goto_7

    .line 371
    :cond_5
    :goto_6
    sub-float v8, v14, v24

    .line 372
    .line 373
    sub-float v10, v4, v25

    .line 374
    .line 375
    :goto_7
    aget v13, v5, v9

    .line 376
    .line 377
    add-int/lit8 v21, v9, 0x1

    .line 378
    .line 379
    move/from16 v39, v15

    .line 380
    .line 381
    aget v15, v5, v21

    .line 382
    .line 383
    invoke-virtual {v2, v8, v10, v13, v15}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 384
    .line 385
    .line 386
    add-float/2addr v8, v14

    .line 387
    add-float/2addr v10, v4

    .line 388
    aget v13, v5, v9

    .line 389
    .line 390
    add-float/2addr v14, v13

    .line 391
    aget v5, v5, v21

    .line 392
    .line 393
    add-float/2addr v4, v5

    .line 394
    move/from16 v24, v8

    .line 395
    .line 396
    move/from16 v25, v10

    .line 397
    .line 398
    goto/16 :goto_c

    .line 399
    .line 400
    :cond_6
    move/from16 v39, v15

    .line 401
    .line 402
    const/16 v8, 0x63

    .line 403
    .line 404
    if-eq v10, v8, :cond_8

    .line 405
    .line 406
    if-eq v10, v13, :cond_8

    .line 407
    .line 408
    const/16 v8, 0x43

    .line 409
    .line 410
    if-eq v10, v8, :cond_8

    .line 411
    .line 412
    const/16 v8, 0x53

    .line 413
    .line 414
    if-ne v10, v8, :cond_7

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_7
    const/16 v22, 0x0

    .line 418
    .line 419
    const/16 v23, 0x0

    .line 420
    .line 421
    goto :goto_9

    .line 422
    :cond_8
    :goto_8
    sub-float v8, v14, v24

    .line 423
    .line 424
    sub-float v10, v4, v25

    .line 425
    .line 426
    move/from16 v22, v8

    .line 427
    .line 428
    move/from16 v23, v10

    .line 429
    .line 430
    :goto_9
    aget v24, v5, v9

    .line 431
    .line 432
    add-int/lit8 v8, v9, 0x1

    .line 433
    .line 434
    aget v25, v5, v8

    .line 435
    .line 436
    add-int/lit8 v10, v9, 0x2

    .line 437
    .line 438
    aget v26, v5, v10

    .line 439
    .line 440
    add-int/lit8 v13, v9, 0x3

    .line 441
    .line 442
    aget v27, v5, v13

    .line 443
    .line 444
    move-object/from16 v21, v2

    .line 445
    .line 446
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 447
    .line 448
    .line 449
    aget v15, v5, v9

    .line 450
    .line 451
    add-float v24, v15, v14

    .line 452
    .line 453
    aget v8, v5, v8

    .line 454
    .line 455
    add-float v25, v8, v4

    .line 456
    .line 457
    aget v8, v5, v10

    .line 458
    .line 459
    add-float/2addr v14, v8

    .line 460
    aget v5, v5, v13

    .line 461
    .line 462
    goto/16 :goto_d

    .line 463
    .line 464
    :cond_9
    move/from16 v39, v15

    .line 465
    .line 466
    aget v8, v5, v9

    .line 467
    .line 468
    add-float/2addr v14, v8

    .line 469
    add-int/lit8 v10, v9, 0x1

    .line 470
    .line 471
    aget v5, v5, v10

    .line 472
    .line 473
    add-float/2addr v4, v5

    .line 474
    if-lez v9, :cond_a

    .line 475
    .line 476
    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_c

    .line 480
    .line 481
    :cond_a
    invoke-virtual {v2, v8, v5}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 482
    .line 483
    .line 484
    move v7, v4

    .line 485
    move v1, v14

    .line 486
    goto/16 :goto_a

    .line 487
    .line 488
    :cond_b
    move/from16 v39, v15

    .line 489
    .line 490
    aget v8, v5, v9

    .line 491
    .line 492
    add-int/lit8 v10, v9, 0x1

    .line 493
    .line 494
    aget v13, v5, v10

    .line 495
    .line 496
    invoke-virtual {v2, v8, v13}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 497
    .line 498
    .line 499
    aget v8, v5, v9

    .line 500
    .line 501
    add-float/2addr v14, v8

    .line 502
    aget v5, v5, v10

    .line 503
    .line 504
    goto/16 :goto_d

    .line 505
    .line 506
    :cond_c
    move/from16 v39, v15

    .line 507
    .line 508
    const/16 v8, 0x71

    .line 509
    .line 510
    if-eq v10, v8, :cond_d

    .line 511
    .line 512
    const/16 v8, 0x74

    .line 513
    .line 514
    if-eq v10, v8, :cond_d

    .line 515
    .line 516
    const/16 v8, 0x51

    .line 517
    .line 518
    if-eq v10, v8, :cond_d

    .line 519
    .line 520
    const/16 v8, 0x54

    .line 521
    .line 522
    if-ne v10, v8, :cond_e

    .line 523
    .line 524
    :cond_d
    mul-float v14, v14, v27

    .line 525
    .line 526
    sub-float v14, v14, v24

    .line 527
    .line 528
    mul-float v4, v4, v27

    .line 529
    .line 530
    sub-float v4, v4, v25

    .line 531
    .line 532
    :cond_e
    aget v8, v5, v9

    .line 533
    .line 534
    add-int/lit8 v10, v9, 0x1

    .line 535
    .line 536
    aget v13, v5, v10

    .line 537
    .line 538
    invoke-virtual {v2, v14, v4, v8, v13}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 539
    .line 540
    .line 541
    aget v8, v5, v9

    .line 542
    .line 543
    aget v5, v5, v10

    .line 544
    .line 545
    move-object/from16 v40, v0

    .line 546
    .line 547
    goto/16 :goto_12

    .line 548
    .line 549
    :cond_f
    move/from16 v39, v15

    .line 550
    .line 551
    const/16 v8, 0x63

    .line 552
    .line 553
    if-eq v10, v8, :cond_10

    .line 554
    .line 555
    if-eq v10, v13, :cond_10

    .line 556
    .line 557
    const/16 v8, 0x43

    .line 558
    .line 559
    if-eq v10, v8, :cond_10

    .line 560
    .line 561
    const/16 v8, 0x53

    .line 562
    .line 563
    if-ne v10, v8, :cond_11

    .line 564
    .line 565
    :cond_10
    mul-float v14, v14, v27

    .line 566
    .line 567
    sub-float v14, v14, v24

    .line 568
    .line 569
    mul-float v4, v4, v27

    .line 570
    .line 571
    sub-float v4, v4, v25

    .line 572
    .line 573
    :cond_11
    move/from16 v23, v4

    .line 574
    .line 575
    move/from16 v22, v14

    .line 576
    .line 577
    aget v24, v5, v9

    .line 578
    .line 579
    add-int/lit8 v4, v9, 0x1

    .line 580
    .line 581
    aget v25, v5, v4

    .line 582
    .line 583
    add-int/lit8 v8, v9, 0x2

    .line 584
    .line 585
    aget v26, v5, v8

    .line 586
    .line 587
    add-int/lit8 v10, v9, 0x3

    .line 588
    .line 589
    aget v27, v5, v10

    .line 590
    .line 591
    move-object/from16 v21, v2

    .line 592
    .line 593
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 594
    .line 595
    .line 596
    aget v13, v5, v9

    .line 597
    .line 598
    aget v4, v5, v4

    .line 599
    .line 600
    aget v14, v5, v8

    .line 601
    .line 602
    aget v5, v5, v10

    .line 603
    .line 604
    move/from16 v25, v4

    .line 605
    .line 606
    move v4, v5

    .line 607
    move/from16 v24, v13

    .line 608
    .line 609
    goto :goto_c

    .line 610
    :cond_12
    move-object/from16 v38, v13

    .line 611
    .line 612
    move/from16 v39, v15

    .line 613
    .line 614
    aget v4, v5, v9

    .line 615
    .line 616
    add-int/lit8 v8, v9, 0x1

    .line 617
    .line 618
    aget v5, v5, v8

    .line 619
    .line 620
    if-lez v9, :cond_13

    .line 621
    .line 622
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 623
    .line 624
    .line 625
    goto :goto_b

    .line 626
    :cond_13
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 627
    .line 628
    .line 629
    move v1, v4

    .line 630
    move v7, v5

    .line 631
    :goto_a
    move-object/from16 v40, v0

    .line 632
    .line 633
    move v0, v1

    .line 634
    move v4, v7

    .line 635
    goto/16 :goto_11

    .line 636
    .line 637
    :cond_14
    move-object/from16 v38, v13

    .line 638
    .line 639
    move/from16 v39, v15

    .line 640
    .line 641
    aget v4, v5, v9

    .line 642
    .line 643
    add-int/lit8 v8, v9, 0x1

    .line 644
    .line 645
    aget v10, v5, v8

    .line 646
    .line 647
    invoke-virtual {v2, v4, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 648
    .line 649
    .line 650
    aget v4, v5, v9

    .line 651
    .line 652
    aget v5, v5, v8

    .line 653
    .line 654
    :goto_b
    move v14, v4

    .line 655
    move v4, v5

    .line 656
    :goto_c
    move-object/from16 v40, v0

    .line 657
    .line 658
    goto/16 :goto_10

    .line 659
    .line 660
    :cond_15
    move-object/from16 v38, v13

    .line 661
    .line 662
    move/from16 v39, v15

    .line 663
    .line 664
    aget v8, v5, v9

    .line 665
    .line 666
    const/4 v10, 0x0

    .line 667
    invoke-virtual {v2, v10, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 668
    .line 669
    .line 670
    aget v5, v5, v9

    .line 671
    .line 672
    :goto_d
    move-object/from16 v40, v0

    .line 673
    .line 674
    goto :goto_f

    .line 675
    :cond_16
    move-object/from16 v38, v13

    .line 676
    .line 677
    move/from16 v39, v15

    .line 678
    .line 679
    aget v8, v5, v9

    .line 680
    .line 681
    add-int/lit8 v10, v9, 0x1

    .line 682
    .line 683
    aget v13, v5, v10

    .line 684
    .line 685
    add-int/lit8 v15, v9, 0x2

    .line 686
    .line 687
    move-object/from16 v40, v0

    .line 688
    .line 689
    aget v0, v5, v15

    .line 690
    .line 691
    add-int/lit8 v21, v9, 0x3

    .line 692
    .line 693
    aget v6, v5, v21

    .line 694
    .line 695
    invoke-virtual {v2, v8, v13, v0, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 696
    .line 697
    .line 698
    aget v0, v5, v9

    .line 699
    .line 700
    add-float/2addr v0, v14

    .line 701
    aget v6, v5, v10

    .line 702
    .line 703
    add-float/2addr v6, v4

    .line 704
    aget v8, v5, v15

    .line 705
    .line 706
    add-float/2addr v14, v8

    .line 707
    aget v5, v5, v21

    .line 708
    .line 709
    goto :goto_e

    .line 710
    :cond_17
    move-object/from16 v40, v0

    .line 711
    .line 712
    move-object/from16 v38, v13

    .line 713
    .line 714
    move/from16 v39, v15

    .line 715
    .line 716
    aget v0, v5, v9

    .line 717
    .line 718
    const/4 v6, 0x0

    .line 719
    invoke-virtual {v2, v0, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 720
    .line 721
    .line 722
    aget v0, v5, v9

    .line 723
    .line 724
    add-float/2addr v0, v14

    .line 725
    move/from16 v41, v1

    .line 726
    .line 727
    move v1, v0

    .line 728
    move/from16 v0, v41

    .line 729
    .line 730
    goto :goto_11

    .line 731
    :cond_18
    move-object/from16 v40, v0

    .line 732
    .line 733
    move-object/from16 v38, v13

    .line 734
    .line 735
    move/from16 v39, v15

    .line 736
    .line 737
    aget v22, v5, v9

    .line 738
    .line 739
    add-int/lit8 v0, v9, 0x1

    .line 740
    .line 741
    aget v23, v5, v0

    .line 742
    .line 743
    add-int/lit8 v0, v9, 0x2

    .line 744
    .line 745
    aget v24, v5, v0

    .line 746
    .line 747
    add-int/lit8 v6, v9, 0x3

    .line 748
    .line 749
    aget v25, v5, v6

    .line 750
    .line 751
    add-int/lit8 v8, v9, 0x4

    .line 752
    .line 753
    aget v26, v5, v8

    .line 754
    .line 755
    add-int/lit8 v10, v9, 0x5

    .line 756
    .line 757
    aget v27, v5, v10

    .line 758
    .line 759
    move-object/from16 v21, v2

    .line 760
    .line 761
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 762
    .line 763
    .line 764
    aget v0, v5, v0

    .line 765
    .line 766
    add-float/2addr v0, v14

    .line 767
    aget v6, v5, v6

    .line 768
    .line 769
    add-float/2addr v6, v4

    .line 770
    aget v8, v5, v8

    .line 771
    .line 772
    add-float/2addr v14, v8

    .line 773
    aget v5, v5, v10

    .line 774
    .line 775
    :goto_e
    move/from16 v24, v0

    .line 776
    .line 777
    move/from16 v25, v6

    .line 778
    .line 779
    :goto_f
    add-float/2addr v4, v5

    .line 780
    :goto_10
    move v0, v1

    .line 781
    move v1, v14

    .line 782
    :goto_11
    move v8, v1

    .line 783
    move v5, v4

    .line 784
    move/from16 v14, v24

    .line 785
    .line 786
    move/from16 v4, v25

    .line 787
    .line 788
    move v1, v0

    .line 789
    :goto_12
    move/from16 v25, v4

    .line 790
    .line 791
    move v4, v5

    .line 792
    move/from16 v24, v14

    .line 793
    .line 794
    move v14, v8

    .line 795
    goto/16 :goto_19

    .line 796
    .line 797
    :cond_19
    move-object/from16 v40, v0

    .line 798
    .line 799
    move-object/from16 v38, v13

    .line 800
    .line 801
    move/from16 v39, v15

    .line 802
    .line 803
    add-int/lit8 v0, v9, 0x5

    .line 804
    .line 805
    aget v6, v5, v0

    .line 806
    .line 807
    add-float v24, v6, v14

    .line 808
    .line 809
    add-int/lit8 v6, v9, 0x6

    .line 810
    .line 811
    aget v8, v5, v6

    .line 812
    .line 813
    add-float v25, v8, v4

    .line 814
    .line 815
    aget v26, v5, v9

    .line 816
    .line 817
    add-int/lit8 v8, v9, 0x1

    .line 818
    .line 819
    aget v27, v5, v8

    .line 820
    .line 821
    add-int/lit8 v8, v9, 0x2

    .line 822
    .line 823
    aget v28, v5, v8

    .line 824
    .line 825
    add-int/lit8 v8, v9, 0x3

    .line 826
    .line 827
    aget v8, v5, v8

    .line 828
    .line 829
    const/4 v10, 0x0

    .line 830
    cmpl-float v8, v8, v10

    .line 831
    .line 832
    if-eqz v8, :cond_1a

    .line 833
    .line 834
    const/16 v29, 0x1

    .line 835
    .line 836
    goto :goto_13

    .line 837
    :cond_1a
    const/16 v29, 0x0

    .line 838
    .line 839
    :goto_13
    add-int/lit8 v8, v9, 0x4

    .line 840
    .line 841
    aget v8, v5, v8

    .line 842
    .line 843
    cmpl-float v8, v8, v10

    .line 844
    .line 845
    if-eqz v8, :cond_1b

    .line 846
    .line 847
    const/16 v30, 0x1

    .line 848
    .line 849
    goto :goto_14

    .line 850
    :cond_1b
    const/16 v30, 0x0

    .line 851
    .line 852
    :goto_14
    move-object/from16 v21, v2

    .line 853
    .line 854
    move/from16 v22, v14

    .line 855
    .line 856
    move/from16 v23, v4

    .line 857
    .line 858
    invoke-static/range {v21 .. v30}, Ld/a$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 859
    .line 860
    .line 861
    aget v0, v5, v0

    .line 862
    .line 863
    add-float/2addr v14, v0

    .line 864
    aget v0, v5, v6

    .line 865
    .line 866
    add-float/2addr v4, v0

    .line 867
    goto/16 :goto_18

    .line 868
    .line 869
    :cond_1c
    move-object/from16 v40, v0

    .line 870
    .line 871
    move-object/from16 v38, v13

    .line 872
    .line 873
    move/from16 v39, v15

    .line 874
    .line 875
    aget v0, v5, v9

    .line 876
    .line 877
    invoke-virtual {v2, v14, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 878
    .line 879
    .line 880
    aget v4, v5, v9

    .line 881
    .line 882
    goto/16 :goto_19

    .line 883
    .line 884
    :cond_1d
    move-object/from16 v40, v0

    .line 885
    .line 886
    move-object/from16 v38, v13

    .line 887
    .line 888
    move/from16 v39, v15

    .line 889
    .line 890
    aget v0, v5, v9

    .line 891
    .line 892
    add-int/lit8 v4, v9, 0x1

    .line 893
    .line 894
    aget v6, v5, v4

    .line 895
    .line 896
    add-int/lit8 v8, v9, 0x2

    .line 897
    .line 898
    aget v10, v5, v8

    .line 899
    .line 900
    add-int/lit8 v13, v9, 0x3

    .line 901
    .line 902
    aget v14, v5, v13

    .line 903
    .line 904
    invoke-virtual {v2, v0, v6, v10, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 905
    .line 906
    .line 907
    aget v0, v5, v9

    .line 908
    .line 909
    aget v4, v5, v4

    .line 910
    .line 911
    aget v6, v5, v8

    .line 912
    .line 913
    aget v5, v5, v13

    .line 914
    .line 915
    move v14, v6

    .line 916
    goto :goto_15

    .line 917
    :cond_1e
    move-object/from16 v40, v0

    .line 918
    .line 919
    move-object/from16 v38, v13

    .line 920
    .line 921
    move/from16 v39, v15

    .line 922
    .line 923
    aget v0, v5, v9

    .line 924
    .line 925
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 926
    .line 927
    .line 928
    aget v14, v5, v9

    .line 929
    .line 930
    goto/16 :goto_19

    .line 931
    .line 932
    :cond_1f
    move-object/from16 v40, v0

    .line 933
    .line 934
    move-object/from16 v38, v13

    .line 935
    .line 936
    move/from16 v39, v15

    .line 937
    .line 938
    aget v22, v5, v9

    .line 939
    .line 940
    add-int/lit8 v0, v9, 0x1

    .line 941
    .line 942
    aget v23, v5, v0

    .line 943
    .line 944
    add-int/lit8 v0, v9, 0x2

    .line 945
    .line 946
    aget v24, v5, v0

    .line 947
    .line 948
    add-int/lit8 v4, v9, 0x3

    .line 949
    .line 950
    aget v25, v5, v4

    .line 951
    .line 952
    add-int/lit8 v6, v9, 0x4

    .line 953
    .line 954
    aget v26, v5, v6

    .line 955
    .line 956
    add-int/lit8 v8, v9, 0x5

    .line 957
    .line 958
    aget v27, v5, v8

    .line 959
    .line 960
    move-object/from16 v21, v2

    .line 961
    .line 962
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 963
    .line 964
    .line 965
    aget v6, v5, v6

    .line 966
    .line 967
    aget v8, v5, v8

    .line 968
    .line 969
    aget v0, v5, v0

    .line 970
    .line 971
    aget v4, v5, v4

    .line 972
    .line 973
    move v14, v6

    .line 974
    move v5, v8

    .line 975
    :goto_15
    move/from16 v24, v0

    .line 976
    .line 977
    move/from16 v25, v4

    .line 978
    .line 979
    move v4, v5

    .line 980
    goto :goto_19

    .line 981
    :cond_20
    move-object/from16 v40, v0

    .line 982
    .line 983
    move-object/from16 v38, v13

    .line 984
    .line 985
    move/from16 v39, v15

    .line 986
    .line 987
    add-int/lit8 v0, v9, 0x5

    .line 988
    .line 989
    aget v24, v5, v0

    .line 990
    .line 991
    add-int/lit8 v6, v9, 0x6

    .line 992
    .line 993
    aget v25, v5, v6

    .line 994
    .line 995
    aget v26, v5, v9

    .line 996
    .line 997
    add-int/lit8 v8, v9, 0x1

    .line 998
    .line 999
    aget v27, v5, v8

    .line 1000
    .line 1001
    add-int/lit8 v8, v9, 0x2

    .line 1002
    .line 1003
    aget v28, v5, v8

    .line 1004
    .line 1005
    add-int/lit8 v8, v9, 0x3

    .line 1006
    .line 1007
    aget v8, v5, v8

    .line 1008
    .line 1009
    const/4 v10, 0x0

    .line 1010
    cmpl-float v8, v8, v10

    .line 1011
    .line 1012
    if-eqz v8, :cond_21

    .line 1013
    .line 1014
    const/16 v29, 0x1

    .line 1015
    .line 1016
    goto :goto_16

    .line 1017
    :cond_21
    const/16 v29, 0x0

    .line 1018
    .line 1019
    :goto_16
    add-int/lit8 v8, v9, 0x4

    .line 1020
    .line 1021
    aget v8, v5, v8

    .line 1022
    .line 1023
    cmpl-float v8, v8, v10

    .line 1024
    .line 1025
    if-eqz v8, :cond_22

    .line 1026
    .line 1027
    const/16 v30, 0x1

    .line 1028
    .line 1029
    goto :goto_17

    .line 1030
    :cond_22
    const/16 v30, 0x0

    .line 1031
    .line 1032
    :goto_17
    move-object/from16 v21, v2

    .line 1033
    .line 1034
    move/from16 v22, v14

    .line 1035
    .line 1036
    move/from16 v23, v4

    .line 1037
    .line 1038
    invoke-static/range {v21 .. v30}, Ld/a$a;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 1039
    .line 1040
    .line 1041
    aget v0, v5, v0

    .line 1042
    .line 1043
    aget v4, v5, v6

    .line 1044
    .line 1045
    move v14, v0

    .line 1046
    :goto_18
    move/from16 v25, v4

    .line 1047
    .line 1048
    move/from16 v24, v14

    .line 1049
    .line 1050
    :goto_19
    add-int v9, v9, v32

    .line 1051
    .line 1052
    move-object/from16 v6, p0

    .line 1053
    .line 1054
    move-object/from16 v8, p3

    .line 1055
    .line 1056
    move-object/from16 v13, v38

    .line 1057
    .line 1058
    move/from16 v10, v39

    .line 1059
    .line 1060
    move v15, v10

    .line 1061
    move-object/from16 v0, v40

    .line 1062
    .line 1063
    goto/16 :goto_5

    .line 1064
    .line 1065
    :cond_23
    move-object/from16 v40, v0

    .line 1066
    .line 1067
    move-object/from16 v38, v13

    .line 1068
    .line 1069
    const/4 v0, 0x0

    .line 1070
    aput v14, v12, v0

    .line 1071
    .line 1072
    const/4 v0, 0x1

    .line 1073
    aput v4, v12, v0

    .line 1074
    .line 1075
    const/4 v0, 0x2

    .line 1076
    aput v24, v12, v0

    .line 1077
    .line 1078
    const/4 v4, 0x3

    .line 1079
    aput v25, v12, v4

    .line 1080
    .line 1081
    const/4 v5, 0x4

    .line 1082
    aput v1, v12, v5

    .line 1083
    .line 1084
    aput v7, v12, v31

    .line 1085
    .line 1086
    add-int/lit8 v11, v11, 0x1

    .line 1087
    .line 1088
    iget-char v1, v3, Ld/a$a;->a:C

    .line 1089
    .line 1090
    move-object/from16 v6, p0

    .line 1091
    .line 1092
    move-object/from16 v7, p1

    .line 1093
    .line 1094
    move-object/from16 v8, p3

    .line 1095
    .line 1096
    move/from16 v21, v1

    .line 1097
    .line 1098
    move-object/from16 v9, v33

    .line 1099
    .line 1100
    move-object/from16 v10, v34

    .line 1101
    .line 1102
    move/from16 v14, v35

    .line 1103
    .line 1104
    move/from16 v4, v36

    .line 1105
    .line 1106
    move/from16 v5, v37

    .line 1107
    .line 1108
    move-object/from16 v0, v40

    .line 1109
    .line 1110
    const/4 v3, 0x0

    .line 1111
    move/from16 v1, p4

    .line 1112
    .line 1113
    goto/16 :goto_2

    .line 1114
    .line 1115
    :cond_24
    move-object/from16 v40, v0

    .line 1116
    .line 1117
    move/from16 v36, v4

    .line 1118
    .line 1119
    move/from16 v37, v5

    .line 1120
    .line 1121
    move-object/from16 v33, v9

    .line 1122
    .line 1123
    move-object/from16 v38, v13

    .line 1124
    .line 1125
    move-object/from16 v0, p0

    .line 1126
    .line 1127
    iget-object v1, v0, Le/d$e;->b:Landroid/graphics/Path;

    .line 1128
    .line 1129
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 1130
    .line 1131
    .line 1132
    move-object/from16 v3, v40

    .line 1133
    .line 1134
    instance-of v4, v3, Le/d$a;

    .line 1135
    .line 1136
    if-eqz v4, :cond_25

    .line 1137
    .line 1138
    move-object/from16 v4, v38

    .line 1139
    .line 1140
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1141
    .line 1142
    .line 1143
    move-object/from16 v5, p3

    .line 1144
    .line 1145
    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1146
    .line 1147
    .line 1148
    move-object v12, v0

    .line 1149
    :goto_1a
    const/4 v8, 0x0

    .line 1150
    goto/16 :goto_20

    .line 1151
    .line 1152
    :cond_25
    move-object/from16 v5, p3

    .line 1153
    .line 1154
    move-object/from16 v4, v38

    .line 1155
    .line 1156
    check-cast v3, Le/d$b;

    .line 1157
    .line 1158
    iget v6, v3, Le/d$b;->j:F

    .line 1159
    .line 1160
    const/4 v7, 0x0

    .line 1161
    cmpl-float v8, v6, v7

    .line 1162
    .line 1163
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1164
    .line 1165
    if-nez v8, :cond_27

    .line 1166
    .line 1167
    iget v8, v3, Le/d$b;->k:F

    .line 1168
    .line 1169
    cmpl-float v8, v8, v7

    .line 1170
    .line 1171
    if-eqz v8, :cond_26

    .line 1172
    .line 1173
    goto :goto_1b

    .line 1174
    :cond_26
    const/4 v8, 0x0

    .line 1175
    goto :goto_1d

    .line 1176
    :cond_27
    :goto_1b
    iget v8, v3, Le/d$b;->l:F

    .line 1177
    .line 1178
    add-float/2addr v6, v8

    .line 1179
    rem-float/2addr v6, v7

    .line 1180
    iget v9, v3, Le/d$b;->k:F

    .line 1181
    .line 1182
    add-float/2addr v9, v8

    .line 1183
    rem-float/2addr v9, v7

    .line 1184
    iget-object v7, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1185
    .line 1186
    if-nez v7, :cond_28

    .line 1187
    .line 1188
    new-instance v7, Landroid/graphics/PathMeasure;

    .line 1189
    .line 1190
    invoke-direct {v7}, Landroid/graphics/PathMeasure;-><init>()V

    .line 1191
    .line 1192
    .line 1193
    iput-object v7, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1194
    .line 1195
    :cond_28
    iget-object v7, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1196
    .line 1197
    const/4 v8, 0x0

    .line 1198
    invoke-virtual {v7, v2, v8}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v7, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1202
    .line 1203
    invoke-virtual {v7}, Landroid/graphics/PathMeasure;->getLength()F

    .line 1204
    .line 1205
    .line 1206
    move-result v7

    .line 1207
    mul-float/2addr v6, v7

    .line 1208
    mul-float/2addr v9, v7

    .line 1209
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1210
    .line 1211
    .line 1212
    cmpl-float v10, v6, v9

    .line 1213
    .line 1214
    if-lez v10, :cond_29

    .line 1215
    .line 1216
    iget-object v10, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1217
    .line 1218
    const/4 v11, 0x1

    .line 1219
    invoke-virtual {v10, v6, v7, v2, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1220
    .line 1221
    .line 1222
    iget-object v6, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1223
    .line 1224
    const/4 v7, 0x0

    .line 1225
    invoke-virtual {v6, v7, v9, v2, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1226
    .line 1227
    .line 1228
    goto :goto_1c

    .line 1229
    :cond_29
    const/4 v7, 0x0

    .line 1230
    const/4 v11, 0x1

    .line 1231
    iget-object v10, v0, Le/d$e;->f:Landroid/graphics/PathMeasure;

    .line 1232
    .line 1233
    invoke-virtual {v10, v6, v9, v2, v11}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    .line 1234
    .line 1235
    .line 1236
    :goto_1c
    invoke-virtual {v2, v7, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 1237
    .line 1238
    .line 1239
    :goto_1d
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 1240
    .line 1241
    .line 1242
    iget v2, v3, Le/d$b;->f:I

    .line 1243
    .line 1244
    const v4, 0xffffff

    .line 1245
    .line 1246
    .line 1247
    const/4 v6, 0x0

    .line 1248
    if-eqz v2, :cond_2c

    .line 1249
    .line 1250
    iget-object v2, v0, Le/d$e;->e:Landroid/graphics/Paint;

    .line 1251
    .line 1252
    if-nez v2, :cond_2a

    .line 1253
    .line 1254
    new-instance v2, Landroid/graphics/Paint;

    .line 1255
    .line 1256
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1257
    .line 1258
    .line 1259
    iput-object v2, v0, Le/d$e;->e:Landroid/graphics/Paint;

    .line 1260
    .line 1261
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 1262
    .line 1263
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v2, v0, Le/d$e;->e:Landroid/graphics/Paint;

    .line 1267
    .line 1268
    const/4 v7, 0x1

    .line 1269
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1270
    .line 1271
    .line 1272
    :cond_2a
    iget-object v2, v0, Le/d$e;->e:Landroid/graphics/Paint;

    .line 1273
    .line 1274
    iget v7, v3, Le/d$b;->f:I

    .line 1275
    .line 1276
    iget v9, v3, Le/d$b;->i:F

    .line 1277
    .line 1278
    sget v10, Le/d;->f:I

    .line 1279
    .line 1280
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 1281
    .line 1282
    .line 1283
    move-result v10

    .line 1284
    and-int/2addr v7, v4

    .line 1285
    int-to-float v10, v10

    .line 1286
    mul-float/2addr v10, v9

    .line 1287
    float-to-int v9, v10

    .line 1288
    shl-int/lit8 v9, v9, 0x18

    .line 1289
    .line 1290
    or-int/2addr v7, v9

    .line 1291
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1295
    .line 1296
    .line 1297
    iget v7, v3, Le/d$b;->h:I

    .line 1298
    .line 1299
    if-nez v7, :cond_2b

    .line 1300
    .line 1301
    sget-object v7, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    .line 1302
    .line 1303
    goto :goto_1e

    .line 1304
    :cond_2b
    sget-object v7, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 1305
    .line 1306
    :goto_1e
    invoke-virtual {v1, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1310
    .line 1311
    .line 1312
    :cond_2c
    iget v2, v3, Le/d$b;->d:I

    .line 1313
    .line 1314
    if-eqz v2, :cond_30

    .line 1315
    .line 1316
    iget-object v2, v0, Le/d$e;->d:Landroid/graphics/Paint;

    .line 1317
    .line 1318
    if-nez v2, :cond_2d

    .line 1319
    .line 1320
    new-instance v2, Landroid/graphics/Paint;

    .line 1321
    .line 1322
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1323
    .line 1324
    .line 1325
    iput-object v2, v0, Le/d$e;->d:Landroid/graphics/Paint;

    .line 1326
    .line 1327
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 1328
    .line 1329
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1330
    .line 1331
    .line 1332
    iget-object v2, v0, Le/d$e;->d:Landroid/graphics/Paint;

    .line 1333
    .line 1334
    const/4 v7, 0x1

    .line 1335
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1336
    .line 1337
    .line 1338
    :cond_2d
    iget-object v2, v0, Le/d$e;->d:Landroid/graphics/Paint;

    .line 1339
    .line 1340
    iget-object v7, v3, Le/d$b;->n:Landroid/graphics/Paint$Join;

    .line 1341
    .line 1342
    if-eqz v7, :cond_2e

    .line 1343
    .line 1344
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1345
    .line 1346
    .line 1347
    :cond_2e
    iget-object v7, v3, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    .line 1348
    .line 1349
    if-eqz v7, :cond_2f

    .line 1350
    .line 1351
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1352
    .line 1353
    .line 1354
    :cond_2f
    iget v7, v3, Le/d$b;->o:F

    .line 1355
    .line 1356
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 1357
    .line 1358
    .line 1359
    iget v7, v3, Le/d$b;->d:I

    .line 1360
    .line 1361
    iget v9, v3, Le/d$b;->g:F

    .line 1362
    .line 1363
    sget v10, Le/d;->f:I

    .line 1364
    .line 1365
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    .line 1366
    .line 1367
    .line 1368
    move-result v10

    .line 1369
    and-int/2addr v4, v7

    .line 1370
    int-to-float v7, v10

    .line 1371
    mul-float/2addr v7, v9

    .line 1372
    float-to-int v7, v7

    .line 1373
    shl-int/lit8 v7, v7, 0x18

    .line 1374
    .line 1375
    or-int/2addr v4, v7

    .line 1376
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1380
    .line 1381
    .line 1382
    mul-float v4, v37, v36

    .line 1383
    .line 1384
    iget v3, v3, Le/d$b;->e:F

    .line 1385
    .line 1386
    mul-float/2addr v3, v4

    .line 1387
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1391
    .line 1392
    .line 1393
    :cond_30
    move-object v12, v0

    .line 1394
    goto :goto_20

    .line 1395
    :cond_31
    :goto_1f
    move-object v0, v6

    .line 1396
    move-object v5, v8

    .line 1397
    move-object/from16 v33, v9

    .line 1398
    .line 1399
    move v8, v10

    .line 1400
    move/from16 v19, v11

    .line 1401
    .line 1402
    :goto_20
    add-int/lit8 v11, v19, 0x1

    .line 1403
    .line 1404
    move-object/from16 v7, p1

    .line 1405
    .line 1406
    move-object v6, v0

    .line 1407
    move v10, v8

    .line 1408
    move-object/from16 v9, v33

    .line 1409
    .line 1410
    move-object v8, v5

    .line 1411
    goto/16 :goto_0

    .line 1412
    .line 1413
    :cond_32
    move-object v0, v6

    .line 1414
    move-object v5, v8

    .line 1415
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Canvas;->restore()V

    .line 1416
    .line 1417
    .line 1418
    return-void

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_4
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
