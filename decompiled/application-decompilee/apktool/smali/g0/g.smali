.class public final Lg0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Z = false

.field public static h:[Lg0/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/h;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg0/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/16 v0, 0x300

    .line 7
    .line 8
    invoke-static {v0}, Ls0/b;->k(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 15
    .line 16
    const v1, 0x7f0d0051

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    move-object p1, v0

    .line 23
    :cond_0
    iput-object p1, p0, Lg0/g;->b:Landroid/content/Context;

    .line 24
    .line 25
    new-instance p1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lg0/g;->c:Ljava/util/ArrayList;

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lg0/g;->d:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public static c(Landroid/content/Context;Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/b;I[ILandroid/graphics/Point;)V
    .locals 24

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move/from16 v0, p3

    .line 6
    .line 7
    move-object/from16 v6, p4

    .line 8
    .line 9
    new-instance v5, Lg0/g;

    .line 10
    .line 11
    move-object/from16 v1, p0

    .line 12
    .line 13
    invoke-direct {v5, v1}, Lg0/g;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget-char v1, v7, Lru/zdevs/zarchiver/d;->a:C

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_0
    iget-object v4, v8, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 23
    .line 24
    invoke-virtual/range {p2 .. p2}, Lru/zdevs/zarchiver/b;->f()B

    .line 25
    .line 26
    .line 27
    move-result v16

    .line 28
    invoke-virtual/range {p2 .. p2}, Lru/zdevs/zarchiver/b;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v17

    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v0, v3}, Lb/d;->K(II)Z

    .line 34
    .line 35
    .line 36
    move-result v18

    .line 37
    sget-object v1, Lg0/g;->h:[Lg0/d;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    const/4 v15, 0x4

    .line 41
    const/16 v19, 0x0

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    new-array v1, v15, [Lg0/d;

    .line 46
    .line 47
    sput-object v1, Lg0/g;->h:[Lg0/d;

    .line 48
    .line 49
    new-instance v9, Li0/f;

    .line 50
    .line 51
    invoke-direct {v9}, Li0/f;-><init>()V

    .line 52
    .line 53
    .line 54
    aput-object v9, v1, v19

    .line 55
    .line 56
    new-instance v9, Ll0/e;

    .line 57
    .line 58
    invoke-direct {v9}, Ll0/e;-><init>()V

    .line 59
    .line 60
    .line 61
    aput-object v9, v1, v3

    .line 62
    .line 63
    new-instance v9, Lh0/c;

    .line 64
    .line 65
    invoke-direct {v9}, Lh0/c;-><init>()V

    .line 66
    .line 67
    .line 68
    aput-object v9, v1, v2

    .line 69
    .line 70
    new-instance v9, Lb/d;

    .line 71
    .line 72
    invoke-direct {v9}, Lb/d;-><init>()V

    .line 73
    .line 74
    .line 75
    const/4 v10, 0x3

    .line 76
    aput-object v9, v1, v10

    .line 77
    .line 78
    :cond_1
    sget-object v1, Lg0/g;->h:[Lg0/d;

    .line 79
    .line 80
    array-length v14, v1

    .line 81
    move/from16 v13, v19

    .line 82
    .line 83
    :goto_0
    if-ge v13, v14, :cond_7

    .line 84
    .line 85
    aget-object v20, v1, v13

    .line 86
    .line 87
    if-eqz v17, :cond_2

    .line 88
    .line 89
    iget-object v12, v8, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 90
    .line 91
    move-object/from16 v9, v20

    .line 92
    .line 93
    move-object v10, v5

    .line 94
    move-object v11, v4

    .line 95
    move-object/from16 v21, v12

    .line 96
    .line 97
    move/from16 v12, v16

    .line 98
    .line 99
    move/from16 v22, v13

    .line 100
    .line 101
    move-object/from16 v13, p4

    .line 102
    .line 103
    move/from16 v23, v14

    .line 104
    .line 105
    move-object/from16 v14, v21

    .line 106
    .line 107
    move/from16 v21, v15

    .line 108
    .line 109
    move/from16 v15, v18

    .line 110
    .line 111
    invoke-interface/range {v9 .. v15}, Lg0/d;->a(Lg0/g;Lg0/h;B[ILc0/i;Z)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_3

    .line 116
    .line 117
    move v11, v2

    .line 118
    move v12, v3

    .line 119
    move-object v14, v5

    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :cond_2
    move/from16 v22, v13

    .line 123
    .line 124
    move/from16 v23, v14

    .line 125
    .line 126
    move/from16 v21, v15

    .line 127
    .line 128
    :cond_3
    if-nez v18, :cond_4

    .line 129
    .line 130
    iget-object v9, v8, Lru/zdevs/zarchiver/b;->q:Lc0/b;

    .line 131
    .line 132
    move-object v10, v1

    .line 133
    move-object/from16 v1, v20

    .line 134
    .line 135
    move v11, v2

    .line 136
    move-object v2, v5

    .line 137
    move v12, v3

    .line 138
    move-object v3, v4

    .line 139
    move-object v13, v4

    .line 140
    move/from16 v4, v16

    .line 141
    .line 142
    move-object v14, v5

    .line 143
    move-object/from16 v5, p4

    .line 144
    .line 145
    move-object v15, v6

    .line 146
    move-object v6, v9

    .line 147
    invoke-interface/range {v1 .. v6}, Lg0/d;->c(Lg0/g;Lg0/h;B[ILc0/b;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    move-object v10, v1

    .line 155
    move v11, v2

    .line 156
    move v12, v3

    .line 157
    move-object v13, v4

    .line 158
    move-object v14, v5

    .line 159
    move-object v15, v6

    .line 160
    :cond_5
    if-eqz v18, :cond_6

    .line 161
    .line 162
    iget-object v6, v8, Lru/zdevs/zarchiver/b;->q:Lc0/b;

    .line 163
    .line 164
    move-object/from16 v1, v20

    .line 165
    .line 166
    move-object v2, v14

    .line 167
    move-object v3, v13

    .line 168
    move/from16 v4, v16

    .line 169
    .line 170
    move-object/from16 v5, p4

    .line 171
    .line 172
    invoke-interface/range {v1 .. v6}, Lg0/d;->b(Lg0/g;Lg0/h;B[ILc0/b;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_6

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_6
    add-int/lit8 v1, v22, 0x1

    .line 180
    .line 181
    move v2, v11

    .line 182
    move v3, v12

    .line 183
    move-object v4, v13

    .line 184
    move-object v5, v14

    .line 185
    move-object v6, v15

    .line 186
    move/from16 v15, v21

    .line 187
    .line 188
    move/from16 v14, v23

    .line 189
    .line 190
    move v13, v1

    .line 191
    move-object v1, v10

    .line 192
    goto :goto_0

    .line 193
    :cond_7
    move v11, v2

    .line 194
    move v12, v3

    .line 195
    move-object v14, v5

    .line 196
    move/from16 v21, v15

    .line 197
    .line 198
    :goto_1
    move-object v15, v6

    .line 199
    :goto_2
    iget-object v3, v14, Lg0/g;->c:Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_8

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_8
    array-length v1, v15

    .line 209
    if-le v1, v12, :cond_9

    .line 210
    .line 211
    iget-object v1, v14, Lg0/g;->a:Landroid/content/Context;

    .line 212
    .line 213
    const v2, 0x7f0c00c4

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    iput-object v1, v14, Lg0/g;->d:Ljava/lang/String;

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_9
    if-eqz v17, :cond_a

    .line 224
    .line 225
    iget-object v1, v8, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 226
    .line 227
    aget v2, v15, v19

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Lc0/i;->j(I)Lc0/f;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    iget-object v1, v1, Lc0/d;->a:Ljava/lang/String;

    .line 234
    .line 235
    iput-object v1, v14, Lg0/g;->d:Ljava/lang/String;

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_a
    iget-object v1, v8, Lru/zdevs/zarchiver/b;->q:Lc0/b;

    .line 239
    .line 240
    aget v2, v15, v19

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Lc0/b;->b(I)Lc0/d;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-object v1, v1, Lc0/d;->a:Ljava/lang/String;

    .line 247
    .line 248
    iput-object v1, v14, Lg0/g;->d:Ljava/lang/String;

    .line 249
    .line 250
    :goto_3
    invoke-static {v0, v11}, Lb/d;->K(II)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    sget-boolean v0, Lg0/g;->g:Z

    .line 257
    .line 258
    if-eqz v0, :cond_b

    .line 259
    .line 260
    if-eqz p5, :cond_b

    .line 261
    .line 262
    move/from16 v5, v21

    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_b
    move v5, v11

    .line 266
    :goto_4
    new-instance v9, Lf0/v;

    .line 267
    .line 268
    iget-object v2, v14, Lg0/g;->a:Landroid/content/Context;

    .line 269
    .line 270
    iget-object v4, v14, Lg0/g;->d:Ljava/lang/String;

    .line 271
    .line 272
    move-object v0, v9

    .line 273
    move-object/from16 v1, p1

    .line 274
    .line 275
    move-object/from16 v6, p5

    .line 276
    .line 277
    invoke-direct/range {v0 .. v6}, Lf0/v;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/graphics/Point;)V

    .line 278
    .line 279
    .line 280
    iget-object v0, v7, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 281
    .line 282
    iput-object v0, v9, Lf0/i;->b:Lf0/i$c;

    .line 283
    .line 284
    iput-object v0, v9, Lf0/i;->a:Lf0/i$b;

    .line 285
    .line 286
    iget-object v1, v14, Lg0/g;->f:Ljava/lang/String;

    .line 287
    .line 288
    if-eqz v1, :cond_c

    .line 289
    .line 290
    iget v2, v14, Lg0/g;->e:I

    .line 291
    .line 292
    invoke-virtual {v9, v2, v1}, Lf0/i;->n(ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    invoke-virtual {v9}, Lf0/v;->t()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    :try_start_0
    invoke-virtual {v8, v15}, Lru/zdevs/zarchiver/b;->a([I)Lz/a;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iput-object v1, v0, Lru/zdevs/zarchiver/a;->d:Lz/a;

    .line 306
    .line 307
    invoke-virtual {v1}, Lz/a;->h()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    .line 310
    :catch_0
    :goto_5
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lg0/g;->b(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lg0/g;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0c00d0

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const v5, 0x7f03006a

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_8

    .line 16
    .line 17
    const v6, 0x7f030046

    .line 18
    .line 19
    .line 20
    if-eq p1, v3, :cond_7

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    const/16 v3, 0x1000

    .line 24
    .line 25
    const v7, 0x7f030053

    .line 26
    .line 27
    .line 28
    if-eq p1, v2, :cond_5

    .line 29
    .line 30
    const/16 v2, 0x12

    .line 31
    .line 32
    if-eq p1, v2, :cond_3

    .line 33
    .line 34
    const/16 v2, 0x14

    .line 35
    .line 36
    if-eq p1, v2, :cond_2

    .line 37
    .line 38
    const/16 v2, 0x38

    .line 39
    .line 40
    if-eq p1, v2, :cond_1

    .line 41
    .line 42
    const/16 v2, 0x39

    .line 43
    .line 44
    if-eq p1, v2, :cond_0

    .line 45
    .line 46
    const-string v2, " "

    .line 47
    .line 48
    const v3, 0x7f0c00a8

    .line 49
    .line 50
    .line 51
    const v4, 0x7f030042

    .line 52
    .line 53
    .line 54
    const v5, 0x7f030047

    .line 55
    .line 56
    .line 57
    packed-switch p1, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    packed-switch p1, :pswitch_data_1

    .line 61
    .line 62
    .line 63
    const p2, 0x7f0c00ba

    .line 64
    .line 65
    .line 66
    packed-switch p1, :pswitch_data_2

    .line 67
    .line 68
    .line 69
    packed-switch p1, :pswitch_data_3

    .line 70
    .line 71
    .line 72
    const v2, 0x7f030068

    .line 73
    .line 74
    .line 75
    packed-switch p1, :pswitch_data_4

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_0
    new-instance p2, Lb0/h;

    .line 80
    .line 81
    const v2, 0x7f0c00af

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v7}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :pswitch_1
    new-instance p2, Lb0/h;

    .line 98
    .line 99
    const v2, 0x7f0c00cf

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const v2, 0x7f030067

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :pswitch_2
    new-instance v3, Lb0/h;

    .line 119
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const v6, 0x7f0c00a1

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-static {v0, v4}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-direct {v3, p1, p2, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :pswitch_3
    new-instance p2, Lb0/h;

    .line 154
    .line 155
    const v2, 0x7f0c00a2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v0, v4}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :pswitch_4
    new-instance v3, Lb0/h;

    .line 172
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const v6, 0x7f0c00a9

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    invoke-static {v0, v5}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {v3, p1, p2, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 203
    .line 204
    .line 205
    :goto_0
    move-object p2, v3

    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :pswitch_5
    new-instance p2, Lb0/h;

    .line 209
    .line 210
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v0, v5}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_2

    .line 222
    .line 223
    :pswitch_6
    new-instance p2, Lb0/h;

    .line 224
    .line 225
    const v2, 0x7f0c00a7

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-static {v0, v5}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_2

    .line 240
    .line 241
    :pswitch_7
    new-instance p2, Lb0/h;

    .line 242
    .line 243
    const v2, 0x7f0c00b0

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const v2, 0x7f03005e

    .line 251
    .line 252
    .line 253
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :pswitch_8
    new-instance p2, Lb0/h;

    .line 263
    .line 264
    const v2, 0x7f0c009f

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const v2, 0x7f03005d

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :pswitch_9
    new-instance p2, Lb0/h;

    .line 284
    .line 285
    const v2, 0x7f0c009c

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    const v2, 0x7f03005c

    .line 293
    .line 294
    .line 295
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_2

    .line 303
    .line 304
    :pswitch_a
    new-instance v2, Lb0/h;

    .line 305
    .line 306
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const v1, 0x7f030054

    .line 311
    .line 312
    .line 313
    invoke-static {v0, v1}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-direct {v2, p1, p2, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 318
    .line 319
    .line 320
    move-object p2, v2

    .line 321
    goto/16 :goto_2

    .line 322
    .line 323
    :pswitch_b
    new-instance p2, Lb0/h;

    .line 324
    .line 325
    const v2, 0x7f0c00a4

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    const v2, 0x7f030044

    .line 333
    .line 334
    .line 335
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :pswitch_c
    new-instance p2, Lb0/h;

    .line 345
    .line 346
    const v2, 0x7f0c00a3

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const v2, 0x7f030043

    .line 354
    .line 355
    .line 356
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_2

    .line 364
    .line 365
    :pswitch_d
    new-instance p2, Lb0/h;

    .line 366
    .line 367
    const v2, 0x7f0c00ae

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const v2, 0x7f03004b

    .line 375
    .line 376
    .line 377
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_2

    .line 385
    .line 386
    :pswitch_e
    new-instance p2, Lb0/h;

    .line 387
    .line 388
    const v2, 0x7f0c00b2

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const v2, 0x7f03004f

    .line 396
    .line 397
    .line 398
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_2

    .line 406
    .line 407
    :pswitch_f
    new-instance p2, Lb0/h;

    .line 408
    .line 409
    const v2, 0x7f0c00aa

    .line 410
    .line 411
    .line 412
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    const v2, 0x7f03003e

    .line 417
    .line 418
    .line 419
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_2

    .line 427
    .line 428
    :pswitch_10
    new-instance p2, Lb0/h;

    .line 429
    .line 430
    const v2, 0x7f0c00bb

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    const v2, 0x7f030055

    .line 438
    .line 439
    .line 440
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :pswitch_11
    new-instance p2, Lb0/h;

    .line 450
    .line 451
    const v2, 0x7f0c00a6

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    const v2, 0x7f030040

    .line 459
    .line 460
    .line 461
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_2

    .line 469
    .line 470
    :pswitch_12
    new-instance p2, Lb0/h;

    .line 471
    .line 472
    const v2, 0x7f0c0025

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    const v2, 0x7f03003f

    .line 480
    .line 481
    .line 482
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_2

    .line 490
    .line 491
    :pswitch_13
    new-instance p2, Lb0/h;

    .line 492
    .line 493
    const v2, 0x7f0c0029

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    const v2, 0x7f030052

    .line 501
    .line 502
    .line 503
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_2

    .line 511
    .line 512
    :pswitch_14
    new-instance p2, Lb0/h;

    .line 513
    .line 514
    const v2, 0x7f0c00b4

    .line 515
    .line 516
    .line 517
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-static {v0, v4}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_2

    .line 529
    .line 530
    :pswitch_15
    new-instance v3, Lb0/h;

    .line 531
    .line 532
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p2

    .line 536
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-direct {v3, p1, p2, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :pswitch_16
    new-instance p2, Lb0/h;

    .line 546
    .line 547
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 552
    .line 553
    .line 554
    move-result-object v0

    .line 555
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 556
    .line 557
    .line 558
    goto/16 :goto_2

    .line 559
    .line 560
    :pswitch_17
    new-instance p2, Lb0/h;

    .line 561
    .line 562
    const v2, 0x7f0c00b3

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    const v2, 0x7f030050

    .line 570
    .line 571
    .line 572
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_2

    .line 580
    .line 581
    :pswitch_18
    new-instance p2, Lb0/h;

    .line 582
    .line 583
    const v2, 0x7f0c00c5

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    const v2, 0x7f030060

    .line 591
    .line 592
    .line 593
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 598
    .line 599
    .line 600
    goto/16 :goto_2

    .line 601
    .line 602
    :cond_0
    :pswitch_19
    new-instance p2, Lb0/h;

    .line 603
    .line 604
    const v2, 0x7f0c00bf

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    const v2, 0x7f030059

    .line 612
    .line 613
    .line 614
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_2

    .line 622
    .line 623
    :cond_1
    :pswitch_1a
    new-instance p2, Lb0/h;

    .line 624
    .line 625
    const v2, 0x7f0c00a5

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    const v2, 0x7f030045

    .line 633
    .line 634
    .line 635
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 640
    .line 641
    .line 642
    goto :goto_2

    .line 643
    :cond_2
    new-instance p2, Lb0/h;

    .line 644
    .line 645
    const v2, 0x7f0c00c6

    .line 646
    .line 647
    .line 648
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    const v2, 0x7f03005f

    .line 653
    .line 654
    .line 655
    invoke-static {v0, v2}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    invoke-direct {p2, p1, v1, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 660
    .line 661
    .line 662
    goto :goto_2

    .line 663
    :cond_3
    new-instance p2, Lb0/h;

    .line 664
    .line 665
    const v2, 0x7f0c00b9

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-static {v0, v5}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 673
    .line 674
    .line 675
    move-result-object v2

    .line 676
    invoke-static {v3}, Ls0/b;->l(I)Z

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-eqz v3, :cond_4

    .line 681
    .line 682
    invoke-static {v0, v6}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    :cond_4
    invoke-direct {p2, p1, v1, v2, v4}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 687
    .line 688
    .line 689
    goto :goto_2

    .line 690
    :cond_5
    new-instance p2, Lb0/h;

    .line 691
    .line 692
    const v2, 0x7f0c00b8

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v1

    .line 699
    invoke-static {v0, v7}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    invoke-static {v3}, Ls0/b;->l(I)Z

    .line 704
    .line 705
    .line 706
    move-result v3

    .line 707
    if-eqz v3, :cond_6

    .line 708
    .line 709
    goto :goto_1

    .line 710
    :cond_6
    invoke-static {v0, v6}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    :goto_1
    invoke-direct {p2, p1, v1, v2, v4}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 715
    .line 716
    .line 717
    goto :goto_2

    .line 718
    :cond_7
    new-instance p2, Lb0/h;

    .line 719
    .line 720
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-static {v0, v5}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-static {v0, v6}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 729
    .line 730
    .line 731
    move-result-object v0

    .line 732
    invoke-direct {p2, p1, v1, v2, v0}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 733
    .line 734
    .line 735
    goto :goto_2

    .line 736
    :cond_8
    new-instance p2, Lb0/h;

    .line 737
    .line 738
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    invoke-static {v0, v5}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-direct {p2, v3, p1, v0, v4}, Lb0/h;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 747
    .line 748
    .line 749
    :goto_2
    iget-object p1, p0, Lg0/g;->c:Ljava/util/ArrayList;

    .line 750
    .line 751
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    return-void

    .line 755
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_d
        :pswitch_1a
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_19
    .end packed-switch

    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_f
        :pswitch_1a
        :pswitch_19
        :pswitch_e
    .end packed-switch

    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    :pswitch_data_4
    .packed-switch 0x5a
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final d(Lru/zdevs/zarchiver/d;ILandroid/graphics/Point;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    sget-boolean p2, Lg0/g;->g:Z

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    :cond_0
    move v6, v0

    .line 16
    new-instance p2, Lf0/v;

    .line 17
    .line 18
    iget-object v3, p0, Lg0/g;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v4, p0, Lg0/g;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v5, p0, Lg0/g;->d:Ljava/lang/String;

    .line 23
    .line 24
    move-object v1, p2

    .line 25
    move-object v2, p1

    .line 26
    move-object v7, p3

    .line 27
    invoke-direct/range {v1 .. v7}, Lf0/v;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/graphics/Point;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 31
    .line 32
    iput-object p1, p2, Lf0/i;->b:Lf0/i$c;

    .line 33
    .line 34
    iget-object p1, p0, Lg0/g;->f:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget p3, p0, Lg0/g;->e:I

    .line 39
    .line 40
    invoke-virtual {p2, p3, p1}, Lf0/i;->n(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p2}, Lf0/v;->t()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
