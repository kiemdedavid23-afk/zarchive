.class public final Lr0/h;
.super Lr0/g;
.source "SourceFile"


# instance fields
.field public i:Lg0/h;

.field public j:Lg0/h;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg0/h;",
            ">;"
        }
    .end annotation
.end field

.field public m:J

.field public n:J

.field public o:I

.field public p:J

.field public q:J


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;ZI)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/16 p2, 0xa

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p2, 0x4

    .line 7
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    .line 8
    .line 9
    .line 10
    const-wide/16 p1, 0x0

    .line 11
    .line 12
    iput-wide p1, p0, Lr0/h;->n:J

    .line 13
    .line 14
    iput-wide p1, p0, Lr0/h;->m:J

    .line 15
    .line 16
    iput-wide p1, p0, Lr0/h;->q:J

    .line 17
    .line 18
    iput-wide p1, p0, Lr0/h;->p:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->g:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lr0/g;->c:I

    .line 4
    .line 5
    aput-object p1, v0, v1

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void
.end method

.method public final c(J)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-wide v2, v1, Lr0/h;->m:J

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    cmp-long v0, v2, v4

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-wide v2, v1, Lr0/h;->n:J

    .line 13
    .line 14
    add-long v2, v2, p1

    .line 15
    .line 16
    iput-wide v2, v1, Lr0/h;->n:J

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v6, v1, Lr0/h;->n:J

    .line 23
    .line 24
    const-wide/16 v8, 0x64

    .line 25
    .line 26
    mul-long/2addr v8, v6

    .line 27
    iget-wide v10, v1, Lr0/h;->m:J

    .line 28
    .line 29
    div-long/2addr v8, v10

    .line 30
    long-to-int v0, v8

    .line 31
    const/16 v8, 0x64

    .line 32
    .line 33
    if-le v0, v8, :cond_1

    .line 34
    .line 35
    move v0, v8

    .line 36
    :cond_1
    sget-object v8, Lru/zdevs/zarchiver/archiver/C2JBridge;->h:[I

    .line 37
    .line 38
    iget v9, v1, Lr0/g;->c:I

    .line 39
    .line 40
    aget v10, v8, v9

    .line 41
    .line 42
    const-wide/16 v11, 0x7d0

    .line 43
    .line 44
    if-ne v0, v10, :cond_2

    .line 45
    .line 46
    iget-wide v13, v1, Lr0/h;->q:J

    .line 47
    .line 48
    add-long/2addr v13, v11

    .line 49
    cmp-long v10, v2, v13

    .line 50
    .line 51
    if-lez v10, :cond_6

    .line 52
    .line 53
    :cond_2
    aput v0, v8, v9

    .line 54
    .line 55
    iget-wide v13, v1, Lr0/h;->q:J

    .line 56
    .line 57
    const-wide/16 v15, 0x1f4

    .line 58
    .line 59
    add-long/2addr v15, v13

    .line 60
    cmp-long v8, v2, v15

    .line 61
    .line 62
    if-lez v8, :cond_5

    .line 63
    .line 64
    cmp-long v4, v13, v4

    .line 65
    .line 66
    if-nez v4, :cond_3

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    iput v4, v1, Lr0/h;->o:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-wide v4, v1, Lr0/h;->p:J

    .line 73
    .line 74
    sub-long v4, v6, v4

    .line 75
    .line 76
    long-to-float v4, v4

    .line 77
    sub-long v11, v2, v13

    .line 78
    .line 79
    long-to-float v5, v11

    .line 80
    div-float/2addr v4, v5

    .line 81
    const/high16 v5, 0x42c80000    # 100.0f

    .line 82
    .line 83
    mul-float/2addr v4, v5

    .line 84
    float-to-int v4, v4

    .line 85
    sub-long v10, v2, v13

    .line 86
    .line 87
    const-wide/16 v12, 0x7d0

    .line 88
    .line 89
    cmp-long v5, v10, v12

    .line 90
    .line 91
    if-gez v5, :cond_4

    .line 92
    .line 93
    iget v5, v1, Lr0/h;->o:I

    .line 94
    .line 95
    int-to-long v14, v5

    .line 96
    sub-int/2addr v4, v5

    .line 97
    int-to-long v4, v4

    .line 98
    mul-long/2addr v10, v4

    .line 99
    div-long/2addr v10, v12

    .line 100
    add-long/2addr v10, v14

    .line 101
    long-to-int v4, v10

    .line 102
    iput v4, v1, Lr0/h;->o:I

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iput v4, v1, Lr0/h;->o:I

    .line 106
    .line 107
    :goto_0
    iput-wide v6, v1, Lr0/h;->p:J

    .line 108
    .line 109
    iput-wide v2, v1, Lr0/h;->q:J

    .line 110
    .line 111
    :cond_5
    :try_start_0
    iget-object v2, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 112
    .line 113
    iget v3, v1, Lr0/h;->o:I

    .line 114
    .line 115
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    iget-object v4, v2, Lru/zdevs/zarchiver/service/ZArchiverService;->d:Landroid/os/Handler;

    .line 117
    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const/4 v5, 0x4

    .line 123
    invoke-virtual {v4, v9, v5, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :try_start_2
    monitor-exit v2

    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    monitor-exit v2

    .line 134
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    :catch_0
    :cond_6
    :goto_1
    return-void
.end method

.method public final p()V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-byte v0, v6, Lr0/g;->b:B

    .line 4
    .line 5
    const/high16 v7, 0x120000

    .line 6
    .line 7
    iget-object v8, v6, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 8
    .line 9
    const/4 v9, 0x0

    .line 10
    const/4 v10, 0x1

    .line 11
    const/16 v11, 0xa

    .line 12
    .line 13
    if-ne v0, v11, :cond_0

    .line 14
    .line 15
    iget-object v0, v6, Lr0/h;->j:Lg0/h;

    .line 16
    .line 17
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, v6, Lr0/h;->k:Ljava/util/List;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v1, v6, Lr0/h;->l:Ljava/util/List;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v6, v7}, Lr0/g;->q(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v8, v6, v10, v9, v9}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 41
    .line 42
    const/4 v12, 0x0

    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    iget-object v0, v6, Lr0/h;->l:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lg0/h;

    .line 52
    .line 53
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz v0, :cond_4

    .line 61
    .line 62
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/String;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    const-string v0, ""

    .line 70
    .line 71
    :goto_0
    iget-byte v1, v6, Lr0/g;->b:B

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    const/4 v13, 0x4

    .line 75
    if-ne v1, v11, :cond_9

    .line 76
    .line 77
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 78
    .line 79
    if-nez v1, :cond_6

    .line 80
    .line 81
    iget-object v1, v6, Lr0/h;->l:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-lez v1, :cond_5

    .line 88
    .line 89
    iget-object v1, v6, Lr0/h;->l:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lg0/h;

    .line 96
    .line 97
    invoke-static {v1}, Lw0/f;->b(Lg0/h;)B

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v1, v10, :cond_5

    .line 102
    .line 103
    iget-object v1, v6, Lr0/h;->l:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lg0/h;

    .line 110
    .line 111
    invoke-static {v1}, Lp0/f;->b(Lg0/h;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    move v1, v10

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    move v1, v12

    .line 120
    :goto_1
    if-eqz v1, :cond_8

    .line 121
    .line 122
    new-instance v1, Ljava/util/ArrayList;

    .line 123
    .line 124
    iget-object v3, v6, Lr0/h;->l:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_6
    invoke-static {v1}, Lw0/f;->b(Lg0/h;)B

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-ne v1, v10, :cond_7

    .line 139
    .line 140
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 141
    .line 142
    invoke-static {v1}, Lp0/f;->b(Lg0/h;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_7

    .line 147
    .line 148
    move v1, v10

    .line 149
    goto :goto_2

    .line 150
    :cond_7
    move v1, v12

    .line 151
    :goto_2
    if-eqz v1, :cond_8

    .line 152
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    .line 154
    .line 155
    iget-object v3, v6, Lr0/h;->k:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_8
    move-object v1, v9

    .line 166
    :goto_3
    move-object v14, v1

    .line 167
    move v1, v13

    .line 168
    goto :goto_4

    .line 169
    :cond_9
    move v1, v2

    .line 170
    move-object v14, v9

    .line 171
    :goto_4
    iget-object v3, v6, Lr0/h;->i:Lg0/h;

    .line 172
    .line 173
    if-nez v3, :cond_c

    .line 174
    .line 175
    iget-object v3, v6, Lr0/h;->l:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_b

    .line 186
    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Lg0/h;

    .line 192
    .line 193
    iget-object v5, v6, Lr0/h;->j:Lg0/h;

    .line 194
    .line 195
    invoke-virtual {v5}, Lg0/h;->t()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v4}, Lg0/h;->t()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v15

    .line 203
    invoke-static {v15, v5}, Lb/d;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_a

    .line 208
    .line 209
    invoke-virtual {v4}, Lg0/h;->e()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v6, v0}, Lr0/h;->s(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_b
    iget-object v3, v6, Lr0/h;->l:Ljava/util/List;

    .line 218
    .line 219
    invoke-virtual {v6, v9, v3, v1}, Lr0/g;->f(Ljava/lang/String;Ljava/util/List;I)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_f

    .line 224
    .line 225
    return-void

    .line 226
    :cond_c
    iget-object v3, v6, Lr0/h;->k:Ljava/util/List;

    .line 227
    .line 228
    if-eqz v3, :cond_f

    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_e

    .line 239
    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    check-cast v4, Ljava/lang/String;

    .line 245
    .line 246
    iget-object v5, v6, Lr0/h;->j:Lg0/h;

    .line 247
    .line 248
    new-instance v15, Lg0/h;

    .line 249
    .line 250
    iget-object v7, v6, Lr0/h;->i:Lg0/h;

    .line 251
    .line 252
    invoke-direct {v15, v4, v7}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5}, Lg0/h;->t()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-virtual {v15}, Lg0/h;->t()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-static {v7, v5}, Lb/d;->M(Ljava/lang/String;Ljava/lang/String;)Z

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v5, :cond_d

    .line 268
    .line 269
    invoke-virtual {v6, v4}, Lr0/h;->s(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :cond_d
    const/high16 v7, 0x120000

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_e
    iget-object v3, v6, Lr0/h;->i:Lg0/h;

    .line 277
    .line 278
    iget-object v4, v6, Lr0/h;->k:Ljava/util/List;

    .line 279
    .line 280
    invoke-virtual {v6, v3, v4, v1, v12}, Lr0/g;->g(Lg0/h;Ljava/util/List;II)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-nez v1, :cond_f

    .line 285
    .line 286
    return-void

    .line 287
    :cond_f
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 288
    .line 289
    invoke-virtual {v6, v2, v12, v0, v1}, Lr0/g;->e(IILjava/lang/String;Lg0/h;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_10

    .line 294
    .line 295
    return-void

    .line 296
    :cond_10
    invoke-static {v10}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_11

    .line 301
    .line 302
    const/16 v0, 0x11

    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_11
    move v0, v12

    .line 306
    :goto_6
    invoke-virtual {v6, v10}, Lr0/g;->k(I)Z

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    if-eqz v1, :cond_26

    .line 311
    .line 312
    invoke-static {v13}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-eqz v1, :cond_12

    .line 317
    .line 318
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 319
    .line 320
    invoke-static {v1}, Lo0/f;->a(Lg0/h;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_12

    .line 325
    .line 326
    move v1, v10

    .line 327
    goto :goto_7

    .line 328
    :cond_12
    move v1, v12

    .line 329
    :goto_7
    if-nez v1, :cond_13

    .line 330
    .line 331
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 332
    .line 333
    iget-object v2, v2, Lg0/h;->c:Ljava/lang/String;

    .line 334
    .line 335
    invoke-static {v2}, Lw0/f;->e(Ljava/lang/String;)Z

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-eqz v2, :cond_13

    .line 340
    .line 341
    move v2, v10

    .line 342
    goto :goto_8

    .line 343
    :cond_13
    move v2, v12

    .line 344
    :goto_8
    invoke-virtual {v6, v10}, Lr0/g;->k(I)Z

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    if-eqz v3, :cond_14

    .line 349
    .line 350
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    iget-object v4, v6, Lr0/h;->j:Lg0/h;

    .line 355
    .line 356
    iget-object v4, v4, Lg0/h;->c:Ljava/lang/String;

    .line 357
    .line 358
    invoke-static {v3, v4, v10}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    goto :goto_9

    .line 363
    :cond_14
    move-object v3, v9

    .line 364
    :goto_9
    iget-object v4, v6, Lr0/h;->i:Lg0/h;

    .line 365
    .line 366
    if-nez v4, :cond_1c

    .line 367
    .line 368
    iget-object v4, v6, Lr0/h;->l:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    :cond_15
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_24

    .line 379
    .line 380
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    check-cast v5, Lg0/h;

    .line 385
    .line 386
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 387
    .line 388
    .line 389
    move-result v7

    .line 390
    if-eqz v7, :cond_16

    .line 391
    .line 392
    goto/16 :goto_f

    .line 393
    .line 394
    :cond_16
    iget-byte v7, v6, Lr0/g;->b:B

    .line 395
    .line 396
    if-eq v7, v13, :cond_18

    .line 397
    .line 398
    if-eq v7, v11, :cond_17

    .line 399
    .line 400
    goto :goto_b

    .line 401
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    iget-object v15, v6, Lr0/h;->j:Lg0/h;

    .line 406
    .line 407
    invoke-static {v7, v5, v15, v0}, Lq0/a;->f(Ln0/a;Lg0/h;Lg0/h;I)I

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-ltz v0, :cond_19

    .line 412
    .line 413
    if-eqz v14, :cond_19

    .line 414
    .line 415
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    goto :goto_b

    .line 419
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 420
    .line 421
    .line 422
    move-result-object v7

    .line 423
    iget-object v15, v6, Lr0/h;->j:Lg0/h;

    .line 424
    .line 425
    invoke-static {v7, v5, v15, v0}, Lq0/a;->c(Ln0/a;Lg0/h;Lg0/h;I)I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    :cond_19
    :goto_b
    if-gez v0, :cond_1a

    .line 430
    .line 431
    invoke-virtual {v5}, Lg0/h;->e()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v6, v1}, Lr0/g;->o(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    goto/16 :goto_f

    .line 439
    .line 440
    :cond_1a
    if-eqz v1, :cond_1b

    .line 441
    .line 442
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    iget-object v15, v6, Lr0/h;->j:Lg0/h;

    .line 447
    .line 448
    invoke-virtual {v5}, Lg0/h;->e()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-static {v7, v15, v5}, Lb/d;->d0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_1b
    if-eqz v2, :cond_15

    .line 457
    .line 458
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 459
    .line 460
    .line 461
    move-result-object v7

    .line 462
    iget-object v15, v6, Lr0/h;->j:Lg0/h;

    .line 463
    .line 464
    invoke-virtual {v5}, Lg0/h;->e()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-static {v7, v15, v5}, Lb/d;->c0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_1c
    iget-object v4, v6, Lr0/h;->k:Ljava/util/List;

    .line 473
    .line 474
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    .line 480
    .line 481
    move-result v5

    .line 482
    if-eqz v5, :cond_24

    .line 483
    .line 484
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    check-cast v5, Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 491
    .line 492
    .line 493
    move-result v7

    .line 494
    if-eqz v7, :cond_1d

    .line 495
    .line 496
    goto :goto_f

    .line 497
    :cond_1d
    new-instance v7, Lg0/h;

    .line 498
    .line 499
    iget-object v15, v6, Lr0/h;->i:Lg0/h;

    .line 500
    .line 501
    invoke-direct {v7, v5, v15}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 502
    .line 503
    .line 504
    iget-byte v15, v6, Lr0/g;->b:B

    .line 505
    .line 506
    if-eq v15, v13, :cond_1f

    .line 507
    .line 508
    if-eq v15, v11, :cond_1e

    .line 509
    .line 510
    goto :goto_d

    .line 511
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 512
    .line 513
    .line 514
    move-result-object v15

    .line 515
    iget-object v9, v6, Lr0/h;->j:Lg0/h;

    .line 516
    .line 517
    invoke-static {v15, v7, v9, v0}, Lq0/a;->f(Ln0/a;Lg0/h;Lg0/h;I)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-ltz v0, :cond_20

    .line 522
    .line 523
    if-eqz v14, :cond_20

    .line 524
    .line 525
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    goto :goto_d

    .line 529
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    iget-object v15, v6, Lr0/h;->j:Lg0/h;

    .line 534
    .line 535
    invoke-static {v9, v7, v15, v0}, Lq0/a;->c(Ln0/a;Lg0/h;Lg0/h;I)I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    :cond_20
    :goto_d
    if-gez v0, :cond_21

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_21
    if-eqz v1, :cond_22

    .line 543
    .line 544
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 545
    .line 546
    .line 547
    move-result-object v7

    .line 548
    iget-object v9, v6, Lr0/h;->j:Lg0/h;

    .line 549
    .line 550
    invoke-static {v7, v9, v5}, Lb/d;->d0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    goto :goto_e

    .line 554
    :cond_22
    if-eqz v2, :cond_23

    .line 555
    .line 556
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 557
    .line 558
    .line 559
    move-result-object v7

    .line 560
    iget-object v9, v6, Lr0/h;->j:Lg0/h;

    .line 561
    .line 562
    invoke-static {v7, v9, v5}, Lb/d;->c0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    :cond_23
    :goto_e
    const/4 v9, 0x0

    .line 566
    goto :goto_c

    .line 567
    :cond_24
    :goto_f
    if-eqz v3, :cond_25

    .line 568
    .line 569
    invoke-virtual/range {p0 .. p0}, Lr0/g;->j()Ln0/a;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-static {v1, v3, v12}, Lq0/a;->g(Ln0/a;Ljava/lang/String;Z)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    :cond_25
    move-object v9, v8

    .line 577
    goto/16 :goto_18

    .line 578
    .line 579
    :cond_26
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 580
    .line 581
    if-nez v1, :cond_31

    .line 582
    .line 583
    iget-object v1, v6, Lr0/h;->l:Ljava/util/List;

    .line 584
    .line 585
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    :cond_27
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-eqz v2, :cond_28

    .line 594
    .line 595
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    check-cast v2, Lg0/h;

    .line 600
    .line 601
    invoke-static {v2, v6}, Lg0/e;->e(Lg0/h;Lu0/d;)Lg0/e$b;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    if-eqz v2, :cond_27

    .line 606
    .line 607
    iget-wide v3, v6, Lr0/h;->m:J

    .line 608
    .line 609
    move-object v9, v8

    .line 610
    iget-wide v7, v2, Lg0/e$b;->c:J

    .line 611
    .line 612
    add-long/2addr v3, v7

    .line 613
    iput-wide v3, v6, Lr0/h;->m:J

    .line 614
    .line 615
    move-object v8, v9

    .line 616
    goto :goto_10

    .line 617
    :cond_28
    move-object v9, v8

    .line 618
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 619
    .line 620
    invoke-virtual {v1}, Lg0/h;->k()Z

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    iget-object v1, v6, Lr0/h;->l:Ljava/util/List;

    .line 625
    .line 626
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v8

    .line 630
    move v3, v0

    .line 631
    :cond_29
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-eqz v0, :cond_3d

    .line 636
    .line 637
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    check-cast v0, Lg0/h;

    .line 642
    .line 643
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-eqz v1, :cond_2a

    .line 648
    .line 649
    goto/16 :goto_17

    .line 650
    .line 651
    :cond_2a
    if-eqz v7, :cond_2d

    .line 652
    .line 653
    invoke-virtual {v0}, Lg0/h;->k()Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-eqz v1, :cond_2d

    .line 658
    .line 659
    iget-object v1, v0, Lg0/h;->e:Ljava/lang/String;

    .line 660
    .line 661
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 662
    .line 663
    iget-object v2, v2, Lg0/h;->e:Ljava/lang/String;

    .line 664
    .line 665
    invoke-static {v1, v2}, Lu0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_2d

    .line 670
    .line 671
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 672
    .line 673
    invoke-virtual {v1}, Lg0/h;->e()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-virtual {v6, v1}, Lr0/h;->a(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    iget-byte v1, v6, Lr0/g;->b:B

    .line 685
    .line 686
    if-ne v1, v11, :cond_2b

    .line 687
    .line 688
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 689
    .line 690
    invoke-virtual {v0, v1}, Lg0/f;->t(Lg0/h;)Z

    .line 691
    .line 692
    .line 693
    move-result v0

    .line 694
    if-eqz v0, :cond_2c

    .line 695
    .line 696
    goto :goto_11

    .line 697
    :cond_2b
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 698
    .line 699
    invoke-virtual {v0, v1}, Lg0/f;->a(Lg0/h;)Z

    .line 700
    .line 701
    .line 702
    move-result v0

    .line 703
    if-eqz v0, :cond_2c

    .line 704
    .line 705
    :goto_11
    move v3, v12

    .line 706
    goto :goto_12

    .line 707
    :cond_2c
    const/4 v3, -0x1

    .line 708
    goto :goto_12

    .line 709
    :cond_2d
    iget-byte v1, v6, Lr0/g;->b:B

    .line 710
    .line 711
    if-eq v1, v13, :cond_30

    .line 712
    .line 713
    if-eq v1, v11, :cond_2e

    .line 714
    .line 715
    goto :goto_12

    .line 716
    :cond_2e
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 717
    .line 718
    invoke-static {v6, v0, v1, v3, v10}, Lq0/b;->j(Lr0/a;Lg0/h;Lg0/h;II)I

    .line 719
    .line 720
    .line 721
    move-result v1

    .line 722
    if-ltz v1, :cond_2f

    .line 723
    .line 724
    if-eqz v14, :cond_2f

    .line 725
    .line 726
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    :cond_2f
    move v3, v1

    .line 730
    goto :goto_12

    .line 731
    :cond_30
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 735
    .line 736
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 740
    .line 741
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    const/4 v5, 0x0

    .line 746
    const/4 v4, 0x1

    .line 747
    move-object/from16 v0, p0

    .line 748
    .line 749
    invoke-static/range {v0 .. v5}, Lq0/b;->a(Lr0/a;Lg0/f;Lg0/h;III)I

    .line 750
    .line 751
    .line 752
    move-result v0

    .line 753
    move v3, v0

    .line 754
    :goto_12
    if-gez v3, :cond_29

    .line 755
    .line 756
    goto/16 :goto_17

    .line 757
    .line 758
    :cond_31
    move-object v9, v8

    .line 759
    iget-object v2, v6, Lr0/h;->k:Ljava/util/List;

    .line 760
    .line 761
    new-array v3, v12, [Ljava/lang/String;

    .line 762
    .line 763
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    check-cast v2, [Ljava/lang/String;

    .line 768
    .line 769
    invoke-static {v1, v2, v6}, Lg0/e;->f(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    if-eqz v1, :cond_32

    .line 774
    .line 775
    iget-wide v1, v1, Lg0/e$b;->c:J

    .line 776
    .line 777
    iput-wide v1, v6, Lr0/h;->m:J

    .line 778
    .line 779
    :cond_32
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 780
    .line 781
    invoke-virtual {v1}, Lg0/h;->k()Z

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    if-eqz v1, :cond_37

    .line 786
    .line 787
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 788
    .line 789
    invoke-virtual {v1}, Lg0/h;->k()Z

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    if-eqz v1, :cond_37

    .line 794
    .line 795
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 796
    .line 797
    iget-object v1, v1, Lg0/h;->e:Ljava/lang/String;

    .line 798
    .line 799
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 800
    .line 801
    iget-object v2, v2, Lg0/h;->e:Ljava/lang/String;

    .line 802
    .line 803
    invoke-static {v1, v2}, Lu0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    .line 805
    .line 806
    move-result v1

    .line 807
    if-eqz v1, :cond_37

    .line 808
    .line 809
    iget-object v1, v6, Lr0/h;->k:Ljava/util/List;

    .line 810
    .line 811
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    :cond_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    if-eqz v2, :cond_3e

    .line 820
    .line 821
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v2

    .line 825
    check-cast v2, Ljava/lang/String;

    .line 826
    .line 827
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    if-eqz v3, :cond_34

    .line 832
    .line 833
    goto/16 :goto_18

    .line 834
    .line 835
    :cond_34
    invoke-virtual {v6, v2}, Lr0/h;->a(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    new-instance v0, Lg0/h;

    .line 839
    .line 840
    iget-object v3, v6, Lr0/h;->i:Lg0/h;

    .line 841
    .line 842
    invoke-direct {v0, v2, v3}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 843
    .line 844
    .line 845
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    iget-byte v2, v6, Lr0/g;->b:B

    .line 850
    .line 851
    if-ne v2, v11, :cond_35

    .line 852
    .line 853
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 854
    .line 855
    invoke-virtual {v0, v2}, Lg0/f;->t(Lg0/h;)Z

    .line 856
    .line 857
    .line 858
    move-result v0

    .line 859
    if-eqz v0, :cond_36

    .line 860
    .line 861
    goto :goto_13

    .line 862
    :cond_35
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 863
    .line 864
    invoke-virtual {v0, v2}, Lg0/f;->a(Lg0/h;)Z

    .line 865
    .line 866
    .line 867
    move-result v0

    .line 868
    if-eqz v0, :cond_36

    .line 869
    .line 870
    :goto_13
    move v0, v12

    .line 871
    goto :goto_14

    .line 872
    :cond_36
    const/4 v0, -0x1

    .line 873
    :goto_14
    if-gez v0, :cond_33

    .line 874
    .line 875
    goto :goto_18

    .line 876
    :cond_37
    iget-object v1, v6, Lr0/h;->i:Lg0/h;

    .line 877
    .line 878
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 879
    .line 880
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    add-int/lit8 v7, v1, 0x1

    .line 885
    .line 886
    iget-object v1, v6, Lr0/h;->k:Ljava/util/List;

    .line 887
    .line 888
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 889
    .line 890
    .line 891
    move-result-object v8

    .line 892
    move v3, v0

    .line 893
    :cond_38
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    if-eqz v0, :cond_3d

    .line 898
    .line 899
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    check-cast v0, Ljava/lang/String;

    .line 904
    .line 905
    invoke-virtual/range {p0 .. p0}, Lr0/g;->isCancelled()Z

    .line 906
    .line 907
    .line 908
    move-result v1

    .line 909
    if-eqz v1, :cond_39

    .line 910
    .line 911
    goto :goto_17

    .line 912
    :cond_39
    new-instance v1, Lg0/h;

    .line 913
    .line 914
    iget-object v2, v6, Lr0/h;->i:Lg0/h;

    .line 915
    .line 916
    invoke-direct {v1, v0, v2}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 917
    .line 918
    .line 919
    iget-byte v0, v6, Lr0/g;->b:B

    .line 920
    .line 921
    if-eq v0, v13, :cond_3b

    .line 922
    .line 923
    if-eq v0, v11, :cond_3a

    .line 924
    .line 925
    goto :goto_16

    .line 926
    :cond_3a
    iget-object v0, v6, Lr0/h;->j:Lg0/h;

    .line 927
    .line 928
    invoke-static {v6, v1, v0, v3, v7}, Lq0/b;->j(Lr0/a;Lg0/h;Lg0/h;II)I

    .line 929
    .line 930
    .line 931
    move-result v0

    .line 932
    if-ltz v0, :cond_3c

    .line 933
    .line 934
    if-eqz v14, :cond_3c

    .line 935
    .line 936
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    goto :goto_15

    .line 940
    :cond_3b
    iget-object v2, v6, Lr0/h;->j:Lg0/h;

    .line 941
    .line 942
    invoke-static {v1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    const/4 v5, 0x0

    .line 947
    move-object/from16 v0, p0

    .line 948
    .line 949
    move v4, v7

    .line 950
    invoke-static/range {v0 .. v5}, Lq0/b;->a(Lr0/a;Lg0/f;Lg0/h;III)I

    .line 951
    .line 952
    .line 953
    move-result v0

    .line 954
    :cond_3c
    :goto_15
    move v3, v0

    .line 955
    :goto_16
    if-gez v3, :cond_38

    .line 956
    .line 957
    :cond_3d
    :goto_17
    move v0, v3

    .line 958
    :cond_3e
    :goto_18
    if-eqz v14, :cond_3f

    .line 959
    .line 960
    sget-object v1, Lp0/f;->a:[Ljava/lang/String;

    .line 961
    .line 962
    :try_start_0
    new-instance v1, Lp0/f$c;

    .line 963
    .line 964
    invoke-direct {v1, v14}, Lp0/f$c;-><init>(Ljava/util/ArrayList;)V

    .line 965
    .line 966
    .line 967
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    .line 973
    .line 974
    :catchall_0
    :cond_3f
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 975
    .line 976
    invoke-static {v1}, Lw0/f;->b(Lg0/h;)B

    .line 977
    .line 978
    .line 979
    move-result v1

    .line 980
    if-ne v1, v10, :cond_41

    .line 981
    .line 982
    iget-object v1, v6, Lr0/h;->j:Lg0/h;

    .line 983
    .line 984
    invoke-static {v1}, Lp0/f;->b(Lg0/h;)Z

    .line 985
    .line 986
    .line 987
    move-result v2

    .line 988
    if-nez v2, :cond_40

    .line 989
    .line 990
    goto :goto_19

    .line 991
    :cond_40
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 992
    .line 993
    invoke-static {v1, v10}, Lp0/f;->a(Ljava/lang/String;Z)V

    .line 994
    .line 995
    .line 996
    :cond_41
    :goto_19
    const/4 v1, -0x2

    .line 997
    if-ne v0, v1, :cond_42

    .line 998
    .line 999
    const/16 v1, 0xf

    .line 1000
    .line 1001
    invoke-virtual {v6, v1}, Lr0/g;->q(I)V

    .line 1002
    .line 1003
    .line 1004
    :cond_42
    if-ltz v0, :cond_43

    .line 1005
    .line 1006
    const/high16 v7, 0x120000

    .line 1007
    .line 1008
    goto :goto_1a

    .line 1009
    :cond_43
    const/high16 v7, 0x110000

    .line 1010
    .line 1011
    :goto_1a
    invoke-virtual {v6, v7}, Lr0/g;->q(I)V

    .line 1012
    .line 1013
    .line 1014
    if-ltz v0, :cond_44

    .line 1015
    .line 1016
    move v0, v10

    .line 1017
    goto :goto_1b

    .line 1018
    :cond_44
    move v0, v12

    .line 1019
    :goto_1b
    iget-object v1, v6, Lr0/g;->h:Ljava/util/ArrayList;

    .line 1020
    .line 1021
    const/4 v2, 0x0

    .line 1022
    invoke-virtual {v9, v6, v0, v1, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1023
    .line 1024
    .line 1025
    iget-byte v0, v6, Lr0/g;->b:B

    .line 1026
    .line 1027
    iget v1, v6, Lr0/g;->c:I

    .line 1028
    .line 1029
    if-ne v0, v11, :cond_46

    .line 1030
    .line 1031
    iget-object v0, v6, Lr0/h;->i:Lg0/h;

    .line 1032
    .line 1033
    const/4 v2, 0x2

    .line 1034
    if-eqz v0, :cond_45

    .line 1035
    .line 1036
    invoke-virtual {v9, v1, v2, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_1c

    .line 1040
    :cond_45
    iget-object v0, v6, Lr0/h;->l:Ljava/util/List;

    .line 1041
    .line 1042
    if-eqz v0, :cond_46

    .line 1043
    .line 1044
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    check-cast v0, Lg0/h;

    .line 1049
    .line 1050
    invoke-virtual {v0}, Lg0/h;->f()Lg0/h;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v0

    .line 1054
    invoke-virtual {v9, v1, v2, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 1055
    .line 1056
    .line 1057
    :cond_46
    :goto_1c
    iget-object v0, v6, Lr0/h;->j:Lg0/h;

    .line 1058
    .line 1059
    invoke-virtual {v9, v1, v10, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 1060
    .line 1061
    .line 1062
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v1, p0, Lr0/g;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const-string v1, "move"

    goto :goto_0

    :cond_0
    const-string v1, "copy"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a directory to its own subdirectory!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lr0/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
