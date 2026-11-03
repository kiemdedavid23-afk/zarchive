.class public final Lc/d;
.super Lc/g;
.source "SourceFile"


# instance fields
.field public final N:Lb/e;

.field public O:Lc/f;

.field public P:I

.field public Q:I

.field public R:[Lc/c;

.field public S:[Lc/c;

.field public T:[Lc/c;

.field public U:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lb/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc/d;->N:Lb/e;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lc/d;->P:I

    .line 13
    .line 14
    iput v0, p0, Lc/d;->Q:I

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    new-array v1, v0, [Lc/c;

    .line 18
    .line 19
    iput-object v1, p0, Lc/d;->R:[Lc/c;

    .line 20
    .line 21
    new-array v1, v0, [Lc/c;

    .line 22
    .line 23
    iput-object v1, p0, Lc/d;->S:[Lc/c;

    .line 24
    .line 25
    new-array v0, v0, [Lc/c;

    .line 26
    .line 27
    iput-object v0, p0, Lc/d;->T:[Lc/c;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lc/d;->U:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d;->N:Lb/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb/e;->r()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lc/g;->g()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final s()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v2, v1, Lc/c;->r:I

    .line 4
    .line 5
    iget v3, v1, Lc/c;->s:I

    .line 6
    .line 7
    iget-object v0, v1, Lc/c;->m:Lc/c;

    .line 8
    .line 9
    iget-object v4, v1, Lc/d;->N:Lb/e;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v0, v1, Lc/d;->O:Lc/f;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lc/f;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lc/f;-><init>(Lc/g;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, v1, Lc/d;->O:Lc/f;

    .line 24
    .line 25
    :cond_0
    iget-object v0, v1, Lc/d;->O:Lc/f;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget v6, v1, Lc/c;->r:I

    .line 31
    .line 32
    iput v6, v0, Lc/f;->a:I

    .line 33
    .line 34
    iget v6, v1, Lc/c;->s:I

    .line 35
    .line 36
    iput v6, v0, Lc/f;->b:I

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    iput v6, v0, Lc/f;->c:I

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    iput v6, v0, Lc/f;->d:I

    .line 49
    .line 50
    iget-object v0, v0, Lc/f;->e:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    move v7, v5

    .line 57
    :goto_0
    if-ge v7, v6, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Lc/f$a;

    .line 64
    .line 65
    iget-object v9, v8, Lc/f$a;->a:Lc/b;

    .line 66
    .line 67
    iget-object v9, v9, Lc/b;->b:Lc/b$a;

    .line 68
    .line 69
    invoke-virtual {v1, v9}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    iput-object v9, v8, Lc/f$a;->a:Lc/b;

    .line 74
    .line 75
    if-eqz v9, :cond_1

    .line 76
    .line 77
    iget-object v10, v9, Lc/b;->c:Lc/b;

    .line 78
    .line 79
    iput-object v10, v8, Lc/f$a;->b:Lc/b;

    .line 80
    .line 81
    invoke-virtual {v9}, Lc/b;->b()I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    iput v9, v8, Lc/f$a;->c:I

    .line 86
    .line 87
    iget-object v9, v8, Lc/f$a;->a:Lc/b;

    .line 88
    .line 89
    iget v10, v9, Lc/b;->f:I

    .line 90
    .line 91
    iput v10, v8, Lc/f$a;->d:I

    .line 92
    .line 93
    iget v9, v9, Lc/b;->h:I

    .line 94
    .line 95
    iput v9, v8, Lc/f$a;->e:I

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const/4 v9, 0x0

    .line 99
    iput-object v9, v8, Lc/f$a;->b:Lc/b;

    .line 100
    .line 101
    iput v5, v8, Lc/f$a;->c:I

    .line 102
    .line 103
    const/4 v9, 0x2

    .line 104
    iput v9, v8, Lc/f$a;->d:I

    .line 105
    .line 106
    iput v5, v8, Lc/f$a;->e:I

    .line 107
    .line 108
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_2
    iput v5, v1, Lc/c;->r:I

    .line 112
    .line 113
    iput v5, v1, Lc/c;->s:I

    .line 114
    .line 115
    iget-object v0, v1, Lc/c;->m:Lc/c;

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    instance-of v6, v0, Lc/d;

    .line 120
    .line 121
    if-eqz v6, :cond_3

    .line 122
    .line 123
    check-cast v0, Lc/d;

    .line 124
    .line 125
    :cond_3
    iget-object v0, v1, Lc/c;->l:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    move v7, v5

    .line 132
    :goto_2
    if-ge v7, v6, :cond_4

    .line 133
    .line 134
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Lc/b;

    .line 139
    .line 140
    invoke-virtual {v8}, Lc/b;->c()V

    .line 141
    .line 142
    .line 143
    add-int/lit8 v7, v7, 0x1

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_4
    iget-object v0, v4, Lb/e;->j:Lb/c;

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Lc/g;->h(Lb/c;)V

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    iput v5, v1, Lc/c;->r:I

    .line 153
    .line 154
    iput v5, v1, Lc/c;->s:I

    .line 155
    .line 156
    :goto_3
    iput v5, v1, Lc/d;->P:I

    .line 157
    .line 158
    iput v5, v1, Lc/d;->Q:I

    .line 159
    .line 160
    iget-object v6, v1, Lc/g;->M:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    move v7, v5

    .line 167
    :goto_4
    if-ge v7, v0, :cond_7

    .line 168
    .line 169
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    check-cast v8, Lc/c;

    .line 174
    .line 175
    instance-of v9, v8, Lc/g;

    .line 176
    .line 177
    if-eqz v9, :cond_6

    .line 178
    .line 179
    check-cast v8, Lc/g;

    .line 180
    .line 181
    invoke-virtual {v8}, Lc/g;->s()V

    .line 182
    .line 183
    .line 184
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_7
    const/4 v7, 0x1

    .line 188
    :try_start_0
    invoke-virtual {v4}, Lb/e;->r()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v4}, Lc/d;->u(Lb/e;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-eqz v7, :cond_8

    .line 196
    .line 197
    invoke-virtual {v4}, Lb/e;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    :cond_8
    :goto_5
    if-eqz v7, :cond_9

    .line 206
    .line 207
    invoke-virtual {v1, v4}, Lc/c;->r(Lb/e;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    move v7, v5

    .line 215
    :goto_6
    if-ge v7, v0, :cond_a

    .line 216
    .line 217
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    check-cast v8, Lc/c;

    .line 222
    .line 223
    invoke-virtual {v8, v4}, Lc/c;->r(Lb/e;)V

    .line 224
    .line 225
    .line 226
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_9
    invoke-virtual {v1, v4}, Lc/c;->r(Lb/e;)V

    .line 230
    .line 231
    .line 232
    :cond_a
    iget-object v0, v1, Lc/c;->m:Lc/c;

    .line 233
    .line 234
    if-eqz v0, :cond_c

    .line 235
    .line 236
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    iget-object v3, v1, Lc/d;->O:Lc/f;

    .line 245
    .line 246
    iget v6, v3, Lc/f;->a:I

    .line 247
    .line 248
    iput v6, v1, Lc/c;->r:I

    .line 249
    .line 250
    iget v6, v3, Lc/f;->b:I

    .line 251
    .line 252
    iput v6, v1, Lc/c;->s:I

    .line 253
    .line 254
    iget v6, v3, Lc/f;->c:I

    .line 255
    .line 256
    invoke-virtual {v1, v6}, Lc/c;->p(I)V

    .line 257
    .line 258
    .line 259
    iget v6, v3, Lc/f;->d:I

    .line 260
    .line 261
    invoke-virtual {v1, v6}, Lc/c;->j(I)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v3, Lc/f;->e:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    move v7, v5

    .line 271
    :goto_7
    if-ge v7, v6, :cond_b

    .line 272
    .line 273
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v8

    .line 277
    check-cast v8, Lc/f$a;

    .line 278
    .line 279
    iget-object v9, v8, Lc/f$a;->a:Lc/b;

    .line 280
    .line 281
    iget-object v9, v9, Lc/b;->b:Lc/b$a;

    .line 282
    .line 283
    invoke-virtual {v1, v9}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 284
    .line 285
    .line 286
    move-result-object v10

    .line 287
    iget-object v11, v8, Lc/f$a;->b:Lc/b;

    .line 288
    .line 289
    iget v12, v8, Lc/f$a;->c:I

    .line 290
    .line 291
    iget v14, v8, Lc/f$a;->d:I

    .line 292
    .line 293
    iget v15, v8, Lc/f$a;->e:I

    .line 294
    .line 295
    const/4 v13, -0x1

    .line 296
    const/16 v16, 0x0

    .line 297
    .line 298
    invoke-virtual/range {v10 .. v16}, Lc/b;->a(Lc/b;IIIIZ)Z

    .line 299
    .line 300
    .line 301
    add-int/lit8 v7, v7, 0x1

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_b
    add-int/2addr v0, v5

    .line 305
    add-int/2addr v0, v5

    .line 306
    invoke-virtual {v1, v0}, Lc/c;->p(I)V

    .line 307
    .line 308
    .line 309
    add-int/2addr v2, v5

    .line 310
    add-int/2addr v2, v5

    .line 311
    invoke-virtual {v1, v2}, Lc/c;->j(I)V

    .line 312
    .line 313
    .line 314
    goto :goto_8

    .line 315
    :cond_c
    iput v2, v1, Lc/c;->r:I

    .line 316
    .line 317
    iput v3, v1, Lc/c;->s:I

    .line 318
    .line 319
    :goto_8
    iget-object v0, v4, Lb/e;->j:Lb/c;

    .line 320
    .line 321
    invoke-virtual {v1, v0}, Lc/g;->h(Lb/c;)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v1, Lc/c;->m:Lc/c;

    .line 325
    .line 326
    move-object v2, v1

    .line 327
    :goto_9
    if-eqz v0, :cond_e

    .line 328
    .line 329
    iget-object v3, v0, Lc/c;->m:Lc/c;

    .line 330
    .line 331
    instance-of v4, v0, Lc/d;

    .line 332
    .line 333
    if-eqz v4, :cond_d

    .line 334
    .line 335
    move-object v2, v0

    .line 336
    check-cast v2, Lc/d;

    .line 337
    .line 338
    :cond_d
    move-object v0, v3

    .line 339
    goto :goto_9

    .line 340
    :cond_e
    if-ne v1, v2, :cond_f

    .line 341
    .line 342
    invoke-virtual/range {p0 .. p0}, Lc/g;->q()V

    .line 343
    .line 344
    .line 345
    :cond_f
    return-void
.end method

.method public final t(Lc/c;I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p2, :cond_4

    .line 4
    .line 5
    :goto_0
    iget-object p2, p1, Lc/c;->d:Lc/b;

    .line 6
    .line 7
    iget-object v2, p2, Lc/b;->c:Lc/b;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v2, v2, Lc/b;->a:Lc/c;

    .line 12
    .line 13
    iget-object v3, v2, Lc/c;->f:Lc/b;

    .line 14
    .line 15
    iget-object v3, v3, Lc/b;->c:Lc/b;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    if-ne v3, p2, :cond_0

    .line 20
    .line 21
    if-eq v2, p1, :cond_0

    .line 22
    .line 23
    move-object p1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :goto_1
    iget p2, p0, Lc/d;->P:I

    .line 26
    .line 27
    if-ge v0, p2, :cond_2

    .line 28
    .line 29
    iget-object p2, p0, Lc/d;->T:[Lc/c;

    .line 30
    .line 31
    aget-object p2, p2, v0

    .line 32
    .line 33
    if-ne p2, p1, :cond_1

    .line 34
    .line 35
    goto :goto_4

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    add-int/2addr p2, v1

    .line 40
    iget-object v0, p0, Lc/d;->T:[Lc/c;

    .line 41
    .line 42
    array-length v2, v0

    .line 43
    if-lt p2, v2, :cond_3

    .line 44
    .line 45
    array-length p2, v0

    .line 46
    mul-int/lit8 p2, p2, 0x2

    .line 47
    .line 48
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, [Lc/c;

    .line 53
    .line 54
    iput-object p2, p0, Lc/d;->T:[Lc/c;

    .line 55
    .line 56
    :cond_3
    iget-object p2, p0, Lc/d;->T:[Lc/c;

    .line 57
    .line 58
    iget v0, p0, Lc/d;->P:I

    .line 59
    .line 60
    aput-object p1, p2, v0

    .line 61
    .line 62
    add-int/2addr v0, v1

    .line 63
    iput v0, p0, Lc/d;->P:I

    .line 64
    .line 65
    goto :goto_4

    .line 66
    :cond_4
    if-ne p2, v1, :cond_9

    .line 67
    .line 68
    :goto_2
    iget-object p2, p1, Lc/c;->e:Lc/b;

    .line 69
    .line 70
    iget-object v2, p2, Lc/b;->c:Lc/b;

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    iget-object v2, v2, Lc/b;->a:Lc/c;

    .line 75
    .line 76
    iget-object v3, v2, Lc/c;->g:Lc/b;

    .line 77
    .line 78
    iget-object v3, v3, Lc/b;->c:Lc/b;

    .line 79
    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    if-ne v3, p2, :cond_5

    .line 83
    .line 84
    if-eq v2, p1, :cond_5

    .line 85
    .line 86
    move-object p1, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    :goto_3
    iget p2, p0, Lc/d;->Q:I

    .line 89
    .line 90
    if-ge v0, p2, :cond_7

    .line 91
    .line 92
    iget-object p2, p0, Lc/d;->S:[Lc/c;

    .line 93
    .line 94
    aget-object p2, p2, v0

    .line 95
    .line 96
    if-ne p2, p1, :cond_6

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_7
    add-int/2addr p2, v1

    .line 103
    iget-object v0, p0, Lc/d;->S:[Lc/c;

    .line 104
    .line 105
    array-length v2, v0

    .line 106
    if-lt p2, v2, :cond_8

    .line 107
    .line 108
    array-length p2, v0

    .line 109
    mul-int/lit8 p2, p2, 0x2

    .line 110
    .line 111
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, [Lc/c;

    .line 116
    .line 117
    iput-object p2, p0, Lc/d;->S:[Lc/c;

    .line 118
    .line 119
    :cond_8
    iget-object p2, p0, Lc/d;->S:[Lc/c;

    .line 120
    .line 121
    iget v0, p0, Lc/d;->Q:I

    .line 122
    .line 123
    aput-object p1, p2, v0

    .line 124
    .line 125
    add-int/2addr v0, v1

    .line 126
    iput v0, p0, Lc/d;->Q:I

    .line 127
    .line 128
    :cond_9
    :goto_4
    return-void
.end method

.method public final u(Lb/e;)Z
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lc/c;->a(Lb/e;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lc/g;->M:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-boolean v3, v0, Lc/d;->U:Z

    .line 15
    .line 16
    const/4 v12, 0x3

    .line 17
    const/4 v13, 0x2

    .line 18
    const/4 v14, 0x1

    .line 19
    if-eqz v3, :cond_38

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-boolean v4, v0, Lc/d;->U:Z

    .line 26
    .line 27
    const/4 v5, -0x1

    .line 28
    if-eqz v4, :cond_30

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lc/c;

    .line 38
    .line 39
    iput v5, v6, Lc/c;->b:I

    .line 40
    .line 41
    iput v5, v6, Lc/c;->c:I

    .line 42
    .line 43
    iget v7, v6, Lc/c;->C:I

    .line 44
    .line 45
    if-eq v7, v12, :cond_0

    .line 46
    .line 47
    iget v7, v6, Lc/c;->D:I

    .line 48
    .line 49
    if-ne v7, v12, :cond_1

    .line 50
    .line 51
    :cond_0
    iput v14, v6, Lc/c;->b:I

    .line 52
    .line 53
    iput v14, v6, Lc/c;->c:I

    .line 54
    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v4, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    :goto_1
    if-nez v4, :cond_30

    .line 62
    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v15, 0x0

    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    :goto_2
    if-ge v8, v3, :cond_2d

    .line 68
    .line 69
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v17

    .line 73
    move-object/from16 v11, v17

    .line 74
    .line 75
    check-cast v11, Lc/c;

    .line 76
    .line 77
    iget v10, v11, Lc/c;->b:I

    .line 78
    .line 79
    if-ne v10, v5, :cond_12

    .line 80
    .line 81
    iget v10, v0, Lc/c;->C:I

    .line 82
    .line 83
    if-ne v10, v13, :cond_3

    .line 84
    .line 85
    iput v14, v11, Lc/c;->b:I

    .line 86
    .line 87
    goto/16 :goto_b

    .line 88
    .line 89
    :cond_3
    iget v10, v11, Lc/c;->C:I

    .line 90
    .line 91
    if-ne v10, v12, :cond_4

    .line 92
    .line 93
    iput v14, v11, Lc/c;->b:I

    .line 94
    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :cond_4
    iget-object v10, v11, Lc/c;->d:Lc/b;

    .line 98
    .line 99
    iget-object v5, v10, Lc/b;->c:Lc/b;

    .line 100
    .line 101
    iget-object v14, v11, Lc/c;->f:Lc/b;

    .line 102
    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    iget-object v13, v14, Lc/b;->c:Lc/b;

    .line 106
    .line 107
    if-eqz v13, :cond_7

    .line 108
    .line 109
    iget-object v5, v5, Lc/b;->a:Lc/c;

    .line 110
    .line 111
    if-ne v5, v0, :cond_6

    .line 112
    .line 113
    iget-object v5, v13, Lc/b;->a:Lc/c;

    .line 114
    .line 115
    if-ne v5, v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v10}, Lc/b;->b()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    invoke-virtual {v14}, Lc/b;->b()I

    .line 122
    .line 123
    .line 124
    move-result v13

    .line 125
    move/from16 v20, v4

    .line 126
    .line 127
    iget v4, v0, Lc/c;->C:I

    .line 128
    .line 129
    if-ne v4, v12, :cond_5

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    sub-int/2addr v4, v13

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v11}, Lc/c;->e()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 142
    .line 143
    .line 144
    move-result v21

    .line 145
    sub-int v21, v21, v5

    .line 146
    .line 147
    sub-int v21, v21, v13

    .line 148
    .line 149
    sub-int v4, v21, v4

    .line 150
    .line 151
    int-to-float v4, v4

    .line 152
    iget v13, v11, Lc/c;->A:F

    .line 153
    .line 154
    mul-float/2addr v4, v13

    .line 155
    const/high16 v13, 0x3f000000    # 0.5f

    .line 156
    .line 157
    add-float/2addr v4, v13

    .line 158
    float-to-int v4, v4

    .line 159
    add-int/2addr v5, v4

    .line 160
    invoke-virtual {v11}, Lc/c;->e()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    add-int/2addr v4, v5

    .line 165
    :goto_3
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    iput-object v13, v10, Lc/b;->i:Lb/g;

    .line 170
    .line 171
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    iput-object v13, v14, Lc/b;->i:Lb/g;

    .line 176
    .line 177
    iget-object v10, v10, Lc/b;->i:Lb/g;

    .line 178
    .line 179
    invoke-virtual {v9, v10, v5}, Lb/e;->d(Lb/g;I)V

    .line 180
    .line 181
    .line 182
    iget-object v10, v14, Lc/b;->i:Lb/g;

    .line 183
    .line 184
    invoke-virtual {v9, v10, v4}, Lb/e;->d(Lb/g;I)V

    .line 185
    .line 186
    .line 187
    const/4 v10, 0x2

    .line 188
    iput v10, v11, Lc/c;->b:I

    .line 189
    .line 190
    invoke-virtual {v11, v5, v4}, Lc/c;->k(II)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    move/from16 v20, v4

    .line 195
    .line 196
    const/4 v4, 0x1

    .line 197
    iput v4, v11, Lc/c;->b:I

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_7
    move/from16 v20, v4

    .line 201
    .line 202
    if-eqz v5, :cond_8

    .line 203
    .line 204
    iget-object v4, v5, Lc/b;->a:Lc/c;

    .line 205
    .line 206
    if-ne v4, v0, :cond_8

    .line 207
    .line 208
    invoke-virtual {v10}, Lc/b;->b()I

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    invoke-virtual {v11}, Lc/c;->e()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    add-int/2addr v5, v4

    .line 217
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    iput-object v13, v10, Lc/b;->i:Lb/g;

    .line 222
    .line 223
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    iput-object v13, v14, Lc/b;->i:Lb/g;

    .line 228
    .line 229
    iget-object v10, v10, Lc/b;->i:Lb/g;

    .line 230
    .line 231
    invoke-virtual {v9, v10, v4}, Lb/e;->d(Lb/g;I)V

    .line 232
    .line 233
    .line 234
    iget-object v10, v14, Lc/b;->i:Lb/g;

    .line 235
    .line 236
    invoke-virtual {v9, v10, v5}, Lb/e;->d(Lb/g;I)V

    .line 237
    .line 238
    .line 239
    const/4 v10, 0x2

    .line 240
    iput v10, v11, Lc/c;->b:I

    .line 241
    .line 242
    invoke-virtual {v11, v4, v5}, Lc/c;->k(II)V

    .line 243
    .line 244
    .line 245
    :goto_4
    const/4 v13, 0x2

    .line 246
    goto :goto_5

    .line 247
    :cond_8
    iget-object v4, v14, Lc/b;->c:Lc/b;

    .line 248
    .line 249
    if-eqz v4, :cond_9

    .line 250
    .line 251
    iget-object v13, v4, Lc/b;->a:Lc/c;

    .line 252
    .line 253
    if-ne v13, v0, :cond_9

    .line 254
    .line 255
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 260
    .line 261
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    iput-object v4, v14, Lc/b;->i:Lb/g;

    .line 266
    .line 267
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-virtual {v14}, Lc/b;->b()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    sub-int/2addr v4, v5

    .line 276
    invoke-virtual {v11}, Lc/c;->e()I

    .line 277
    .line 278
    .line 279
    move-result v5

    .line 280
    sub-int v5, v4, v5

    .line 281
    .line 282
    iget-object v10, v10, Lc/b;->i:Lb/g;

    .line 283
    .line 284
    invoke-virtual {v9, v10, v5}, Lb/e;->d(Lb/g;I)V

    .line 285
    .line 286
    .line 287
    iget-object v10, v14, Lc/b;->i:Lb/g;

    .line 288
    .line 289
    invoke-virtual {v9, v10, v4}, Lb/e;->d(Lb/g;I)V

    .line 290
    .line 291
    .line 292
    const/4 v13, 0x2

    .line 293
    iput v13, v11, Lc/c;->b:I

    .line 294
    .line 295
    invoke-virtual {v11, v5, v4}, Lc/c;->k(II)V

    .line 296
    .line 297
    .line 298
    :goto_5
    move v4, v13

    .line 299
    goto/16 :goto_c

    .line 300
    .line 301
    :cond_9
    const/4 v13, 0x2

    .line 302
    if-eqz v5, :cond_a

    .line 303
    .line 304
    iget-object v12, v5, Lc/b;->a:Lc/c;

    .line 305
    .line 306
    iget v12, v12, Lc/c;->b:I

    .line 307
    .line 308
    if-ne v12, v13, :cond_a

    .line 309
    .line 310
    iget-object v4, v5, Lc/b;->i:Lb/g;

    .line 311
    .line 312
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    iput-object v5, v10, Lc/b;->i:Lb/g;

    .line 317
    .line 318
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    iput-object v5, v14, Lc/b;->i:Lb/g;

    .line 323
    .line 324
    iget v4, v4, Lb/g;->d:F

    .line 325
    .line 326
    invoke-virtual {v10}, Lc/b;->b()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    int-to-float v5, v5

    .line 331
    add-float/2addr v4, v5

    .line 332
    const/high16 v5, 0x3f000000    # 0.5f

    .line 333
    .line 334
    add-float/2addr v4, v5

    .line 335
    float-to-int v4, v4

    .line 336
    invoke-virtual {v11}, Lc/c;->e()I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    add-int/2addr v5, v4

    .line 341
    iget-object v10, v10, Lc/b;->i:Lb/g;

    .line 342
    .line 343
    invoke-virtual {v9, v10, v4}, Lb/e;->d(Lb/g;I)V

    .line 344
    .line 345
    .line 346
    iget-object v10, v14, Lc/b;->i:Lb/g;

    .line 347
    .line 348
    invoke-virtual {v9, v10, v5}, Lb/e;->d(Lb/g;I)V

    .line 349
    .line 350
    .line 351
    const/4 v12, 0x2

    .line 352
    iput v12, v11, Lc/c;->b:I

    .line 353
    .line 354
    invoke-virtual {v11, v4, v5}, Lc/c;->k(II)V

    .line 355
    .line 356
    .line 357
    move v4, v12

    .line 358
    goto/16 :goto_c

    .line 359
    .line 360
    :cond_a
    move v12, v13

    .line 361
    if-eqz v4, :cond_c

    .line 362
    .line 363
    iget-object v13, v4, Lc/b;->a:Lc/c;

    .line 364
    .line 365
    iget v13, v13, Lc/c;->b:I

    .line 366
    .line 367
    if-ne v13, v12, :cond_c

    .line 368
    .line 369
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 370
    .line 371
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    iput-object v5, v10, Lc/b;->i:Lb/g;

    .line 376
    .line 377
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    iput-object v5, v14, Lc/b;->i:Lb/g;

    .line 382
    .line 383
    iget v4, v4, Lb/g;->d:F

    .line 384
    .line 385
    invoke-virtual {v14}, Lc/b;->b()I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    int-to-float v5, v5

    .line 390
    sub-float/2addr v4, v5

    .line 391
    const/high16 v5, 0x3f000000    # 0.5f

    .line 392
    .line 393
    add-float/2addr v4, v5

    .line 394
    float-to-int v4, v4

    .line 395
    invoke-virtual {v11}, Lc/c;->e()I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    sub-int v5, v4, v5

    .line 400
    .line 401
    iget-object v10, v10, Lc/b;->i:Lb/g;

    .line 402
    .line 403
    invoke-virtual {v9, v10, v5}, Lb/e;->d(Lb/g;I)V

    .line 404
    .line 405
    .line 406
    iget-object v10, v14, Lc/b;->i:Lb/g;

    .line 407
    .line 408
    invoke-virtual {v9, v10, v4}, Lb/e;->d(Lb/g;I)V

    .line 409
    .line 410
    .line 411
    const/4 v10, 0x2

    .line 412
    iput v10, v11, Lc/c;->b:I

    .line 413
    .line 414
    invoke-virtual {v11, v5, v4}, Lc/c;->k(II)V

    .line 415
    .line 416
    .line 417
    :cond_b
    :goto_6
    const/4 v4, 0x2

    .line 418
    goto/16 :goto_c

    .line 419
    .line 420
    :cond_c
    if-eqz v5, :cond_d

    .line 421
    .line 422
    const/4 v5, 0x1

    .line 423
    goto :goto_7

    .line 424
    :cond_d
    const/4 v5, 0x0

    .line 425
    :goto_7
    if-eqz v4, :cond_e

    .line 426
    .line 427
    const/4 v4, 0x1

    .line 428
    goto :goto_8

    .line 429
    :cond_e
    const/4 v4, 0x0

    .line 430
    :goto_8
    if-nez v5, :cond_b

    .line 431
    .line 432
    if-nez v4, :cond_b

    .line 433
    .line 434
    instance-of v4, v11, Lc/e;

    .line 435
    .line 436
    if-eqz v4, :cond_11

    .line 437
    .line 438
    move-object v4, v11

    .line 439
    check-cast v4, Lc/e;

    .line 440
    .line 441
    iget v5, v4, Lc/e;->Q:I

    .line 442
    .line 443
    const/4 v12, 0x1

    .line 444
    if-ne v5, v12, :cond_b

    .line 445
    .line 446
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    iput-object v5, v10, Lc/b;->i:Lb/g;

    .line 451
    .line 452
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    iput-object v5, v14, Lc/b;->i:Lb/g;

    .line 457
    .line 458
    iget v5, v4, Lc/e;->N:I

    .line 459
    .line 460
    const/4 v12, -0x1

    .line 461
    if-eq v5, v12, :cond_f

    .line 462
    .line 463
    goto :goto_9

    .line 464
    :cond_f
    iget v5, v4, Lc/e;->O:I

    .line 465
    .line 466
    if-eq v5, v12, :cond_10

    .line 467
    .line 468
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    iget v4, v4, Lc/e;->O:I

    .line 473
    .line 474
    sub-int/2addr v5, v4

    .line 475
    :goto_9
    int-to-float v4, v5

    .line 476
    goto :goto_a

    .line 477
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    int-to-float v5, v5

    .line 482
    iget v4, v4, Lc/e;->M:F

    .line 483
    .line 484
    mul-float/2addr v4, v5

    .line 485
    :goto_a
    const/high16 v5, 0x3f000000    # 0.5f

    .line 486
    .line 487
    add-float/2addr v4, v5

    .line 488
    float-to-int v4, v4

    .line 489
    iget-object v5, v10, Lc/b;->i:Lb/g;

    .line 490
    .line 491
    invoke-virtual {v9, v5, v4}, Lb/e;->d(Lb/g;I)V

    .line 492
    .line 493
    .line 494
    iget-object v5, v14, Lc/b;->i:Lb/g;

    .line 495
    .line 496
    invoke-virtual {v9, v5, v4}, Lb/e;->d(Lb/g;I)V

    .line 497
    .line 498
    .line 499
    const/4 v5, 0x2

    .line 500
    iput v5, v11, Lc/c;->b:I

    .line 501
    .line 502
    iput v5, v11, Lc/c;->c:I

    .line 503
    .line 504
    invoke-virtual {v11, v4, v4}, Lc/c;->k(II)V

    .line 505
    .line 506
    .line 507
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    const/4 v5, 0x0

    .line 512
    invoke-virtual {v11, v5, v4}, Lc/c;->n(II)V

    .line 513
    .line 514
    .line 515
    goto :goto_6

    .line 516
    :cond_11
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 521
    .line 522
    invoke-virtual {v9, v14}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 523
    .line 524
    .line 525
    move-result-object v4

    .line 526
    iput-object v4, v14, Lc/b;->i:Lb/g;

    .line 527
    .line 528
    iget v4, v11, Lc/c;->r:I

    .line 529
    .line 530
    invoke-virtual {v11}, Lc/c;->e()I

    .line 531
    .line 532
    .line 533
    move-result v5

    .line 534
    add-int/2addr v5, v4

    .line 535
    iget-object v10, v10, Lc/b;->i:Lb/g;

    .line 536
    .line 537
    invoke-virtual {v9, v10, v4}, Lb/e;->d(Lb/g;I)V

    .line 538
    .line 539
    .line 540
    iget-object v4, v14, Lc/b;->i:Lb/g;

    .line 541
    .line 542
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 543
    .line 544
    .line 545
    const/4 v4, 0x2

    .line 546
    iput v4, v11, Lc/c;->b:I

    .line 547
    .line 548
    goto :goto_c

    .line 549
    :cond_12
    :goto_b
    move/from16 v20, v4

    .line 550
    .line 551
    goto/16 :goto_5

    .line 552
    .line 553
    :goto_c
    iget v5, v11, Lc/c;->c:I

    .line 554
    .line 555
    const/4 v10, -0x1

    .line 556
    if-ne v5, v10, :cond_29

    .line 557
    .line 558
    iget v5, v0, Lc/c;->D:I

    .line 559
    .line 560
    if-ne v5, v4, :cond_13

    .line 561
    .line 562
    const/4 v4, 0x1

    .line 563
    iput v4, v11, Lc/c;->c:I

    .line 564
    .line 565
    goto/16 :goto_13

    .line 566
    .line 567
    :cond_13
    const/4 v4, 0x1

    .line 568
    iget v5, v11, Lc/c;->D:I

    .line 569
    .line 570
    const/4 v10, 0x3

    .line 571
    if-ne v5, v10, :cond_14

    .line 572
    .line 573
    iput v4, v11, Lc/c;->c:I

    .line 574
    .line 575
    goto/16 :goto_13

    .line 576
    .line 577
    :cond_14
    iget-object v4, v11, Lc/c;->e:Lc/b;

    .line 578
    .line 579
    iget-object v5, v4, Lc/b;->c:Lc/b;

    .line 580
    .line 581
    iget-object v10, v11, Lc/c;->h:Lc/b;

    .line 582
    .line 583
    iget-object v12, v11, Lc/c;->g:Lc/b;

    .line 584
    .line 585
    if-eqz v5, :cond_18

    .line 586
    .line 587
    iget-object v13, v12, Lc/b;->c:Lc/b;

    .line 588
    .line 589
    if-eqz v13, :cond_18

    .line 590
    .line 591
    iget-object v5, v5, Lc/b;->a:Lc/c;

    .line 592
    .line 593
    if-ne v5, v0, :cond_17

    .line 594
    .line 595
    iget-object v5, v13, Lc/b;->a:Lc/c;

    .line 596
    .line 597
    if-ne v5, v0, :cond_17

    .line 598
    .line 599
    invoke-virtual {v4}, Lc/b;->b()I

    .line 600
    .line 601
    .line 602
    move-result v5

    .line 603
    invoke-virtual {v12}, Lc/b;->b()I

    .line 604
    .line 605
    .line 606
    move-result v13

    .line 607
    iget v14, v0, Lc/c;->D:I

    .line 608
    .line 609
    move/from16 v22, v2

    .line 610
    .line 611
    const/4 v2, 0x3

    .line 612
    if-ne v14, v2, :cond_15

    .line 613
    .line 614
    invoke-virtual {v11}, Lc/c;->d()I

    .line 615
    .line 616
    .line 617
    move-result v2

    .line 618
    goto :goto_d

    .line 619
    :cond_15
    invoke-virtual {v11}, Lc/c;->d()I

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 624
    .line 625
    .line 626
    move-result v14

    .line 627
    sub-int/2addr v14, v5

    .line 628
    sub-int/2addr v14, v13

    .line 629
    sub-int/2addr v14, v2

    .line 630
    int-to-float v2, v5

    .line 631
    int-to-float v5, v14

    .line 632
    iget v13, v11, Lc/c;->B:F

    .line 633
    .line 634
    mul-float/2addr v5, v13

    .line 635
    add-float/2addr v5, v2

    .line 636
    const/high16 v2, 0x3f000000    # 0.5f

    .line 637
    .line 638
    add-float/2addr v5, v2

    .line 639
    float-to-int v5, v5

    .line 640
    invoke-virtual {v11}, Lc/c;->d()I

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    :goto_d
    add-int/2addr v2, v5

    .line 645
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 646
    .line 647
    .line 648
    move-result-object v13

    .line 649
    iput-object v13, v4, Lc/b;->i:Lb/g;

    .line 650
    .line 651
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 652
    .line 653
    .line 654
    move-result-object v13

    .line 655
    iput-object v13, v12, Lc/b;->i:Lb/g;

    .line 656
    .line 657
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 658
    .line 659
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 660
    .line 661
    .line 662
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 663
    .line 664
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 665
    .line 666
    .line 667
    iget v4, v11, Lc/c;->z:I

    .line 668
    .line 669
    if-lez v4, :cond_16

    .line 670
    .line 671
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 672
    .line 673
    .line 674
    move-result-object v4

    .line 675
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 676
    .line 677
    iget v10, v11, Lc/c;->z:I

    .line 678
    .line 679
    add-int/2addr v10, v5

    .line 680
    invoke-virtual {v9, v4, v10}, Lb/e;->d(Lb/g;I)V

    .line 681
    .line 682
    .line 683
    :cond_16
    const/4 v4, 0x2

    .line 684
    iput v4, v11, Lc/c;->c:I

    .line 685
    .line 686
    invoke-virtual {v11, v5, v2}, Lc/c;->n(II)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_14

    .line 690
    .line 691
    :cond_17
    move/from16 v22, v2

    .line 692
    .line 693
    const/4 v2, 0x1

    .line 694
    iput v2, v11, Lc/c;->c:I

    .line 695
    .line 696
    goto/16 :goto_14

    .line 697
    .line 698
    :cond_18
    move/from16 v22, v2

    .line 699
    .line 700
    if-eqz v5, :cond_1a

    .line 701
    .line 702
    iget-object v2, v5, Lc/b;->a:Lc/c;

    .line 703
    .line 704
    if-ne v2, v0, :cond_1a

    .line 705
    .line 706
    invoke-virtual {v4}, Lc/b;->b()I

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    invoke-virtual {v11}, Lc/c;->d()I

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    add-int/2addr v5, v2

    .line 715
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 716
    .line 717
    .line 718
    move-result-object v13

    .line 719
    iput-object v13, v4, Lc/b;->i:Lb/g;

    .line 720
    .line 721
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 722
    .line 723
    .line 724
    move-result-object v13

    .line 725
    iput-object v13, v12, Lc/b;->i:Lb/g;

    .line 726
    .line 727
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 728
    .line 729
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 730
    .line 731
    .line 732
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 733
    .line 734
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 735
    .line 736
    .line 737
    iget v4, v11, Lc/c;->z:I

    .line 738
    .line 739
    if-lez v4, :cond_19

    .line 740
    .line 741
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 746
    .line 747
    iget v10, v11, Lc/c;->z:I

    .line 748
    .line 749
    add-int/2addr v10, v2

    .line 750
    invoke-virtual {v9, v4, v10}, Lb/e;->d(Lb/g;I)V

    .line 751
    .line 752
    .line 753
    :cond_19
    const/4 v4, 0x2

    .line 754
    iput v4, v11, Lc/c;->c:I

    .line 755
    .line 756
    invoke-virtual {v11, v2, v5}, Lc/c;->n(II)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_14

    .line 760
    .line 761
    :cond_1a
    iget-object v2, v12, Lc/b;->c:Lc/b;

    .line 762
    .line 763
    if-eqz v2, :cond_1c

    .line 764
    .line 765
    iget-object v13, v2, Lc/b;->a:Lc/c;

    .line 766
    .line 767
    if-ne v13, v0, :cond_1c

    .line 768
    .line 769
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    iput-object v2, v4, Lc/b;->i:Lb/g;

    .line 774
    .line 775
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    iput-object v2, v12, Lc/b;->i:Lb/g;

    .line 780
    .line 781
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    invoke-virtual {v12}, Lc/b;->b()I

    .line 786
    .line 787
    .line 788
    move-result v5

    .line 789
    sub-int/2addr v2, v5

    .line 790
    invoke-virtual {v11}, Lc/c;->d()I

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    sub-int v5, v2, v5

    .line 795
    .line 796
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 797
    .line 798
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 799
    .line 800
    .line 801
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 802
    .line 803
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 804
    .line 805
    .line 806
    iget v4, v11, Lc/c;->z:I

    .line 807
    .line 808
    if-lez v4, :cond_1b

    .line 809
    .line 810
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 815
    .line 816
    iget v10, v11, Lc/c;->z:I

    .line 817
    .line 818
    add-int/2addr v10, v5

    .line 819
    invoke-virtual {v9, v4, v10}, Lb/e;->d(Lb/g;I)V

    .line 820
    .line 821
    .line 822
    :cond_1b
    const/4 v13, 0x2

    .line 823
    iput v13, v11, Lc/c;->c:I

    .line 824
    .line 825
    invoke-virtual {v11, v5, v2}, Lc/c;->n(II)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_14

    .line 829
    .line 830
    :cond_1c
    const/4 v13, 0x2

    .line 831
    if-eqz v5, :cond_1e

    .line 832
    .line 833
    iget-object v14, v5, Lc/b;->a:Lc/c;

    .line 834
    .line 835
    iget v14, v14, Lc/c;->c:I

    .line 836
    .line 837
    if-ne v14, v13, :cond_1e

    .line 838
    .line 839
    iget-object v2, v5, Lc/b;->i:Lb/g;

    .line 840
    .line 841
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 842
    .line 843
    .line 844
    move-result-object v5

    .line 845
    iput-object v5, v4, Lc/b;->i:Lb/g;

    .line 846
    .line 847
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    iput-object v5, v12, Lc/b;->i:Lb/g;

    .line 852
    .line 853
    iget v2, v2, Lb/g;->d:F

    .line 854
    .line 855
    invoke-virtual {v4}, Lc/b;->b()I

    .line 856
    .line 857
    .line 858
    move-result v5

    .line 859
    int-to-float v5, v5

    .line 860
    add-float/2addr v2, v5

    .line 861
    const/high16 v5, 0x3f000000    # 0.5f

    .line 862
    .line 863
    add-float/2addr v2, v5

    .line 864
    float-to-int v2, v2

    .line 865
    invoke-virtual {v11}, Lc/c;->d()I

    .line 866
    .line 867
    .line 868
    move-result v5

    .line 869
    add-int/2addr v5, v2

    .line 870
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 871
    .line 872
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 873
    .line 874
    .line 875
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 876
    .line 877
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 878
    .line 879
    .line 880
    iget v4, v11, Lc/c;->z:I

    .line 881
    .line 882
    if-lez v4, :cond_1d

    .line 883
    .line 884
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 885
    .line 886
    .line 887
    move-result-object v4

    .line 888
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 889
    .line 890
    iget v10, v11, Lc/c;->z:I

    .line 891
    .line 892
    add-int/2addr v10, v2

    .line 893
    invoke-virtual {v9, v4, v10}, Lb/e;->d(Lb/g;I)V

    .line 894
    .line 895
    .line 896
    :cond_1d
    const/4 v13, 0x2

    .line 897
    iput v13, v11, Lc/c;->c:I

    .line 898
    .line 899
    invoke-virtual {v11, v2, v5}, Lc/c;->n(II)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_14

    .line 903
    .line 904
    :cond_1e
    if-eqz v2, :cond_20

    .line 905
    .line 906
    iget-object v14, v2, Lc/b;->a:Lc/c;

    .line 907
    .line 908
    iget v14, v14, Lc/c;->c:I

    .line 909
    .line 910
    if-ne v14, v13, :cond_20

    .line 911
    .line 912
    iget-object v2, v2, Lc/b;->i:Lb/g;

    .line 913
    .line 914
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 915
    .line 916
    .line 917
    move-result-object v5

    .line 918
    iput-object v5, v4, Lc/b;->i:Lb/g;

    .line 919
    .line 920
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 921
    .line 922
    .line 923
    move-result-object v5

    .line 924
    iput-object v5, v12, Lc/b;->i:Lb/g;

    .line 925
    .line 926
    iget v2, v2, Lb/g;->d:F

    .line 927
    .line 928
    invoke-virtual {v12}, Lc/b;->b()I

    .line 929
    .line 930
    .line 931
    move-result v5

    .line 932
    int-to-float v5, v5

    .line 933
    sub-float/2addr v2, v5

    .line 934
    const/high16 v5, 0x3f000000    # 0.5f

    .line 935
    .line 936
    add-float/2addr v2, v5

    .line 937
    float-to-int v2, v2

    .line 938
    invoke-virtual {v11}, Lc/c;->d()I

    .line 939
    .line 940
    .line 941
    move-result v5

    .line 942
    sub-int v5, v2, v5

    .line 943
    .line 944
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 945
    .line 946
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 947
    .line 948
    .line 949
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 950
    .line 951
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 952
    .line 953
    .line 954
    iget v4, v11, Lc/c;->z:I

    .line 955
    .line 956
    if-lez v4, :cond_1f

    .line 957
    .line 958
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 959
    .line 960
    .line 961
    move-result-object v4

    .line 962
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 963
    .line 964
    iget v10, v11, Lc/c;->z:I

    .line 965
    .line 966
    add-int/2addr v10, v5

    .line 967
    invoke-virtual {v9, v4, v10}, Lb/e;->d(Lb/g;I)V

    .line 968
    .line 969
    .line 970
    :cond_1f
    const/4 v13, 0x2

    .line 971
    iput v13, v11, Lc/c;->c:I

    .line 972
    .line 973
    invoke-virtual {v11, v5, v2}, Lc/c;->n(II)V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_14

    .line 977
    .line 978
    :cond_20
    iget-object v14, v10, Lc/b;->c:Lc/b;

    .line 979
    .line 980
    if-eqz v14, :cond_21

    .line 981
    .line 982
    iget-object v0, v14, Lc/b;->a:Lc/c;

    .line 983
    .line 984
    iget v0, v0, Lc/c;->c:I

    .line 985
    .line 986
    if-ne v0, v13, :cond_21

    .line 987
    .line 988
    iget-object v0, v14, Lc/b;->i:Lb/g;

    .line 989
    .line 990
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    iput-object v2, v4, Lc/b;->i:Lb/g;

    .line 995
    .line 996
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    iput-object v2, v12, Lc/b;->i:Lb/g;

    .line 1001
    .line 1002
    iget v0, v0, Lb/g;->d:F

    .line 1003
    .line 1004
    iget v2, v11, Lc/c;->z:I

    .line 1005
    .line 1006
    int-to-float v2, v2

    .line 1007
    sub-float/2addr v0, v2

    .line 1008
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1009
    .line 1010
    add-float/2addr v0, v2

    .line 1011
    float-to-int v0, v0

    .line 1012
    invoke-virtual {v11}, Lc/c;->d()I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    add-int/2addr v2, v0

    .line 1017
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 1018
    .line 1019
    invoke-virtual {v9, v4, v0}, Lb/e;->d(Lb/g;I)V

    .line 1020
    .line 1021
    .line 1022
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 1023
    .line 1024
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    iput-object v4, v10, Lc/b;->i:Lb/g;

    .line 1032
    .line 1033
    iget v5, v11, Lc/c;->z:I

    .line 1034
    .line 1035
    add-int/2addr v5, v0

    .line 1036
    invoke-virtual {v9, v4, v5}, Lb/e;->d(Lb/g;I)V

    .line 1037
    .line 1038
    .line 1039
    const/4 v4, 0x2

    .line 1040
    iput v4, v11, Lc/c;->c:I

    .line 1041
    .line 1042
    invoke-virtual {v11, v0, v2}, Lc/c;->n(II)V

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_14

    .line 1046
    .line 1047
    :cond_21
    if-eqz v14, :cond_22

    .line 1048
    .line 1049
    const/4 v0, 0x1

    .line 1050
    goto :goto_e

    .line 1051
    :cond_22
    const/4 v0, 0x0

    .line 1052
    :goto_e
    if-eqz v5, :cond_23

    .line 1053
    .line 1054
    const/4 v5, 0x1

    .line 1055
    goto :goto_f

    .line 1056
    :cond_23
    const/4 v5, 0x0

    .line 1057
    :goto_f
    if-eqz v2, :cond_24

    .line 1058
    .line 1059
    const/4 v2, 0x1

    .line 1060
    goto :goto_10

    .line 1061
    :cond_24
    const/4 v2, 0x0

    .line 1062
    :goto_10
    if-nez v0, :cond_2a

    .line 1063
    .line 1064
    if-nez v5, :cond_2a

    .line 1065
    .line 1066
    if-nez v2, :cond_2a

    .line 1067
    .line 1068
    instance-of v0, v11, Lc/e;

    .line 1069
    .line 1070
    if-eqz v0, :cond_27

    .line 1071
    .line 1072
    move-object v0, v11

    .line 1073
    check-cast v0, Lc/e;

    .line 1074
    .line 1075
    iget v2, v0, Lc/e;->Q:I

    .line 1076
    .line 1077
    if-nez v2, :cond_2a

    .line 1078
    .line 1079
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v2

    .line 1083
    iput-object v2, v4, Lc/b;->i:Lb/g;

    .line 1084
    .line 1085
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v2

    .line 1089
    iput-object v2, v12, Lc/b;->i:Lb/g;

    .line 1090
    .line 1091
    iget v2, v0, Lc/e;->N:I

    .line 1092
    .line 1093
    const/4 v5, -0x1

    .line 1094
    if-eq v2, v5, :cond_25

    .line 1095
    .line 1096
    goto :goto_11

    .line 1097
    :cond_25
    iget v2, v0, Lc/e;->O:I

    .line 1098
    .line 1099
    if-eq v2, v5, :cond_26

    .line 1100
    .line 1101
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 1102
    .line 1103
    .line 1104
    move-result v2

    .line 1105
    iget v0, v0, Lc/e;->O:I

    .line 1106
    .line 1107
    sub-int/2addr v2, v0

    .line 1108
    :goto_11
    int-to-float v0, v2

    .line 1109
    goto :goto_12

    .line 1110
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lc/c;->d()I

    .line 1111
    .line 1112
    .line 1113
    move-result v2

    .line 1114
    int-to-float v2, v2

    .line 1115
    iget v0, v0, Lc/e;->M:F

    .line 1116
    .line 1117
    mul-float/2addr v0, v2

    .line 1118
    :goto_12
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1119
    .line 1120
    add-float/2addr v0, v2

    .line 1121
    float-to-int v0, v0

    .line 1122
    iget-object v2, v4, Lc/b;->i:Lb/g;

    .line 1123
    .line 1124
    invoke-virtual {v9, v2, v0}, Lb/e;->d(Lb/g;I)V

    .line 1125
    .line 1126
    .line 1127
    iget-object v2, v12, Lc/b;->i:Lb/g;

    .line 1128
    .line 1129
    invoke-virtual {v9, v2, v0}, Lb/e;->d(Lb/g;I)V

    .line 1130
    .line 1131
    .line 1132
    const/4 v2, 0x2

    .line 1133
    iput v2, v11, Lc/c;->c:I

    .line 1134
    .line 1135
    iput v2, v11, Lc/c;->b:I

    .line 1136
    .line 1137
    invoke-virtual {v11, v0, v0}, Lc/c;->n(II)V

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual/range {p0 .. p0}, Lc/c;->e()I

    .line 1141
    .line 1142
    .line 1143
    move-result v0

    .line 1144
    const/4 v2, 0x0

    .line 1145
    invoke-virtual {v11, v2, v0}, Lc/c;->k(II)V

    .line 1146
    .line 1147
    .line 1148
    goto :goto_14

    .line 1149
    :cond_27
    invoke-virtual {v9, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    iput-object v0, v4, Lc/b;->i:Lb/g;

    .line 1154
    .line 1155
    invoke-virtual {v9, v12}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    iput-object v0, v12, Lc/b;->i:Lb/g;

    .line 1160
    .line 1161
    iget v0, v11, Lc/c;->s:I

    .line 1162
    .line 1163
    invoke-virtual {v11}, Lc/c;->d()I

    .line 1164
    .line 1165
    .line 1166
    move-result v2

    .line 1167
    add-int/2addr v2, v0

    .line 1168
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 1169
    .line 1170
    invoke-virtual {v9, v4, v0}, Lb/e;->d(Lb/g;I)V

    .line 1171
    .line 1172
    .line 1173
    iget-object v4, v12, Lc/b;->i:Lb/g;

    .line 1174
    .line 1175
    invoke-virtual {v9, v4, v2}, Lb/e;->d(Lb/g;I)V

    .line 1176
    .line 1177
    .line 1178
    iget v2, v11, Lc/c;->z:I

    .line 1179
    .line 1180
    if-lez v2, :cond_28

    .line 1181
    .line 1182
    invoke-virtual {v9, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    iput-object v2, v10, Lc/b;->i:Lb/g;

    .line 1187
    .line 1188
    iget v4, v11, Lc/c;->z:I

    .line 1189
    .line 1190
    add-int/2addr v0, v4

    .line 1191
    invoke-virtual {v9, v2, v0}, Lb/e;->d(Lb/g;I)V

    .line 1192
    .line 1193
    .line 1194
    :cond_28
    const/4 v0, 0x2

    .line 1195
    iput v0, v11, Lc/c;->c:I

    .line 1196
    .line 1197
    goto :goto_14

    .line 1198
    :cond_29
    :goto_13
    move/from16 v22, v2

    .line 1199
    .line 1200
    :cond_2a
    :goto_14
    iget v0, v11, Lc/c;->c:I

    .line 1201
    .line 1202
    const/4 v2, -0x1

    .line 1203
    if-ne v0, v2, :cond_2b

    .line 1204
    .line 1205
    add-int/lit8 v15, v15, 0x1

    .line 1206
    .line 1207
    :cond_2b
    iget v0, v11, Lc/c;->b:I

    .line 1208
    .line 1209
    if-ne v0, v2, :cond_2c

    .line 1210
    .line 1211
    move/from16 v11, v16

    .line 1212
    .line 1213
    add-int/lit8 v16, v11, 0x1

    .line 1214
    .line 1215
    goto :goto_15

    .line 1216
    :cond_2c
    move/from16 v11, v16

    .line 1217
    .line 1218
    :goto_15
    add-int/lit8 v8, v8, 0x1

    .line 1219
    .line 1220
    const/4 v5, -0x1

    .line 1221
    const/4 v12, 0x3

    .line 1222
    const/4 v13, 0x2

    .line 1223
    move-object/from16 v0, p0

    .line 1224
    .line 1225
    move/from16 v4, v20

    .line 1226
    .line 1227
    move/from16 v2, v22

    .line 1228
    .line 1229
    const/4 v14, 0x1

    .line 1230
    goto/16 :goto_2

    .line 1231
    .line 1232
    :cond_2d
    move/from16 v22, v2

    .line 1233
    .line 1234
    move/from16 v20, v4

    .line 1235
    .line 1236
    move/from16 v11, v16

    .line 1237
    .line 1238
    if-nez v15, :cond_2e

    .line 1239
    .line 1240
    if-nez v11, :cond_2e

    .line 1241
    .line 1242
    goto :goto_16

    .line 1243
    :cond_2e
    if-ne v6, v15, :cond_2f

    .line 1244
    .line 1245
    if-ne v7, v11, :cond_2f

    .line 1246
    .line 1247
    :goto_16
    const/4 v4, 0x1

    .line 1248
    goto :goto_17

    .line 1249
    :cond_2f
    move/from16 v4, v20

    .line 1250
    .line 1251
    :goto_17
    const/4 v5, -0x1

    .line 1252
    const/4 v12, 0x3

    .line 1253
    const/4 v13, 0x2

    .line 1254
    move-object/from16 v0, p0

    .line 1255
    .line 1256
    move v7, v11

    .line 1257
    move v6, v15

    .line 1258
    move/from16 v2, v22

    .line 1259
    .line 1260
    const/4 v14, 0x1

    .line 1261
    goto/16 :goto_1

    .line 1262
    .line 1263
    :cond_30
    move/from16 v22, v2

    .line 1264
    .line 1265
    const/4 v0, 0x0

    .line 1266
    const/4 v2, 0x0

    .line 1267
    const/4 v4, 0x0

    .line 1268
    :goto_18
    if-ge v0, v3, :cond_36

    .line 1269
    .line 1270
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v5

    .line 1274
    check-cast v5, Lc/c;

    .line 1275
    .line 1276
    move-object/from16 v10, p0

    .line 1277
    .line 1278
    iget-boolean v6, v10, Lc/d;->U:Z

    .line 1279
    .line 1280
    if-nez v6, :cond_31

    .line 1281
    .line 1282
    const/4 v6, 0x1

    .line 1283
    iput v6, v5, Lc/c;->b:I

    .line 1284
    .line 1285
    iput v6, v5, Lc/c;->c:I

    .line 1286
    .line 1287
    const/4 v8, -0x1

    .line 1288
    goto :goto_19

    .line 1289
    :cond_31
    const/4 v6, 0x1

    .line 1290
    iget v7, v5, Lc/c;->b:I

    .line 1291
    .line 1292
    const/4 v8, -0x1

    .line 1293
    if-eq v7, v6, :cond_32

    .line 1294
    .line 1295
    if-ne v7, v8, :cond_33

    .line 1296
    .line 1297
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 1298
    .line 1299
    :cond_33
    iget v5, v5, Lc/c;->c:I

    .line 1300
    .line 1301
    if-eq v5, v6, :cond_34

    .line 1302
    .line 1303
    if-ne v5, v8, :cond_35

    .line 1304
    .line 1305
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 1306
    .line 1307
    :cond_35
    :goto_19
    add-int/lit8 v0, v0, 0x1

    .line 1308
    .line 1309
    goto :goto_18

    .line 1310
    :cond_36
    move-object/from16 v10, p0

    .line 1311
    .line 1312
    iget-boolean v0, v10, Lc/d;->U:Z

    .line 1313
    .line 1314
    if-eqz v0, :cond_37

    .line 1315
    .line 1316
    if-nez v2, :cond_37

    .line 1317
    .line 1318
    if-nez v4, :cond_37

    .line 1319
    .line 1320
    const/4 v0, 0x1

    .line 1321
    goto :goto_1a

    .line 1322
    :cond_37
    const/4 v0, 0x0

    .line 1323
    :goto_1a
    if-eqz v0, :cond_39

    .line 1324
    .line 1325
    const/4 v0, 0x0

    .line 1326
    return v0

    .line 1327
    :cond_38
    move-object v10, v0

    .line 1328
    move/from16 v22, v2

    .line 1329
    .line 1330
    :cond_39
    move/from16 v2, v22

    .line 1331
    .line 1332
    const/4 v0, 0x0

    .line 1333
    :goto_1b
    if-ge v0, v2, :cond_3f

    .line 1334
    .line 1335
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v3

    .line 1339
    check-cast v3, Lc/c;

    .line 1340
    .line 1341
    instance-of v4, v3, Lc/d;

    .line 1342
    .line 1343
    if-eqz v4, :cond_3d

    .line 1344
    .line 1345
    iget v4, v3, Lc/c;->C:I

    .line 1346
    .line 1347
    iget v5, v3, Lc/c;->D:I

    .line 1348
    .line 1349
    const/4 v6, 0x2

    .line 1350
    const/4 v7, 0x1

    .line 1351
    if-ne v4, v6, :cond_3a

    .line 1352
    .line 1353
    invoke-virtual {v3, v7}, Lc/c;->l(I)V

    .line 1354
    .line 1355
    .line 1356
    :cond_3a
    if-ne v5, v6, :cond_3b

    .line 1357
    .line 1358
    invoke-virtual {v3, v7}, Lc/c;->o(I)V

    .line 1359
    .line 1360
    .line 1361
    :cond_3b
    invoke-virtual {v3, v9}, Lc/c;->a(Lb/e;)V

    .line 1362
    .line 1363
    .line 1364
    if-ne v4, v6, :cond_3c

    .line 1365
    .line 1366
    invoke-virtual {v3, v4}, Lc/c;->l(I)V

    .line 1367
    .line 1368
    .line 1369
    :cond_3c
    if-ne v5, v6, :cond_3e

    .line 1370
    .line 1371
    invoke-virtual {v3, v5}, Lc/c;->o(I)V

    .line 1372
    .line 1373
    .line 1374
    goto :goto_1c

    .line 1375
    :cond_3d
    invoke-virtual {v3, v9}, Lc/c;->a(Lb/e;)V

    .line 1376
    .line 1377
    .line 1378
    :cond_3e
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    .line 1379
    .line 1380
    goto :goto_1b

    .line 1381
    :cond_3f
    iget v0, v10, Lc/d;->P:I

    .line 1382
    .line 1383
    if-lez v0, :cond_7c

    .line 1384
    .line 1385
    const/4 v0, 0x0

    .line 1386
    :goto_1d
    iget v1, v10, Lc/d;->P:I

    .line 1387
    .line 1388
    if-ge v0, v1, :cond_7c

    .line 1389
    .line 1390
    iget-object v1, v10, Lc/d;->T:[Lc/c;

    .line 1391
    .line 1392
    aget-object v11, v1, v0

    .line 1393
    .line 1394
    const/4 v1, 0x0

    .line 1395
    invoke-virtual {v10, v11, v1}, Lc/d;->w(Lc/c;I)I

    .line 1396
    .line 1397
    .line 1398
    move-result v2

    .line 1399
    iget v1, v11, Lc/c;->G:I

    .line 1400
    .line 1401
    const/4 v12, 0x2

    .line 1402
    if-ne v1, v12, :cond_40

    .line 1403
    .line 1404
    const/4 v13, 0x1

    .line 1405
    goto :goto_1e

    .line 1406
    :cond_40
    const/4 v13, 0x0

    .line 1407
    :goto_1e
    iget v3, v10, Lc/c;->C:I

    .line 1408
    .line 1409
    if-ne v3, v12, :cond_41

    .line 1410
    .line 1411
    const/4 v3, 0x1

    .line 1412
    goto :goto_1f

    .line 1413
    :cond_41
    const/4 v3, 0x0

    .line 1414
    :goto_1f
    iget-boolean v4, v11, Lc/c;->I:Z

    .line 1415
    .line 1416
    const/4 v5, 0x0

    .line 1417
    const/4 v14, 0x0

    .line 1418
    if-eqz v4, :cond_55

    .line 1419
    .line 1420
    if-nez v13, :cond_55

    .line 1421
    .line 1422
    if-nez v3, :cond_55

    .line 1423
    .line 1424
    if-nez v1, :cond_55

    .line 1425
    .line 1426
    move v7, v5

    .line 1427
    move-object v4, v11

    .line 1428
    move-object v6, v14

    .line 1429
    const/4 v1, 0x0

    .line 1430
    const/4 v3, 0x0

    .line 1431
    :goto_20
    if-eqz v4, :cond_48

    .line 1432
    .line 1433
    add-int/lit8 v1, v1, 0x1

    .line 1434
    .line 1435
    iget v6, v4, Lc/c;->C:I

    .line 1436
    .line 1437
    iget-object v8, v4, Lc/c;->f:Lc/b;

    .line 1438
    .line 1439
    const/4 v13, 0x3

    .line 1440
    if-eq v6, v13, :cond_44

    .line 1441
    .line 1442
    invoke-virtual {v4}, Lc/c;->e()I

    .line 1443
    .line 1444
    .line 1445
    move-result v6

    .line 1446
    add-int/2addr v6, v3

    .line 1447
    iget-object v3, v4, Lc/c;->d:Lc/b;

    .line 1448
    .line 1449
    iget-object v13, v3, Lc/b;->c:Lc/b;

    .line 1450
    .line 1451
    if-eqz v13, :cond_42

    .line 1452
    .line 1453
    invoke-virtual {v3}, Lc/b;->b()I

    .line 1454
    .line 1455
    .line 1456
    move-result v3

    .line 1457
    goto :goto_21

    .line 1458
    :cond_42
    const/4 v3, 0x0

    .line 1459
    :goto_21
    add-int/2addr v6, v3

    .line 1460
    iget-object v3, v8, Lc/b;->c:Lc/b;

    .line 1461
    .line 1462
    if-eqz v3, :cond_43

    .line 1463
    .line 1464
    invoke-virtual {v8}, Lc/b;->b()I

    .line 1465
    .line 1466
    .line 1467
    move-result v3

    .line 1468
    goto :goto_22

    .line 1469
    :cond_43
    const/4 v3, 0x0

    .line 1470
    :goto_22
    add-int/2addr v3, v6

    .line 1471
    goto :goto_23

    .line 1472
    :cond_44
    iget v6, v4, Lc/c;->K:F

    .line 1473
    .line 1474
    add-float/2addr v7, v6

    .line 1475
    :goto_23
    iget-object v6, v8, Lc/b;->c:Lc/b;

    .line 1476
    .line 1477
    if-eqz v6, :cond_45

    .line 1478
    .line 1479
    iget-object v6, v6, Lc/b;->a:Lc/c;

    .line 1480
    .line 1481
    goto :goto_24

    .line 1482
    :cond_45
    move-object v6, v14

    .line 1483
    :goto_24
    if-eqz v6, :cond_47

    .line 1484
    .line 1485
    iget-object v8, v6, Lc/c;->d:Lc/b;

    .line 1486
    .line 1487
    iget-object v8, v8, Lc/b;->c:Lc/b;

    .line 1488
    .line 1489
    if-eqz v8, :cond_46

    .line 1490
    .line 1491
    iget-object v8, v8, Lc/b;->a:Lc/c;

    .line 1492
    .line 1493
    if-eq v8, v4, :cond_47

    .line 1494
    .line 1495
    :cond_46
    move-object v6, v4

    .line 1496
    move-object v4, v14

    .line 1497
    goto :goto_20

    .line 1498
    :cond_47
    move-object/from16 v34, v6

    .line 1499
    .line 1500
    move-object v6, v4

    .line 1501
    move-object/from16 v4, v34

    .line 1502
    .line 1503
    goto :goto_20

    .line 1504
    :cond_48
    if-eqz v6, :cond_4b

    .line 1505
    .line 1506
    iget-object v4, v6, Lc/c;->f:Lc/b;

    .line 1507
    .line 1508
    iget-object v4, v4, Lc/b;->c:Lc/b;

    .line 1509
    .line 1510
    if-eqz v4, :cond_49

    .line 1511
    .line 1512
    iget-object v6, v4, Lc/b;->a:Lc/c;

    .line 1513
    .line 1514
    iget v6, v6, Lc/c;->r:I

    .line 1515
    .line 1516
    goto :goto_25

    .line 1517
    :cond_49
    const/4 v6, 0x0

    .line 1518
    :goto_25
    if-eqz v4, :cond_4a

    .line 1519
    .line 1520
    iget-object v4, v4, Lc/b;->a:Lc/c;

    .line 1521
    .line 1522
    if-ne v4, v10, :cond_4a

    .line 1523
    .line 1524
    iget v4, v10, Lc/c;->r:I

    .line 1525
    .line 1526
    iget v6, v10, Lc/c;->n:I

    .line 1527
    .line 1528
    add-int/2addr v4, v6

    .line 1529
    goto :goto_26

    .line 1530
    :cond_4a
    move v4, v6

    .line 1531
    :goto_26
    move/from16 v18, v4

    .line 1532
    .line 1533
    const/4 v4, 0x0

    .line 1534
    goto :goto_27

    .line 1535
    :cond_4b
    const/4 v4, 0x0

    .line 1536
    const/16 v18, 0x0

    .line 1537
    .line 1538
    :goto_27
    add-int/lit8 v6, v18, 0x0

    .line 1539
    .line 1540
    int-to-float v4, v6

    .line 1541
    int-to-float v3, v3

    .line 1542
    sub-float/2addr v4, v3

    .line 1543
    add-int/lit8 v1, v1, 0x1

    .line 1544
    .line 1545
    int-to-float v1, v1

    .line 1546
    div-float v1, v4, v1

    .line 1547
    .line 1548
    if-nez v2, :cond_4c

    .line 1549
    .line 1550
    move v3, v1

    .line 1551
    goto :goto_28

    .line 1552
    :cond_4c
    int-to-float v1, v2

    .line 1553
    div-float v1, v4, v1

    .line 1554
    .line 1555
    move v3, v1

    .line 1556
    move v1, v5

    .line 1557
    :goto_28
    if-eqz v11, :cond_5a

    .line 1558
    .line 1559
    iget-object v6, v11, Lc/c;->d:Lc/b;

    .line 1560
    .line 1561
    iget-object v8, v6, Lc/b;->c:Lc/b;

    .line 1562
    .line 1563
    if-eqz v8, :cond_4d

    .line 1564
    .line 1565
    invoke-virtual {v6}, Lc/b;->b()I

    .line 1566
    .line 1567
    .line 1568
    move-result v8

    .line 1569
    goto :goto_29

    .line 1570
    :cond_4d
    const/4 v8, 0x0

    .line 1571
    :goto_29
    iget-object v13, v11, Lc/c;->f:Lc/b;

    .line 1572
    .line 1573
    iget-object v15, v13, Lc/b;->c:Lc/b;

    .line 1574
    .line 1575
    if-eqz v15, :cond_4e

    .line 1576
    .line 1577
    invoke-virtual {v13}, Lc/b;->b()I

    .line 1578
    .line 1579
    .line 1580
    move-result v15

    .line 1581
    goto :goto_2a

    .line 1582
    :cond_4e
    const/4 v15, 0x0

    .line 1583
    :goto_2a
    int-to-float v8, v8

    .line 1584
    add-float/2addr v1, v8

    .line 1585
    iget-object v6, v6, Lc/b;->i:Lb/g;

    .line 1586
    .line 1587
    const/high16 v16, 0x3f000000    # 0.5f

    .line 1588
    .line 1589
    add-float v12, v1, v16

    .line 1590
    .line 1591
    float-to-int v12, v12

    .line 1592
    invoke-virtual {v9, v6, v12}, Lb/e;->d(Lb/g;I)V

    .line 1593
    .line 1594
    .line 1595
    iget v6, v11, Lc/c;->C:I

    .line 1596
    .line 1597
    const/4 v12, 0x3

    .line 1598
    if-ne v6, v12, :cond_50

    .line 1599
    .line 1600
    cmpl-float v6, v7, v5

    .line 1601
    .line 1602
    if-nez v6, :cond_4f

    .line 1603
    .line 1604
    sub-float v6, v3, v8

    .line 1605
    .line 1606
    goto :goto_2b

    .line 1607
    :cond_4f
    iget v6, v11, Lc/c;->K:F

    .line 1608
    .line 1609
    mul-float/2addr v6, v4

    .line 1610
    div-float/2addr v6, v7

    .line 1611
    sub-float/2addr v6, v8

    .line 1612
    :goto_2b
    int-to-float v8, v15

    .line 1613
    sub-float/2addr v6, v8

    .line 1614
    goto :goto_2c

    .line 1615
    :cond_50
    invoke-virtual {v11}, Lc/c;->e()I

    .line 1616
    .line 1617
    .line 1618
    move-result v6

    .line 1619
    int-to-float v6, v6

    .line 1620
    :goto_2c
    add-float/2addr v6, v1

    .line 1621
    iget-object v1, v13, Lc/b;->i:Lb/g;

    .line 1622
    .line 1623
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1624
    .line 1625
    add-float v8, v6, v12

    .line 1626
    .line 1627
    float-to-int v8, v8

    .line 1628
    invoke-virtual {v9, v1, v8}, Lb/e;->d(Lb/g;I)V

    .line 1629
    .line 1630
    .line 1631
    if-nez v2, :cond_51

    .line 1632
    .line 1633
    add-float/2addr v6, v3

    .line 1634
    :cond_51
    int-to-float v1, v15

    .line 1635
    add-float/2addr v1, v6

    .line 1636
    iget-object v6, v13, Lc/b;->c:Lc/b;

    .line 1637
    .line 1638
    if-eqz v6, :cond_52

    .line 1639
    .line 1640
    iget-object v6, v6, Lc/b;->a:Lc/c;

    .line 1641
    .line 1642
    goto :goto_2d

    .line 1643
    :cond_52
    move-object v6, v14

    .line 1644
    :goto_2d
    if-eqz v6, :cond_53

    .line 1645
    .line 1646
    iget-object v8, v6, Lc/c;->d:Lc/b;

    .line 1647
    .line 1648
    iget-object v8, v8, Lc/b;->c:Lc/b;

    .line 1649
    .line 1650
    if-eqz v8, :cond_53

    .line 1651
    .line 1652
    iget-object v8, v8, Lc/b;->a:Lc/c;

    .line 1653
    .line 1654
    if-eq v8, v11, :cond_53

    .line 1655
    .line 1656
    move-object v6, v14

    .line 1657
    :cond_53
    if-ne v6, v10, :cond_54

    .line 1658
    .line 1659
    move-object v11, v14

    .line 1660
    goto :goto_2e

    .line 1661
    :cond_54
    move-object v11, v6

    .line 1662
    :goto_2e
    const/4 v12, 0x2

    .line 1663
    goto :goto_28

    .line 1664
    :cond_55
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1665
    .line 1666
    if-eqz v2, :cond_68

    .line 1667
    .line 1668
    if-eqz v13, :cond_56

    .line 1669
    .line 1670
    goto/16 :goto_37

    .line 1671
    .line 1672
    :cond_56
    :goto_2f
    if-eqz v14, :cond_62

    .line 1673
    .line 1674
    iget-object v1, v11, Lc/c;->d:Lc/b;

    .line 1675
    .line 1676
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 1677
    .line 1678
    if-eqz v1, :cond_57

    .line 1679
    .line 1680
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 1681
    .line 1682
    if-ne v1, v14, :cond_57

    .line 1683
    .line 1684
    goto/16 :goto_33

    .line 1685
    .line 1686
    :cond_57
    const/4 v1, 0x1

    .line 1687
    if-ne v2, v1, :cond_5b

    .line 1688
    .line 1689
    iget-object v1, v10, Lc/d;->R:[Lc/c;

    .line 1690
    .line 1691
    const/4 v2, 0x0

    .line 1692
    aget-object v1, v1, v2

    .line 1693
    .line 1694
    iget-object v2, v1, Lc/c;->d:Lc/b;

    .line 1695
    .line 1696
    invoke-virtual {v2}, Lc/b;->b()I

    .line 1697
    .line 1698
    .line 1699
    move-result v2

    .line 1700
    iget-object v3, v1, Lc/c;->d:Lc/b;

    .line 1701
    .line 1702
    iget-object v4, v3, Lc/b;->c:Lc/b;

    .line 1703
    .line 1704
    if-eqz v4, :cond_58

    .line 1705
    .line 1706
    invoke-virtual {v4}, Lc/b;->b()I

    .line 1707
    .line 1708
    .line 1709
    move-result v4

    .line 1710
    add-int/2addr v2, v4

    .line 1711
    :cond_58
    iget-object v4, v3, Lc/b;->i:Lb/g;

    .line 1712
    .line 1713
    iget-object v3, v3, Lc/b;->c:Lc/b;

    .line 1714
    .line 1715
    iget-object v3, v3, Lc/b;->i:Lb/g;

    .line 1716
    .line 1717
    const/4 v5, 0x0

    .line 1718
    invoke-virtual {v9, v4, v3, v2, v5}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 1719
    .line 1720
    .line 1721
    iget-object v1, v1, Lc/c;->f:Lc/b;

    .line 1722
    .line 1723
    invoke-virtual {v1}, Lc/b;->b()I

    .line 1724
    .line 1725
    .line 1726
    move-result v2

    .line 1727
    iget-object v3, v1, Lc/b;->c:Lc/b;

    .line 1728
    .line 1729
    if-eqz v3, :cond_59

    .line 1730
    .line 1731
    invoke-virtual {v3}, Lc/b;->b()I

    .line 1732
    .line 1733
    .line 1734
    move-result v3

    .line 1735
    add-int/2addr v2, v3

    .line 1736
    :cond_59
    iget-object v3, v1, Lc/b;->i:Lb/g;

    .line 1737
    .line 1738
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 1739
    .line 1740
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 1741
    .line 1742
    neg-int v2, v2

    .line 1743
    const/4 v4, 0x0

    .line 1744
    invoke-virtual {v9, v3, v1, v2, v4}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 1745
    .line 1746
    .line 1747
    :cond_5a
    move/from16 v19, v0

    .line 1748
    .line 1749
    goto/16 :goto_32

    .line 1750
    .line 1751
    :cond_5b
    const/4 v1, 0x0

    .line 1752
    :goto_30
    add-int/lit8 v3, v2, -0x1

    .line 1753
    .line 1754
    if-ge v1, v3, :cond_5a

    .line 1755
    .line 1756
    iget-object v4, v10, Lc/d;->R:[Lc/c;

    .line 1757
    .line 1758
    aget-object v6, v4, v1

    .line 1759
    .line 1760
    add-int/lit8 v1, v1, 0x1

    .line 1761
    .line 1762
    aget-object v4, v4, v1

    .line 1763
    .line 1764
    iget-object v7, v6, Lc/c;->d:Lc/b;

    .line 1765
    .line 1766
    iget-object v8, v7, Lc/b;->i:Lb/g;

    .line 1767
    .line 1768
    iget-object v11, v6, Lc/c;->f:Lc/b;

    .line 1769
    .line 1770
    iget-object v13, v11, Lc/b;->i:Lb/g;

    .line 1771
    .line 1772
    iget-object v14, v4, Lc/c;->d:Lc/b;

    .line 1773
    .line 1774
    iget-object v14, v14, Lc/b;->i:Lb/g;

    .line 1775
    .line 1776
    iget-object v15, v4, Lc/c;->f:Lc/b;

    .line 1777
    .line 1778
    iget-object v12, v15, Lc/b;->i:Lb/g;

    .line 1779
    .line 1780
    invoke-virtual {v7}, Lc/b;->b()I

    .line 1781
    .line 1782
    .line 1783
    move-result v7

    .line 1784
    move/from16 v16, v2

    .line 1785
    .line 1786
    iget-object v2, v6, Lc/c;->d:Lc/b;

    .line 1787
    .line 1788
    iget-object v10, v2, Lc/b;->c:Lc/b;

    .line 1789
    .line 1790
    if-eqz v10, :cond_5c

    .line 1791
    .line 1792
    iget-object v10, v10, Lc/b;->a:Lc/c;

    .line 1793
    .line 1794
    iget-object v10, v10, Lc/c;->f:Lc/b;

    .line 1795
    .line 1796
    move/from16 v19, v0

    .line 1797
    .line 1798
    iget-object v0, v10, Lc/b;->c:Lc/b;

    .line 1799
    .line 1800
    if-eqz v0, :cond_5d

    .line 1801
    .line 1802
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 1803
    .line 1804
    if-ne v0, v6, :cond_5d

    .line 1805
    .line 1806
    invoke-virtual {v10}, Lc/b;->b()I

    .line 1807
    .line 1808
    .line 1809
    move-result v0

    .line 1810
    add-int/2addr v7, v0

    .line 1811
    goto :goto_31

    .line 1812
    :cond_5c
    move/from16 v19, v0

    .line 1813
    .line 1814
    :cond_5d
    :goto_31
    iget-object v0, v2, Lc/b;->c:Lc/b;

    .line 1815
    .line 1816
    iget-object v0, v0, Lc/b;->i:Lb/g;

    .line 1817
    .line 1818
    const/4 v10, 0x1

    .line 1819
    invoke-virtual {v9, v8, v0, v7, v10}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 1820
    .line 1821
    .line 1822
    invoke-virtual {v11}, Lc/b;->b()I

    .line 1823
    .line 1824
    .line 1825
    move-result v0

    .line 1826
    iget-object v7, v11, Lc/b;->c:Lc/b;

    .line 1827
    .line 1828
    if-eqz v7, :cond_5e

    .line 1829
    .line 1830
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 1831
    .line 1832
    iget-object v7, v7, Lc/c;->d:Lc/b;

    .line 1833
    .line 1834
    iget-object v10, v7, Lc/b;->c:Lc/b;

    .line 1835
    .line 1836
    if-eqz v10, :cond_5e

    .line 1837
    .line 1838
    iget-object v10, v10, Lc/b;->a:Lc/c;

    .line 1839
    .line 1840
    if-ne v10, v6, :cond_5e

    .line 1841
    .line 1842
    invoke-virtual {v7}, Lc/b;->b()I

    .line 1843
    .line 1844
    .line 1845
    move-result v7

    .line 1846
    add-int/2addr v0, v7

    .line 1847
    :cond_5e
    iget-object v7, v11, Lc/b;->c:Lc/b;

    .line 1848
    .line 1849
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 1850
    .line 1851
    neg-int v0, v0

    .line 1852
    const/4 v10, 0x1

    .line 1853
    invoke-virtual {v9, v13, v7, v0, v10}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 1854
    .line 1855
    .line 1856
    iget-object v0, v4, Lc/c;->d:Lc/b;

    .line 1857
    .line 1858
    if-ne v1, v3, :cond_61

    .line 1859
    .line 1860
    invoke-virtual {v0}, Lc/b;->b()I

    .line 1861
    .line 1862
    .line 1863
    move-result v3

    .line 1864
    iget-object v7, v0, Lc/b;->c:Lc/b;

    .line 1865
    .line 1866
    if-eqz v7, :cond_5f

    .line 1867
    .line 1868
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 1869
    .line 1870
    iget-object v7, v7, Lc/c;->f:Lc/b;

    .line 1871
    .line 1872
    iget-object v10, v7, Lc/b;->c:Lc/b;

    .line 1873
    .line 1874
    if-eqz v10, :cond_5f

    .line 1875
    .line 1876
    iget-object v10, v10, Lc/b;->a:Lc/c;

    .line 1877
    .line 1878
    if-ne v10, v4, :cond_5f

    .line 1879
    .line 1880
    invoke-virtual {v7}, Lc/b;->b()I

    .line 1881
    .line 1882
    .line 1883
    move-result v7

    .line 1884
    add-int/2addr v3, v7

    .line 1885
    :cond_5f
    iget-object v7, v0, Lc/b;->c:Lc/b;

    .line 1886
    .line 1887
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 1888
    .line 1889
    const/4 v10, 0x1

    .line 1890
    invoke-virtual {v9, v14, v7, v3, v10}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 1891
    .line 1892
    .line 1893
    invoke-virtual {v15}, Lc/b;->b()I

    .line 1894
    .line 1895
    .line 1896
    move-result v3

    .line 1897
    iget-object v7, v15, Lc/b;->c:Lc/b;

    .line 1898
    .line 1899
    if-eqz v7, :cond_60

    .line 1900
    .line 1901
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 1902
    .line 1903
    iget-object v7, v7, Lc/c;->d:Lc/b;

    .line 1904
    .line 1905
    iget-object v10, v7, Lc/b;->c:Lc/b;

    .line 1906
    .line 1907
    if-eqz v10, :cond_60

    .line 1908
    .line 1909
    iget-object v10, v10, Lc/b;->a:Lc/c;

    .line 1910
    .line 1911
    if-ne v10, v4, :cond_60

    .line 1912
    .line 1913
    invoke-virtual {v7}, Lc/b;->b()I

    .line 1914
    .line 1915
    .line 1916
    move-result v7

    .line 1917
    add-int/2addr v3, v7

    .line 1918
    :cond_60
    iget-object v7, v15, Lc/b;->c:Lc/b;

    .line 1919
    .line 1920
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 1921
    .line 1922
    neg-int v3, v3

    .line 1923
    const/4 v10, 0x1

    .line 1924
    invoke-virtual {v9, v12, v7, v3, v10}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 1925
    .line 1926
    .line 1927
    :cond_61
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v3

    .line 1931
    iget v6, v6, Lc/c;->K:F

    .line 1932
    .line 1933
    iget v4, v4, Lc/c;->K:F

    .line 1934
    .line 1935
    invoke-virtual {v2}, Lc/b;->b()I

    .line 1936
    .line 1937
    .line 1938
    move-result v27

    .line 1939
    invoke-virtual {v11}, Lc/b;->b()I

    .line 1940
    .line 1941
    .line 1942
    move-result v29

    .line 1943
    invoke-virtual {v0}, Lc/b;->b()I

    .line 1944
    .line 1945
    .line 1946
    move-result v31

    .line 1947
    invoke-virtual {v15}, Lc/b;->b()I

    .line 1948
    .line 1949
    .line 1950
    move-result v33

    .line 1951
    move-object/from16 v22, v3

    .line 1952
    .line 1953
    move/from16 v23, v6

    .line 1954
    .line 1955
    move/from16 v24, v5

    .line 1956
    .line 1957
    move/from16 v25, v4

    .line 1958
    .line 1959
    move-object/from16 v26, v8

    .line 1960
    .line 1961
    move-object/from16 v28, v13

    .line 1962
    .line 1963
    move-object/from16 v30, v14

    .line 1964
    .line 1965
    move-object/from16 v32, v12

    .line 1966
    .line 1967
    invoke-virtual/range {v22 .. v33}, Lb/b;->b(FFFLb/g;ILb/g;ILb/g;ILb/g;I)V

    .line 1968
    .line 1969
    .line 1970
    invoke-virtual {v9, v3}, Lb/e;->c(Lb/b;)V

    .line 1971
    .line 1972
    .line 1973
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1974
    .line 1975
    move-object/from16 v10, p0

    .line 1976
    .line 1977
    move/from16 v2, v16

    .line 1978
    .line 1979
    move/from16 v0, v19

    .line 1980
    .line 1981
    goto/16 :goto_30

    .line 1982
    .line 1983
    :goto_32
    const/4 v0, 0x3

    .line 1984
    const/4 v15, 0x0

    .line 1985
    goto/16 :goto_49

    .line 1986
    .line 1987
    :cond_62
    :goto_33
    move/from16 v19, v0

    .line 1988
    .line 1989
    move/from16 v16, v2

    .line 1990
    .line 1991
    iget v0, v11, Lc/c;->C:I

    .line 1992
    .line 1993
    iget-object v1, v11, Lc/c;->d:Lc/b;

    .line 1994
    .line 1995
    iget-object v2, v11, Lc/c;->f:Lc/b;

    .line 1996
    .line 1997
    const/4 v3, 0x3

    .line 1998
    if-eq v0, v3, :cond_67

    .line 1999
    .line 2000
    invoke-virtual {v1}, Lc/b;->b()I

    .line 2001
    .line 2002
    .line 2003
    move-result v0

    .line 2004
    if-eqz v14, :cond_63

    .line 2005
    .line 2006
    iget-object v4, v14, Lc/c;->f:Lc/b;

    .line 2007
    .line 2008
    invoke-virtual {v4}, Lc/b;->b()I

    .line 2009
    .line 2010
    .line 2011
    move-result v4

    .line 2012
    add-int/2addr v0, v4

    .line 2013
    :cond_63
    iget-object v4, v1, Lc/b;->c:Lc/b;

    .line 2014
    .line 2015
    iget-object v6, v4, Lc/b;->a:Lc/c;

    .line 2016
    .line 2017
    iget v6, v6, Lc/c;->C:I

    .line 2018
    .line 2019
    if-ne v6, v3, :cond_64

    .line 2020
    .line 2021
    const/4 v3, 0x1

    .line 2022
    goto :goto_34

    .line 2023
    :cond_64
    const/4 v3, 0x2

    .line 2024
    :goto_34
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2025
    .line 2026
    iget-object v4, v4, Lc/b;->i:Lb/g;

    .line 2027
    .line 2028
    invoke-virtual {v9, v1, v4, v0, v3}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 2029
    .line 2030
    .line 2031
    invoke-virtual {v2}, Lc/b;->b()I

    .line 2032
    .line 2033
    .line 2034
    move-result v0

    .line 2035
    iget-object v1, v2, Lc/b;->c:Lc/b;

    .line 2036
    .line 2037
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 2038
    .line 2039
    iget-object v1, v1, Lc/c;->d:Lc/b;

    .line 2040
    .line 2041
    iget-object v3, v1, Lc/b;->c:Lc/b;

    .line 2042
    .line 2043
    if-eqz v3, :cond_65

    .line 2044
    .line 2045
    iget-object v3, v3, Lc/b;->a:Lc/c;

    .line 2046
    .line 2047
    if-ne v3, v11, :cond_65

    .line 2048
    .line 2049
    invoke-virtual {v1}, Lc/b;->b()I

    .line 2050
    .line 2051
    .line 2052
    move-result v1

    .line 2053
    add-int/2addr v0, v1

    .line 2054
    :cond_65
    iget-object v1, v2, Lc/b;->c:Lc/b;

    .line 2055
    .line 2056
    iget-object v3, v1, Lc/b;->a:Lc/c;

    .line 2057
    .line 2058
    iget v3, v3, Lc/c;->C:I

    .line 2059
    .line 2060
    const/4 v4, 0x3

    .line 2061
    if-ne v3, v4, :cond_66

    .line 2062
    .line 2063
    const/4 v3, 0x1

    .line 2064
    goto :goto_35

    .line 2065
    :cond_66
    const/4 v3, 0x2

    .line 2066
    :goto_35
    iget-object v4, v2, Lc/b;->i:Lb/g;

    .line 2067
    .line 2068
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2069
    .line 2070
    neg-int v0, v0

    .line 2071
    invoke-virtual {v9, v4, v1, v0, v3}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 2072
    .line 2073
    .line 2074
    goto :goto_36

    .line 2075
    :cond_67
    iget v0, v11, Lc/c;->K:F

    .line 2076
    .line 2077
    add-float/2addr v5, v0

    .line 2078
    iget-object v0, v2, Lc/b;->i:Lb/g;

    .line 2079
    .line 2080
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2081
    .line 2082
    const/4 v3, 0x0

    .line 2083
    invoke-virtual {v9, v0, v1, v3, v3}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 2084
    .line 2085
    .line 2086
    iget-object v0, v2, Lc/b;->i:Lb/g;

    .line 2087
    .line 2088
    iget-object v1, v2, Lc/b;->c:Lc/b;

    .line 2089
    .line 2090
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2091
    .line 2092
    invoke-virtual {v9, v0, v1, v3, v3}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 2093
    .line 2094
    .line 2095
    :goto_36
    iget-object v0, v2, Lc/b;->c:Lc/b;

    .line 2096
    .line 2097
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 2098
    .line 2099
    move-object/from16 v10, p0

    .line 2100
    .line 2101
    move-object v14, v11

    .line 2102
    move/from16 v2, v16

    .line 2103
    .line 2104
    const/high16 v12, 0x3f000000    # 0.5f

    .line 2105
    .line 2106
    move-object v11, v0

    .line 2107
    move/from16 v0, v19

    .line 2108
    .line 2109
    goto/16 :goto_2f

    .line 2110
    .line 2111
    :cond_68
    :goto_37
    move/from16 v19, v0

    .line 2112
    .line 2113
    move-object v10, v11

    .line 2114
    move-object v0, v14

    .line 2115
    :goto_38
    if-eqz v0, :cond_6a

    .line 2116
    .line 2117
    iget-object v1, v10, Lc/c;->d:Lc/b;

    .line 2118
    .line 2119
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 2120
    .line 2121
    if-eqz v1, :cond_69

    .line 2122
    .line 2123
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 2124
    .line 2125
    if-ne v1, v0, :cond_69

    .line 2126
    .line 2127
    goto :goto_39

    .line 2128
    :cond_69
    const/4 v8, 0x3

    .line 2129
    const/4 v15, 0x0

    .line 2130
    goto/16 :goto_46

    .line 2131
    .line 2132
    :cond_6a
    :goto_39
    iget-object v1, v10, Lc/c;->d:Lc/b;

    .line 2133
    .line 2134
    invoke-virtual {v1}, Lc/b;->b()I

    .line 2135
    .line 2136
    .line 2137
    move-result v4

    .line 2138
    iget-object v12, v10, Lc/c;->f:Lc/b;

    .line 2139
    .line 2140
    invoke-virtual {v12}, Lc/b;->b()I

    .line 2141
    .line 2142
    .line 2143
    move-result v8

    .line 2144
    iget-object v15, v10, Lc/c;->d:Lc/b;

    .line 2145
    .line 2146
    iget-object v2, v15, Lc/b;->i:Lb/g;

    .line 2147
    .line 2148
    iget-object v1, v15, Lc/b;->c:Lc/b;

    .line 2149
    .line 2150
    if-eqz v1, :cond_6b

    .line 2151
    .line 2152
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2153
    .line 2154
    move-object v3, v1

    .line 2155
    goto :goto_3a

    .line 2156
    :cond_6b
    move-object v3, v14

    .line 2157
    :goto_3a
    iget-object v7, v12, Lc/b;->i:Lb/g;

    .line 2158
    .line 2159
    iget-object v1, v12, Lc/b;->c:Lc/b;

    .line 2160
    .line 2161
    if-eqz v1, :cond_6c

    .line 2162
    .line 2163
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2164
    .line 2165
    move-object v6, v1

    .line 2166
    goto :goto_3b

    .line 2167
    :cond_6c
    move-object v6, v14

    .line 2168
    :goto_3b
    if-eqz v0, :cond_6d

    .line 2169
    .line 2170
    iget-object v0, v0, Lc/c;->f:Lc/b;

    .line 2171
    .line 2172
    invoke-virtual {v0}, Lc/b;->b()I

    .line 2173
    .line 2174
    .line 2175
    move-result v0

    .line 2176
    add-int/2addr v0, v4

    .line 2177
    goto :goto_3c

    .line 2178
    :cond_6d
    move v0, v4

    .line 2179
    :goto_3c
    if-eqz v3, :cond_71

    .line 2180
    .line 2181
    if-ne v10, v11, :cond_6f

    .line 2182
    .line 2183
    iget v1, v10, Lc/c;->G:I

    .line 2184
    .line 2185
    const/4 v5, 0x1

    .line 2186
    if-eq v1, v5, :cond_6e

    .line 2187
    .line 2188
    goto :goto_3e

    .line 2189
    :cond_6e
    :goto_3d
    const/4 v1, 0x3

    .line 2190
    goto :goto_3f

    .line 2191
    :cond_6f
    const/4 v5, 0x1

    .line 2192
    :goto_3e
    if-eqz v13, :cond_70

    .line 2193
    .line 2194
    if-eq v10, v11, :cond_70

    .line 2195
    .line 2196
    goto :goto_3d

    .line 2197
    :goto_3f
    invoke-virtual {v9, v2, v3, v0, v1}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 2198
    .line 2199
    .line 2200
    goto :goto_40

    .line 2201
    :cond_70
    invoke-virtual {v9, v2, v3, v0, v5}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 2202
    .line 2203
    .line 2204
    :cond_71
    :goto_40
    if-eqz v6, :cond_76

    .line 2205
    .line 2206
    iget-object v0, v12, Lc/b;->c:Lc/b;

    .line 2207
    .line 2208
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 2209
    .line 2210
    iget-object v0, v0, Lc/c;->d:Lc/b;

    .line 2211
    .line 2212
    iget-object v1, v0, Lc/b;->c:Lc/b;

    .line 2213
    .line 2214
    if-eqz v1, :cond_72

    .line 2215
    .line 2216
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 2217
    .line 2218
    goto :goto_41

    .line 2219
    :cond_72
    move-object v1, v14

    .line 2220
    :goto_41
    if-ne v1, v10, :cond_73

    .line 2221
    .line 2222
    invoke-virtual {v0}, Lc/b;->b()I

    .line 2223
    .line 2224
    .line 2225
    move-result v0

    .line 2226
    add-int/2addr v0, v8

    .line 2227
    const/4 v1, 0x0

    .line 2228
    goto :goto_42

    .line 2229
    :cond_73
    move v0, v8

    .line 2230
    const/4 v1, 0x1

    .line 2231
    :goto_42
    if-nez v13, :cond_76

    .line 2232
    .line 2233
    if-eqz v1, :cond_74

    .line 2234
    .line 2235
    iget v1, v11, Lc/c;->G:I

    .line 2236
    .line 2237
    const/4 v5, 0x1

    .line 2238
    if-ne v1, v5, :cond_75

    .line 2239
    .line 2240
    neg-int v0, v0

    .line 2241
    const/4 v1, 0x3

    .line 2242
    invoke-virtual {v9, v7, v6, v0, v1}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 2243
    .line 2244
    .line 2245
    goto :goto_43

    .line 2246
    :cond_74
    const/4 v5, 0x1

    .line 2247
    :cond_75
    neg-int v0, v0

    .line 2248
    invoke-virtual {v9, v7, v6, v0, v5}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 2249
    .line 2250
    .line 2251
    if-eqz v3, :cond_76

    .line 2252
    .line 2253
    const/high16 v5, 0x3f000000    # 0.5f

    .line 2254
    .line 2255
    move-object/from16 v1, p1

    .line 2256
    .line 2257
    move-object v0, v6

    .line 2258
    invoke-virtual/range {v1 .. v8}, Lb/e;->b(Lb/g;Lb/g;IFLb/g;Lb/g;I)V

    .line 2259
    .line 2260
    .line 2261
    goto :goto_44

    .line 2262
    :cond_76
    :goto_43
    move-object v0, v6

    .line 2263
    :goto_44
    iget v1, v10, Lc/c;->C:I

    .line 2264
    .line 2265
    const/4 v8, 0x3

    .line 2266
    if-ne v1, v8, :cond_77

    .line 2267
    .line 2268
    iget-object v1, v12, Lc/b;->i:Lb/g;

    .line 2269
    .line 2270
    iget-object v2, v15, Lc/b;->i:Lb/g;

    .line 2271
    .line 2272
    const/4 v15, 0x0

    .line 2273
    invoke-virtual {v9, v1, v2, v15, v8}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 2274
    .line 2275
    .line 2276
    goto :goto_45

    .line 2277
    :cond_77
    const/4 v15, 0x0

    .line 2278
    :goto_45
    if-eqz v0, :cond_78

    .line 2279
    .line 2280
    iget-object v0, v12, Lc/b;->c:Lc/b;

    .line 2281
    .line 2282
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 2283
    .line 2284
    move-object/from16 v34, v10

    .line 2285
    .line 2286
    move-object v10, v0

    .line 2287
    move-object/from16 v0, v34

    .line 2288
    .line 2289
    goto/16 :goto_38

    .line 2290
    .line 2291
    :cond_78
    move-object v0, v10

    .line 2292
    :goto_46
    if-eqz v13, :cond_7b

    .line 2293
    .line 2294
    iget-object v1, v11, Lc/c;->d:Lc/b;

    .line 2295
    .line 2296
    invoke-virtual {v1}, Lc/b;->b()I

    .line 2297
    .line 2298
    .line 2299
    move-result v4

    .line 2300
    iget-object v2, v0, Lc/c;->f:Lc/b;

    .line 2301
    .line 2302
    invoke-virtual {v2}, Lc/b;->b()I

    .line 2303
    .line 2304
    .line 2305
    move-result v10

    .line 2306
    iget-object v2, v1, Lc/b;->i:Lb/g;

    .line 2307
    .line 2308
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 2309
    .line 2310
    if-eqz v1, :cond_79

    .line 2311
    .line 2312
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 2313
    .line 2314
    move-object v3, v1

    .line 2315
    goto :goto_47

    .line 2316
    :cond_79
    move-object v3, v14

    .line 2317
    :goto_47
    iget-object v0, v0, Lc/c;->f:Lc/b;

    .line 2318
    .line 2319
    iget-object v7, v0, Lc/b;->i:Lb/g;

    .line 2320
    .line 2321
    iget-object v0, v0, Lc/b;->c:Lc/b;

    .line 2322
    .line 2323
    if-eqz v0, :cond_7a

    .line 2324
    .line 2325
    iget-object v0, v0, Lc/b;->i:Lb/g;

    .line 2326
    .line 2327
    move-object v6, v0

    .line 2328
    goto :goto_48

    .line 2329
    :cond_7a
    move-object v6, v14

    .line 2330
    :goto_48
    if-eqz v3, :cond_7b

    .line 2331
    .line 2332
    if-eqz v6, :cond_7b

    .line 2333
    .line 2334
    iget v5, v11, Lc/c;->A:F

    .line 2335
    .line 2336
    move-object/from16 v1, p1

    .line 2337
    .line 2338
    move v0, v8

    .line 2339
    move v8, v10

    .line 2340
    invoke-virtual/range {v1 .. v8}, Lb/e;->b(Lb/g;Lb/g;IFLb/g;Lb/g;I)V

    .line 2341
    .line 2342
    .line 2343
    goto :goto_49

    .line 2344
    :cond_7b
    move v0, v8

    .line 2345
    :goto_49
    add-int/lit8 v1, v19, 0x1

    .line 2346
    .line 2347
    move-object/from16 v10, p0

    .line 2348
    .line 2349
    move v0, v1

    .line 2350
    goto/16 :goto_1d

    .line 2351
    .line 2352
    :cond_7c
    move-object/from16 v0, p0

    .line 2353
    .line 2354
    iget v1, v0, Lc/d;->Q:I

    .line 2355
    .line 2356
    if-lez v1, :cond_7d

    .line 2357
    .line 2358
    invoke-virtual/range {p0 .. p1}, Lc/d;->v(Lb/e;)V

    .line 2359
    .line 2360
    .line 2361
    :cond_7d
    const/4 v1, 0x1

    .line 2362
    return v1
.end method

.method public final v(Lb/e;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const/4 v10, 0x0

    .line 6
    move v11, v10

    .line 7
    :goto_0
    iget v1, v0, Lc/d;->Q:I

    .line 8
    .line 9
    if-ge v11, v1, :cond_3d

    .line 10
    .line 11
    iget-object v1, v0, Lc/d;->S:[Lc/c;

    .line 12
    .line 13
    aget-object v12, v1, v11

    .line 14
    .line 15
    const/4 v13, 0x1

    .line 16
    invoke-virtual {v0, v12, v13}, Lc/d;->w(Lc/c;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, v12, Lc/c;->H:I

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    move v14, v13

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v14, v10

    .line 28
    :goto_1
    iget v4, v0, Lc/c;->D:I

    .line 29
    .line 30
    if-ne v4, v3, :cond_1

    .line 31
    .line 32
    move v4, v13

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    move v4, v10

    .line 35
    :goto_2
    iget-boolean v5, v12, Lc/c;->J:Z

    .line 36
    .line 37
    const/4 v15, 0x3

    .line 38
    const/4 v6, 0x0

    .line 39
    const/16 v16, 0x0

    .line 40
    .line 41
    if-eqz v5, :cond_15

    .line 42
    .line 43
    if-nez v14, :cond_15

    .line 44
    .line 45
    if-nez v4, :cond_15

    .line 46
    .line 47
    if-nez v2, :cond_15

    .line 48
    .line 49
    move v5, v6

    .line 50
    move v4, v10

    .line 51
    move v7, v4

    .line 52
    move-object v2, v12

    .line 53
    move-object/from16 v3, v16

    .line 54
    .line 55
    :goto_3
    if-eqz v2, :cond_8

    .line 56
    .line 57
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    iget v3, v2, Lc/c;->D:I

    .line 60
    .line 61
    iget-object v8, v2, Lc/c;->g:Lc/b;

    .line 62
    .line 63
    if-eq v3, v15, :cond_4

    .line 64
    .line 65
    invoke-virtual {v2}, Lc/c;->d()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/2addr v3, v7

    .line 70
    iget-object v7, v2, Lc/c;->e:Lc/b;

    .line 71
    .line 72
    iget-object v13, v7, Lc/b;->c:Lc/b;

    .line 73
    .line 74
    if-eqz v13, :cond_2

    .line 75
    .line 76
    invoke-virtual {v7}, Lc/b;->b()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    goto :goto_4

    .line 81
    :cond_2
    move v7, v10

    .line 82
    :goto_4
    add-int/2addr v3, v7

    .line 83
    iget-object v7, v8, Lc/b;->c:Lc/b;

    .line 84
    .line 85
    if-eqz v7, :cond_3

    .line 86
    .line 87
    invoke-virtual {v8}, Lc/b;->b()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    goto :goto_5

    .line 92
    :cond_3
    move v7, v10

    .line 93
    :goto_5
    add-int/2addr v7, v3

    .line 94
    goto :goto_6

    .line 95
    :cond_4
    iget v3, v2, Lc/c;->L:F

    .line 96
    .line 97
    add-float/2addr v5, v3

    .line 98
    :goto_6
    iget-object v3, v8, Lc/b;->c:Lc/b;

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    iget-object v3, v3, Lc/b;->a:Lc/c;

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_5
    move-object/from16 v3, v16

    .line 106
    .line 107
    :goto_7
    if-eqz v3, :cond_7

    .line 108
    .line 109
    iget-object v8, v3, Lc/c;->e:Lc/b;

    .line 110
    .line 111
    iget-object v8, v8, Lc/b;->c:Lc/b;

    .line 112
    .line 113
    if-eqz v8, :cond_6

    .line 114
    .line 115
    iget-object v8, v8, Lc/b;->a:Lc/c;

    .line 116
    .line 117
    if-eq v8, v2, :cond_7

    .line 118
    .line 119
    :cond_6
    move-object v3, v2

    .line 120
    move-object/from16 v2, v16

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    move-object/from16 v32, v3

    .line 124
    .line 125
    move-object v3, v2

    .line 126
    move-object/from16 v2, v32

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    if-eqz v3, :cond_a

    .line 130
    .line 131
    iget-object v2, v3, Lc/c;->g:Lc/b;

    .line 132
    .line 133
    iget-object v2, v2, Lc/b;->c:Lc/b;

    .line 134
    .line 135
    if-eqz v2, :cond_9

    .line 136
    .line 137
    iget-object v3, v2, Lc/b;->a:Lc/c;

    .line 138
    .line 139
    iget v3, v3, Lc/c;->r:I

    .line 140
    .line 141
    goto :goto_8

    .line 142
    :cond_9
    move v3, v10

    .line 143
    :goto_8
    if-eqz v2, :cond_b

    .line 144
    .line 145
    iget-object v2, v2, Lc/b;->a:Lc/c;

    .line 146
    .line 147
    if-ne v2, v0, :cond_b

    .line 148
    .line 149
    iget v2, v0, Lc/c;->s:I

    .line 150
    .line 151
    iget v3, v0, Lc/c;->o:I

    .line 152
    .line 153
    add-int/2addr v3, v2

    .line 154
    goto :goto_9

    .line 155
    :cond_a
    move v3, v10

    .line 156
    :cond_b
    :goto_9
    sub-int/2addr v3, v10

    .line 157
    int-to-float v2, v3

    .line 158
    int-to-float v3, v7

    .line 159
    sub-float/2addr v2, v3

    .line 160
    add-int/lit8 v4, v4, 0x1

    .line 161
    .line 162
    int-to-float v3, v4

    .line 163
    div-float v3, v2, v3

    .line 164
    .line 165
    if-nez v1, :cond_c

    .line 166
    .line 167
    move v4, v3

    .line 168
    goto :goto_a

    .line 169
    :cond_c
    int-to-float v3, v1

    .line 170
    div-float v3, v2, v3

    .line 171
    .line 172
    move v4, v3

    .line 173
    move v3, v6

    .line 174
    :goto_a
    if-eqz v12, :cond_21

    .line 175
    .line 176
    iget-object v7, v12, Lc/c;->e:Lc/b;

    .line 177
    .line 178
    iget-object v8, v7, Lc/b;->c:Lc/b;

    .line 179
    .line 180
    if-eqz v8, :cond_d

    .line 181
    .line 182
    invoke-virtual {v7}, Lc/b;->b()I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    goto :goto_b

    .line 187
    :cond_d
    move v8, v10

    .line 188
    :goto_b
    iget-object v13, v12, Lc/c;->g:Lc/b;

    .line 189
    .line 190
    iget-object v14, v13, Lc/b;->c:Lc/b;

    .line 191
    .line 192
    if-eqz v14, :cond_e

    .line 193
    .line 194
    invoke-virtual {v13}, Lc/b;->b()I

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    goto :goto_c

    .line 199
    :cond_e
    move v14, v10

    .line 200
    :goto_c
    int-to-float v8, v8

    .line 201
    add-float/2addr v3, v8

    .line 202
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 203
    .line 204
    const/high16 v17, 0x3f000000    # 0.5f

    .line 205
    .line 206
    add-float v10, v3, v17

    .line 207
    .line 208
    float-to-int v10, v10

    .line 209
    invoke-virtual {v9, v7, v10}, Lb/e;->d(Lb/g;I)V

    .line 210
    .line 211
    .line 212
    iget v7, v12, Lc/c;->D:I

    .line 213
    .line 214
    if-ne v7, v15, :cond_10

    .line 215
    .line 216
    cmpl-float v7, v5, v6

    .line 217
    .line 218
    if-nez v7, :cond_f

    .line 219
    .line 220
    sub-float v7, v4, v8

    .line 221
    .line 222
    goto :goto_d

    .line 223
    :cond_f
    iget v7, v12, Lc/c;->L:F

    .line 224
    .line 225
    mul-float/2addr v7, v2

    .line 226
    div-float/2addr v7, v5

    .line 227
    sub-float/2addr v7, v8

    .line 228
    :goto_d
    int-to-float v8, v14

    .line 229
    sub-float/2addr v7, v8

    .line 230
    goto :goto_e

    .line 231
    :cond_10
    invoke-virtual {v12}, Lc/c;->d()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    int-to-float v7, v7

    .line 236
    :goto_e
    add-float/2addr v7, v3

    .line 237
    iget-object v3, v13, Lc/b;->i:Lb/g;

    .line 238
    .line 239
    add-float v8, v7, v17

    .line 240
    .line 241
    float-to-int v8, v8

    .line 242
    invoke-virtual {v9, v3, v8}, Lb/e;->d(Lb/g;I)V

    .line 243
    .line 244
    .line 245
    if-nez v1, :cond_11

    .line 246
    .line 247
    add-float/2addr v7, v4

    .line 248
    :cond_11
    int-to-float v3, v14

    .line 249
    add-float/2addr v3, v7

    .line 250
    iget-object v7, v13, Lc/b;->c:Lc/b;

    .line 251
    .line 252
    if-eqz v7, :cond_12

    .line 253
    .line 254
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 255
    .line 256
    goto :goto_f

    .line 257
    :cond_12
    move-object/from16 v7, v16

    .line 258
    .line 259
    :goto_f
    if-eqz v7, :cond_13

    .line 260
    .line 261
    iget-object v8, v7, Lc/c;->e:Lc/b;

    .line 262
    .line 263
    iget-object v8, v8, Lc/b;->c:Lc/b;

    .line 264
    .line 265
    if-eqz v8, :cond_13

    .line 266
    .line 267
    iget-object v8, v8, Lc/b;->a:Lc/c;

    .line 268
    .line 269
    if-eq v8, v12, :cond_13

    .line 270
    .line 271
    move-object/from16 v7, v16

    .line 272
    .line 273
    :cond_13
    if-ne v7, v0, :cond_14

    .line 274
    .line 275
    move-object/from16 v12, v16

    .line 276
    .line 277
    goto :goto_10

    .line 278
    :cond_14
    move-object v12, v7

    .line 279
    :goto_10
    const/4 v10, 0x0

    .line 280
    goto :goto_a

    .line 281
    :cond_15
    if-eqz v1, :cond_28

    .line 282
    .line 283
    if-eqz v14, :cond_16

    .line 284
    .line 285
    goto/16 :goto_18

    .line 286
    .line 287
    :cond_16
    move-object/from16 v2, v16

    .line 288
    .line 289
    :goto_11
    if-eqz v2, :cond_22

    .line 290
    .line 291
    iget-object v4, v12, Lc/c;->e:Lc/b;

    .line 292
    .line 293
    iget-object v4, v4, Lc/b;->c:Lc/b;

    .line 294
    .line 295
    if-eqz v4, :cond_17

    .line 296
    .line 297
    iget-object v4, v4, Lc/b;->a:Lc/c;

    .line 298
    .line 299
    if-ne v4, v2, :cond_17

    .line 300
    .line 301
    goto/16 :goto_14

    .line 302
    .line 303
    :cond_17
    if-ne v1, v13, :cond_1a

    .line 304
    .line 305
    iget-object v1, v0, Lc/d;->R:[Lc/c;

    .line 306
    .line 307
    const/4 v2, 0x0

    .line 308
    aget-object v1, v1, v2

    .line 309
    .line 310
    iget-object v2, v1, Lc/c;->e:Lc/b;

    .line 311
    .line 312
    invoke-virtual {v2}, Lc/b;->b()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    iget-object v3, v1, Lc/c;->e:Lc/b;

    .line 317
    .line 318
    iget-object v4, v3, Lc/b;->c:Lc/b;

    .line 319
    .line 320
    if-eqz v4, :cond_18

    .line 321
    .line 322
    invoke-virtual {v4}, Lc/b;->b()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    add-int/2addr v2, v4

    .line 327
    :cond_18
    iget-object v4, v3, Lc/b;->i:Lb/g;

    .line 328
    .line 329
    iget-object v3, v3, Lc/b;->c:Lc/b;

    .line 330
    .line 331
    iget-object v3, v3, Lc/b;->i:Lb/g;

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    invoke-virtual {v9, v4, v3, v2, v5}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v1, Lc/c;->g:Lc/b;

    .line 338
    .line 339
    invoke-virtual {v1}, Lc/b;->b()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    iget-object v3, v1, Lc/b;->c:Lc/b;

    .line 344
    .line 345
    if-eqz v3, :cond_19

    .line 346
    .line 347
    invoke-virtual {v3}, Lc/b;->b()I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    add-int/2addr v2, v3

    .line 352
    :cond_19
    iget-object v3, v1, Lc/b;->i:Lb/g;

    .line 353
    .line 354
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 355
    .line 356
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 357
    .line 358
    neg-int v2, v2

    .line 359
    const/4 v4, 0x0

    .line 360
    invoke-virtual {v9, v3, v1, v2, v4}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 361
    .line 362
    .line 363
    move v13, v4

    .line 364
    move/from16 v31, v11

    .line 365
    .line 366
    goto/16 :goto_27

    .line 367
    .line 368
    :cond_1a
    const/4 v2, 0x0

    .line 369
    :goto_12
    add-int/lit8 v3, v1, -0x1

    .line 370
    .line 371
    if-ge v2, v3, :cond_21

    .line 372
    .line 373
    iget-object v4, v0, Lc/d;->R:[Lc/c;

    .line 374
    .line 375
    aget-object v5, v4, v2

    .line 376
    .line 377
    add-int/lit8 v2, v2, 0x1

    .line 378
    .line 379
    aget-object v4, v4, v2

    .line 380
    .line 381
    iget-object v7, v5, Lc/c;->e:Lc/b;

    .line 382
    .line 383
    iget-object v8, v7, Lc/b;->i:Lb/g;

    .line 384
    .line 385
    iget-object v10, v5, Lc/c;->g:Lc/b;

    .line 386
    .line 387
    iget-object v12, v10, Lc/b;->i:Lb/g;

    .line 388
    .line 389
    iget-object v14, v4, Lc/c;->e:Lc/b;

    .line 390
    .line 391
    iget-object v14, v14, Lc/b;->i:Lb/g;

    .line 392
    .line 393
    iget-object v15, v4, Lc/c;->g:Lc/b;

    .line 394
    .line 395
    iget-object v13, v15, Lc/b;->i:Lb/g;

    .line 396
    .line 397
    invoke-virtual {v7}, Lc/b;->b()I

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    iget-object v0, v5, Lc/c;->e:Lc/b;

    .line 402
    .line 403
    move/from16 v30, v1

    .line 404
    .line 405
    iget-object v1, v0, Lc/b;->c:Lc/b;

    .line 406
    .line 407
    if-eqz v1, :cond_1b

    .line 408
    .line 409
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 410
    .line 411
    iget-object v1, v1, Lc/c;->g:Lc/b;

    .line 412
    .line 413
    move/from16 v31, v11

    .line 414
    .line 415
    iget-object v11, v1, Lc/b;->c:Lc/b;

    .line 416
    .line 417
    if-eqz v11, :cond_1c

    .line 418
    .line 419
    iget-object v11, v11, Lc/b;->a:Lc/c;

    .line 420
    .line 421
    if-ne v11, v5, :cond_1c

    .line 422
    .line 423
    invoke-virtual {v1}, Lc/b;->b()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    add-int/2addr v7, v1

    .line 428
    goto :goto_13

    .line 429
    :cond_1b
    move/from16 v31, v11

    .line 430
    .line 431
    :cond_1c
    :goto_13
    iget-object v1, v0, Lc/b;->c:Lc/b;

    .line 432
    .line 433
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 434
    .line 435
    const/4 v11, 0x1

    .line 436
    invoke-virtual {v9, v8, v1, v7, v11}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v10}, Lc/b;->b()I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    iget-object v7, v10, Lc/b;->c:Lc/b;

    .line 444
    .line 445
    if-eqz v7, :cond_1d

    .line 446
    .line 447
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 448
    .line 449
    iget-object v7, v7, Lc/c;->e:Lc/b;

    .line 450
    .line 451
    iget-object v11, v7, Lc/b;->c:Lc/b;

    .line 452
    .line 453
    if-eqz v11, :cond_1d

    .line 454
    .line 455
    iget-object v11, v11, Lc/b;->a:Lc/c;

    .line 456
    .line 457
    if-ne v11, v5, :cond_1d

    .line 458
    .line 459
    invoke-virtual {v7}, Lc/b;->b()I

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    add-int/2addr v1, v7

    .line 464
    :cond_1d
    iget-object v7, v10, Lc/b;->c:Lc/b;

    .line 465
    .line 466
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 467
    .line 468
    neg-int v1, v1

    .line 469
    const/4 v11, 0x1

    .line 470
    invoke-virtual {v9, v12, v7, v1, v11}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 471
    .line 472
    .line 473
    iget-object v1, v4, Lc/c;->e:Lc/b;

    .line 474
    .line 475
    if-ne v2, v3, :cond_20

    .line 476
    .line 477
    invoke-virtual {v1}, Lc/b;->b()I

    .line 478
    .line 479
    .line 480
    move-result v3

    .line 481
    iget-object v7, v1, Lc/b;->c:Lc/b;

    .line 482
    .line 483
    if-eqz v7, :cond_1e

    .line 484
    .line 485
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 486
    .line 487
    iget-object v7, v7, Lc/c;->g:Lc/b;

    .line 488
    .line 489
    iget-object v11, v7, Lc/b;->c:Lc/b;

    .line 490
    .line 491
    if-eqz v11, :cond_1e

    .line 492
    .line 493
    iget-object v11, v11, Lc/b;->a:Lc/c;

    .line 494
    .line 495
    if-ne v11, v4, :cond_1e

    .line 496
    .line 497
    invoke-virtual {v7}, Lc/b;->b()I

    .line 498
    .line 499
    .line 500
    move-result v7

    .line 501
    add-int/2addr v3, v7

    .line 502
    :cond_1e
    iget-object v7, v1, Lc/b;->c:Lc/b;

    .line 503
    .line 504
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 505
    .line 506
    const/4 v11, 0x1

    .line 507
    invoke-virtual {v9, v14, v7, v3, v11}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v15}, Lc/b;->b()I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    iget-object v7, v15, Lc/b;->c:Lc/b;

    .line 515
    .line 516
    if-eqz v7, :cond_1f

    .line 517
    .line 518
    iget-object v7, v7, Lc/b;->a:Lc/c;

    .line 519
    .line 520
    iget-object v7, v7, Lc/c;->e:Lc/b;

    .line 521
    .line 522
    iget-object v11, v7, Lc/b;->c:Lc/b;

    .line 523
    .line 524
    if-eqz v11, :cond_1f

    .line 525
    .line 526
    iget-object v11, v11, Lc/b;->a:Lc/c;

    .line 527
    .line 528
    if-ne v11, v4, :cond_1f

    .line 529
    .line 530
    invoke-virtual {v7}, Lc/b;->b()I

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    add-int/2addr v3, v7

    .line 535
    :cond_1f
    iget-object v7, v15, Lc/b;->c:Lc/b;

    .line 536
    .line 537
    iget-object v7, v7, Lc/b;->i:Lb/g;

    .line 538
    .line 539
    neg-int v3, v3

    .line 540
    const/4 v11, 0x1

    .line 541
    invoke-virtual {v9, v13, v7, v3, v11}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 542
    .line 543
    .line 544
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    iget v5, v5, Lc/c;->L:F

    .line 549
    .line 550
    iget v4, v4, Lc/c;->L:F

    .line 551
    .line 552
    invoke-virtual {v0}, Lc/b;->b()I

    .line 553
    .line 554
    .line 555
    move-result v23

    .line 556
    invoke-virtual {v10}, Lc/b;->b()I

    .line 557
    .line 558
    .line 559
    move-result v25

    .line 560
    invoke-virtual {v1}, Lc/b;->b()I

    .line 561
    .line 562
    .line 563
    move-result v27

    .line 564
    invoke-virtual {v15}, Lc/b;->b()I

    .line 565
    .line 566
    .line 567
    move-result v29

    .line 568
    move-object/from16 v18, v3

    .line 569
    .line 570
    move/from16 v19, v5

    .line 571
    .line 572
    move/from16 v20, v6

    .line 573
    .line 574
    move/from16 v21, v4

    .line 575
    .line 576
    move-object/from16 v22, v8

    .line 577
    .line 578
    move-object/from16 v24, v12

    .line 579
    .line 580
    move-object/from16 v26, v14

    .line 581
    .line 582
    move-object/from16 v28, v13

    .line 583
    .line 584
    invoke-virtual/range {v18 .. v29}, Lb/b;->b(FFFLb/g;ILb/g;ILb/g;ILb/g;I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v9, v3}, Lb/e;->c(Lb/b;)V

    .line 588
    .line 589
    .line 590
    const/4 v13, 0x1

    .line 591
    move-object/from16 v0, p0

    .line 592
    .line 593
    move/from16 v1, v30

    .line 594
    .line 595
    move/from16 v11, v31

    .line 596
    .line 597
    goto/16 :goto_12

    .line 598
    .line 599
    :cond_21
    move/from16 v31, v11

    .line 600
    .line 601
    const/4 v13, 0x0

    .line 602
    goto/16 :goto_27

    .line 603
    .line 604
    :cond_22
    :goto_14
    move/from16 v30, v1

    .line 605
    .line 606
    move/from16 v31, v11

    .line 607
    .line 608
    iget v0, v12, Lc/c;->D:I

    .line 609
    .line 610
    iget-object v1, v12, Lc/c;->e:Lc/b;

    .line 611
    .line 612
    iget-object v4, v12, Lc/c;->g:Lc/b;

    .line 613
    .line 614
    if-eq v0, v15, :cond_27

    .line 615
    .line 616
    invoke-virtual {v1}, Lc/b;->b()I

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-eqz v2, :cond_23

    .line 621
    .line 622
    iget-object v2, v2, Lc/c;->g:Lc/b;

    .line 623
    .line 624
    invoke-virtual {v2}, Lc/b;->b()I

    .line 625
    .line 626
    .line 627
    move-result v2

    .line 628
    add-int/2addr v0, v2

    .line 629
    :cond_23
    iget-object v2, v1, Lc/b;->c:Lc/b;

    .line 630
    .line 631
    iget-object v5, v2, Lc/b;->a:Lc/c;

    .line 632
    .line 633
    iget v5, v5, Lc/c;->D:I

    .line 634
    .line 635
    if-ne v5, v15, :cond_24

    .line 636
    .line 637
    const/4 v5, 0x1

    .line 638
    goto :goto_15

    .line 639
    :cond_24
    move v5, v3

    .line 640
    :goto_15
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 641
    .line 642
    iget-object v2, v2, Lc/b;->i:Lb/g;

    .line 643
    .line 644
    invoke-virtual {v9, v1, v2, v0, v5}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v4}, Lc/b;->b()I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    iget-object v1, v4, Lc/b;->c:Lc/b;

    .line 652
    .line 653
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 654
    .line 655
    iget-object v1, v1, Lc/c;->e:Lc/b;

    .line 656
    .line 657
    iget-object v2, v1, Lc/b;->c:Lc/b;

    .line 658
    .line 659
    if-eqz v2, :cond_25

    .line 660
    .line 661
    iget-object v2, v2, Lc/b;->a:Lc/c;

    .line 662
    .line 663
    if-ne v2, v12, :cond_25

    .line 664
    .line 665
    invoke-virtual {v1}, Lc/b;->b()I

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    add-int/2addr v0, v1

    .line 670
    :cond_25
    iget-object v1, v4, Lc/b;->c:Lc/b;

    .line 671
    .line 672
    iget-object v2, v1, Lc/b;->a:Lc/c;

    .line 673
    .line 674
    iget v2, v2, Lc/c;->D:I

    .line 675
    .line 676
    if-ne v2, v15, :cond_26

    .line 677
    .line 678
    const/4 v2, 0x1

    .line 679
    goto :goto_16

    .line 680
    :cond_26
    move v2, v3

    .line 681
    :goto_16
    iget-object v5, v4, Lc/b;->i:Lb/g;

    .line 682
    .line 683
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 684
    .line 685
    neg-int v0, v0

    .line 686
    invoke-virtual {v9, v5, v1, v0, v2}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 687
    .line 688
    .line 689
    goto :goto_17

    .line 690
    :cond_27
    iget v0, v12, Lc/c;->L:F

    .line 691
    .line 692
    add-float/2addr v6, v0

    .line 693
    iget-object v0, v4, Lc/b;->i:Lb/g;

    .line 694
    .line 695
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 696
    .line 697
    const/4 v2, 0x0

    .line 698
    invoke-virtual {v9, v0, v1, v2, v2}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 699
    .line 700
    .line 701
    iget-object v0, v4, Lc/b;->i:Lb/g;

    .line 702
    .line 703
    iget-object v1, v4, Lc/b;->c:Lc/b;

    .line 704
    .line 705
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 706
    .line 707
    invoke-virtual {v9, v0, v1, v2, v2}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 708
    .line 709
    .line 710
    :goto_17
    iget-object v0, v4, Lc/b;->c:Lc/b;

    .line 711
    .line 712
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 713
    .line 714
    move-object v2, v12

    .line 715
    move/from16 v1, v30

    .line 716
    .line 717
    move/from16 v11, v31

    .line 718
    .line 719
    const/4 v13, 0x1

    .line 720
    move-object v12, v0

    .line 721
    move-object/from16 v0, p0

    .line 722
    .line 723
    goto/16 :goto_11

    .line 724
    .line 725
    :cond_28
    :goto_18
    move/from16 v31, v11

    .line 726
    .line 727
    move-object v10, v12

    .line 728
    move-object/from16 v0, v16

    .line 729
    .line 730
    :goto_19
    if-eqz v0, :cond_2a

    .line 731
    .line 732
    iget-object v1, v10, Lc/c;->e:Lc/b;

    .line 733
    .line 734
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 735
    .line 736
    if-eqz v1, :cond_29

    .line 737
    .line 738
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 739
    .line 740
    if-ne v1, v0, :cond_29

    .line 741
    .line 742
    goto :goto_1a

    .line 743
    :cond_29
    const/4 v13, 0x0

    .line 744
    goto/16 :goto_24

    .line 745
    .line 746
    :cond_2a
    :goto_1a
    iget-object v1, v10, Lc/c;->e:Lc/b;

    .line 747
    .line 748
    invoke-virtual {v1}, Lc/b;->b()I

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    iget-object v11, v10, Lc/c;->g:Lc/b;

    .line 753
    .line 754
    invoke-virtual {v11}, Lc/b;->b()I

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    iget-object v13, v10, Lc/c;->e:Lc/b;

    .line 759
    .line 760
    iget-object v2, v13, Lc/b;->i:Lb/g;

    .line 761
    .line 762
    iget-object v1, v13, Lc/b;->c:Lc/b;

    .line 763
    .line 764
    if-eqz v1, :cond_2b

    .line 765
    .line 766
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 767
    .line 768
    move-object v3, v1

    .line 769
    goto :goto_1b

    .line 770
    :cond_2b
    move-object/from16 v3, v16

    .line 771
    .line 772
    :goto_1b
    iget-object v7, v11, Lc/b;->i:Lb/g;

    .line 773
    .line 774
    iget-object v1, v11, Lc/b;->c:Lc/b;

    .line 775
    .line 776
    if-eqz v1, :cond_2c

    .line 777
    .line 778
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 779
    .line 780
    move-object v6, v1

    .line 781
    goto :goto_1c

    .line 782
    :cond_2c
    move-object/from16 v6, v16

    .line 783
    .line 784
    :goto_1c
    if-eqz v0, :cond_2d

    .line 785
    .line 786
    iget-object v0, v0, Lc/c;->g:Lc/b;

    .line 787
    .line 788
    invoke-virtual {v0}, Lc/b;->b()I

    .line 789
    .line 790
    .line 791
    move-result v0

    .line 792
    add-int/2addr v0, v4

    .line 793
    goto :goto_1d

    .line 794
    :cond_2d
    move v0, v4

    .line 795
    :goto_1d
    if-eqz v3, :cond_31

    .line 796
    .line 797
    if-ne v10, v12, :cond_2e

    .line 798
    .line 799
    iget v1, v10, Lc/c;->H:I

    .line 800
    .line 801
    const/4 v5, 0x1

    .line 802
    if-eq v1, v5, :cond_2f

    .line 803
    .line 804
    :cond_2e
    if-eqz v14, :cond_30

    .line 805
    .line 806
    if-eq v10, v12, :cond_30

    .line 807
    .line 808
    :cond_2f
    invoke-virtual {v9, v2, v3, v0, v15}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 809
    .line 810
    .line 811
    goto :goto_1e

    .line 812
    :cond_30
    const/4 v1, 0x1

    .line 813
    invoke-virtual {v9, v2, v3, v0, v1}, Lb/e;->f(Lb/g;Lb/g;II)V

    .line 814
    .line 815
    .line 816
    :cond_31
    :goto_1e
    if-eqz v6, :cond_37

    .line 817
    .line 818
    iget-object v0, v11, Lc/b;->c:Lc/b;

    .line 819
    .line 820
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 821
    .line 822
    iget-object v0, v0, Lc/c;->e:Lc/b;

    .line 823
    .line 824
    iget-object v1, v0, Lc/b;->c:Lc/b;

    .line 825
    .line 826
    if-eqz v1, :cond_32

    .line 827
    .line 828
    iget-object v1, v1, Lc/b;->a:Lc/c;

    .line 829
    .line 830
    goto :goto_1f

    .line 831
    :cond_32
    move-object/from16 v1, v16

    .line 832
    .line 833
    :goto_1f
    if-ne v1, v10, :cond_33

    .line 834
    .line 835
    invoke-virtual {v0}, Lc/b;->b()I

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    add-int/2addr v0, v8

    .line 840
    const/4 v1, 0x0

    .line 841
    goto :goto_20

    .line 842
    :cond_33
    move v0, v8

    .line 843
    const/4 v1, 0x1

    .line 844
    :goto_20
    if-nez v14, :cond_37

    .line 845
    .line 846
    if-eqz v1, :cond_34

    .line 847
    .line 848
    iget v1, v12, Lc/c;->H:I

    .line 849
    .line 850
    const/4 v5, 0x1

    .line 851
    if-ne v1, v5, :cond_35

    .line 852
    .line 853
    neg-int v0, v0

    .line 854
    invoke-virtual {v9, v7, v6, v0, v15}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 855
    .line 856
    .line 857
    goto :goto_21

    .line 858
    :cond_34
    const/4 v5, 0x1

    .line 859
    :cond_35
    neg-int v0, v0

    .line 860
    invoke-virtual {v9, v7, v6, v0, v5}, Lb/e;->g(Lb/g;Lb/g;II)V

    .line 861
    .line 862
    .line 863
    if-eqz v3, :cond_36

    .line 864
    .line 865
    const/high16 v0, 0x3f000000    # 0.5f

    .line 866
    .line 867
    move-object/from16 v1, p1

    .line 868
    .line 869
    move/from16 v17, v5

    .line 870
    .line 871
    move v5, v0

    .line 872
    move-object v0, v6

    .line 873
    invoke-virtual/range {v1 .. v8}, Lb/e;->b(Lb/g;Lb/g;IFLb/g;Lb/g;I)V

    .line 874
    .line 875
    .line 876
    goto :goto_22

    .line 877
    :cond_36
    :goto_21
    move/from16 v17, v5

    .line 878
    .line 879
    move-object v0, v6

    .line 880
    goto :goto_22

    .line 881
    :cond_37
    move-object v0, v6

    .line 882
    const/16 v17, 0x1

    .line 883
    .line 884
    :goto_22
    iget v1, v10, Lc/c;->D:I

    .line 885
    .line 886
    if-ne v1, v15, :cond_38

    .line 887
    .line 888
    iget-object v1, v11, Lc/b;->i:Lb/g;

    .line 889
    .line 890
    iget-object v2, v13, Lc/b;->i:Lb/g;

    .line 891
    .line 892
    const/4 v13, 0x0

    .line 893
    invoke-virtual {v9, v1, v2, v13, v15}, Lb/e;->e(Lb/g;Lb/g;II)V

    .line 894
    .line 895
    .line 896
    goto :goto_23

    .line 897
    :cond_38
    const/4 v13, 0x0

    .line 898
    :goto_23
    if-eqz v0, :cond_39

    .line 899
    .line 900
    iget-object v0, v11, Lc/b;->c:Lc/b;

    .line 901
    .line 902
    iget-object v0, v0, Lc/b;->a:Lc/c;

    .line 903
    .line 904
    move-object/from16 v32, v10

    .line 905
    .line 906
    move-object v10, v0

    .line 907
    move-object/from16 v0, v32

    .line 908
    .line 909
    goto/16 :goto_19

    .line 910
    .line 911
    :cond_39
    move-object v0, v10

    .line 912
    :goto_24
    if-eqz v14, :cond_3c

    .line 913
    .line 914
    iget-object v1, v12, Lc/c;->e:Lc/b;

    .line 915
    .line 916
    invoke-virtual {v1}, Lc/b;->b()I

    .line 917
    .line 918
    .line 919
    move-result v4

    .line 920
    iget-object v2, v0, Lc/c;->g:Lc/b;

    .line 921
    .line 922
    invoke-virtual {v2}, Lc/b;->b()I

    .line 923
    .line 924
    .line 925
    move-result v8

    .line 926
    iget-object v2, v1, Lc/b;->i:Lb/g;

    .line 927
    .line 928
    iget-object v1, v1, Lc/b;->c:Lc/b;

    .line 929
    .line 930
    if-eqz v1, :cond_3a

    .line 931
    .line 932
    iget-object v1, v1, Lc/b;->i:Lb/g;

    .line 933
    .line 934
    move-object v3, v1

    .line 935
    goto :goto_25

    .line 936
    :cond_3a
    move-object/from16 v3, v16

    .line 937
    .line 938
    :goto_25
    iget-object v0, v0, Lc/c;->g:Lc/b;

    .line 939
    .line 940
    iget-object v7, v0, Lc/b;->i:Lb/g;

    .line 941
    .line 942
    iget-object v0, v0, Lc/b;->c:Lc/b;

    .line 943
    .line 944
    if-eqz v0, :cond_3b

    .line 945
    .line 946
    iget-object v0, v0, Lc/b;->i:Lb/g;

    .line 947
    .line 948
    move-object v6, v0

    .line 949
    goto :goto_26

    .line 950
    :cond_3b
    move-object/from16 v6, v16

    .line 951
    .line 952
    :goto_26
    if-eqz v3, :cond_3c

    .line 953
    .line 954
    if-eqz v6, :cond_3c

    .line 955
    .line 956
    iget v5, v12, Lc/c;->B:F

    .line 957
    .line 958
    move-object/from16 v1, p1

    .line 959
    .line 960
    invoke-virtual/range {v1 .. v8}, Lb/e;->b(Lb/g;Lb/g;IFLb/g;Lb/g;I)V

    .line 961
    .line 962
    .line 963
    :cond_3c
    :goto_27
    add-int/lit8 v11, v31, 0x1

    .line 964
    .line 965
    move-object/from16 v0, p0

    .line 966
    .line 967
    move v10, v13

    .line 968
    goto/16 :goto_0

    .line 969
    .line 970
    :cond_3d
    return-void
.end method

.method public final w(Lc/c;I)I
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p2, :cond_8

    .line 5
    .line 6
    iget-object p2, p1, Lc/c;->d:Lc/b;

    .line 7
    .line 8
    iget-object p2, p2, Lc/b;->c:Lc/b;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p2, Lc/b;->a:Lc/c;

    .line 13
    .line 14
    if-eq p2, p0, :cond_0

    .line 15
    .line 16
    move-object p2, p1

    .line 17
    move v1, v2

    .line 18
    move v3, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p2, p1

    .line 21
    move v3, v2

    .line 22
    :goto_0
    iget-object v4, p2, Lc/c;->f:Lc/b;

    .line 23
    .line 24
    iget-object v5, v4, Lc/b;->c:Lc/b;

    .line 25
    .line 26
    if-eqz v5, :cond_6

    .line 27
    .line 28
    iget v5, p2, Lc/c;->C:I

    .line 29
    .line 30
    if-ne v5, v0, :cond_2

    .line 31
    .line 32
    add-int/lit8 v5, v3, 0x1

    .line 33
    .line 34
    iget-object v6, p0, Lc/d;->R:[Lc/c;

    .line 35
    .line 36
    array-length v7, v6

    .line 37
    if-lt v5, v7, :cond_1

    .line 38
    .line 39
    array-length v7, v6

    .line 40
    mul-int/lit8 v7, v7, 0x2

    .line 41
    .line 42
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, [Lc/c;

    .line 47
    .line 48
    iput-object v6, p0, Lc/d;->R:[Lc/c;

    .line 49
    .line 50
    :cond_1
    iget-object v6, p0, Lc/d;->R:[Lc/c;

    .line 51
    .line 52
    aput-object p2, v6, v3

    .line 53
    .line 54
    move v3, v5

    .line 55
    :cond_2
    iget-object v5, v4, Lc/b;->c:Lc/b;

    .line 56
    .line 57
    iget-object v5, v5, Lc/b;->a:Lc/c;

    .line 58
    .line 59
    iget-object v6, v5, Lc/c;->d:Lc/b;

    .line 60
    .line 61
    iget-object v6, v6, Lc/b;->c:Lc/b;

    .line 62
    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v6, v6, Lc/b;->a:Lc/c;

    .line 67
    .line 68
    if-eq v6, p2, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    if-ne v5, p2, :cond_5

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_5
    move-object p2, v5

    .line 75
    goto :goto_0

    .line 76
    :cond_6
    :goto_1
    iget-object p2, v4, Lc/b;->c:Lc/b;

    .line 77
    .line 78
    if-eqz p2, :cond_7

    .line 79
    .line 80
    iget-object p2, p2, Lc/b;->a:Lc/c;

    .line 81
    .line 82
    if-eq p2, p0, :cond_7

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_7
    move v2, v1

    .line 86
    :goto_2
    iput-boolean v2, p1, Lc/c;->I:Z

    .line 87
    .line 88
    goto :goto_6

    .line 89
    :cond_8
    iget-object p2, p1, Lc/c;->e:Lc/b;

    .line 90
    .line 91
    iget-object p2, p2, Lc/b;->c:Lc/b;

    .line 92
    .line 93
    if-eqz p2, :cond_9

    .line 94
    .line 95
    iget-object p2, p2, Lc/b;->a:Lc/c;

    .line 96
    .line 97
    if-eq p2, p0, :cond_9

    .line 98
    .line 99
    move-object p2, p1

    .line 100
    move v1, v2

    .line 101
    move v3, v1

    .line 102
    goto :goto_3

    .line 103
    :cond_9
    move-object p2, p1

    .line 104
    move v3, v2

    .line 105
    :goto_3
    iget-object v4, p2, Lc/c;->g:Lc/b;

    .line 106
    .line 107
    iget-object v5, v4, Lc/b;->c:Lc/b;

    .line 108
    .line 109
    if-eqz v5, :cond_f

    .line 110
    .line 111
    iget v5, p2, Lc/c;->D:I

    .line 112
    .line 113
    if-ne v5, v0, :cond_b

    .line 114
    .line 115
    add-int/lit8 v5, v3, 0x1

    .line 116
    .line 117
    iget-object v6, p0, Lc/d;->R:[Lc/c;

    .line 118
    .line 119
    array-length v7, v6

    .line 120
    if-lt v5, v7, :cond_a

    .line 121
    .line 122
    array-length v7, v6

    .line 123
    mul-int/lit8 v7, v7, 0x2

    .line 124
    .line 125
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    check-cast v6, [Lc/c;

    .line 130
    .line 131
    iput-object v6, p0, Lc/d;->R:[Lc/c;

    .line 132
    .line 133
    :cond_a
    iget-object v6, p0, Lc/d;->R:[Lc/c;

    .line 134
    .line 135
    aput-object p2, v6, v3

    .line 136
    .line 137
    move v3, v5

    .line 138
    :cond_b
    iget-object v5, v4, Lc/b;->c:Lc/b;

    .line 139
    .line 140
    iget-object v5, v5, Lc/b;->a:Lc/c;

    .line 141
    .line 142
    iget-object v6, v5, Lc/c;->e:Lc/b;

    .line 143
    .line 144
    iget-object v6, v6, Lc/b;->c:Lc/b;

    .line 145
    .line 146
    if-nez v6, :cond_c

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_c
    iget-object v6, v6, Lc/b;->a:Lc/c;

    .line 150
    .line 151
    if-eq v6, p2, :cond_d

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_d
    if-ne v5, p2, :cond_e

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_e
    move-object p2, v5

    .line 158
    goto :goto_3

    .line 159
    :cond_f
    :goto_4
    iget-object p2, v4, Lc/b;->c:Lc/b;

    .line 160
    .line 161
    if-eqz p2, :cond_10

    .line 162
    .line 163
    iget-object p2, p2, Lc/b;->a:Lc/c;

    .line 164
    .line 165
    if-eq p2, p0, :cond_10

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_10
    move v2, v1

    .line 169
    :goto_5
    iput-boolean v2, p1, Lc/c;->J:Z

    .line 170
    .line 171
    :goto_6
    return v3
.end method
