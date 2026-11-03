.class public final Lg1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final b:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    iput p1, p0, Lg1/d;->a:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_7

    .line 9
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    iput v0, p0, Lg1/d;->b:I

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v1

    .line 26
    :goto_1
    iput v0, p0, Lg1/d;->b:I

    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    if-eqz p2, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move v0, v1

    .line 36
    :goto_2
    iput v0, p0, Lg1/d;->b:I

    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    move v0, v1

    .line 46
    :goto_3
    iput v0, p0, Lg1/d;->b:I

    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v0, v1

    .line 56
    :goto_4
    iput v0, p0, Lg1/d;->b:I

    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    goto :goto_5

    .line 65
    :cond_5
    move v0, v1

    .line 66
    :goto_5
    iput v0, p0, Lg1/d;->b:I

    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_6

    .line 73
    .line 74
    goto :goto_6

    .line 75
    :cond_6
    move v0, v1

    .line 76
    :goto_6
    iput v0, p0, Lg1/d;->b:I

    .line 77
    .line 78
    return-void

    .line 79
    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    if-eqz p2, :cond_7

    .line 83
    .line 84
    goto :goto_8

    .line 85
    :cond_7
    move v0, v1

    .line 86
    :goto_8
    iput v0, p0, Lg1/d;->b:I

    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lc0/d;Lc0/d;)I
    .locals 5

    .line 1
    iget v0, p0, Lg1/d;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget v2, p0, Lg1/d;->b:I

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_11

    .line 11
    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p1, Lc0/d;->a:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p2, Lc0/d;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    mul-int v1, v0, v2

    .line 70
    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 74
    .line 75
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    move v1, v3

    .line 83
    :cond_4
    :goto_1
    return v1

    .line 84
    :pswitch_1
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_7

    .line 89
    .line 90
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_b

    .line 95
    .line 96
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 111
    .line 112
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    goto :goto_3

    .line 119
    :cond_7
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_a

    .line 124
    .line 125
    iget-wide v0, p1, Lc0/d;->d:J

    .line 126
    .line 127
    iget-wide v3, p2, Lc0/d;->d:J

    .line 128
    .line 129
    cmp-long v0, v0, v3

    .line 130
    .line 131
    if-nez v0, :cond_8

    .line 132
    .line 133
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 134
    .line 135
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    goto :goto_3

    .line 142
    :cond_8
    if-lez v0, :cond_9

    .line 143
    .line 144
    move v1, v2

    .line 145
    goto :goto_3

    .line 146
    :cond_9
    neg-int v1, v2

    .line 147
    goto :goto_3

    .line 148
    :cond_a
    :goto_2
    move v1, v3

    .line 149
    :cond_b
    :goto_3
    return v1

    .line 150
    :pswitch_2
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_e

    .line 155
    .line 156
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_12

    .line 161
    .line 162
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_c

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_c
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_d

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_d
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 177
    .line 178
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    goto :goto_5

    .line 185
    :cond_e
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_11

    .line 190
    .line 191
    iget-wide v0, p1, Lc0/d;->d:J

    .line 192
    .line 193
    iget-wide v3, p2, Lc0/d;->d:J

    .line 194
    .line 195
    cmp-long v0, v0, v3

    .line 196
    .line 197
    if-nez v0, :cond_f

    .line 198
    .line 199
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 200
    .line 201
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    goto :goto_5

    .line 208
    :cond_f
    if-lez v0, :cond_10

    .line 209
    .line 210
    move v1, v2

    .line 211
    goto :goto_5

    .line 212
    :cond_10
    neg-int v1, v2

    .line 213
    goto :goto_5

    .line 214
    :cond_11
    :goto_4
    move v1, v3

    .line 215
    :cond_12
    :goto_5
    return v1

    .line 216
    :pswitch_3
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_15

    .line 221
    .line 222
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_17

    .line 227
    .line 228
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_13

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :cond_13
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_14

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_14
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 243
    .line 244
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    goto :goto_6

    .line 251
    :cond_15
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_16

    .line 256
    .line 257
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 258
    .line 259
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result p1

    .line 265
    :goto_6
    mul-int v1, p1, v2

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_16
    :goto_7
    move v1, v3

    .line 269
    :cond_17
    :goto_8
    return v1

    .line 270
    :pswitch_4
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_1a

    .line 275
    .line 276
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_1c

    .line 281
    .line 282
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_18

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :cond_18
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_19

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_19
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 297
    .line 298
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    goto :goto_9

    .line 305
    :cond_1a
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_1b

    .line 310
    .line 311
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 312
    .line 313
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    :goto_9
    mul-int v1, p1, v2

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_1b
    :goto_a
    move v1, v3

    .line 323
    :cond_1c
    :goto_b
    return v1

    .line 324
    :pswitch_5
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_1e

    .line 329
    .line 330
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_22

    .line 335
    .line 336
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 337
    .line 338
    .line 339
    move-result-wide v0

    .line 340
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 341
    .line 342
    .line 343
    move-result-wide v3

    .line 344
    cmp-long v0, v0, v3

    .line 345
    .line 346
    if-nez v0, :cond_1d

    .line 347
    .line 348
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 349
    .line 350
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    goto :goto_d

    .line 357
    :cond_1d
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 358
    .line 359
    .line 360
    move-result-wide v0

    .line 361
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 362
    .line 363
    .line 364
    move-result-wide p1

    .line 365
    cmp-long p1, v0, p1

    .line 366
    .line 367
    if-lez p1, :cond_20

    .line 368
    .line 369
    goto :goto_c

    .line 370
    :cond_1e
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_21

    .line 375
    .line 376
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 377
    .line 378
    .line 379
    move-result-wide v0

    .line 380
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 381
    .line 382
    .line 383
    move-result-wide v3

    .line 384
    cmp-long v0, v0, v3

    .line 385
    .line 386
    if-nez v0, :cond_1f

    .line 387
    .line 388
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 389
    .line 390
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 391
    .line 392
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    goto :goto_d

    .line 397
    :cond_1f
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 398
    .line 399
    .line 400
    move-result-wide v0

    .line 401
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 402
    .line 403
    .line 404
    move-result-wide p1

    .line 405
    cmp-long p1, v0, p1

    .line 406
    .line 407
    if-lez p1, :cond_20

    .line 408
    .line 409
    :goto_c
    move v1, v2

    .line 410
    goto :goto_d

    .line 411
    :cond_20
    neg-int v1, v2

    .line 412
    goto :goto_d

    .line 413
    :cond_21
    move v1, v3

    .line 414
    :cond_22
    :goto_d
    return v1

    .line 415
    :pswitch_6
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    if-eqz v0, :cond_26

    .line 420
    .line 421
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_2a

    .line 426
    .line 427
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-eqz v0, :cond_23

    .line 432
    .line 433
    goto :goto_10

    .line 434
    :cond_23
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_24

    .line 439
    .line 440
    goto :goto_f

    .line 441
    :cond_24
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 442
    .line 443
    .line 444
    move-result-wide v0

    .line 445
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 446
    .line 447
    .line 448
    move-result-wide v3

    .line 449
    cmp-long v0, v0, v3

    .line 450
    .line 451
    if-nez v0, :cond_25

    .line 452
    .line 453
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 454
    .line 455
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    goto :goto_10

    .line 462
    :cond_25
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 463
    .line 464
    .line 465
    move-result-wide v0

    .line 466
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 467
    .line 468
    .line 469
    move-result-wide p1

    .line 470
    cmp-long p1, v0, p1

    .line 471
    .line 472
    if-lez p1, :cond_28

    .line 473
    .line 474
    goto :goto_e

    .line 475
    :cond_26
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_29

    .line 480
    .line 481
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 482
    .line 483
    .line 484
    move-result-wide v0

    .line 485
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 486
    .line 487
    .line 488
    move-result-wide v3

    .line 489
    cmp-long v0, v0, v3

    .line 490
    .line 491
    if-nez v0, :cond_27

    .line 492
    .line 493
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 494
    .line 495
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 496
    .line 497
    invoke-static {p1, p2}, Lb/d;->g(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    goto :goto_10

    .line 502
    :cond_27
    invoke-virtual {p1}, Lc0/d;->b()J

    .line 503
    .line 504
    .line 505
    move-result-wide v0

    .line 506
    invoke-virtual {p2}, Lc0/d;->b()J

    .line 507
    .line 508
    .line 509
    move-result-wide p1

    .line 510
    cmp-long p1, v0, p1

    .line 511
    .line 512
    if-lez p1, :cond_28

    .line 513
    .line 514
    :goto_e
    move v1, v2

    .line 515
    goto :goto_10

    .line 516
    :cond_28
    neg-int v1, v2

    .line 517
    goto :goto_10

    .line 518
    :cond_29
    :goto_f
    move v1, v3

    .line 519
    :cond_2a
    :goto_10
    return v1

    .line 520
    :goto_11
    invoke-virtual {p1}, Lc0/d;->f()Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-eqz v0, :cond_2d

    .line 525
    .line 526
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_2f

    .line 531
    .line 532
    invoke-virtual {p1}, Lc0/d;->g()Z

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    if-eqz v0, :cond_2b

    .line 537
    .line 538
    goto :goto_13

    .line 539
    :cond_2b
    invoke-virtual {p2}, Lc0/d;->g()Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_2c

    .line 544
    .line 545
    goto :goto_12

    .line 546
    :cond_2c
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 547
    .line 548
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 549
    .line 550
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    goto :goto_13

    .line 555
    :cond_2d
    invoke-virtual {p2}, Lc0/d;->f()Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-nez v0, :cond_2e

    .line 560
    .line 561
    iget-object v0, p1, Lc0/d;->a:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static {v0}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    iget-object v1, p2, Lc0/d;->a:Ljava/lang/String;

    .line 568
    .line 569
    invoke-static {v1}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    mul-int v1, v0, v2

    .line 578
    .line 579
    if-nez v1, :cond_2f

    .line 580
    .line 581
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 582
    .line 583
    iget-object p2, p2, Lc0/d;->a:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    goto :goto_13

    .line 590
    :cond_2e
    :goto_12
    move v1, v3

    .line 591
    :cond_2f
    :goto_13
    return v1

    .line 592
    nop

    .line 593
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

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget v0, p0, Lg1/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Lc0/d;

    .line 8
    .line 9
    check-cast p2, Lc0/d;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :pswitch_1
    check-cast p1, Lc0/d;

    .line 17
    .line 18
    check-cast p2, Lc0/d;

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :pswitch_2
    check-cast p1, Lc0/d;

    .line 26
    .line 27
    check-cast p2, Lc0/d;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :pswitch_3
    check-cast p1, Lc0/d;

    .line 35
    .line 36
    check-cast p2, Lc0/d;

    .line 37
    .line 38
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :pswitch_4
    check-cast p1, Lc0/d;

    .line 44
    .line 45
    check-cast p2, Lc0/d;

    .line 46
    .line 47
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    return p1

    .line 52
    :pswitch_5
    check-cast p1, Lc0/d;

    .line 53
    .line 54
    check-cast p2, Lc0/d;

    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1

    .line 61
    :pswitch_6
    check-cast p1, Lc0/d;

    .line 62
    .line 63
    check-cast p2, Lc0/d;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :goto_0
    check-cast p1, Lc0/d;

    .line 71
    .line 72
    check-cast p2, Lc0/d;

    .line 73
    .line 74
    invoke-virtual {p0, p1, p2}, Lg1/d;->a(Lc0/d;Lc0/d;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
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
