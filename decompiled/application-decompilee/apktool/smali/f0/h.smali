.class public final Lf0/h;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lf0/i$c;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:I

.field public final i:Landroid/widget/ScrollView;

.field public j:Ly0/d;

.field public final k:Ljava/lang/String;

.field public l:I

.field public final m:Lb0/j;

.field public final n:Lb0/j;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public final u:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    invoke-direct/range {p0 .. p0}, Lf0/i;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v4, v0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 15
    .line 16
    iput-object v3, v0, Lf0/h;->k:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    invoke-static {v1, v5}, Lb/d;->K(II)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ".eXt"

    .line 34
    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, v0, Lf0/h;->k:Ljava/lang/String;

    .line 43
    .line 44
    :cond_0
    const/16 v3, 0x10

    .line 45
    .line 46
    invoke-static {v1, v3}, Lb/d;->K(II)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-object v3, v0, Lf0/h;->k:Ljava/lang/String;

    .line 53
    .line 54
    const-string v6, "/"

    .line 55
    .line 56
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    sget-object v3, Ls0/b;->a:Ljava/lang/String;

    .line 63
    .line 64
    if-nez v3, :cond_1

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    sget-object v7, Ls0/b;->b:[Ljava/lang/String;

    .line 72
    .line 73
    iget v4, v4, Lru/zdevs/zarchiver/d;->e:I

    .line 74
    .line 75
    aget-object v4, v7, v4

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v4, v0, Lf0/h;->k:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iput-object v3, v0, Lf0/h;->k:Ljava/lang/String;

    .line 93
    .line 94
    :cond_1
    const/4 v3, 0x2

    .line 95
    invoke-static {v3}, Ls0/b;->f(I)Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    iput-boolean v4, v0, Lf0/h;->s:Z

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    iput v4, v0, Lf0/h;->l:I

    .line 103
    .line 104
    const/4 v6, -0x1

    .line 105
    iput v6, v0, Lf0/h;->p:I

    .line 106
    .line 107
    iput v1, v0, Lf0/h;->u:I

    .line 108
    .line 109
    const-string v6, ""

    .line 110
    .line 111
    iput-object v6, v0, Lf0/h;->w:Ljava/lang/String;

    .line 112
    .line 113
    iput-object v6, v0, Lf0/h;->v:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v6, Landroid/app/AlertDialog$Builder;

    .line 116
    .line 117
    invoke-direct {v6, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    new-instance v7, Lf0/d;

    .line 121
    .line 122
    invoke-direct {v7, v0}, Lf0/d;-><init>(Lf0/h;)V

    .line 123
    .line 124
    .line 125
    const v8, 0x7f0c0040

    .line 126
    .line 127
    .line 128
    const v9, 0x7f090001

    .line 129
    .line 130
    .line 131
    invoke-static {v6, v8, v9, v7}, Ly0/e;->g(Landroid/app/AlertDialog$Builder;IILandroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/view/Menu;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    const v8, 0x7f07003b

    .line 136
    .line 137
    .line 138
    invoke-interface {v7, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    iget-boolean v8, v0, Lf0/h;->s:Z

    .line 143
    .line 144
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 145
    .line 146
    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    iget v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 156
    .line 157
    const/4 v9, 0x3

    .line 158
    if-ne v8, v3, :cond_2

    .line 159
    .line 160
    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 161
    .line 162
    and-int/lit8 v7, v7, 0xf

    .line 163
    .line 164
    if-ge v7, v9, :cond_2

    .line 165
    .line 166
    const v7, 0x7f08000d

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_2
    const v7, 0x7f08000c

    .line 171
    .line 172
    .line 173
    :goto_0
    iput v7, v0, Lf0/h;->h:I

    .line 174
    .line 175
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iget v8, v0, Lf0/h;->h:I

    .line 180
    .line 181
    const/4 v10, 0x0

    .line 182
    invoke-virtual {v7, v8, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    new-instance v8, Landroid/widget/ScrollView;

    .line 187
    .line 188
    invoke-direct {v8, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    iput-object v8, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 192
    .line 193
    invoke-virtual {v8, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 197
    .line 198
    .line 199
    const v8, 0x7f070062

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    check-cast v8, Lru/zdevs/zarchiver/ui/text/BtnEditText;

    .line 207
    .line 208
    const v11, 0x40001

    .line 209
    .line 210
    .line 211
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setInputType(I)V

    .line 212
    .line 213
    .line 214
    iget-object v11, v0, Lf0/h;->k:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v8, v0}, Lru/zdevs/zarchiver/ui/text/BtnEditText;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    const v8, 0x7f070045

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    check-cast v8, Landroid/widget/Button;

    .line 230
    .line 231
    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    const v8, 0x7f070058

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    check-cast v8, Landroid/widget/CheckBox;

    .line 242
    .line 243
    const/4 v11, 0x4

    .line 244
    invoke-static {v1, v11}, Lb/d;->K(II)Z

    .line 245
    .line 246
    .line 247
    move-result v11

    .line 248
    if-eqz v11, :cond_3

    .line 249
    .line 250
    invoke-virtual {v8, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v8, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 254
    .line 255
    .line 256
    :cond_3
    const v11, 0x7f0700aa

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    check-cast v11, Landroid/widget/Spinner;

    .line 264
    .line 265
    new-instance v12, Lb0/j;

    .line 266
    .line 267
    invoke-direct {v12, v2}, Lb0/j;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    iput-object v12, v0, Lf0/h;->m:Lb0/j;

    .line 271
    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    const v14, 0x7f020005

    .line 277
    .line 278
    .line 279
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    array-length v14, v13

    .line 284
    move v15, v4

    .line 285
    :goto_1
    if-ge v15, v14, :cond_4

    .line 286
    .line 287
    aget-object v9, v13, v15

    .line 288
    .line 289
    iget-object v10, v12, Lb0/j;->b:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    iget-object v9, v12, Lb0/j;->c:Ljava/util/ArrayList;

    .line 295
    .line 296
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 297
    .line 298
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    add-int/lit8 v15, v15, 0x1

    .line 302
    .line 303
    const/4 v9, 0x3

    .line 304
    const/4 v10, 0x0

    .line 305
    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 307
    .line 308
    .line 309
    const v9, 0x7f0700a7

    .line 310
    .line 311
    .line 312
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    check-cast v9, Landroid/widget/Spinner;

    .line 317
    .line 318
    const v10, 0x7f070063

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object v10

    .line 325
    check-cast v10, Lru/zdevs/zarchiver/ui/text/EditPassword;

    .line 326
    .line 327
    const v12, 0x7f0c0036

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setHint(I)V

    .line 331
    .line 332
    .line 333
    new-array v12, v5, [Landroid/text/InputFilter;

    .line 334
    .line 335
    new-instance v13, Landroid/text/InputFilter$LengthFilter;

    .line 336
    .line 337
    const/16 v14, 0x400

    .line 338
    .line 339
    invoke-direct {v13, v14}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 340
    .line 341
    .line 342
    aput-object v13, v12, v4

    .line 343
    .line 344
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 345
    .line 346
    .line 347
    const v10, 0x7f0700a8

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v10

    .line 354
    check-cast v10, Landroid/widget/Spinner;

    .line 355
    .line 356
    invoke-static {v1, v3}, Lb/d;->K(II)Z

    .line 357
    .line 358
    .line 359
    move-result v12

    .line 360
    const v13, 0x1090009

    .line 361
    .line 362
    .line 363
    const v14, 0x1090008

    .line 364
    .line 365
    .line 366
    if-eqz v12, :cond_7

    .line 367
    .line 368
    invoke-static {v1, v5}, Lb/d;->K(II)Z

    .line 369
    .line 370
    .line 371
    move-result v12

    .line 372
    if-eqz v12, :cond_5

    .line 373
    .line 374
    goto :goto_3

    .line 375
    :cond_5
    iget-object v12, v0, Lf0/h;->k:Ljava/lang/String;

    .line 376
    .line 377
    const/16 v15, 0x2e

    .line 378
    .line 379
    invoke-virtual {v12, v15}, Ljava/lang/String;->lastIndexOf(I)I

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    if-lez v15, :cond_6

    .line 384
    .line 385
    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v12

    .line 389
    invoke-static {v12}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v12

    .line 393
    goto :goto_2

    .line 394
    :cond_6
    const/4 v12, 0x0

    .line 395
    :goto_2
    const-string v15, ".tar"

    .line 396
    .line 397
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v12

    .line 401
    if-eqz v12, :cond_8

    .line 402
    .line 403
    const v12, 0x7f020004

    .line 404
    .line 405
    .line 406
    invoke-static {v2, v12, v14}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 407
    .line 408
    .line 409
    move-result-object v12

    .line 410
    invoke-virtual {v12, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v10, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 414
    .line 415
    .line 416
    goto :goto_4

    .line 417
    :cond_7
    :goto_3
    const v12, 0x7f020003

    .line 418
    .line 419
    .line 420
    invoke-static {v2, v12, v14}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 421
    .line 422
    .line 423
    move-result-object v12

    .line 424
    invoke-virtual {v12, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v10, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 428
    .line 429
    .line 430
    :cond_8
    :goto_4
    const v12, 0x7f0700ab

    .line 431
    .line 432
    .line 433
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 434
    .line 435
    .line 436
    move-result-object v12

    .line 437
    check-cast v12, Landroid/widget/Spinner;

    .line 438
    .line 439
    new-instance v13, Lb0/j;

    .line 440
    .line 441
    invoke-direct {v13, v2}, Lb0/j;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    iput-object v13, v0, Lf0/h;->n:Lb0/j;

    .line 445
    .line 446
    const/4 v13, 0x0

    .line 447
    invoke-virtual {v0, v2, v13}, Lf0/h;->r(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    new-instance v13, Lf0/e;

    .line 451
    .line 452
    invoke-direct {v13, v0}, Lf0/e;-><init>(Lf0/h;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v12, v13}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 456
    .line 457
    .line 458
    const v12, 0x7f07005b

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    check-cast v7, Landroid/widget/CheckBox;

    .line 466
    .line 467
    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 468
    .line 469
    .line 470
    invoke-static {v1, v3}, Lb/d;->K(II)Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    xor-int/2addr v1, v5

    .line 475
    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v8, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 479
    .line 480
    .line 481
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    const-string v3, "sCompressDefType"

    .line 486
    .line 487
    const-string v5, "7z"

    .line 488
    .line 489
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    const-string v5, "iCompressDefLevel"

    .line 494
    .line 495
    const/4 v7, 0x3

    .line 496
    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    const-string v7, "iCompressDefEncrypt"

    .line 501
    .line 502
    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    invoke-virtual {v10}, Landroid/widget/AdapterView;->getCount()I

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    :goto_5
    if-ge v4, v7, :cond_a

    .line 511
    .line 512
    invoke-virtual {v10, v4}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v8

    .line 516
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v8

    .line 520
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    if-eqz v8, :cond_9

    .line 525
    .line 526
    invoke-virtual {v10, v4}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v2, v4}, Lf0/h;->u(Landroid/content/Context;I)V

    .line 530
    .line 531
    .line 532
    goto :goto_6

    .line 533
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 534
    .line 535
    goto :goto_5

    .line 536
    :cond_a
    :goto_6
    invoke-virtual {v11}, Landroid/widget/AdapterView;->getCount()I

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    if-ge v5, v2, :cond_b

    .line 541
    .line 542
    if-ltz v5, :cond_b

    .line 543
    .line 544
    invoke-virtual {v11, v5}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 545
    .line 546
    .line 547
    :cond_b
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getCount()I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-ge v1, v2, :cond_c

    .line 552
    .line 553
    if-ltz v1, :cond_c

    .line 554
    .line 555
    invoke-virtual {v9, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 556
    .line 557
    .line 558
    :cond_c
    new-instance v1, Lf0/f;

    .line 559
    .line 560
    invoke-direct {v1, v0}, Lf0/f;-><init>(Lf0/h;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v10, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 564
    .line 565
    .line 566
    const v1, 0x7f0c0029

    .line 567
    .line 568
    .line 569
    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 570
    .line 571
    .line 572
    const v1, 0x7f0c0025

    .line 573
    .line 574
    .line 575
    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 582
    .line 583
    .line 584
    move-result-object v1

    .line 585
    iput-object v1, v0, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Lf0/i;->a()V

    .line 588
    .line 589
    .line 590
    return-void
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    const-string v0, "bzip2"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x3

    .line 24
    goto :goto_0

    .line 25
    :sswitch_1
    const-string v0, "zstd"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x2

    .line 35
    goto :goto_0

    .line 36
    :sswitch_2
    const-string v0, "gzip"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :sswitch_3
    const-string v0, "tar.zstd"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const/4 v1, 0x0

    .line 57
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    const-string v0, "."

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :pswitch_0
    const-string p0, ".bz2"

    .line 68
    .line 69
    return-object p0

    .line 70
    :pswitch_1
    const-string p0, ".zst"

    .line 71
    .line 72
    return-object p0

    .line 73
    :pswitch_2
    const-string p0, ".gz"

    .line 74
    .line 75
    return-object p0

    .line 76
    :pswitch_3
    const-string p0, ".tar.zst"

    .line 77
    .line 78
    return-object p0

    .line 79
    :sswitch_data_0
    .sparse-switch
        -0x1d7153ee -> :sswitch_3
        0x30a95a -> :sswitch_2
        0x393369 -> :sswitch_1
        0x59e0c93 -> :sswitch_0
    .end sparse-switch

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b(Lf0/i;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lf0/i;->k()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x7

    .line 12
    if-ne v0, v2, :cond_5

    .line 13
    .line 14
    check-cast p1, Lf0/p;

    .line 15
    .line 16
    iget-object v0, p0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 17
    .line 18
    const v2, 0x7f070062

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/widget/EditText;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lf0/p;->v()Lg0/h;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    return v1

    .line 37
    :cond_2
    iget-object p1, p1, Lf0/p;->m:Ljava/lang/String;

    .line 38
    .line 39
    const/16 v4, 0x2f

    .line 40
    .line 41
    if-nez p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lg0/h;->r()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lg0/h;->r()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iput-object v3, p0, Lf0/h;->t:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    const v2, 0x7f0700a8

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/widget/Spinner;

    .line 123
    .line 124
    invoke-static {p1}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    :goto_0
    if-ge v1, v2, :cond_5

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_4

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_4

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 162
    return p1
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget p2, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 7
    .line 8
    and-int/lit8 p2, p2, 0xf

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    if-ge p2, v0, :cond_0

    .line 12
    .line 13
    const p2, 0x7f08000d

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const p2, 0x7f08000c

    .line 18
    .line 19
    .line 20
    :goto_0
    iget v0, p0, Lf0/h;->h:I

    .line 21
    .line 22
    if-ne v0, p2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput p2, p0, Lf0/h;->h:I

    .line 26
    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget p2, p0, Lf0/h;->h:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object p2, p0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 40
    .line 41
    invoke-static {p2, p1}, Lf0/i;->l(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    const v1, 0x7f07005b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/widget/CheckBox;

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    .line 55
    .line 56
    const v1, 0x7f070045

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/Button;

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const v1, 0x7f070062

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lru/zdevs/zarchiver/ui/text/BtnEditText;

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Lru/zdevs/zarchiver/ui/text/BtnEditText;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lf0/h;->j:Ly0/d;

    .line 87
    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p1}, Ly0/d;->a()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lf0/h;->j:Ly0/d;

    .line 94
    .line 95
    :cond_2
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 10
    .line 11
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 2
    .line 3
    const v0, 0x7f070062

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lru/zdevs/zarchiver/ui/text/BtnEditText;

    .line 11
    .line 12
    const v1, 0x7f0700a8

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/widget/Spinner;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iget-object v2, p0, Lf0/h;->k:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const/16 p2, 0x2f

    .line 27
    .line 28
    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const-string v3, "<name>"

    .line 33
    .line 34
    if-ltz p2, :cond_0

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    add-int/lit8 p2, p2, 0x1

    .line 42
    .line 43
    invoke-virtual {v2, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    const p2, 0x7f0600f4

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Lru/zdevs/zarchiver/ui/text/BtnEditText;->setButton(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/text/BtnEditText;->setButton(I)V

    .line 71
    .line 72
    .line 73
    :goto_0
    const/4 p2, -0x1

    .line 74
    iput p2, p0, Lf0/h;->p:I

    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0, p2, p1}, Lf0/h;->u(Landroid/content/Context;I)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    .line 1
    iget-object v3, v0, Lf0/i;->b:Lf0/i$c;

    if-eqz v3, :cond_27

    .line 2
    iget-object v3, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    const v4, 0x7f0700a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 3
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    const/16 v6, 0x20

    const v10, 0x7f070063

    const v11, 0x7f0700a7

    const/4 v12, 0x1

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    move v2, v12

    goto :goto_4

    .line 4
    :cond_1
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lru/zdevs/zarchiver/ui/text/EditPassword;

    .line 5
    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Lu0/h;->e(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 9
    invoke-virtual {v13}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v13

    if-nez v13, :cond_6

    .line 10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_0

    .line 11
    invoke-virtual {v5, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_5

    const/16 v2, 0x7f

    if-le v15, v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    const v2, 0x7f0c0107

    .line 12
    invoke-static {v2}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    goto :goto_3

    .line 13
    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x80

    if-le v2, v5, :cond_0

    const-string v2, "The WinZIP AES format has a password length limit of 128 characters."

    .line 14
    invoke-static {v2}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_7

    return-void

    :cond_7
    const v2, 0x7f070062

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v13, 0x7f07005b

    .line 16
    invoke-virtual {v3, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    const v14, 0x7f070058

    .line 17
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const-string v15, ""

    .line 18
    iput-object v15, v0, Lf0/h;->v:Ljava/lang/String;

    iput-object v15, v0, Lf0/h;->w:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 20
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_26

    .line 22
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Spinner;

    .line 23
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    .line 24
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lru/zdevs/zarchiver/ui/text/EditPassword;

    const v9, 0x7f0700ab

    .line 25
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    const v11, 0x7f0700aa

    .line 26
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Spinner;

    .line 27
    invoke-virtual/range {v16 .. v16}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 28
    invoke-static/range {v20 .. v20}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 29
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v20

    const/4 v4, 0x3

    const/4 v6, 0x2

    sparse-switch v20, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v8, "tar.zstd"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    const/4 v8, 0x4

    goto :goto_6

    :sswitch_1
    const-string v8, "tar.xz"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    move v8, v4

    goto :goto_6

    :sswitch_2
    const-string v8, "tar.gz"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    move v8, v6

    goto :goto_6

    :sswitch_3
    const-string v8, "tar.lz4"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_5

    :cond_b
    move v8, v12

    goto :goto_6

    :sswitch_4
    const-string v8, "tar.bz2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    :goto_5
    const/4 v8, -0x1

    :goto_6
    const-string v7, "txz"

    if-eqz v8, :cond_11

    if-eq v8, v12, :cond_10

    if-eq v8, v6, :cond_f

    if-eq v8, v4, :cond_e

    const/4 v4, 0x4

    if-eq v8, v4, :cond_d

    goto :goto_7

    :cond_d
    const-string v11, "tzstd"

    goto :goto_7

    :cond_e
    move-object v11, v7

    goto :goto_7

    :cond_f
    const-string v11, "tgz"

    goto :goto_7

    :cond_10
    const-string v11, "tlz4"

    goto :goto_7

    :cond_11
    const-string v11, "tbz"

    .line 30
    :goto_7
    iput-object v11, v0, Lf0/h;->w:Ljava/lang/String;

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v10

    const-wide/16 v23, 0x0

    if-eqz v10, :cond_16

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_16

    const-string v10, "\\-p"

    .line 34
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\\"

    const-string v6, "\\\\"

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual/range {v16 .. v16}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v25

    cmp-long v6, v25, v23

    if-nez v6, :cond_12

    .line 36
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v12, :cond_16

    const-string v6, "\\-mhe"

    .line 37
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 38
    :cond_12
    invoke-virtual/range {v16 .. v16}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v25

    const-wide/16 v21, 0x1

    cmp-long v6, v25, v21

    if-nez v6, :cond_16

    .line 39
    invoke-virtual/range {v17 .. v17}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-eq v6, v12, :cond_15

    const/4 v8, 0x2

    if-eq v6, v8, :cond_14

    const/4 v8, 0x3

    if-eq v6, v8, :cond_13

    goto :goto_8

    :cond_13
    const-string v6, "\\-mem=AES256"

    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_14
    const-string v6, "\\-mem=AES192"

    .line 41
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_15
    const-string v6, "\\-mem=AES128"

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_16
    :goto_8
    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-lez v6, :cond_17

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v12

    :cond_17
    const-string v8, "lz4"

    const-string v10, "zstd"

    if-gtz v6, :cond_18

    .line 44
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    goto :goto_9

    :cond_18
    move v12, v6

    .line 45
    :cond_19
    :goto_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    mul-int/lit8 v12, v12, 0x2

    .line 46
    :cond_1b
    invoke-virtual/range {v16 .. v16}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v17

    const-wide/16 v19, 0x2

    cmp-long v6, v17, v19

    if-eqz v6, :cond_1c

    const-string v6, "\\-mx="

    .line 47
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    :cond_1c
    invoke-virtual/range {v16 .. v16}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v16

    cmp-long v6, v16, v23

    const-string v8, "m"

    if-nez v6, :cond_1d

    .line 49
    iget-boolean v6, v0, Lf0/h;->s:Z

    invoke-static {v4, v12, v6}, Lb/d;->f(Ljava/lang/StringBuilder;IZ)V

    goto :goto_a

    :cond_1d
    const-string v6, "xz"

    .line 50
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_1e
    const-string v6, "\\-mmt=1\\-mf=off"

    .line 51
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 52
    invoke-static {v6, v12}, Ld0/b;->a(II)I

    move-result v6

    if-lez v6, :cond_1f

    const-string v7, "\\-md="

    .line 53
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1f
    :goto_a
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v6

    cmp-long v6, v6, v23

    if-lez v6, :cond_23

    .line 55
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 58
    sget-object v7, Lu0/h;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_b

    .line 59
    :cond_20
    sget-object v7, Lu0/h;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string v8, "k"

    goto :goto_b

    .line 60
    :cond_21
    sget-object v7, Lu0/h;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string v8, "g"

    goto :goto_b

    :cond_22
    const-string v8, "b"

    :goto_b
    const-string v7, "\\D"

    .line 61
    invoke-virtual {v6, v7, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_23

    .line 63
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_23

    const-string v7, "\\-v"

    .line 64
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    const-string v6, "\\-snl\\-snh"

    .line 65
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lf0/h;->v:Ljava/lang/String;

    .line 67
    iget-object v4, v0, Lf0/h;->t:Ljava/lang/String;

    if-eqz v4, :cond_24

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 68
    iput-object v2, v0, Lf0/h;->t:Ljava/lang/String;

    .line 69
    :cond_24
    iget-object v2, v0, Lf0/h;->g:Landroid/app/AlertDialog;

    if-nez v2, :cond_25

    goto :goto_c

    :cond_25
    const v2, 0x7f0700a8

    .line 70
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const v4, 0x7f0700aa

    .line 71
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    const v6, 0x7f0700a7

    .line 72
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 73
    iget-object v6, v0, Lf0/h;->g:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 74
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 75
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "sCompressDefType"

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "iCompressDefLevel"

    .line 76
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "iCompressDefEncrypt"

    .line 77
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    :cond_26
    :goto_c
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lf0/h;->o:Ljava/lang/String;

    .line 80
    invoke-virtual {v14}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lf0/h;->q:Z

    .line 81
    invoke-virtual {v13}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lf0/h;->r:Z

    .line 82
    iget-object v2, v0, Lf0/i;->b:Lf0/i$c;

    invoke-interface {v2, v0}, Lf0/i$c;->b(Lf0/i;)Z

    :cond_27
    const/4 v2, -0x2

    if-ne v1, v2, :cond_28

    .line 83
    iget-object v1, v0, Lf0/i;->a:Lf0/i$b;

    if-eqz v1, :cond_28

    .line 84
    invoke-interface {v1, v0}, Lf0/i$b;->a(Lf0/i;)V

    .line 85
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lf0/h;->d()V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5bca32ef -> :sswitch_4
        -0x5bca0d63 -> :sswitch_3
        -0x34826424 -> :sswitch_2
        -0x34826215 -> :sswitch_1
        -0x1d7153ee -> :sswitch_0
    .end sparse-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 86
    iget-object v0, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070045

    if-ne v0, v1, :cond_2

    .line 88
    new-instance p1, Lf0/p;

    iget-object v0, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    iget-object v1, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lf0/p;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;)V

    .line 89
    invoke-static {}, Ls0/b;->j()Z

    move-result v0

    .line 90
    iget-object v1, p1, Lf0/p;->g:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p1, Lf0/p;->i:Landroid/widget/FrameLayout;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 92
    invoke-virtual {v1, v0}, Lru/zdevs/zarchiver/ui/FSSelect;->setRootSupport(Z)V

    .line 93
    :cond_1
    iget v0, p0, Lf0/i;->c:I

    .line 94
    iput v0, p1, Lf0/i;->c:I

    .line 95
    iput-object p0, p1, Lf0/i;->b:Lf0/i$c;

    .line 96
    invoke-virtual {p1}, Lf0/p;->x()V

    goto :goto_0

    :cond_2
    const v1, 0x7f070062

    if-ne v0, v1, :cond_3

    .line 97
    :try_start_0
    new-instance v0, Ly0/d;

    iget-object v1, p0, Lf0/h;->g:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v1, 0x50

    const v2, 0x7f0c0090

    .line 98
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p1

    move v5, v1

    invoke-direct/range {v2 .. v8}, Ly0/d;-><init>(Landroid/content/Context;Landroid/view/View;ILjava/lang/String;II)V

    .line 99
    iput-object v0, p0, Lf0/h;->j:Ly0/d;

    .line 100
    iget-object v2, v0, Ly0/d;->f:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 101
    iget-object p1, v0, Ly0/d;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/h;->n:Lb0/j;

    .line 2
    .line 3
    iget-object v1, v0, Lb0/j;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lb0/j;->c:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const v2, 0x7f0c003e

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, "5"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lu0/h;->b:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "10"

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lu0/h;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, "24"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lu0/h;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "50"

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lu0/h;->b:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v2, "100"

    .line 106
    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v2, Lu0/h;->b:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Lb0/j;->getCount()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    iput v1, p0, Lf0/h;->l:I

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const v1, 0x7f0c003f

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Lb0/j;->a(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    if-eqz p2, :cond_0

    .line 143
    .line 144
    invoke-virtual {v0, p2}, Lb0/j;->a(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_0
    iget-object p1, p0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 148
    .line 149
    const v1, 0x7f0700ab

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/widget/Spinner;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 159
    .line 160
    .line 161
    if-eqz p2, :cond_1

    .line 162
    .line 163
    invoke-virtual {v0}, Lb0/j;->getCount()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    add-int/lit8 p2, p2, -0x1

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_1
    const/4 p2, 0x0

    .line 174
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 175
    .line 176
    .line 177
    :goto_0
    return-void
.end method

.method public final s()Z
    .locals 2

    iget-boolean v0, p0, Lf0/h;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lf0/h;->u:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lb/d;->K(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u(Landroid/content/Context;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lf0/h;->p:I

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_2

    .line 11
    .line 12
    iget-object v2, v0, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v2, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move-object/from16 v2, p1

    .line 25
    .line 26
    :goto_0
    iget-object v3, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 27
    .line 28
    const v4, 0x7f070062

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/EditText;

    .line 36
    .line 37
    iget-object v4, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 38
    .line 39
    const v5, 0x7f0700a8

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/widget/Spinner;

    .line 47
    .line 48
    iget-object v5, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 49
    .line 50
    const v6, 0x7f0700a7

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/widget/Spinner;

    .line 58
    .line 59
    iget-object v6, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 60
    .line 61
    const v7, 0x7f070063

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Lru/zdevs/zarchiver/ui/text/EditPassword;

    .line 69
    .line 70
    iget-object v7, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 71
    .line 72
    const v8, 0x7f0700ab

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Landroid/widget/Spinner;

    .line 80
    .line 81
    iget-object v8, v0, Lf0/h;->i:Landroid/widget/ScrollView;

    .line 82
    .line 83
    const v9, 0x7f0700aa

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    check-cast v8, Landroid/widget/Spinner;

    .line 91
    .line 92
    iget v9, v0, Lf0/h;->p:I

    .line 93
    .line 94
    const/4 v10, 0x0

    .line 95
    if-ltz v9, :cond_4

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    iget v11, v0, Lf0/h;->p:I

    .line 106
    .line 107
    invoke-virtual {v4, v11}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-static {v11}, Lf0/h;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    invoke-virtual {v9, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_3

    .line 124
    .line 125
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    sub-int/2addr v12, v11

    .line 134
    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    invoke-static {v9}, Lb/d;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-static {v9}, Lb/d;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    :goto_1
    iget-object v11, v0, Lf0/h;->k:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_5

    .line 171
    .line 172
    invoke-static {v9}, Lb/d;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    :cond_5
    invoke-virtual {v4, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-static {v4}, Lf0/h;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-static {v4}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v12

    .line 192
    const-string v13, "xz"

    .line 193
    .line 194
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    const/4 v15, 0x1

    .line 199
    const-string v10, "lz4"

    .line 200
    .line 201
    if-nez v14, :cond_6

    .line 202
    .line 203
    const-string v14, "bzip2"

    .line 204
    .line 205
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    if-nez v14, :cond_6

    .line 210
    .line 211
    const-string v14, "gzip"

    .line 212
    .line 213
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    if-nez v14, :cond_6

    .line 218
    .line 219
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    if-nez v14, :cond_6

    .line 224
    .line 225
    const-string v14, "zstd"

    .line 226
    .line 227
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    if-nez v12, :cond_6

    .line 232
    .line 233
    move v12, v15

    .line 234
    goto :goto_2

    .line 235
    :cond_6
    const/4 v12, 0x0

    .line 236
    :goto_2
    if-nez v12, :cond_8

    .line 237
    .line 238
    iget-object v12, v0, Lf0/h;->k:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v12}, Lb/d;->Z(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v12

    .line 244
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    if-eqz v12, :cond_7

    .line 249
    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    iget-object v12, v0, Lf0/h;->k:Ljava/lang/String;

    .line 256
    .line 257
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    goto :goto_3

    .line 268
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    goto :goto_3

    .line 284
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    :goto_3
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    if-gt v1, v15, :cond_9

    .line 303
    .line 304
    move v3, v15

    .line 305
    goto :goto_4

    .line 306
    :cond_9
    const/4 v3, 0x0

    .line 307
    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 308
    .line 309
    .line 310
    if-gt v1, v15, :cond_b

    .line 311
    .line 312
    if-nez v1, :cond_a

    .line 313
    .line 314
    const/high16 v3, 0x7f020000

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_a
    const v3, 0x7f020001

    .line 318
    .line 319
    .line 320
    :goto_5
    const v9, 0x1090008

    .line 321
    .line 322
    .line 323
    invoke-static {v2, v3, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    const v3, 0x1090009

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 334
    .line 335
    .line 336
    :cond_b
    if-gt v1, v15, :cond_c

    .line 337
    .line 338
    move v2, v15

    .line 339
    goto :goto_6

    .line 340
    :cond_c
    const/4 v2, 0x0

    .line 341
    :goto_6
    invoke-virtual {v6, v2}, Lru/zdevs/zarchiver/ui/text/EditPassword;->setEnabled(Z)V

    .line 342
    .line 343
    .line 344
    if-gt v1, v15, :cond_d

    .line 345
    .line 346
    move v2, v15

    .line 347
    goto :goto_7

    .line 348
    :cond_d
    const/4 v2, 0x0

    .line 349
    :goto_7
    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 350
    .line 351
    .line 352
    const/4 v2, 0x2

    .line 353
    if-eq v1, v2, :cond_e

    .line 354
    .line 355
    move v3, v15

    .line 356
    goto :goto_8

    .line 357
    :cond_e
    const/4 v3, 0x0

    .line 358
    :goto_8
    invoke-virtual {v8, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 359
    .line 360
    .line 361
    iget-object v3, v0, Lf0/h;->m:Lb0/j;

    .line 362
    .line 363
    const/4 v5, 0x3

    .line 364
    if-nez v3, :cond_f

    .line 365
    .line 366
    goto :goto_d

    .line 367
    :cond_f
    iget-object v6, v3, Lb0/j;->c:Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    const/4 v9, 0x0

    .line 374
    :goto_9
    if-ge v9, v7, :cond_10

    .line 375
    .line 376
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 377
    .line 378
    invoke-virtual {v6, v9, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    add-int/lit8 v9, v9, 0x1

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_10
    invoke-static {v4}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    if-eqz v6, :cond_11

    .line 393
    .line 394
    const/4 v6, 0x0

    .line 395
    invoke-virtual {v3, v6}, Lb0/j;->b(I)V

    .line 396
    .line 397
    .line 398
    goto :goto_a

    .line 399
    :cond_11
    const/4 v6, 0x0

    .line 400
    :goto_a
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    if-nez v7, :cond_13

    .line 405
    .line 406
    const-string v7, "tar.xz"

    .line 407
    .line 408
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    if-eqz v7, :cond_12

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_12
    move v10, v6

    .line 416
    goto :goto_c

    .line 417
    :cond_13
    :goto_b
    move v10, v15

    .line 418
    :goto_c
    if-nez v10, :cond_14

    .line 419
    .line 420
    const-string v6, "7z"

    .line 421
    .line 422
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    if-eqz v4, :cond_18

    .line 427
    .line 428
    :cond_14
    invoke-static {v15}, Ls0/b;->f(I)Z

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    if-nez v4, :cond_18

    .line 433
    .line 434
    invoke-static {v10}, Ld0/b;->f(Z)I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    const/16 v6, 0x9

    .line 439
    .line 440
    const/4 v7, 0x5

    .line 441
    if-ge v4, v6, :cond_15

    .line 442
    .line 443
    invoke-virtual {v3, v7}, Lb0/j;->b(I)V

    .line 444
    .line 445
    .line 446
    :cond_15
    const/4 v6, 0x7

    .line 447
    if-ge v4, v6, :cond_16

    .line 448
    .line 449
    const/4 v6, 0x4

    .line 450
    invoke-virtual {v3, v6}, Lb0/j;->b(I)V

    .line 451
    .line 452
    .line 453
    :cond_16
    if-ge v4, v7, :cond_17

    .line 454
    .line 455
    invoke-virtual {v3, v5}, Lb0/j;->b(I)V

    .line 456
    .line 457
    .line 458
    :cond_17
    if-ge v4, v5, :cond_18

    .line 459
    .line 460
    invoke-virtual {v3, v2}, Lb0/j;->b(I)V

    .line 461
    .line 462
    .line 463
    :cond_18
    :goto_d
    if-nez v1, :cond_19

    .line 464
    .line 465
    :try_start_0
    sget v3, Ls0/b;->f:I

    .line 466
    .line 467
    const v4, 0xf000

    .line 468
    .line 469
    .line 470
    and-int/2addr v3, v4

    .line 471
    shr-int/lit8 v5, v3, 0xc

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :cond_19
    if-ne v1, v15, :cond_1a

    .line 475
    .line 476
    sget v3, Ls0/b;->f:I

    .line 477
    .line 478
    const/high16 v4, 0xf0000

    .line 479
    .line 480
    and-int/2addr v3, v4

    .line 481
    shr-int/lit8 v5, v3, 0x10

    .line 482
    .line 483
    :cond_1a
    :goto_e
    add-int/2addr v5, v15

    .line 484
    div-int/2addr v5, v2

    .line 485
    invoke-virtual {v8, v5}, Landroid/widget/AdapterView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .line 487
    .line 488
    :catch_0
    iput v1, v0, Lf0/h;->p:I

    .line 489
    .line 490
    return-void
.end method
