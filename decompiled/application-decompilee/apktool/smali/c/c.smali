.class public Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:F

.field public B:F

.field public C:I

.field public D:I

.field public E:Ljava/lang/Object;

.field public F:I

.field public G:I

.field public H:I

.field public I:Z

.field public J:Z

.field public K:F

.field public L:F

.field public final a:Lc/a;

.field public b:I

.field public c:I

.field public final d:Lc/b;

.field public final e:Lc/b;

.field public final f:Lc/b;

.field public final g:Lc/b;

.field public final h:Lc/b;

.field public final i:Lc/b;

.field public final j:Lc/b;

.field public final k:Lc/b;

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lc/c;

.field public n:I

.field public o:I

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lc/a;-><init>(Lc/c;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc/c;->a:Lc/a;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lc/c;->b:I

    .line 13
    .line 14
    iput v0, p0, Lc/c;->c:I

    .line 15
    .line 16
    new-instance v1, Lc/b;

    .line 17
    .line 18
    sget-object v2, Lc/b$a;->a:Lc/b$a;

    .line 19
    .line 20
    invoke-direct {v1, p0, v2}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lc/c;->d:Lc/b;

    .line 24
    .line 25
    new-instance v2, Lc/b;

    .line 26
    .line 27
    sget-object v3, Lc/b$a;->b:Lc/b$a;

    .line 28
    .line 29
    invoke-direct {v2, p0, v3}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lc/c;->e:Lc/b;

    .line 33
    .line 34
    new-instance v3, Lc/b;

    .line 35
    .line 36
    sget-object v4, Lc/b$a;->c:Lc/b$a;

    .line 37
    .line 38
    invoke-direct {v3, p0, v4}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 39
    .line 40
    .line 41
    iput-object v3, p0, Lc/c;->f:Lc/b;

    .line 42
    .line 43
    new-instance v4, Lc/b;

    .line 44
    .line 45
    sget-object v5, Lc/b$a;->d:Lc/b$a;

    .line 46
    .line 47
    invoke-direct {v4, p0, v5}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 48
    .line 49
    .line 50
    iput-object v4, p0, Lc/c;->g:Lc/b;

    .line 51
    .line 52
    new-instance v5, Lc/b;

    .line 53
    .line 54
    sget-object v6, Lc/b$a;->e:Lc/b$a;

    .line 55
    .line 56
    invoke-direct {v5, p0, v6}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 57
    .line 58
    .line 59
    iput-object v5, p0, Lc/c;->h:Lc/b;

    .line 60
    .line 61
    new-instance v6, Lc/b;

    .line 62
    .line 63
    sget-object v7, Lc/b$a;->g:Lc/b$a;

    .line 64
    .line 65
    invoke-direct {v6, p0, v7}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 66
    .line 67
    .line 68
    iput-object v6, p0, Lc/c;->i:Lc/b;

    .line 69
    .line 70
    new-instance v7, Lc/b;

    .line 71
    .line 72
    sget-object v8, Lc/b$a;->h:Lc/b$a;

    .line 73
    .line 74
    invoke-direct {v7, p0, v8}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 75
    .line 76
    .line 77
    iput-object v7, p0, Lc/c;->j:Lc/b;

    .line 78
    .line 79
    new-instance v8, Lc/b;

    .line 80
    .line 81
    sget-object v9, Lc/b$a;->f:Lc/b$a;

    .line 82
    .line 83
    invoke-direct {v8, p0, v9}, Lc/b;-><init>(Lc/c;Lc/b$a;)V

    .line 84
    .line 85
    .line 86
    iput-object v8, p0, Lc/c;->k:Lc/b;

    .line 87
    .line 88
    new-instance v8, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v8, p0, Lc/c;->l:Ljava/util/ArrayList;

    .line 94
    .line 95
    const/4 v9, 0x0

    .line 96
    iput-object v9, p0, Lc/c;->m:Lc/c;

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    iput v9, p0, Lc/c;->n:I

    .line 100
    .line 101
    iput v9, p0, Lc/c;->o:I

    .line 102
    .line 103
    const/4 v10, 0x0

    .line 104
    iput v10, p0, Lc/c;->p:F

    .line 105
    .line 106
    iput v0, p0, Lc/c;->q:I

    .line 107
    .line 108
    iput v9, p0, Lc/c;->r:I

    .line 109
    .line 110
    iput v9, p0, Lc/c;->s:I

    .line 111
    .line 112
    iput v9, p0, Lc/c;->t:I

    .line 113
    .line 114
    iput v9, p0, Lc/c;->u:I

    .line 115
    .line 116
    iput v9, p0, Lc/c;->v:I

    .line 117
    .line 118
    iput v9, p0, Lc/c;->w:I

    .line 119
    .line 120
    iput v9, p0, Lc/c;->x:I

    .line 121
    .line 122
    iput v9, p0, Lc/c;->y:I

    .line 123
    .line 124
    iput v9, p0, Lc/c;->z:I

    .line 125
    .line 126
    const/high16 v0, 0x3f000000    # 0.5f

    .line 127
    .line 128
    iput v0, p0, Lc/c;->A:F

    .line 129
    .line 130
    iput v0, p0, Lc/c;->B:F

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    iput v0, p0, Lc/c;->C:I

    .line 134
    .line 135
    iput v0, p0, Lc/c;->D:I

    .line 136
    .line 137
    iput v9, p0, Lc/c;->F:I

    .line 138
    .line 139
    iput v9, p0, Lc/c;->G:I

    .line 140
    .line 141
    iput v9, p0, Lc/c;->H:I

    .line 142
    .line 143
    iput v10, p0, Lc/c;->K:F

    .line 144
    .line 145
    iput v10, p0, Lc/c;->L:F

    .line 146
    .line 147
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    return-void
.end method


# virtual methods
.method public a(Lb/e;)V
    .locals 37

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    iget-object v0, v12, Lc/c;->d:Lc/b;

    .line 6
    .line 7
    invoke-virtual {v13, v0}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 8
    .line 9
    .line 10
    move-result-object v14

    .line 11
    iget-object v1, v12, Lc/c;->f:Lc/b;

    .line 12
    .line 13
    invoke-virtual {v13, v1}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 14
    .line 15
    .line 16
    move-result-object v15

    .line 17
    iget-object v2, v12, Lc/c;->e:Lc/b;

    .line 18
    .line 19
    invoke-virtual {v13, v2}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    iget-object v10, v12, Lc/c;->g:Lc/b;

    .line 24
    .line 25
    invoke-virtual {v13, v10}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    iget-object v8, v12, Lc/c;->h:Lc/b;

    .line 30
    .line 31
    invoke-virtual {v13, v8}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    iget-object v3, v12, Lc/c;->m:Lc/c;

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v3, :cond_13

    .line 40
    .line 41
    iget-object v6, v0, Lc/b;->c:Lc/b;

    .line 42
    .line 43
    if-eqz v6, :cond_0

    .line 44
    .line 45
    iget-object v6, v6, Lc/b;->c:Lc/b;

    .line 46
    .line 47
    if-eq v6, v0, :cond_1

    .line 48
    .line 49
    :cond_0
    iget-object v6, v1, Lc/b;->c:Lc/b;

    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    iget-object v6, v6, Lc/b;->c:Lc/b;

    .line 54
    .line 55
    if-ne v6, v1, :cond_2

    .line 56
    .line 57
    :cond_1
    check-cast v3, Lc/d;

    .line 58
    .line 59
    invoke-virtual {v3, v12, v4}, Lc/d;->t(Lc/c;I)V

    .line 60
    .line 61
    .line 62
    move v3, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    move v3, v4

    .line 65
    :goto_0
    iget-object v6, v2, Lc/b;->c:Lc/b;

    .line 66
    .line 67
    if-eqz v6, :cond_3

    .line 68
    .line 69
    iget-object v6, v6, Lc/b;->c:Lc/b;

    .line 70
    .line 71
    if-eq v6, v2, :cond_4

    .line 72
    .line 73
    :cond_3
    iget-object v6, v10, Lc/b;->c:Lc/b;

    .line 74
    .line 75
    if-eqz v6, :cond_5

    .line 76
    .line 77
    iget-object v6, v6, Lc/b;->c:Lc/b;

    .line 78
    .line 79
    if-ne v6, v10, :cond_5

    .line 80
    .line 81
    :cond_4
    iget-object v6, v12, Lc/c;->m:Lc/c;

    .line 82
    .line 83
    check-cast v6, Lc/d;

    .line 84
    .line 85
    invoke-virtual {v6, v12, v5}, Lc/d;->t(Lc/c;I)V

    .line 86
    .line 87
    .line 88
    move v6, v5

    .line 89
    goto :goto_1

    .line 90
    :cond_5
    move v6, v4

    .line 91
    :goto_1
    iget-object v5, v12, Lc/c;->m:Lc/c;

    .line 92
    .line 93
    iget v4, v5, Lc/c;->C:I

    .line 94
    .line 95
    move-object/from16 v18, v7

    .line 96
    .line 97
    const/4 v7, 0x2

    .line 98
    if-ne v4, v7, :cond_b

    .line 99
    .line 100
    if-nez v3, :cond_b

    .line 101
    .line 102
    iget-object v4, v0, Lc/b;->c:Lc/b;

    .line 103
    .line 104
    if-eqz v4, :cond_8

    .line 105
    .line 106
    iget-object v4, v4, Lc/b;->a:Lc/c;

    .line 107
    .line 108
    if-eq v4, v5, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    if-ne v4, v5, :cond_7

    .line 112
    .line 113
    iput v7, v0, Lc/b;->g:I

    .line 114
    .line 115
    :cond_7
    move/from16 v19, v3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_8
    :goto_2
    iget-object v4, v5, Lc/c;->d:Lc/b;

    .line 119
    .line 120
    invoke-virtual {v13, v4}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    move/from16 v19, v3

    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-virtual {v5, v14, v4, v7, v3}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v13, v5}, Lb/e;->c(Lb/b;)V

    .line 139
    .line 140
    .line 141
    :goto_3
    iget-object v3, v1, Lc/b;->c:Lc/b;

    .line 142
    .line 143
    if-eqz v3, :cond_a

    .line 144
    .line 145
    iget-object v4, v12, Lc/c;->m:Lc/c;

    .line 146
    .line 147
    iget-object v3, v3, Lc/b;->a:Lc/c;

    .line 148
    .line 149
    if-eq v3, v4, :cond_9

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_9
    if-ne v3, v4, :cond_c

    .line 153
    .line 154
    const/4 v3, 0x2

    .line 155
    iput v3, v1, Lc/b;->g:I

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    :goto_4
    iget-object v3, v12, Lc/c;->m:Lc/c;

    .line 159
    .line 160
    iget-object v3, v3, Lc/c;->f:Lc/b;

    .line 161
    .line 162
    invoke-virtual {v13, v3}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    const/4 v7, 0x0

    .line 175
    invoke-virtual {v4, v3, v15, v5, v7}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13, v4}, Lb/e;->c(Lb/b;)V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_b
    move/from16 v19, v3

    .line 183
    .line 184
    :cond_c
    :goto_5
    iget-object v3, v12, Lc/c;->m:Lc/c;

    .line 185
    .line 186
    iget v4, v3, Lc/c;->D:I

    .line 187
    .line 188
    const/4 v5, 0x2

    .line 189
    if-ne v4, v5, :cond_12

    .line 190
    .line 191
    if-nez v6, :cond_12

    .line 192
    .line 193
    iget-object v4, v2, Lc/b;->c:Lc/b;

    .line 194
    .line 195
    if-eqz v4, :cond_e

    .line 196
    .line 197
    iget-object v4, v4, Lc/b;->a:Lc/c;

    .line 198
    .line 199
    if-eq v4, v3, :cond_d

    .line 200
    .line 201
    goto :goto_6

    .line 202
    :cond_d
    if-ne v4, v3, :cond_f

    .line 203
    .line 204
    iput v5, v2, Lc/b;->g:I

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_e
    :goto_6
    iget-object v3, v3, Lc/c;->e:Lc/b;

    .line 208
    .line 209
    invoke-virtual {v13, v3}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    const/4 v7, 0x0

    .line 222
    invoke-virtual {v4, v11, v3, v5, v7}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v13, v4}, Lb/e;->c(Lb/b;)V

    .line 226
    .line 227
    .line 228
    :cond_f
    :goto_7
    iget-object v3, v10, Lc/b;->c:Lc/b;

    .line 229
    .line 230
    if-eqz v3, :cond_11

    .line 231
    .line 232
    iget-object v4, v12, Lc/c;->m:Lc/c;

    .line 233
    .line 234
    iget-object v3, v3, Lc/b;->a:Lc/c;

    .line 235
    .line 236
    if-eq v3, v4, :cond_10

    .line 237
    .line 238
    goto :goto_8

    .line 239
    :cond_10
    if-ne v3, v4, :cond_12

    .line 240
    .line 241
    const/4 v3, 0x2

    .line 242
    iput v3, v10, Lc/b;->g:I

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_11
    :goto_8
    iget-object v3, v12, Lc/c;->m:Lc/c;

    .line 246
    .line 247
    iget-object v3, v3, Lc/c;->g:Lc/b;

    .line 248
    .line 249
    invoke-virtual {v13, v3}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    const/4 v7, 0x0

    .line 262
    invoke-virtual {v4, v3, v9, v5, v7}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v13, v4}, Lb/e;->c(Lb/b;)V

    .line 266
    .line 267
    .line 268
    goto :goto_a

    .line 269
    :cond_12
    :goto_9
    const/4 v7, 0x0

    .line 270
    :goto_a
    move/from16 v17, v6

    .line 271
    .line 272
    goto :goto_b

    .line 273
    :cond_13
    move-object/from16 v18, v7

    .line 274
    .line 275
    move v7, v4

    .line 276
    move/from16 v17, v7

    .line 277
    .line 278
    move/from16 v19, v17

    .line 279
    .line 280
    :goto_b
    iget v3, v12, Lc/c;->n:I

    .line 281
    .line 282
    if-gez v3, :cond_14

    .line 283
    .line 284
    move v4, v7

    .line 285
    goto :goto_c

    .line 286
    :cond_14
    move v4, v3

    .line 287
    :goto_c
    iget v5, v12, Lc/c;->o:I

    .line 288
    .line 289
    if-gez v5, :cond_15

    .line 290
    .line 291
    move v6, v7

    .line 292
    goto :goto_d

    .line 293
    :cond_15
    move v6, v5

    .line 294
    :goto_d
    iget v7, v12, Lc/c;->C:I

    .line 295
    .line 296
    move/from16 v21, v4

    .line 297
    .line 298
    const/4 v4, 0x3

    .line 299
    move/from16 v23, v6

    .line 300
    .line 301
    if-eq v7, v4, :cond_16

    .line 302
    .line 303
    const/16 v22, 0x1

    .line 304
    .line 305
    goto :goto_e

    .line 306
    :cond_16
    const/16 v22, 0x0

    .line 307
    .line 308
    :goto_e
    iget v6, v12, Lc/c;->D:I

    .line 309
    .line 310
    if-eq v6, v4, :cond_17

    .line 311
    .line 312
    const/16 v24, 0x1

    .line 313
    .line 314
    goto :goto_f

    .line 315
    :cond_17
    const/16 v24, 0x0

    .line 316
    .line 317
    :goto_f
    if-nez v22, :cond_19

    .line 318
    .line 319
    if-eqz v0, :cond_19

    .line 320
    .line 321
    if-eqz v1, :cond_19

    .line 322
    .line 323
    iget-object v0, v0, Lc/b;->c:Lc/b;

    .line 324
    .line 325
    if-eqz v0, :cond_18

    .line 326
    .line 327
    iget-object v0, v1, Lc/b;->c:Lc/b;

    .line 328
    .line 329
    if-nez v0, :cond_19

    .line 330
    .line 331
    :cond_18
    const/16 v22, 0x1

    .line 332
    .line 333
    :cond_19
    if-nez v24, :cond_1c

    .line 334
    .line 335
    if-eqz v2, :cond_1c

    .line 336
    .line 337
    if-eqz v10, :cond_1c

    .line 338
    .line 339
    iget-object v0, v2, Lc/b;->c:Lc/b;

    .line 340
    .line 341
    if-eqz v0, :cond_1a

    .line 342
    .line 343
    iget-object v1, v10, Lc/b;->c:Lc/b;

    .line 344
    .line 345
    if-nez v1, :cond_1c

    .line 346
    .line 347
    :cond_1a
    iget v1, v12, Lc/c;->z:I

    .line 348
    .line 349
    if-eqz v1, :cond_1b

    .line 350
    .line 351
    if-eqz v8, :cond_1c

    .line 352
    .line 353
    if-eqz v0, :cond_1b

    .line 354
    .line 355
    iget-object v0, v8, Lc/b;->c:Lc/b;

    .line 356
    .line 357
    if-nez v0, :cond_1c

    .line 358
    .line 359
    :cond_1b
    const/16 v24, 0x1

    .line 360
    .line 361
    :cond_1c
    iget v0, v12, Lc/c;->q:I

    .line 362
    .line 363
    iget v1, v12, Lc/c;->p:F

    .line 364
    .line 365
    const/4 v2, 0x0

    .line 366
    cmpl-float v2, v1, v2

    .line 367
    .line 368
    if-lez v2, :cond_23

    .line 369
    .line 370
    iget v2, v12, Lc/c;->F:I

    .line 371
    .line 372
    const/16 v4, 0x8

    .line 373
    .line 374
    if-eq v2, v4, :cond_23

    .line 375
    .line 376
    const/4 v2, -0x1

    .line 377
    const/4 v4, 0x3

    .line 378
    if-ne v7, v4, :cond_20

    .line 379
    .line 380
    if-ne v6, v4, :cond_20

    .line 381
    .line 382
    if-eqz v22, :cond_1d

    .line 383
    .line 384
    if-nez v24, :cond_1d

    .line 385
    .line 386
    const/4 v3, 0x0

    .line 387
    goto :goto_10

    .line 388
    :cond_1d
    if-nez v22, :cond_1f

    .line 389
    .line 390
    if-eqz v24, :cond_1f

    .line 391
    .line 392
    if-ne v0, v2, :cond_1e

    .line 393
    .line 394
    const/high16 v0, 0x3f800000    # 1.0f

    .line 395
    .line 396
    div-float v1, v0, v1

    .line 397
    .line 398
    move v4, v0

    .line 399
    move v6, v1

    .line 400
    move/from16 v3, v22

    .line 401
    .line 402
    const/4 v2, 0x2

    .line 403
    const/4 v5, 0x1

    .line 404
    const/16 v16, 0x1

    .line 405
    .line 406
    goto :goto_12

    .line 407
    :cond_1e
    const/4 v3, 0x1

    .line 408
    goto :goto_10

    .line 409
    :cond_1f
    move v3, v0

    .line 410
    :goto_10
    move/from16 v6, v23

    .line 411
    .line 412
    const/4 v0, 0x1

    .line 413
    const/high16 v4, 0x3f800000    # 1.0f

    .line 414
    .line 415
    goto :goto_11

    .line 416
    :cond_20
    if-ne v7, v4, :cond_21

    .line 417
    .line 418
    int-to-float v0, v5

    .line 419
    mul-float/2addr v0, v1

    .line 420
    float-to-int v0, v0

    .line 421
    move/from16 v21, v0

    .line 422
    .line 423
    move v6, v1

    .line 424
    const/4 v2, 0x2

    .line 425
    const/4 v3, 0x1

    .line 426
    const/high16 v4, 0x3f800000    # 1.0f

    .line 427
    .line 428
    const/4 v5, 0x0

    .line 429
    const/16 v16, 0x0

    .line 430
    .line 431
    goto :goto_12

    .line 432
    :cond_21
    if-ne v6, v4, :cond_23

    .line 433
    .line 434
    const/high16 v4, 0x3f800000    # 1.0f

    .line 435
    .line 436
    if-ne v0, v2, :cond_22

    .line 437
    .line 438
    div-float v1, v4, v1

    .line 439
    .line 440
    :cond_22
    int-to-float v0, v3

    .line 441
    mul-float/2addr v0, v1

    .line 442
    float-to-int v6, v0

    .line 443
    const/4 v0, 0x0

    .line 444
    const/4 v3, 0x1

    .line 445
    const/16 v24, 0x1

    .line 446
    .line 447
    goto :goto_11

    .line 448
    :cond_23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 449
    .line 450
    move v3, v0

    .line 451
    move/from16 v6, v23

    .line 452
    .line 453
    const/4 v0, 0x0

    .line 454
    :goto_11
    move/from16 v16, v0

    .line 455
    .line 456
    move v5, v3

    .line 457
    move/from16 v23, v6

    .line 458
    .line 459
    move/from16 v3, v22

    .line 460
    .line 461
    const/4 v2, 0x2

    .line 462
    move v6, v1

    .line 463
    :goto_12
    if-ne v7, v2, :cond_24

    .line 464
    .line 465
    instance-of v0, v12, Lc/d;

    .line 466
    .line 467
    if-eqz v0, :cond_24

    .line 468
    .line 469
    const/4 v7, 0x1

    .line 470
    goto :goto_13

    .line 471
    :cond_24
    const/4 v7, 0x0

    .line 472
    :goto_13
    iget v0, v12, Lc/c;->b:I

    .line 473
    .line 474
    if-eq v0, v2, :cond_26

    .line 475
    .line 476
    iget-object v1, v12, Lc/c;->d:Lc/b;

    .line 477
    .line 478
    iget-object v0, v12, Lc/c;->f:Lc/b;

    .line 479
    .line 480
    move/from16 v22, v6

    .line 481
    .line 482
    iget v6, v12, Lc/c;->r:I

    .line 483
    .line 484
    add-int v25, v6, v21

    .line 485
    .line 486
    move-object/from16 v26, v9

    .line 487
    .line 488
    iget v9, v12, Lc/c;->A:F

    .line 489
    .line 490
    if-eqz v16, :cond_25

    .line 491
    .line 492
    if-nez v5, :cond_25

    .line 493
    .line 494
    move-object/from16 v28, v0

    .line 495
    .line 496
    const/16 v27, 0x1

    .line 497
    .line 498
    goto :goto_14

    .line 499
    :cond_25
    move-object/from16 v28, v0

    .line 500
    .line 501
    const/16 v27, 0x0

    .line 502
    .line 503
    :goto_14
    move-object/from16 v0, p0

    .line 504
    .line 505
    move-object/from16 v29, v1

    .line 506
    .line 507
    move-object/from16 v1, p1

    .line 508
    .line 509
    move/from16 v30, v2

    .line 510
    .line 511
    move v2, v7

    .line 512
    move v7, v4

    .line 513
    move-object/from16 v20, v14

    .line 514
    .line 515
    const/4 v14, 0x0

    .line 516
    move-object/from16 v4, v29

    .line 517
    .line 518
    move/from16 v31, v5

    .line 519
    .line 520
    move-object/from16 v5, v28

    .line 521
    .line 522
    move/from16 v32, v22

    .line 523
    .line 524
    move/from16 v14, v30

    .line 525
    .line 526
    move-object/from16 v33, v18

    .line 527
    .line 528
    move/from16 v7, v25

    .line 529
    .line 530
    move-object/from16 v34, v8

    .line 531
    .line 532
    move/from16 v8, v21

    .line 533
    .line 534
    move-object/from16 v35, v26

    .line 535
    .line 536
    move-object/from16 v18, v10

    .line 537
    .line 538
    move/from16 v10, v27

    .line 539
    .line 540
    move-object/from16 v36, v11

    .line 541
    .line 542
    move/from16 v11, v19

    .line 543
    .line 544
    invoke-virtual/range {v0 .. v11}, Lc/c;->b(Lb/e;ZZLc/b;Lc/b;IIIFZZ)V

    .line 545
    .line 546
    .line 547
    goto :goto_15

    .line 548
    :cond_26
    move/from16 v31, v5

    .line 549
    .line 550
    move/from16 v32, v6

    .line 551
    .line 552
    move-object/from16 v34, v8

    .line 553
    .line 554
    move-object/from16 v35, v9

    .line 555
    .line 556
    move-object/from16 v36, v11

    .line 557
    .line 558
    move-object/from16 v20, v14

    .line 559
    .line 560
    move-object/from16 v33, v18

    .line 561
    .line 562
    move v14, v2

    .line 563
    move-object/from16 v18, v10

    .line 564
    .line 565
    :goto_15
    iget v0, v12, Lc/c;->c:I

    .line 566
    .line 567
    if-ne v0, v14, :cond_27

    .line 568
    .line 569
    return-void

    .line 570
    :cond_27
    iget v0, v12, Lc/c;->D:I

    .line 571
    .line 572
    if-ne v0, v14, :cond_28

    .line 573
    .line 574
    instance-of v0, v12, Lc/d;

    .line 575
    .line 576
    if-eqz v0, :cond_28

    .line 577
    .line 578
    const/4 v2, 0x1

    .line 579
    goto :goto_16

    .line 580
    :cond_28
    const/4 v2, 0x0

    .line 581
    :goto_16
    iget v0, v12, Lc/c;->z:I

    .line 582
    .line 583
    if-lez v0, :cond_2b

    .line 584
    .line 585
    sub-int v0, v23, v0

    .line 586
    .line 587
    move-object/from16 v1, v33

    .line 588
    .line 589
    move-object/from16 v14, v35

    .line 590
    .line 591
    const/4 v3, 0x0

    .line 592
    invoke-static {v13, v14, v1, v0, v3}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v13, v0}, Lb/e;->c(Lb/b;)V

    .line 597
    .line 598
    .line 599
    move-object/from16 v0, v34

    .line 600
    .line 601
    iget-object v1, v0, Lc/b;->c:Lc/b;

    .line 602
    .line 603
    if-eqz v1, :cond_29

    .line 604
    .line 605
    iget v1, v12, Lc/c;->z:I

    .line 606
    .line 607
    move-object v5, v0

    .line 608
    move v8, v1

    .line 609
    goto :goto_17

    .line 610
    :cond_29
    move-object/from16 v5, v18

    .line 611
    .line 612
    move/from16 v8, v23

    .line 613
    .line 614
    :goto_17
    iget-object v4, v12, Lc/c;->e:Lc/b;

    .line 615
    .line 616
    iget v6, v12, Lc/c;->s:I

    .line 617
    .line 618
    add-int v7, v6, v8

    .line 619
    .line 620
    iget v9, v12, Lc/c;->B:F

    .line 621
    .line 622
    move/from16 v11, v31

    .line 623
    .line 624
    if-eqz v16, :cond_2a

    .line 625
    .line 626
    const/4 v0, 0x1

    .line 627
    if-ne v11, v0, :cond_2a

    .line 628
    .line 629
    move v10, v0

    .line 630
    goto :goto_18

    .line 631
    :cond_2a
    move v10, v3

    .line 632
    :goto_18
    move-object/from16 v0, p0

    .line 633
    .line 634
    move-object/from16 v1, p1

    .line 635
    .line 636
    move/from16 v3, v24

    .line 637
    .line 638
    move v13, v11

    .line 639
    move/from16 v11, v17

    .line 640
    .line 641
    invoke-virtual/range {v0 .. v11}, Lc/c;->b(Lb/e;ZZLc/b;Lc/b;IIIFZZ)V

    .line 642
    .line 643
    .line 644
    goto :goto_1a

    .line 645
    :cond_2b
    move/from16 v13, v31

    .line 646
    .line 647
    move-object/from16 v14, v35

    .line 648
    .line 649
    const/4 v0, 0x1

    .line 650
    const/4 v3, 0x0

    .line 651
    iget-object v4, v12, Lc/c;->e:Lc/b;

    .line 652
    .line 653
    iget-object v5, v12, Lc/c;->g:Lc/b;

    .line 654
    .line 655
    iget v6, v12, Lc/c;->s:I

    .line 656
    .line 657
    add-int v7, v6, v23

    .line 658
    .line 659
    iget v9, v12, Lc/c;->B:F

    .line 660
    .line 661
    if-eqz v16, :cond_2c

    .line 662
    .line 663
    if-ne v13, v0, :cond_2c

    .line 664
    .line 665
    move v10, v0

    .line 666
    goto :goto_19

    .line 667
    :cond_2c
    move v10, v3

    .line 668
    :goto_19
    move-object/from16 v0, p0

    .line 669
    .line 670
    move-object/from16 v1, p1

    .line 671
    .line 672
    move/from16 v3, v24

    .line 673
    .line 674
    move/from16 v8, v23

    .line 675
    .line 676
    move/from16 v11, v17

    .line 677
    .line 678
    invoke-virtual/range {v0 .. v11}, Lc/c;->b(Lb/e;ZZLc/b;Lc/b;IIIFZZ)V

    .line 679
    .line 680
    .line 681
    :goto_1a
    if-eqz v16, :cond_2e

    .line 682
    .line 683
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    const/high16 v1, -0x40800000    # -1.0f

    .line 688
    .line 689
    iget-object v2, v0, Lb/b;->c:Lb/a;

    .line 690
    .line 691
    if-nez v13, :cond_2d

    .line 692
    .line 693
    invoke-virtual {v2, v15, v1}, Lb/a;->c(Lb/g;F)V

    .line 694
    .line 695
    .line 696
    move-object/from16 v3, v20

    .line 697
    .line 698
    const/high16 v4, 0x3f800000    # 1.0f

    .line 699
    .line 700
    invoke-virtual {v2, v3, v4}, Lb/a;->c(Lb/g;F)V

    .line 701
    .line 702
    .line 703
    move/from16 v5, v32

    .line 704
    .line 705
    invoke-virtual {v2, v14, v5}, Lb/a;->c(Lb/g;F)V

    .line 706
    .line 707
    .line 708
    neg-float v1, v5

    .line 709
    move-object/from16 v6, v36

    .line 710
    .line 711
    invoke-virtual {v2, v6, v1}, Lb/a;->c(Lb/g;F)V

    .line 712
    .line 713
    .line 714
    move-object/from16 v7, p1

    .line 715
    .line 716
    invoke-virtual {v7, v0}, Lb/e;->c(Lb/b;)V

    .line 717
    .line 718
    .line 719
    goto :goto_1b

    .line 720
    :cond_2d
    move-object/from16 v7, p1

    .line 721
    .line 722
    move-object/from16 v3, v20

    .line 723
    .line 724
    move/from16 v5, v32

    .line 725
    .line 726
    move-object/from16 v6, v36

    .line 727
    .line 728
    const/high16 v4, 0x3f800000    # 1.0f

    .line 729
    .line 730
    invoke-virtual {v2, v14, v1}, Lb/a;->c(Lb/g;F)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v2, v6, v4}, Lb/a;->c(Lb/g;F)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v15, v5}, Lb/a;->c(Lb/g;F)V

    .line 737
    .line 738
    .line 739
    neg-float v1, v5

    .line 740
    invoke-virtual {v2, v3, v1}, Lb/a;->c(Lb/g;F)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v7, v0}, Lb/e;->c(Lb/b;)V

    .line 744
    .line 745
    .line 746
    :cond_2e
    :goto_1b
    return-void
.end method

.method public final b(Lb/e;ZZLc/b;Lc/b;IIIFZZ)V
    .locals 16

    move-object/from16 v9, p1

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    .line 1
    invoke-virtual {v9, v0}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    move-result-object v4

    .line 2
    invoke-virtual {v9, v1}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    move-result-object v6

    .line 3
    iget-object v5, v0, Lc/b;->c:Lc/b;

    .line 4
    invoke-virtual {v9, v5}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    move-result-object v5

    .line 5
    iget-object v7, v1, Lc/b;->c:Lc/b;

    .line 6
    invoke-virtual {v9, v7}, Lb/e;->j(Ljava/lang/Object;)Lb/g;

    move-result-object v7

    .line 7
    invoke-virtual/range {p4 .. p4}, Lc/b;->b()I

    move-result v8

    .line 8
    invoke-virtual/range {p5 .. p5}, Lc/b;->b()I

    move-result v10

    move-object/from16 v11, p0

    .line 9
    iget v12, v11, Lc/c;->F:I

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-ne v12, v13, :cond_0

    move v12, v14

    goto :goto_0

    :cond_0
    move/from16 v12, p8

    :goto_0
    const/4 v13, 0x1

    if-nez v5, :cond_3

    if-nez v7, :cond_3

    .line 10
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lb/b;->c(Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    if-nez p10, :cond_14

    if-eqz p2, :cond_1

    .line 11
    invoke-static {v9, v6, v4, v14, v13}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_1
    if-eqz p3, :cond_2

    .line 12
    invoke-static {v9, v6, v4, v12, v14}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    .line 13
    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    .line 14
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Lb/b;->c(Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_3
    if-eqz v5, :cond_6

    if-nez v7, :cond_6

    .line 15
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v8}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    if-eqz p2, :cond_4

    .line 16
    invoke-static {v9, v6, v4, v14, v13}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_4
    if-nez p10, :cond_14

    if-eqz p3, :cond_5

    .line 17
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v12}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    .line 18
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Lb/b;->c(Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_6
    if-nez v5, :cond_9

    if-eqz v7, :cond_9

    .line 19
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    mul-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v6, v7, v10}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    if-eqz p2, :cond_7

    .line 20
    invoke-static {v9, v6, v4, v14, v13}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_7
    if-nez p10, :cond_14

    if-eqz p3, :cond_8

    .line 21
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v12}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    .line 22
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lb/b;->c(Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_9
    const/high16 v2, -0x40800000    # -1.0f

    if-eqz p3, :cond_12

    if-eqz p2, :cond_a

    .line 23
    invoke-static {v9, v6, v4, v14, v13}, Lb/d;->k(Lb/e;Lb/g;Lb/g;IZ)Lb/b;

    move-result-object v3

    .line 24
    invoke-virtual {v9, v3}, Lb/e;->c(Lb/b;)V

    goto :goto_1

    .line 25
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v3

    invoke-virtual {v3, v6, v4, v12}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v3}, Lb/e;->c(Lb/b;)V

    .line 26
    :goto_1
    iget v3, v0, Lc/b;->f:I

    iget v12, v1, Lc/b;->f:I

    const/4 v15, 0x2

    if-eq v3, v12, :cond_c

    if-ne v3, v15, :cond_b

    .line 27
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v8}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    move-result-object v0

    .line 29
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v1

    mul-int/lit8 v10, v10, -0x1

    .line 30
    invoke-virtual {v1, v6, v7, v0, v10}, Lb/b;->f(Lb/g;Lb/g;Lb/g;I)V

    .line 31
    invoke-virtual {v9, v1}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    .line 32
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    move-result-object v0

    .line 33
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v4, v5, v0, v8}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 35
    invoke-virtual {v9, v1}, Lb/e;->c(Lb/b;)V

    .line 36
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    mul-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v6, v7, v10}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_c
    if-ne v5, v7, :cond_d

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 p2, p1

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p7, v7

    move-object/from16 p8, v6

    move/from16 p9, v2

    move/from16 p10, v3

    .line 37
    invoke-static/range {p2 .. p10}, Lb/d;->j(Lb/e;Lb/g;Lb/g;IFLb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    .line 38
    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_d
    if-nez p11, :cond_14

    .line 39
    iget v0, v0, Lc/b;->g:I

    if-eq v0, v15, :cond_e

    move v0, v13

    goto :goto_2

    :cond_e
    move v0, v14

    .line 40
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    move-result-object v3

    .line 41
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v12

    .line 42
    invoke-virtual {v12, v4, v5, v3, v8}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    if-eqz v0, :cond_f

    .line 43
    iget-object v0, v12, Lb/b;->c:Lb/a;

    invoke-virtual {v0, v3}, Lb/a;->b(Lb/g;)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 44
    invoke-virtual/range {p1 .. p1}, Lb/e;->i()Lb/g;

    move-result-object v13

    int-to-float v3, v3

    .line 45
    invoke-virtual {v0, v13, v3}, Lb/a;->c(Lb/g;F)V

    .line 46
    :cond_f
    invoke-virtual {v9, v12}, Lb/e;->c(Lb/b;)V

    .line 47
    iget v0, v1, Lc/b;->g:I

    if-eq v0, v15, :cond_10

    const/4 v14, 0x1

    :cond_10
    mul-int/lit8 v0, v10, -0x1

    .line 48
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    move-result-object v1

    .line 49
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v3

    .line 50
    invoke-virtual {v3, v6, v7, v1, v0}, Lb/b;->f(Lb/g;Lb/g;Lb/g;I)V

    if-eqz v14, :cond_11

    .line 51
    iget-object v0, v3, Lb/b;->c:Lb/a;

    invoke-virtual {v0, v1}, Lb/a;->b(Lb/g;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 52
    invoke-virtual/range {p1 .. p1}, Lb/e;->i()Lb/g;

    move-result-object v2

    int-to-float v1, v1

    .line 53
    invoke-virtual {v0, v2, v1}, Lb/a;->c(Lb/g;F)V

    .line 54
    :cond_11
    invoke-virtual {v9, v3}, Lb/e;->c(Lb/b;)V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move v3, v8

    move/from16 v4, p9

    move-object v5, v7

    move v7, v10

    move v8, v12

    .line 55
    invoke-static/range {v0 .. v8}, Lb/d;->j(Lb/e;Lb/g;Lb/g;IFLb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    .line 56
    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto/16 :goto_3

    :cond_12
    if-eqz p10, :cond_13

    .line 57
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    move-result-object v0

    .line 58
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v4, v5, v0, v8}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 60
    iget-object v3, v1, Lb/b;->c:Lb/a;

    invoke-virtual {v3, v0}, Lb/a;->b(Lb/g;)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 61
    invoke-virtual/range {p1 .. p1}, Lb/e;->i()Lb/g;

    move-result-object v12

    int-to-float v0, v0

    .line 62
    invoke-virtual {v3, v12, v0}, Lb/a;->c(Lb/g;F)V

    .line 63
    invoke-virtual {v9, v1}, Lb/e;->c(Lb/b;)V

    mul-int/lit8 v0, v10, -0x1

    .line 64
    invoke-virtual/range {p1 .. p1}, Lb/e;->l()Lb/g;

    move-result-object v1

    .line 65
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v6, v7, v1, v0}, Lb/b;->f(Lb/g;Lb/g;Lb/g;I)V

    .line 67
    iget-object v0, v3, Lb/b;->c:Lb/a;

    invoke-virtual {v0, v1}, Lb/a;->b(Lb/g;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 68
    invoke-virtual/range {p1 .. p1}, Lb/e;->i()Lb/g;

    move-result-object v2

    int-to-float v1, v1

    .line 69
    invoke-virtual {v0, v2, v1}, Lb/a;->c(Lb/g;F)V

    .line 70
    invoke-virtual {v9, v3}, Lb/e;->c(Lb/b;)V

    const/4 v12, 0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move v3, v8

    move/from16 v4, p9

    move-object v5, v7

    move v7, v10

    move v8, v12

    .line 71
    invoke-static/range {v0 .. v8}, Lb/d;->j(Lb/e;Lb/g;Lb/g;IFLb/g;Lb/g;IZ)Lb/b;

    move-result-object v0

    .line 72
    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    goto :goto_3

    :cond_13
    if-nez p11, :cond_14

    .line 73
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v8}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    .line 74
    invoke-virtual/range {p1 .. p1}, Lb/e;->k()Lb/b;

    move-result-object v0

    mul-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v6, v7, v10}, Lb/b;->d(Lb/g;Lb/g;I)V

    invoke-virtual {v9, v0}, Lb/e;->c(Lb/b;)V

    :cond_14
    :goto_3
    return-void
.end method

.method public c(Lc/b$a;)Lc/b;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :pswitch_0
    iget-object p1, p0, Lc/c;->j:Lc/b;

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_1
    iget-object p1, p0, Lc/c;->i:Lc/b;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_2
    iget-object p1, p0, Lc/c;->k:Lc/b;

    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_3
    iget-object p1, p0, Lc/c;->h:Lc/b;

    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_4
    iget-object p1, p0, Lc/c;->g:Lc/b;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_5
    iget-object p1, p0, Lc/c;->f:Lc/b;

    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_6
    iget-object p1, p0, Lc/c;->e:Lc/b;

    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_7
    iget-object p1, p0, Lc/c;->d:Lc/b;

    .line 32
    .line 33
    return-object p1

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()I
    .locals 2

    .line 1
    iget v0, p0, Lc/c;->F:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lc/c;->o:I

    .line 10
    .line 11
    return v0
.end method

.method public final e()I
    .locals 2

    .line 1
    iget v0, p0, Lc/c;->F:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lc/c;->n:I

    .line 10
    .line 11
    return v0
.end method

.method public final f(Lc/b$a;Lc/c;Lc/b$a;II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, p3}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    move v2, p4

    .line 13
    move v3, p5

    .line 14
    invoke-virtual/range {v0 .. v6}, Lc/b;->a(Lc/b;IIIIZ)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c;->d:Lc/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc/b;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc/c;->e:Lc/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lc/b;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lc/c;->f:Lc/b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lc/b;->c()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lc/c;->g:Lc/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lc/b;->c()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lc/c;->h:Lc/b;

    .line 22
    .line 23
    invoke-virtual {v0}, Lc/b;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lc/c;->i:Lc/b;

    .line 27
    .line 28
    invoke-virtual {v0}, Lc/b;->c()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lc/c;->j:Lc/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lc/b;->c()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lc/c;->k:Lc/b;

    .line 37
    .line 38
    invoke-virtual {v0}, Lc/b;->c()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lc/c;->m:Lc/c;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lc/c;->n:I

    .line 46
    .line 47
    iput v1, p0, Lc/c;->o:I

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iput v2, p0, Lc/c;->p:F

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    iput v3, p0, Lc/c;->q:I

    .line 54
    .line 55
    iput v1, p0, Lc/c;->r:I

    .line 56
    .line 57
    iput v1, p0, Lc/c;->s:I

    .line 58
    .line 59
    iput v1, p0, Lc/c;->t:I

    .line 60
    .line 61
    iput v1, p0, Lc/c;->u:I

    .line 62
    .line 63
    iput v1, p0, Lc/c;->v:I

    .line 64
    .line 65
    iput v1, p0, Lc/c;->w:I

    .line 66
    .line 67
    iput v1, p0, Lc/c;->x:I

    .line 68
    .line 69
    iput v1, p0, Lc/c;->y:I

    .line 70
    .line 71
    iput v1, p0, Lc/c;->z:I

    .line 72
    .line 73
    const/high16 v4, 0x3f000000    # 0.5f

    .line 74
    .line 75
    iput v4, p0, Lc/c;->A:F

    .line 76
    .line 77
    iput v4, p0, Lc/c;->B:F

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    iput v4, p0, Lc/c;->C:I

    .line 81
    .line 82
    iput v4, p0, Lc/c;->D:I

    .line 83
    .line 84
    iput-object v0, p0, Lc/c;->E:Ljava/lang/Object;

    .line 85
    .line 86
    iput v1, p0, Lc/c;->F:I

    .line 87
    .line 88
    iput v1, p0, Lc/c;->G:I

    .line 89
    .line 90
    iput v1, p0, Lc/c;->H:I

    .line 91
    .line 92
    iput-boolean v1, p0, Lc/c;->I:Z

    .line 93
    .line 94
    iput-boolean v1, p0, Lc/c;->J:Z

    .line 95
    .line 96
    iput v2, p0, Lc/c;->K:F

    .line 97
    .line 98
    iput v2, p0, Lc/c;->L:F

    .line 99
    .line 100
    iput v3, p0, Lc/c;->b:I

    .line 101
    .line 102
    iput v3, p0, Lc/c;->c:I

    .line 103
    .line 104
    return-void
.end method

.method public h(Lb/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c;->d:Lc/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc/b;->d()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lc/c;->e:Lc/b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lc/b;->d()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lc/c;->f:Lc/b;

    .line 12
    .line 13
    invoke-virtual {p1}, Lc/b;->d()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lc/c;->g:Lc/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Lc/b;->d()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lc/c;->h:Lc/b;

    .line 22
    .line 23
    invoke-virtual {p1}, Lc/b;->d()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lc/c;->k:Lc/b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lc/b;->d()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lc/c;->i:Lc/b;

    .line 32
    .line 33
    invoke-virtual {p1}, Lc/b;->d()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lc/c;->j:Lc/b;

    .line 37
    .line 38
    invoke-virtual {p1}, Lc/b;->d()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final i(IIII)V
    .locals 2

    .line 1
    sub-int/2addr p3, p1

    .line 2
    sub-int/2addr p4, p2

    .line 3
    iget v0, p0, Lc/c;->C:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lc/c;->e()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p3, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lc/c;->e()I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    :cond_0
    iget v0, p0, Lc/c;->D:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lc/c;->d()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge p4, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lc/c;->d()I

    .line 29
    .line 30
    .line 31
    move-result p4

    .line 32
    :cond_1
    iput p1, p0, Lc/c;->r:I

    .line 33
    .line 34
    iput p2, p0, Lc/c;->s:I

    .line 35
    .line 36
    iput p3, p0, Lc/c;->n:I

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    if-gez p3, :cond_2

    .line 40
    .line 41
    iput p1, p0, Lc/c;->n:I

    .line 42
    .line 43
    :cond_2
    iput p4, p0, Lc/c;->o:I

    .line 44
    .line 45
    if-gez p4, :cond_3

    .line 46
    .line 47
    iput p1, p0, Lc/c;->o:I

    .line 48
    .line 49
    :cond_3
    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c;->o:I

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/c;->o:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final k(II)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c;->r:I

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lc/c;->n:I

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lc/c;->n:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc/c;->C:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lc/c;->p(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public m(II)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c;->x:I

    .line 2
    .line 3
    iput p2, p0, Lc/c;->y:I

    .line 4
    .line 5
    return-void
.end method

.method public final n(II)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c;->s:I

    .line 2
    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Lc/c;->o:I

    .line 5
    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lc/c;->o:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final o(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc/c;->D:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lc/c;->j(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc/c;->n:I

    .line 2
    .line 3
    if-gez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lc/c;->n:I

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public q()V
    .locals 12

    .line 1
    iget v0, p0, Lc/c;->r:I

    .line 2
    .line 3
    iget v1, p0, Lc/c;->s:I

    .line 4
    .line 5
    iget v2, p0, Lc/c;->n:I

    .line 6
    .line 7
    add-int/2addr v2, v0

    .line 8
    iget v3, p0, Lc/c;->o:I

    .line 9
    .line 10
    add-int/2addr v3, v1

    .line 11
    sget-boolean v4, Lc/a;->g:Z

    .line 12
    .line 13
    if-eqz v4, :cond_4

    .line 14
    .line 15
    iget-object v4, p0, Lc/c;->a:Lc/a;

    .line 16
    .line 17
    iget-object v5, v4, Lc/a;->d:Lc/a$a;

    .line 18
    .line 19
    iput v0, v5, Lc/a$a;->a:I

    .line 20
    .line 21
    iput v1, v5, Lc/a$a;->c:I

    .line 22
    .line 23
    iput v2, v5, Lc/a$a;->b:I

    .line 24
    .line 25
    iput v3, v5, Lc/a$a;->d:I

    .line 26
    .line 27
    iget-boolean v6, v4, Lc/a;->f:Z

    .line 28
    .line 29
    iget-object v7, v4, Lc/a;->c:Lc/a$a;

    .line 30
    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    iget-object v6, v4, Lc/a;->a:Lc/c;

    .line 34
    .line 35
    iget v8, v6, Lc/c;->t:I

    .line 36
    .line 37
    if-ne v0, v8, :cond_0

    .line 38
    .line 39
    iget v9, v6, Lc/c;->u:I

    .line 40
    .line 41
    if-ne v1, v9, :cond_0

    .line 42
    .line 43
    iget v10, v6, Lc/c;->v:I

    .line 44
    .line 45
    add-int/2addr v10, v8

    .line 46
    if-ne v2, v10, :cond_0

    .line 47
    .line 48
    iget v10, v6, Lc/c;->w:I

    .line 49
    .line 50
    add-int/2addr v9, v10

    .line 51
    if-eq v3, v9, :cond_1

    .line 52
    .line 53
    :cond_0
    iget v9, v6, Lc/c;->u:I

    .line 54
    .line 55
    iget v10, v6, Lc/c;->v:I

    .line 56
    .line 57
    add-int/2addr v10, v8

    .line 58
    iget v6, v6, Lc/c;->w:I

    .line 59
    .line 60
    add-int/2addr v6, v9

    .line 61
    iput v8, v7, Lc/a$a;->a:I

    .line 62
    .line 63
    iput v9, v7, Lc/a$a;->c:I

    .line 64
    .line 65
    iput v10, v7, Lc/a$a;->b:I

    .line 66
    .line 67
    iput v6, v7, Lc/a$a;->d:I

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v8

    .line 73
    iput-wide v8, v4, Lc/a;->e:J

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    iput-boolean v6, v4, Lc/a;->f:Z

    .line 77
    .line 78
    :cond_1
    iget-boolean v6, v4, Lc/a;->f:Z

    .line 79
    .line 80
    if-eqz v6, :cond_3

    .line 81
    .line 82
    iget-object v6, v4, Lc/a;->b:Lc/a$a;

    .line 83
    .line 84
    iput v0, v6, Lc/a$a;->a:I

    .line 85
    .line 86
    iput v1, v6, Lc/a$a;->c:I

    .line 87
    .line 88
    iput v2, v6, Lc/a$a;->b:I

    .line 89
    .line 90
    iput v3, v6, Lc/a$a;->d:I

    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v0

    .line 96
    iget-wide v2, v4, Lc/a;->e:J

    .line 97
    .line 98
    const-wide/16 v8, 0x15e

    .line 99
    .line 100
    add-long/2addr v8, v2

    .line 101
    cmp-long v8, v0, v8

    .line 102
    .line 103
    if-gtz v8, :cond_2

    .line 104
    .line 105
    cmp-long v8, v0, v2

    .line 106
    .line 107
    if-ltz v8, :cond_2

    .line 108
    .line 109
    sub-long/2addr v0, v2

    .line 110
    long-to-float v0, v0

    .line 111
    const/high16 v1, 0x43af0000    # 350.0f

    .line 112
    .line 113
    div-float/2addr v0, v1

    .line 114
    iget v1, v7, Lc/a$a;->a:I

    .line 115
    .line 116
    int-to-float v1, v1

    .line 117
    iget v2, v6, Lc/a$a;->a:I

    .line 118
    .line 119
    int-to-float v2, v2

    .line 120
    invoke-static {v0, v1, v2}, Lc/a;->a(FFF)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iput v1, v5, Lc/a$a;->a:I

    .line 125
    .line 126
    iget v1, v7, Lc/a$a;->b:I

    .line 127
    .line 128
    int-to-float v1, v1

    .line 129
    iget v2, v6, Lc/a$a;->b:I

    .line 130
    .line 131
    int-to-float v2, v2

    .line 132
    invoke-static {v0, v1, v2}, Lc/a;->a(FFF)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iput v1, v5, Lc/a$a;->b:I

    .line 137
    .line 138
    iget v1, v7, Lc/a$a;->c:I

    .line 139
    .line 140
    int-to-float v1, v1

    .line 141
    iget v2, v6, Lc/a$a;->c:I

    .line 142
    .line 143
    int-to-float v2, v2

    .line 144
    invoke-static {v0, v1, v2}, Lc/a;->a(FFF)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    iput v1, v5, Lc/a$a;->c:I

    .line 149
    .line 150
    iget v1, v7, Lc/a$a;->d:I

    .line 151
    .line 152
    int-to-float v1, v1

    .line 153
    iget v2, v6, Lc/a$a;->d:I

    .line 154
    .line 155
    int-to-float v2, v2

    .line 156
    invoke-static {v0, v1, v2}, Lc/a;->a(FFF)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, v5, Lc/a$a;->d:I

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_2
    iget v0, v6, Lc/a$a;->a:I

    .line 164
    .line 165
    iput v0, v5, Lc/a$a;->a:I

    .line 166
    .line 167
    iget v0, v6, Lc/a$a;->c:I

    .line 168
    .line 169
    iput v0, v5, Lc/a$a;->c:I

    .line 170
    .line 171
    iget v0, v6, Lc/a$a;->b:I

    .line 172
    .line 173
    iput v0, v5, Lc/a$a;->b:I

    .line 174
    .line 175
    iget v0, v6, Lc/a$a;->d:I

    .line 176
    .line 177
    iput v0, v5, Lc/a$a;->d:I

    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    iput-boolean v0, v4, Lc/a;->f:Z

    .line 181
    .line 182
    :cond_3
    :goto_0
    iget-object v0, v4, Lc/a;->d:Lc/a$a;

    .line 183
    .line 184
    iget v1, v0, Lc/a$a;->a:I

    .line 185
    .line 186
    iget v2, v0, Lc/a$a;->c:I

    .line 187
    .line 188
    iget v3, v0, Lc/a$a;->b:I

    .line 189
    .line 190
    iget v0, v0, Lc/a$a;->d:I

    .line 191
    .line 192
    move v11, v3

    .line 193
    move v3, v0

    .line 194
    move v0, v1

    .line 195
    move v1, v2

    .line 196
    move v2, v11

    .line 197
    :cond_4
    iput v0, p0, Lc/c;->t:I

    .line 198
    .line 199
    iput v1, p0, Lc/c;->u:I

    .line 200
    .line 201
    sub-int/2addr v2, v0

    .line 202
    iput v2, p0, Lc/c;->v:I

    .line 203
    .line 204
    sub-int/2addr v3, v1

    .line 205
    iput v3, p0, Lc/c;->w:I

    .line 206
    .line 207
    return-void
.end method

.method public r(Lb/e;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lc/c;->d:Lc/b;

    .line 5
    .line 6
    invoke-static {p1}, Lb/e;->n(Lc/b;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lc/c;->e:Lc/b;

    .line 11
    .line 12
    invoke-static {v0}, Lb/e;->n(Lc/b;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lc/c;->f:Lc/b;

    .line 17
    .line 18
    invoke-static {v1}, Lb/e;->n(Lc/b;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lc/c;->g:Lc/b;

    .line 23
    .line 24
    invoke-static {v2}, Lb/e;->n(Lc/b;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0, p1, v0, v1, v2}, Lc/c;->i(IIII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, "("

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lc/c;->r:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lc/c;->s:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ") - ("

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lc/c;->n:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, " x "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lc/c;->o:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ") wrap: (0 x 0)"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
