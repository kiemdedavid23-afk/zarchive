.class public final Ls0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/e;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Z

.field public static final e:[Ljava/lang/String;

.field public static final f:[I

.field public static final g:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ls0/a;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Ls0/a;->d:Z

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    new-array v2, v1, [Ljava/lang/String;

    .line 20
    .line 21
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 22
    .line 23
    aput-object v3, v2, v0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    .line 27
    .line 28
    aput-object v3, v2, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    const-string v3, "Documents"

    .line 32
    .line 33
    aput-object v3, v2, v0

    .line 34
    .line 35
    sput-object v2, Ls0/a;->e:[Ljava/lang/String;

    .line 36
    .line 37
    new-array v0, v1, [I

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    sput-object v0, Ls0/a;->f:[I

    .line 43
    .line 44
    new-array v0, v1, [I

    .line 45
    .line 46
    fill-array-data v0, :array_1

    .line 47
    .line 48
    .line 49
    sput-object v0, Ls0/a;->g:[I

    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 4
        0x5
        0x6
        0x4
    .end array-data

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 4
        0x7f0c008a
        0x7f0c008f
        0x7f0c0089
    .end array-data
.end method

.method public static a(ILru/zdevs/zarchiver/ZArchiver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    new-instance v1, Lb0/e;

    .line 4
    .line 5
    new-instance v2, Lg0/h;

    .line 6
    .line 7
    invoke-direct {v2, p3}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x4

    .line 11
    invoke-direct {v1, p0, p3, p2, v2}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p2, "sFavorite"

    .line 24
    .line 25
    const-string p3, ""

    .line 26
    .line 27
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p3, "|"

    .line 38
    .line 39
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    .line 55
    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 61
    .line 62
    .line 63
    sget-object p0, Ls0/a;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method public static b()V
    .locals 18

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {}, Lw0/c;->k()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v5, Ls0/a;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    sput-boolean v6, Ls0/a;->d:Z

    .line 28
    .line 29
    sget-object v7, Ls0/b;->b:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object v8, v7, v6

    .line 32
    .line 33
    invoke-static {v8}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const/4 v9, 0x2

    .line 38
    const/4 v10, 0x1

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    aget-object v8, v7, v10

    .line 42
    .line 43
    invoke-static {v8}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    if-nez v8, :cond_2

    .line 48
    .line 49
    :cond_1
    new-instance v8, Lb0/e;

    .line 50
    .line 51
    const v11, 0x7f0c008d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    new-instance v12, Lg0/h;

    .line 59
    .line 60
    aget-object v7, v7, v6

    .line 61
    .line 62
    invoke-direct {v12, v7}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/16 v7, 0x21

    .line 66
    .line 67
    invoke-direct {v8, v9, v7, v11, v12}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    :cond_2
    const/high16 v7, 0x1000000

    .line 74
    .line 75
    invoke-static {v7}, Ls0/b;->f(I)Z

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    const-string v8, "/"

    .line 80
    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    new-instance v7, Lb0/e;

    .line 84
    .line 85
    new-instance v11, Lg0/h;

    .line 86
    .line 87
    invoke-direct {v11, v8}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v12, -0x2

    .line 91
    const-string v13, "ROOT"

    .line 92
    .line 93
    invoke-direct {v7, v12, v10, v13, v11}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_3
    sget-object v7, Ls0/a;->c:Ljava/util/ArrayList;

    .line 100
    .line 101
    const/16 v11, 0x7c

    .line 102
    .line 103
    if-nez v7, :cond_6

    .line 104
    .line 105
    const-string v7, "sFavoriteCustomName"

    .line 106
    .line 107
    invoke-interface {v4, v7, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-static {v7}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_4

    .line 116
    .line 117
    new-instance v7, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .line 121
    .line 122
    sput-object v7, Ls0/a;->c:Ljava/util/ArrayList;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-static {v7, v11}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    new-instance v12, Ljava/util/ArrayList;

    .line 130
    .line 131
    array-length v13, v7

    .line 132
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 133
    .line 134
    .line 135
    sput-object v12, Ls0/a;->c:Ljava/util/ArrayList;

    .line 136
    .line 137
    array-length v12, v7

    .line 138
    move v13, v6

    .line 139
    :goto_0
    if-ge v13, v12, :cond_6

    .line 140
    .line 141
    aget-object v14, v7, v13

    .line 142
    .line 143
    const/16 v15, 0x40

    .line 144
    .line 145
    invoke-static {v15, v14}, Lb0/e;->a(ILjava/lang/String;)Lb0/e;

    .line 146
    .line 147
    .line 148
    move-result-object v14

    .line 149
    if-eqz v14, :cond_5

    .line 150
    .line 151
    sget-object v15, Ls0/a;->c:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_6
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    move v12, v6

    .line 164
    move v13, v12

    .line 165
    move v14, v13

    .line 166
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    const/4 v6, 0x4

    .line 171
    if-eqz v15, :cond_a

    .line 172
    .line 173
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    check-cast v15, Lw0/c$a;

    .line 178
    .line 179
    iget-byte v15, v15, Lw0/c$a;->d:B

    .line 180
    .line 181
    if-eqz v15, :cond_9

    .line 182
    .line 183
    if-eq v15, v9, :cond_8

    .line 184
    .line 185
    if-eq v15, v6, :cond_7

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 195
    .line 196
    :goto_3
    const/4 v6, 0x0

    .line 197
    goto :goto_2

    .line 198
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    move v7, v10

    .line 203
    move v11, v7

    .line 204
    move v15, v11

    .line 205
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v16

    .line 209
    if-eqz v16, :cond_13

    .line 210
    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v16

    .line 215
    move-object/from16 v0, v16

    .line 216
    .line 217
    check-cast v0, Lw0/c$a;

    .line 218
    .line 219
    iget-object v6, v0, Lw0/c$a;->b:Ljava/lang/String;

    .line 220
    .line 221
    invoke-static {v9, v6}, Ls0/a;->e(ILjava/lang/String;)Lb0/e;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    if-nez v6, :cond_12

    .line 226
    .line 227
    iget-byte v6, v0, Lw0/c$a;->d:B

    .line 228
    .line 229
    const-string v9, "%1"

    .line 230
    .line 231
    move-object/from16 v17, v3

    .line 232
    .line 233
    const-string v3, ""

    .line 234
    .line 235
    if-eqz v6, :cond_10

    .line 236
    .line 237
    if-eq v6, v10, :cond_f

    .line 238
    .line 239
    const/4 v10, 0x2

    .line 240
    if-eq v6, v10, :cond_d

    .line 241
    .line 242
    const/4 v10, 0x4

    .line 243
    if-eq v6, v10, :cond_b

    .line 244
    .line 245
    goto/16 :goto_8

    .line 246
    .line 247
    :cond_b
    const v6, 0x7f0c008c

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    const/4 v10, 0x1

    .line 255
    if-le v14, v10, :cond_c

    .line 256
    .line 257
    new-instance v10, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    :cond_c
    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    add-int/lit8 v11, v11, 0x1

    .line 274
    .line 275
    const/4 v6, 0x0

    .line 276
    goto :goto_6

    .line 277
    :cond_d
    const v6, 0x7f0c008b

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    const/4 v10, 0x1

    .line 285
    if-le v13, v10, :cond_e

    .line 286
    .line 287
    new-instance v10, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    :cond_e
    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    add-int/lit8 v15, v15, 0x1

    .line 304
    .line 305
    const/4 v6, 0x1

    .line 306
    goto :goto_6

    .line 307
    :cond_f
    const v3, 0x7f0c008e

    .line 308
    .line 309
    .line 310
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    goto :goto_5

    .line 315
    :cond_10
    const v6, 0x7f0c0088

    .line 316
    .line 317
    .line 318
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    const/4 v10, 0x1

    .line 323
    if-le v12, v10, :cond_11

    .line 324
    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    :cond_11
    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    add-int/lit8 v7, v7, 0x1

    .line 342
    .line 343
    :goto_5
    const/4 v6, -0x1

    .line 344
    :goto_6
    new-instance v9, Lb0/e;

    .line 345
    .line 346
    new-instance v10, Lg0/h;

    .line 347
    .line 348
    iget-object v0, v0, Lw0/c$a;->b:Ljava/lang/String;

    .line 349
    .line 350
    invoke-direct {v10, v0}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const/4 v0, 0x2

    .line 354
    invoke-direct {v9, v6, v0, v3, v10}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 355
    .line 356
    .line 357
    move-object v6, v9

    .line 358
    goto :goto_7

    .line 359
    :cond_12
    move-object/from16 v17, v3

    .line 360
    .line 361
    :goto_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    :goto_8
    move-object/from16 v3, v17

    .line 365
    .line 366
    const/4 v0, 0x0

    .line 367
    const/4 v6, 0x4

    .line 368
    const/4 v9, 0x2

    .line 369
    const/4 v10, 0x1

    .line 370
    goto/16 :goto_4

    .line 371
    .line 372
    :cond_13
    sget-object v0, Ls0/b;->a:Ljava/lang/String;

    .line 373
    .line 374
    const/4 v3, 0x3

    .line 375
    if-eqz v0, :cond_15

    .line 376
    .line 377
    invoke-static {v0}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    if-nez v0, :cond_15

    .line 382
    .line 383
    sget-object v0, Ls0/b;->a:Ljava/lang/String;

    .line 384
    .line 385
    const/16 v6, 0x10

    .line 386
    .line 387
    invoke-static {v6, v0}, Ls0/a;->e(ILjava/lang/String;)Lb0/e;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-nez v0, :cond_14

    .line 392
    .line 393
    new-instance v0, Lb0/e;

    .line 394
    .line 395
    const v7, 0x7f0c0087

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    new-instance v9, Lg0/h;

    .line 403
    .line 404
    sget-object v10, Ls0/b;->a:Ljava/lang/String;

    .line 405
    .line 406
    invoke-direct {v9, v10}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-direct {v0, v3, v6, v7, v9}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 410
    .line 411
    .line 412
    :cond_14
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    :cond_15
    const-string v0, "sFavorite"

    .line 416
    .line 417
    const/4 v6, 0x0

    .line 418
    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    invoke-static {v6}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    if-nez v7, :cond_18

    .line 427
    .line 428
    const/16 v7, 0x7c

    .line 429
    .line 430
    invoke-static {v6, v7}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    array-length v2, v0

    .line 435
    const/4 v4, 0x0

    .line 436
    :goto_9
    if-ge v4, v2, :cond_17

    .line 437
    .line 438
    aget-object v6, v0, v4

    .line 439
    .line 440
    const/4 v7, 0x4

    .line 441
    invoke-static {v7, v6}, Lb0/e;->a(ILjava/lang/String;)Lb0/e;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    if-nez v6, :cond_16

    .line 446
    .line 447
    goto :goto_a

    .line 448
    :cond_16
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 452
    .line 453
    goto :goto_9

    .line 454
    :cond_17
    const/4 v7, 0x0

    .line 455
    goto :goto_d

    .line 456
    :cond_18
    const-string v6, "sFavoGenerated"

    .line 457
    .line 458
    const/4 v7, 0x0

    .line 459
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-nez v9, :cond_1b

    .line 464
    .line 465
    new-instance v9, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    move v10, v7

    .line 471
    :goto_b
    sget-object v11, Ls0/a;->e:[Ljava/lang/String;

    .line 472
    .line 473
    array-length v12, v11

    .line 474
    if-ge v10, v12, :cond_1a

    .line 475
    .line 476
    :try_start_0
    aget-object v11, v11, v10

    .line 477
    .line 478
    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 479
    .line 480
    .line 481
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 483
    .line 484
    .line 485
    move-result v12

    .line 486
    if-eqz v12, :cond_19

    .line 487
    .line 488
    new-instance v12, Lb0/e;

    .line 489
    .line 490
    sget-object v13, Ls0/a;->f:[I

    .line 491
    .line 492
    aget v13, v13, v10

    .line 493
    .line 494
    sget-object v14, Ls0/a;->g:[I

    .line 495
    .line 496
    aget v14, v14, v10

    .line 497
    .line 498
    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v14

    .line 502
    new-instance v15, Lg0/h;

    .line 503
    .line 504
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v11

    .line 508
    invoke-direct {v15, v11}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    const/4 v11, 0x4

    .line 512
    invoke-direct {v12, v13, v11, v14, v15}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    const/16 v12, 0x7c

    .line 522
    .line 523
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    goto :goto_c

    .line 527
    :catch_0
    :cond_19
    const/4 v11, 0x4

    .line 528
    const/16 v12, 0x7c

    .line 529
    .line 530
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_1a
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    const/4 v4, 0x1

    .line 538
    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 546
    .line 547
    .line 548
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 549
    .line 550
    .line 551
    :cond_1b
    :goto_d
    invoke-static {v1}, Lk0/c;->h(Landroid/content/Context;)V

    .line 552
    .line 553
    .line 554
    sget-object v0, Lk0/c;->d:Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-eqz v1, :cond_1f

    .line 565
    .line 566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    check-cast v1, Lk0/c$c;

    .line 571
    .line 572
    iget v2, v1, Lk0/c$c;->d:I

    .line 573
    .line 574
    and-int/lit16 v2, v2, 0xff

    .line 575
    .line 576
    const/4 v4, 0x1

    .line 577
    const/4 v6, 0x2

    .line 578
    if-eq v2, v4, :cond_1e

    .line 579
    .line 580
    if-eq v2, v6, :cond_1d

    .line 581
    .line 582
    if-eq v2, v3, :cond_1c

    .line 583
    .line 584
    const/16 v2, 0xa

    .line 585
    .line 586
    goto :goto_f

    .line 587
    :cond_1c
    const/16 v2, 0xc

    .line 588
    .line 589
    goto :goto_f

    .line 590
    :cond_1d
    const/16 v2, 0xb

    .line 591
    .line 592
    goto :goto_f

    .line 593
    :cond_1e
    move v2, v7

    .line 594
    :goto_f
    new-instance v9, Lb0/e;

    .line 595
    .line 596
    new-instance v10, Lg0/h;

    .line 597
    .line 598
    const-string v11, "plugin"

    .line 599
    .line 600
    iget-object v12, v1, Lk0/c$c;->c:Ljava/lang/String;

    .line 601
    .line 602
    iget-object v13, v1, Lk0/c$c;->b:Ljava/lang/String;

    .line 603
    .line 604
    invoke-direct {v10, v11, v8, v12, v13}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    const/16 v11, 0x8

    .line 608
    .line 609
    iget-object v1, v1, Lk0/c$c;->a:Ljava/lang/String;

    .line 610
    .line 611
    invoke-direct {v9, v2, v11, v1, v10}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 612
    .line 613
    .line 614
    iget-object v1, v9, Lb0/e;->c:Lg0/h;

    .line 615
    .line 616
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    goto :goto_e

    .line 623
    :cond_1f
    return-void
.end method

.method public static c()V
    .locals 4

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 21
    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-static {}, Ls0/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_1
    :goto_0
    return-void

    .line 59
    :catchall_1
    move-exception v1

    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 65
    .line 66
    .line 67
    throw v1
.end method

.method public static d(Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lb0/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-static {}, Ls0/a;->c()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    :try_start_1
    new-instance p0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lb0/e;

    .line 41
    .line 42
    iget-object v3, v2, Lb0/e;->c:Lg0/h;

    .line 43
    .line 44
    invoke-virtual {v3}, Lg0/h;->o()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    :try_start_2
    new-instance p0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method public static e(ILjava/lang/String;)Lb0/e;
    .locals 4

    .line 1
    sget-object v0, Ls0/a;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lb0/e;

    .line 22
    .line 23
    iget-object v3, v2, Lb0/e;->c:Lg0/h;

    .line 24
    .line 25
    invoke-virtual {v3}, Lg0/h;->r()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    or-int/lit8 p0, p0, 0x40

    .line 36
    .line 37
    iput p0, v2, Lb0/e;->e:I

    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_2
    return-object v1
.end method

.method public static f(I)Lb0/e;
    .locals 3

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge p0, v2, :cond_1

    .line 17
    .line 18
    if-gez p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lb0/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static g(I)Z
    .locals 5

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-lt p0, v1, :cond_0

    .line 12
    .line 13
    sget-object v2, Ls0/a;->a:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge p0, v3, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, p0, -0x1

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lb0/e;

    .line 28
    .line 29
    const/16 v4, 0x13

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Lb0/e;->b(I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lb0/e;

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    invoke-virtual {p0, v2}, Lb0/e;->b(I)Z

    .line 45
    .line 46
    .line 47
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public static h(I)Z
    .locals 3

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge p0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lb0/e;

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-virtual {p0, v1}, Lb0/e;->b(I)Z

    .line 28
    .line 29
    .line 30
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public static i(I)Z
    .locals 3

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 8
    .line 9
    .line 10
    if-ltz p0, :cond_0

    .line 11
    .line 12
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge p0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lb0/e;

    .line 25
    .line 26
    const/16 v1, 0x16

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lb0/e;->b(I)Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public static j(Lru/zdevs/zarchiver/ZArchiver;IILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {p1}, Ls0/a;->i(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Ls0/a;->f(I)Lb0/e;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p1, v0}, Lb0/e;->b(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/16 v2, 0x7c

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "sFavorite"

    .line 30
    .line 31
    const-string v3, ""

    .line 32
    .line 33
    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-object p3, p1, Lb0/e;->b:Ljava/lang/String;

    .line 45
    .line 46
    iput p2, p1, Lb0/e;->a:I

    .line 47
    .line 48
    invoke-static {v3, v2}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    array-length v3, p2

    .line 58
    move v4, v1

    .line 59
    :goto_0
    if-ge v4, v3, :cond_5

    .line 60
    .line 61
    aget-object v5, p2, v4

    .line 62
    .line 63
    invoke-static {v1, v5}, Lb0/e;->a(ILjava/lang/String;)Lb0/e;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    iget-object v6, v6, Lb0/e;->c:Lg0/h;

    .line 70
    .line 71
    iget-object v7, p1, Lb0/e;->c:Lg0/h;

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Lb0/e;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :cond_3
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    .line 102
    .line 103
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_6
    const/16 v0, 0x12

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Lb0/e;->b(I)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_c

    .line 114
    .line 115
    sget-object v0, Ls0/a;->c:Ljava/util/ArrayList;

    .line 116
    .line 117
    if-nez v0, :cond_7

    .line 118
    .line 119
    return-void

    .line 120
    :cond_7
    iget v3, p1, Lb0/e;->e:I

    .line 121
    .line 122
    const/16 v4, 0x40

    .line 123
    .line 124
    and-int/2addr v3, v4

    .line 125
    if-eqz v3, :cond_8

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    :cond_8
    if-eqz v1, :cond_9

    .line 129
    .line 130
    iput-object p3, p1, Lb0/e;->b:Ljava/lang/String;

    .line 131
    .line 132
    iput p2, p1, Lb0/e;->a:I

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_9
    new-instance v1, Lb0/e;

    .line 136
    .line 137
    iget-object p1, p1, Lb0/e;->c:Lg0/h;

    .line 138
    .line 139
    invoke-direct {v1, p2, v4, p3, p1}, Lb0/e;-><init>(IILjava/lang/String;Lg0/h;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    sget-object p1, Ls0/a;->c:Ljava/util/ArrayList;

    .line 150
    .line 151
    if-nez p1, :cond_a

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    sget-object p2, Ls0/a;->c:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_b

    .line 170
    .line 171
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    check-cast p3, Lb0/e;

    .line 176
    .line 177
    invoke-virtual {p3}, Lb0/e;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_b
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    const-string p2, "sFavoriteCustomName"

    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    .line 200
    .line 201
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    .line 203
    .line 204
    :cond_c
    :goto_3
    return-void
.end method

.method public static k()V
    .locals 9

    .line 1
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    sget-boolean v1, Ls0/a;->d:Z

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sput-boolean v1, Ls0/a;->d:Z

    .line 14
    .line 15
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lb0/e;

    .line 32
    .line 33
    const-string v3, ""

    .line 34
    .line 35
    iput-object v3, v2, Lb0/e;->d:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-virtual {v2, v3}, Lb0/e;->b(I)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    iget-object v3, v2, Lb0/e;->c:Lg0/h;

    .line 45
    .line 46
    invoke-static {v3}, Lg0/e;->d(Lg0/h;)Lg0/e$a;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-wide v5, v3, Lg0/e$a;->a:J

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-static {v5, v6, v8, v7}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v5, "/\n"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-wide v5, v3, Lg0/e$a;->b:J

    .line 74
    .line 75
    invoke-static {v5, v6, v8, v7}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iput-object v3, v2, Lb0/e;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 103
    .line 104
    .line 105
    throw v1
.end method
