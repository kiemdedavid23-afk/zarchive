.class public final Lc0/e;
.super Lc0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc0/h;-><init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;)V

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    const v0, 0x7f08002e

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lc0/h;->a(I)Lc0/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lc0/f;

    .line 6
    .line 7
    const v7, 0x7f070075

    .line 8
    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lc0/h;->a:Landroid/view/LayoutInflater;

    .line 14
    .line 15
    const v1, 0x7f08002e

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance p3, Lc0/e$a;

    .line 23
    .line 24
    invoke-direct {p3, p2}, Lc0/e$a;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    sget v1, Ls0/b;->l:I

    .line 28
    .line 29
    int-to-float v1, v1

    .line 30
    iget-object v2, p3, Lc0/e$a;->b:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    .line 34
    .line 35
    sget v1, Ls0/b;->k:I

    .line 36
    .line 37
    shr-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 40
    .line 41
    .line 42
    sget v1, Ls0/b;->l:I

    .line 43
    .line 44
    int-to-float v1, v1

    .line 45
    const v2, 0x3f333333    # 0.7f

    .line 46
    .line 47
    .line 48
    mul-float/2addr v1, v2

    .line 49
    iget-object v2, p3, Lc0/e$a;->e:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
    .line 53
    .line 54
    sget v1, Ls0/b;->k:I

    .line 55
    .line 56
    shr-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 59
    .line 60
    .line 61
    sget v1, Ls0/b;->l:I

    .line 62
    .line 63
    int-to-float v1, v1

    .line 64
    const v2, 0x3f19999a    # 0.6f

    .line 65
    .line 66
    .line 67
    mul-float/2addr v1, v2

    .line 68
    iget-object v2, p3, Lc0/e$a;->d:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p3, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    sget v3, Ls0/b;->k:I

    .line 80
    .line 81
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    .line 83
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    check-cast p3, Lc0/e$a;

    .line 100
    .line 101
    iget-object v1, p3, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 108
    .line 109
    .line 110
    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    .line 112
    iget-object v2, p3, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    .line 116
    .line 117
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v2, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    invoke-virtual {v0}, Lc0/f;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    iget-object v5, v0, Lc0/f;->k:Lg0/h;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    move-object v1, p0

    .line 132
    move v2, v9

    .line 133
    move-object v3, v0

    .line 134
    move-object v4, p3

    .line 135
    invoke-virtual/range {v1 .. v6}, Lc0/h;->b(ILc0/d;Lc0/g;Lg0/h;Z)Landroid/graphics/Bitmap;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iget-object v3, p3, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {v3, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, v0, Lc0/d;->a:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v4, p3, Lc0/e$a;->b:Landroid/widget/TextView;

    .line 158
    .line 159
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    const/4 v2, 0x4

    .line 163
    invoke-static {v2}, Ls0/b;->l(I)Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eqz v4, :cond_2

    .line 168
    .line 169
    if-nez v1, :cond_1

    .line 170
    .line 171
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 175
    .line 176
    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    if-nez v1, :cond_3

    .line 180
    .line 181
    invoke-virtual {v0}, Lc0/d;->d()B

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-static {v1}, Ly0/b;->a(I)Landroid/graphics/Bitmap;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iget-byte v5, v0, Lc0/d;->f:B

    .line 194
    .line 195
    invoke-static {v4, v1, v5}, Ly0/b;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, v0, Lc0/f;->k:Lg0/h;

    .line 203
    .line 204
    invoke-virtual {v1}, Lg0/h;->g()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_5

    .line 209
    .line 210
    iget-object v3, v1, Lg0/h;->e:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v3}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const-string v4, "~/"

    .line 217
    .line 218
    if-eqz v3, :cond_4

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v1, v1, Lg0/h;->e:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    goto :goto_2

    .line 236
    :cond_5
    invoke-virtual {v1}, Lg0/h;->t()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    :goto_2
    iget-object v1, p3, Lc0/e$a;->e:Landroid/widget/TextView;

    .line 241
    .line 242
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    .line 244
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const/16 v3, 0x2000

    .line 251
    .line 252
    invoke-static {v3}, Ls0/b;->g(I)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_6

    .line 257
    .line 258
    invoke-virtual {v0}, Lc0/d;->b()J

    .line 259
    .line 260
    .line 261
    move-result-wide v4

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    sget-object v5, Lc0/d;->i:Ljava/text/DateFormat;

    .line 267
    .line 268
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    :cond_6
    const/16 v4, 0x1000

    .line 276
    .line 277
    invoke-static {v4}, Ls0/b;->g(I)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    const/4 v5, 0x0

    .line 282
    if-eqz v4, :cond_9

    .line 283
    .line 284
    iget-byte v4, v0, Lc0/d;->e:B

    .line 285
    .line 286
    if-eq v4, v2, :cond_9

    .line 287
    .line 288
    invoke-static {v3}, Ls0/b;->g(I)Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_7

    .line 293
    .line 294
    const-string v2, "\n"

    .line 295
    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    :cond_7
    const-wide/16 v2, -0x2

    .line 300
    .line 301
    iget-wide v6, v0, Lc0/d;->d:J

    .line 302
    .line 303
    cmp-long v2, v6, v2

    .line 304
    .line 305
    if-nez v2, :cond_8

    .line 306
    .line 307
    const-string v2, "<LINK>"

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    invoke-static {v6, v7, v8, v5}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    :cond_9
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iget-object v2, p3, Lc0/e$a;->d:Landroid/widget/TextView;

    .line 325
    .line 326
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    .line 328
    .line 329
    iget-boolean v1, v0, Lc0/d;->g:Z

    .line 330
    .line 331
    iget-object v2, p3, Lc0/e$a;->a:Landroid/view/View;

    .line 332
    .line 333
    iget-object v3, p3, Lc0/e$a;->e:Landroid/widget/TextView;

    .line 334
    .line 335
    iget-object v4, p3, Lc0/e$a;->d:Landroid/widget/TextView;

    .line 336
    .line 337
    iget-object v6, p3, Lc0/e$a;->b:Landroid/widget/TextView;

    .line 338
    .line 339
    if-eqz v1, :cond_a

    .line 340
    .line 341
    iget v1, p0, Lc0/h;->d:I

    .line 342
    .line 343
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    .line 351
    .line 352
    iget v1, p0, Lc0/h;->e:I

    .line 353
    .line 354
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_a
    iget v1, p0, Lc0/h;->b:I

    .line 359
    .line 360
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    .line 368
    .line 369
    iget v1, p0, Lc0/h;->f:I

    .line 370
    .line 371
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 372
    .line 373
    .line 374
    :goto_4
    iget v1, p0, Lc0/h;->j:I

    .line 375
    .line 376
    const/high16 v2, 0x400000

    .line 377
    .line 378
    and-int/2addr v1, v2

    .line 379
    iget-object p3, p3, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 380
    .line 381
    if-eqz v1, :cond_b

    .line 382
    .line 383
    invoke-virtual {v0}, Lc0/d;->g()Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_b

    .line 388
    .line 389
    const v1, 0x7f070077

    .line 390
    .line 391
    .line 392
    invoke-virtual {p3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    const v0, 0x7f070078

    .line 396
    .line 397
    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p3, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 406
    .line 407
    .line 408
    goto :goto_5

    .line 409
    :cond_b
    invoke-virtual {p3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p3, v8}, Landroid/view/View;->setLongClickable(Z)V

    .line 413
    .line 414
    .line 415
    :goto_5
    return-object p2
.end method

.method public final m(Z)V
    .locals 0

    return-void
.end method
