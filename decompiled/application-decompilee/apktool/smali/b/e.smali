.class public final Lb/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lb/b;

.field public c:I

.field public d:I

.field public e:[Lb/b;

.field public f:[Z

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lb/c;

.field public final k:[Lb/g;

.field public l:I

.field public m:[Lb/b;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/e;->a:I

    .line 6
    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    iput v1, p0, Lb/e;->c:I

    .line 10
    .line 11
    iput v1, p0, Lb/e;->d:I

    .line 12
    .line 13
    new-array v2, v1, [Z

    .line 14
    .line 15
    iput-object v2, p0, Lb/e;->f:[Z

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput v2, p0, Lb/e;->g:I

    .line 19
    .line 20
    iput v0, p0, Lb/e;->h:I

    .line 21
    .line 22
    iput v1, p0, Lb/e;->i:I

    .line 23
    .line 24
    const/16 v2, 0x3e8

    .line 25
    .line 26
    new-array v2, v2, [Lb/g;

    .line 27
    .line 28
    iput-object v2, p0, Lb/e;->k:[Lb/g;

    .line 29
    .line 30
    iput v0, p0, Lb/e;->l:I

    .line 31
    .line 32
    new-array v2, v1, [Lb/b;

    .line 33
    .line 34
    iput-object v2, p0, Lb/e;->m:[Lb/b;

    .line 35
    .line 36
    new-array v1, v1, [Lb/b;

    .line 37
    .line 38
    iput-object v1, p0, Lb/e;->e:[Lb/b;

    .line 39
    .line 40
    move v1, v0

    .line 41
    :goto_0
    iget-object v2, p0, Lb/e;->e:[Lb/b;

    .line 42
    .line 43
    array-length v3, v2

    .line 44
    if-ge v1, v3, :cond_1

    .line 45
    .line 46
    aget-object v3, v2, v1

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    iget-object v4, p0, Lb/e;->j:Lb/c;

    .line 51
    .line 52
    iget-object v4, v4, Lb/c;->b:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v4, Lb/f;

    .line 55
    .line 56
    iget v5, v4, Lb/f;->b:I

    .line 57
    .line 58
    iget-object v6, v4, Lb/f;->a:[Ljava/lang/Object;

    .line 59
    .line 60
    array-length v7, v6

    .line 61
    if-ge v5, v7, :cond_0

    .line 62
    .line 63
    aput-object v3, v6, v5

    .line 64
    .line 65
    add-int/lit8 v5, v5, 0x1

    .line 66
    .line 67
    iput v5, v4, Lb/f;->b:I

    .line 68
    .line 69
    :cond_0
    const/4 v3, 0x0

    .line 70
    aput-object v3, v2, v1

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    new-instance v1, Lb/c;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lb/c;-><init>(I)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lb/e;->j:Lb/c;

    .line 81
    .line 82
    return-void
.end method

.method public static n(Lc/b;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lc/b;->i:Lb/g;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lb/g;->d:F

    .line 6
    .line 7
    const/high16 v0, 0x3f000000    # 0.5f

    .line 8
    .line 9
    add-float/2addr p0, v0

    .line 10
    float-to-int p0, p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method


# virtual methods
.method public final a(I)Lb/g;
    .locals 5

    .line 1
    iget-object v0, p0, Lb/e;->j:Lb/c;

    .line 2
    .line 3
    iget-object v0, v0, Lb/c;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lb/f;

    .line 6
    .line 7
    iget v1, v0, Lb/f;->b:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    iget-object v3, v0, Lb/f;->a:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v4, v3, v1

    .line 17
    .line 18
    aput-object v2, v3, v1

    .line 19
    .line 20
    iput v1, v0, Lb/f;->b:I

    .line 21
    .line 22
    move-object v2, v4

    .line 23
    :cond_0
    check-cast v2, Lb/g;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    new-instance v2, Lb/g;

    .line 28
    .line 29
    invoke-direct {v2, p1}, Lb/g;-><init>(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {v2}, Lb/g;->b()V

    .line 33
    .line 34
    .line 35
    iput p1, v2, Lb/g;->e:I

    .line 36
    .line 37
    iget p1, p0, Lb/e;->l:I

    .line 38
    .line 39
    add-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    iput v0, p0, Lb/e;->l:I

    .line 42
    .line 43
    iget-object v0, p0, Lb/e;->k:[Lb/g;

    .line 44
    .line 45
    aput-object v2, v0, p1

    .line 46
    .line 47
    return-object v2
.end method

.method public final b(Lb/g;Lb/g;IFLb/g;Lb/g;I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v8

    .line 5
    move-object v0, v8

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move-object v5, p5

    .line 11
    move-object v6, p6

    .line 12
    move/from16 v7, p7

    .line 13
    .line 14
    invoke-virtual/range {v0 .. v7}, Lb/b;->a(Lb/g;Lb/g;IFLb/g;Lb/g;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lb/e;->i()Lb/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lb/e;->i()Lb/g;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    iput v2, v0, Lb/g;->c:I

    .line 27
    .line 28
    iput v2, v1, Lb/g;->c:I

    .line 29
    .line 30
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    .line 32
    iget-object v3, v8, Lb/b;->c:Lb/a;

    .line 33
    .line 34
    invoke-virtual {v3, v0, v2}, Lb/a;->c(Lb/g;F)V

    .line 35
    .line 36
    .line 37
    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    .line 39
    invoke-virtual {v3, v1, v0}, Lb/a;->c(Lb/g;F)V

    .line 40
    .line 41
    .line 42
    move-object v0, p0

    .line 43
    invoke-virtual {p0, v8}, Lb/e;->c(Lb/b;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final c(Lb/b;)V
    .locals 12

    .line 1
    iget v0, p0, Lb/e;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget v2, p0, Lb/e;->i:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lb/e;->g:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    iget v2, p0, Lb/e;->d:I

    .line 13
    .line 14
    if-lt v0, v2, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lb/e;->o()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-boolean v0, p1, Lb/b;->d:Z

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_10

    .line 23
    .line 24
    iget v0, p0, Lb/e;->h:I

    .line 25
    .line 26
    iget-object v3, p1, Lb/b;->c:Lb/a;

    .line 27
    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lb/e;->e:[Lb/b;

    .line 31
    .line 32
    invoke-virtual {v3, p1, v0}, Lb/a;->f(Lb/b;[Lb/b;)V

    .line 33
    .line 34
    .line 35
    iget v0, v3, Lb/a;->a:I

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iput-boolean v1, p1, Lb/b;->d:Z

    .line 40
    .line 41
    :cond_2
    iget v0, p1, Lb/b;->b:F

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    cmpg-float v5, v0, v4

    .line 45
    .line 46
    const/4 v6, -0x1

    .line 47
    if-gez v5, :cond_3

    .line 48
    .line 49
    const/high16 v5, -0x40800000    # -1.0f

    .line 50
    .line 51
    mul-float/2addr v0, v5

    .line 52
    iput v0, p1, Lb/b;->b:F

    .line 53
    .line 54
    iget v0, v3, Lb/a;->h:I

    .line 55
    .line 56
    move v7, v2

    .line 57
    :goto_0
    if-eq v0, v6, :cond_3

    .line 58
    .line 59
    iget v8, v3, Lb/a;->a:I

    .line 60
    .line 61
    if-ge v7, v8, :cond_3

    .line 62
    .line 63
    iget-object v8, v3, Lb/a;->g:[F

    .line 64
    .line 65
    aget v9, v8, v0

    .line 66
    .line 67
    mul-float/2addr v9, v5

    .line 68
    aput v9, v8, v0

    .line 69
    .line 70
    iget-object v8, v3, Lb/a;->f:[I

    .line 71
    .line 72
    aget v0, v8, v0

    .line 73
    .line 74
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget v0, v3, Lb/a;->h:I

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    move v8, v2

    .line 81
    move-object v7, v5

    .line 82
    :goto_1
    if-eq v0, v6, :cond_a

    .line 83
    .line 84
    iget v9, v3, Lb/a;->a:I

    .line 85
    .line 86
    if-ge v8, v9, :cond_a

    .line 87
    .line 88
    iget-object v9, v3, Lb/a;->g:[F

    .line 89
    .line 90
    aget v10, v9, v0

    .line 91
    .line 92
    cmpg-float v11, v10, v4

    .line 93
    .line 94
    if-gez v11, :cond_4

    .line 95
    .line 96
    const v11, -0x457ced91    # -0.001f

    .line 97
    .line 98
    .line 99
    cmpl-float v11, v10, v11

    .line 100
    .line 101
    if-lez v11, :cond_5

    .line 102
    .line 103
    aput v4, v9, v0

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const v11, 0x3a83126f    # 0.001f

    .line 107
    .line 108
    .line 109
    cmpg-float v11, v10, v11

    .line 110
    .line 111
    if-gez v11, :cond_5

    .line 112
    .line 113
    aput v4, v9, v0

    .line 114
    .line 115
    :goto_2
    move v10, v4

    .line 116
    :cond_5
    cmpl-float v9, v10, v4

    .line 117
    .line 118
    if-eqz v9, :cond_9

    .line 119
    .line 120
    iget-object v9, v3, Lb/a;->c:Lb/c;

    .line 121
    .line 122
    iget-object v9, v9, Lb/c;->e:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v9, [Lb/g;

    .line 125
    .line 126
    iget-object v11, v3, Lb/a;->e:[I

    .line 127
    .line 128
    aget v11, v11, v0

    .line 129
    .line 130
    aget-object v9, v9, v11

    .line 131
    .line 132
    iget v11, v9, Lb/g;->e:I

    .line 133
    .line 134
    cmpg-float v10, v10, v4

    .line 135
    .line 136
    if-ne v11, v1, :cond_7

    .line 137
    .line 138
    if-gez v10, :cond_6

    .line 139
    .line 140
    move-object v5, v9

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    if-nez v5, :cond_9

    .line 143
    .line 144
    move-object v5, v9

    .line 145
    goto :goto_3

    .line 146
    :cond_7
    if-gez v10, :cond_9

    .line 147
    .line 148
    if-eqz v7, :cond_8

    .line 149
    .line 150
    iget v10, v9, Lb/g;->c:I

    .line 151
    .line 152
    iget v11, v7, Lb/g;->c:I

    .line 153
    .line 154
    if-ge v10, v11, :cond_9

    .line 155
    .line 156
    :cond_8
    move-object v7, v9

    .line 157
    :cond_9
    :goto_3
    iget-object v9, v3, Lb/a;->f:[I

    .line 158
    .line 159
    aget v0, v9, v0

    .line 160
    .line 161
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_a
    if-eqz v5, :cond_b

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_b
    move-object v5, v7

    .line 168
    :goto_4
    if-eqz v5, :cond_c

    .line 169
    .line 170
    invoke-virtual {p1, v5}, Lb/b;->g(Lb/g;)V

    .line 171
    .line 172
    .line 173
    :cond_c
    iget v0, v3, Lb/a;->a:I

    .line 174
    .line 175
    if-nez v0, :cond_d

    .line 176
    .line 177
    iput-boolean v1, p1, Lb/b;->d:Z

    .line 178
    .line 179
    :cond_d
    iget-object v0, p1, Lb/b;->a:Lb/g;

    .line 180
    .line 181
    if-eqz v0, :cond_f

    .line 182
    .line 183
    iget v0, v0, Lb/g;->e:I

    .line 184
    .line 185
    if-eq v0, v1, :cond_e

    .line 186
    .line 187
    iget v0, p1, Lb/b;->b:F

    .line 188
    .line 189
    cmpg-float v0, v0, v4

    .line 190
    .line 191
    if-ltz v0, :cond_f

    .line 192
    .line 193
    :cond_e
    move v0, v1

    .line 194
    goto :goto_5

    .line 195
    :cond_f
    move v0, v2

    .line 196
    :goto_5
    if-nez v0, :cond_10

    .line 197
    .line 198
    return-void

    .line 199
    :cond_10
    iget-object v0, p0, Lb/e;->e:[Lb/b;

    .line 200
    .line 201
    iget v3, p0, Lb/e;->h:I

    .line 202
    .line 203
    aget-object v0, v0, v3

    .line 204
    .line 205
    if-eqz v0, :cond_11

    .line 206
    .line 207
    iget-object v3, p0, Lb/e;->j:Lb/c;

    .line 208
    .line 209
    iget-object v3, v3, Lb/c;->b:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v3, Lb/f;

    .line 212
    .line 213
    iget v4, v3, Lb/f;->b:I

    .line 214
    .line 215
    iget-object v5, v3, Lb/f;->a:[Ljava/lang/Object;

    .line 216
    .line 217
    array-length v6, v5

    .line 218
    if-ge v4, v6, :cond_11

    .line 219
    .line 220
    aput-object v0, v5, v4

    .line 221
    .line 222
    add-int/2addr v4, v1

    .line 223
    iput v4, v3, Lb/f;->b:I

    .line 224
    .line 225
    :cond_11
    iget-boolean v0, p1, Lb/b;->d:Z

    .line 226
    .line 227
    if-nez v0, :cond_12

    .line 228
    .line 229
    invoke-virtual {p1}, Lb/b;->h()V

    .line 230
    .line 231
    .line 232
    :cond_12
    iget-object v0, p0, Lb/e;->e:[Lb/b;

    .line 233
    .line 234
    iget v3, p0, Lb/e;->h:I

    .line 235
    .line 236
    aput-object p1, v0, v3

    .line 237
    .line 238
    iget-object v0, p1, Lb/b;->a:Lb/g;

    .line 239
    .line 240
    iput v3, v0, Lb/g;->b:I

    .line 241
    .line 242
    add-int/2addr v3, v1

    .line 243
    iput v3, p0, Lb/e;->h:I

    .line 244
    .line 245
    iget v0, v0, Lb/g;->g:I

    .line 246
    .line 247
    if-lez v0, :cond_15

    .line 248
    .line 249
    :goto_6
    iget-object v1, p0, Lb/e;->m:[Lb/b;

    .line 250
    .line 251
    array-length v3, v1

    .line 252
    if-ge v3, v0, :cond_13

    .line 253
    .line 254
    array-length v1, v1

    .line 255
    mul-int/lit8 v1, v1, 0x2

    .line 256
    .line 257
    new-array v1, v1, [Lb/b;

    .line 258
    .line 259
    iput-object v1, p0, Lb/e;->m:[Lb/b;

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_13
    iget-object v3, p1, Lb/b;->a:Lb/g;

    .line 263
    .line 264
    iget-object v3, v3, Lb/g;->f:[Lb/b;

    .line 265
    .line 266
    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    .line 268
    .line 269
    :goto_7
    if-ge v2, v0, :cond_15

    .line 270
    .line 271
    aget-object v3, v1, v2

    .line 272
    .line 273
    if-ne v3, p1, :cond_14

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_14
    iget-object v4, v3, Lb/b;->c:Lb/a;

    .line 277
    .line 278
    invoke-virtual {v4, v3, p1}, Lb/a;->e(Lb/b;Lb/b;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v3}, Lb/b;->h()V

    .line 282
    .line 283
    .line 284
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_15
    return-void
.end method

.method public final d(Lb/g;I)V
    .locals 2

    .line 1
    iget v0, p1, Lb/g;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lb/e;->e:[Lb/b;

    .line 7
    .line 8
    aget-object v0, v1, v0

    .line 9
    .line 10
    iget-boolean v1, v0, Lb/b;->d:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    int-to-float p1, p2

    .line 15
    iput p1, v0, Lb/b;->b:F

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1, p2}, Lb/b;->c(Lb/g;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lb/e;->c(Lb/b;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object p1, v0, Lb/b;->a:Lb/g;

    .line 34
    .line 35
    int-to-float p2, p2

    .line 36
    iput p2, p1, Lb/g;->d:F

    .line 37
    .line 38
    iput p2, v0, Lb/b;->b:F

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, v0, Lb/b;->d:Z

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lb/e;->c(Lb/b;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public final e(Lb/g;Lb/g;II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lb/b;->d(Lb/g;Lb/g;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lb/e;->i()Lb/g;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lb/e;->i()Lb/g;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput p4, p1, Lb/g;->c:I

    .line 17
    .line 18
    iput p4, p2, Lb/g;->c:I

    .line 19
    .line 20
    const/high16 p3, 0x3f800000    # 1.0f

    .line 21
    .line 22
    iget-object p4, v0, Lb/b;->c:Lb/a;

    .line 23
    .line 24
    invoke-virtual {p4, p1, p3}, Lb/a;->c(Lb/g;F)V

    .line 25
    .line 26
    .line 27
    const/high16 p1, -0x40800000    # -1.0f

    .line 28
    .line 29
    invoke-virtual {p4, p2, p1}, Lb/a;->c(Lb/g;F)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lb/e;->c(Lb/b;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final f(Lb/g;Lb/g;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lb/e;->l()Lb/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput p4, v1, Lb/g;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1, p3}, Lb/b;->e(Lb/g;Lb/g;Lb/g;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lb/e;->c(Lb/b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(Lb/g;Lb/g;II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lb/e;->l()Lb/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput p4, v1, Lb/g;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, v1, p3}, Lb/b;->f(Lb/g;Lb/g;Lb/g;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lb/e;->c(Lb/b;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lb/e;->h:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lb/e;->e:[Lb/b;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    iget-object v2, v1, Lb/b;->a:Lb/g;

    .line 11
    .line 12
    iget v1, v1, Lb/b;->b:F

    .line 13
    .line 14
    iput v1, v2, Lb/g;->d:F

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final i()Lb/g;
    .locals 3

    .line 1
    iget v0, p0, Lb/e;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lb/e;->d:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lb/e;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, Lb/e;->a(I)Lb/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lb/e;->a:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lb/e;->a:I

    .line 22
    .line 23
    iget v2, p0, Lb/e;->g:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lb/e;->g:I

    .line 28
    .line 29
    iput v1, v0, Lb/g;->a:I

    .line 30
    .line 31
    iget-object v2, p0, Lb/e;->j:Lb/c;

    .line 32
    .line 33
    iget-object v2, v2, Lb/c;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, [Lb/g;

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public final j(Ljava/lang/Object;)Lb/g;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget v1, p0, Lb/e;->g:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iget v3, p0, Lb/e;->d:I

    .line 10
    .line 11
    if-lt v1, v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lb/e;->o()V

    .line 14
    .line 15
    .line 16
    :cond_1
    instance-of v1, p1, Lc/b;

    .line 17
    .line 18
    if-eqz v1, :cond_5

    .line 19
    .line 20
    check-cast p1, Lc/b;

    .line 21
    .line 22
    iget-object v0, p1, Lc/b;->i:Lb/g;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lc/b;->d()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Lc/b;->i:Lb/g;

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    :cond_2
    iget p1, v0, Lb/g;->a:I

    .line 33
    .line 34
    iget-object v1, p0, Lb/e;->j:Lb/c;

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    if-eq p1, v3, :cond_3

    .line 38
    .line 39
    iget v4, p0, Lb/e;->a:I

    .line 40
    .line 41
    if-gt p1, v4, :cond_3

    .line 42
    .line 43
    iget-object v4, v1, Lb/c;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, [Lb/g;

    .line 46
    .line 47
    aget-object v4, v4, p1

    .line 48
    .line 49
    if-nez v4, :cond_5

    .line 50
    .line 51
    :cond_3
    if-eq p1, v3, :cond_4

    .line 52
    .line 53
    invoke-virtual {v0}, Lb/g;->b()V

    .line 54
    .line 55
    .line 56
    :cond_4
    iget p1, p0, Lb/e;->a:I

    .line 57
    .line 58
    add-int/2addr p1, v2

    .line 59
    iput p1, p0, Lb/e;->a:I

    .line 60
    .line 61
    iget v3, p0, Lb/e;->g:I

    .line 62
    .line 63
    add-int/2addr v3, v2

    .line 64
    iput v3, p0, Lb/e;->g:I

    .line 65
    .line 66
    iput p1, v0, Lb/g;->a:I

    .line 67
    .line 68
    iput v2, v0, Lb/g;->e:I

    .line 69
    .line 70
    iget-object v1, v1, Lb/c;->e:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v1, [Lb/g;

    .line 73
    .line 74
    aput-object v0, v1, p1

    .line 75
    .line 76
    :cond_5
    return-object v0
.end method

.method public final k()Lb/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lb/e;->j:Lb/c;

    .line 2
    .line 3
    iget-object v1, v0, Lb/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lb/f;

    .line 6
    .line 7
    iget v2, v1, Lb/f;->b:I

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    add-int/2addr v2, v3

    .line 14
    iget-object v5, v1, Lb/f;->a:[Ljava/lang/Object;

    .line 15
    .line 16
    aget-object v6, v5, v2

    .line 17
    .line 18
    aput-object v4, v5, v2

    .line 19
    .line 20
    iput v2, v1, Lb/f;->b:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v6, v4

    .line 24
    :goto_0
    check-cast v6, Lb/b;

    .line 25
    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    new-instance v6, Lb/b;

    .line 29
    .line 30
    invoke-direct {v6, v0}, Lb/b;-><init>(Lb/c;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iput-object v4, v6, Lb/b;->a:Lb/g;

    .line 35
    .line 36
    iget-object v0, v6, Lb/b;->c:Lb/a;

    .line 37
    .line 38
    iput v3, v0, Lb/a;->h:I

    .line 39
    .line 40
    iput v3, v0, Lb/a;->i:I

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-boolean v1, v0, Lb/a;->j:Z

    .line 44
    .line 45
    iput v1, v0, Lb/a;->a:I

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput v0, v6, Lb/b;->b:F

    .line 49
    .line 50
    iput-boolean v1, v6, Lb/b;->d:Z

    .line 51
    .line 52
    :goto_1
    return-object v6
.end method

.method public final l()Lb/g;
    .locals 3

    .line 1
    iget v0, p0, Lb/e;->g:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lb/e;->d:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lb/e;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x3

    .line 13
    invoke-virtual {p0, v0}, Lb/e;->a(I)Lb/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lb/e;->a:I

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    iput v1, p0, Lb/e;->a:I

    .line 22
    .line 23
    iget v2, p0, Lb/e;->g:I

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lb/e;->g:I

    .line 28
    .line 29
    iput v1, v0, Lb/g;->a:I

    .line 30
    .line 31
    iget-object v2, p0, Lb/e;->j:Lb/c;

    .line 32
    .line 33
    iget-object v2, v2, Lb/c;->e:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, [Lb/g;

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    return-object v0
.end method

.method public final m(Lb/b;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v4, v0, Lb/e;->h:I

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    if-ge v3, v4, :cond_2

    .line 11
    .line 12
    iget-object v4, v0, Lb/e;->e:[Lb/b;

    .line 13
    .line 14
    aget-object v4, v4, v3

    .line 15
    .line 16
    iget-object v7, v4, Lb/b;->a:Lb/g;

    .line 17
    .line 18
    iget v7, v7, Lb/g;->e:I

    .line 19
    .line 20
    if-ne v7, v6, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v4, v4, Lb/b;->b:F

    .line 24
    .line 25
    cmpg-float v4, v4, v5

    .line 26
    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    move v3, v6

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v3, 0x0

    .line 35
    :goto_2
    if-eqz v3, :cond_a

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_3
    if-nez v3, :cond_a

    .line 39
    .line 40
    const/4 v4, -0x1

    .line 41
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    .line 42
    .line 43
    .line 44
    const v8, 0x7fffffff

    .line 45
    .line 46
    .line 47
    move v10, v4

    .line 48
    move v11, v10

    .line 49
    const/4 v9, 0x0

    .line 50
    :goto_4
    iget v12, v0, Lb/e;->h:I

    .line 51
    .line 52
    iget-object v13, v1, Lb/b;->c:Lb/a;

    .line 53
    .line 54
    iget-object v14, v0, Lb/e;->j:Lb/c;

    .line 55
    .line 56
    if-ge v9, v12, :cond_7

    .line 57
    .line 58
    iget-object v12, v0, Lb/e;->e:[Lb/b;

    .line 59
    .line 60
    aget-object v12, v12, v9

    .line 61
    .line 62
    iget-object v15, v12, Lb/b;->a:Lb/g;

    .line 63
    .line 64
    iget v15, v15, Lb/g;->e:I

    .line 65
    .line 66
    if-ne v15, v6, :cond_3

    .line 67
    .line 68
    goto :goto_7

    .line 69
    :cond_3
    iget v15, v12, Lb/b;->b:F

    .line 70
    .line 71
    cmpg-float v15, v15, v5

    .line 72
    .line 73
    if-gez v15, :cond_6

    .line 74
    .line 75
    move v15, v6

    .line 76
    :goto_5
    iget v2, v0, Lb/e;->g:I

    .line 77
    .line 78
    if-ge v15, v2, :cond_6

    .line 79
    .line 80
    iget-object v2, v14, Lb/c;->e:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, [Lb/g;

    .line 83
    .line 84
    aget-object v2, v2, v15

    .line 85
    .line 86
    iget-object v6, v12, Lb/b;->c:Lb/a;

    .line 87
    .line 88
    invoke-virtual {v6, v2}, Lb/a;->b(Lb/g;)F

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    cmpg-float v16, v6, v5

    .line 93
    .line 94
    if-gtz v16, :cond_4

    .line 95
    .line 96
    goto :goto_6

    .line 97
    :cond_4
    invoke-virtual {v13, v2}, Lb/a;->b(Lb/g;)F

    .line 98
    .line 99
    .line 100
    move-result v16

    .line 101
    div-float v16, v16, v6

    .line 102
    .line 103
    iget v2, v2, Lb/g;->c:I

    .line 104
    .line 105
    if-gt v2, v8, :cond_5

    .line 106
    .line 107
    cmpg-float v6, v16, v7

    .line 108
    .line 109
    if-gez v6, :cond_5

    .line 110
    .line 111
    move v8, v2

    .line 112
    move v10, v9

    .line 113
    move v11, v15

    .line 114
    move/from16 v7, v16

    .line 115
    .line 116
    :cond_5
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 121
    .line 122
    const/4 v6, 0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_7
    if-eq v10, v4, :cond_9

    .line 125
    .line 126
    iget-object v2, v0, Lb/e;->e:[Lb/b;

    .line 127
    .line 128
    aget-object v2, v2, v10

    .line 129
    .line 130
    iget-object v6, v2, Lb/b;->a:Lb/g;

    .line 131
    .line 132
    iput v4, v6, Lb/g;->b:I

    .line 133
    .line 134
    iget-object v4, v14, Lb/c;->e:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v4, [Lb/g;

    .line 137
    .line 138
    aget-object v4, v4, v11

    .line 139
    .line 140
    invoke-virtual {v2, v4}, Lb/b;->g(Lb/g;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v2, Lb/b;->a:Lb/g;

    .line 144
    .line 145
    iput v10, v4, Lb/g;->b:I

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    :goto_8
    iget v6, v0, Lb/e;->h:I

    .line 149
    .line 150
    if-ge v4, v6, :cond_8

    .line 151
    .line 152
    iget-object v6, v0, Lb/e;->e:[Lb/b;

    .line 153
    .line 154
    aget-object v6, v6, v4

    .line 155
    .line 156
    iget-object v7, v6, Lb/b;->c:Lb/a;

    .line 157
    .line 158
    invoke-virtual {v7, v6, v2}, Lb/a;->e(Lb/b;Lb/b;)V

    .line 159
    .line 160
    .line 161
    add-int/lit8 v4, v4, 0x1

    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_8
    invoke-virtual {v13, v1, v2}, Lb/a;->e(Lb/b;Lb/b;)V

    .line 165
    .line 166
    .line 167
    goto :goto_9

    .line 168
    :cond_9
    const/4 v3, 0x1

    .line 169
    :goto_9
    const/4 v6, 0x1

    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_a
    const/4 v2, 0x0

    .line 173
    :goto_a
    iget v1, v0, Lb/e;->h:I

    .line 174
    .line 175
    if-ge v2, v1, :cond_d

    .line 176
    .line 177
    iget-object v1, v0, Lb/e;->e:[Lb/b;

    .line 178
    .line 179
    aget-object v1, v1, v2

    .line 180
    .line 181
    iget-object v3, v1, Lb/b;->a:Lb/g;

    .line 182
    .line 183
    iget v3, v3, Lb/g;->e:I

    .line 184
    .line 185
    const/4 v4, 0x1

    .line 186
    if-ne v3, v4, :cond_b

    .line 187
    .line 188
    goto :goto_b

    .line 189
    :cond_b
    iget v1, v1, Lb/b;->b:F

    .line 190
    .line 191
    cmpg-float v1, v1, v5

    .line 192
    .line 193
    if-gez v1, :cond_c

    .line 194
    .line 195
    goto :goto_c

    .line 196
    :cond_c
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_a

    .line 199
    :cond_d
    :goto_c
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    iget v0, p0, Lb/e;->c:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lb/e;->c:I

    .line 6
    .line 7
    iget-object v1, p0, Lb/e;->e:[Lb/b;

    .line 8
    .line 9
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Lb/b;

    .line 14
    .line 15
    iput-object v0, p0, Lb/e;->e:[Lb/b;

    .line 16
    .line 17
    iget-object v0, p0, Lb/e;->j:Lb/c;

    .line 18
    .line 19
    iget-object v1, v0, Lb/c;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, [Lb/g;

    .line 22
    .line 23
    iget v2, p0, Lb/e;->c:I

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, [Lb/g;

    .line 30
    .line 31
    iput-object v1, v0, Lb/c;->e:Ljava/lang/Object;

    .line 32
    .line 33
    iget v1, p0, Lb/e;->c:I

    .line 34
    .line 35
    new-array v2, v1, [Z

    .line 36
    .line 37
    iput-object v2, p0, Lb/e;->f:[Z

    .line 38
    .line 39
    iput v1, p0, Lb/e;->d:I

    .line 40
    .line 41
    iput v1, p0, Lb/e;->i:I

    .line 42
    .line 43
    iget-object v1, p0, Lb/e;->b:Lb/b;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    iget-object v0, v0, Lb/c;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lb/f;

    .line 50
    .line 51
    iget v2, v0, Lb/f;->b:I

    .line 52
    .line 53
    iget-object v3, v0, Lb/f;->a:[Ljava/lang/Object;

    .line 54
    .line 55
    array-length v4, v3

    .line 56
    if-ge v2, v4, :cond_0

    .line 57
    .line 58
    aput-object v1, v3, v2

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    iput v2, v0, Lb/f;->b:I

    .line 63
    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lb/e;->b:Lb/b;

    .line 66
    .line 67
    return-void
.end method

.method public final p()V
    .locals 9

    .line 1
    iget-object v0, p0, Lb/e;->b:Lb/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iput-object v4, v0, Lb/b;->a:Lb/g;

    .line 10
    .line 11
    iget-object v4, v0, Lb/b;->c:Lb/a;

    .line 12
    .line 13
    iput v3, v4, Lb/a;->h:I

    .line 14
    .line 15
    iput v3, v4, Lb/a;->i:I

    .line 16
    .line 17
    iput-boolean v2, v4, Lb/a;->j:Z

    .line 18
    .line 19
    iput v2, v4, Lb/a;->a:I

    .line 20
    .line 21
    iput v1, v0, Lb/b;->b:F

    .line 22
    .line 23
    iput-boolean v2, v0, Lb/b;->d:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lb/e;->k()Lb/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lb/e;->b:Lb/b;

    .line 31
    .line 32
    :goto_0
    const/4 v0, 0x1

    .line 33
    move v4, v0

    .line 34
    :goto_1
    iget v5, p0, Lb/e;->g:I

    .line 35
    .line 36
    if-ge v4, v5, :cond_2

    .line 37
    .line 38
    iget-object v5, p0, Lb/e;->j:Lb/c;

    .line 39
    .line 40
    iget-object v5, v5, Lb/c;->e:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v5, [Lb/g;

    .line 43
    .line 44
    aget-object v5, v5, v4

    .line 45
    .line 46
    iget v6, v5, Lb/g;->e:I

    .line 47
    .line 48
    const/4 v7, 0x4

    .line 49
    if-ne v6, v7, :cond_1

    .line 50
    .line 51
    iget-object v6, p0, Lb/e;->b:Lb/b;

    .line 52
    .line 53
    iget-object v6, v6, Lb/b;->c:Lb/a;

    .line 54
    .line 55
    const/high16 v7, 0x3f800000    # 1.0f

    .line 56
    .line 57
    invoke-virtual {v6, v5, v7}, Lb/a;->c(Lb/g;F)V

    .line 58
    .line 59
    .line 60
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object v4, p0, Lb/e;->b:Lb/b;

    .line 64
    .line 65
    iget-object v5, v4, Lb/b;->c:Lb/a;

    .line 66
    .line 67
    iget-object v6, p0, Lb/e;->e:[Lb/b;

    .line 68
    .line 69
    invoke-virtual {v5, v4, v6}, Lb/a;->f(Lb/b;[Lb/b;)V

    .line 70
    .line 71
    .line 72
    iget-object v5, v4, Lb/b;->c:Lb/a;

    .line 73
    .line 74
    iget v6, v5, Lb/a;->h:I

    .line 75
    .line 76
    move v7, v2

    .line 77
    :goto_2
    if-eq v6, v3, :cond_4

    .line 78
    .line 79
    iget v8, v5, Lb/a;->a:I

    .line 80
    .line 81
    if-ge v7, v8, :cond_4

    .line 82
    .line 83
    iget-object v8, v5, Lb/a;->g:[F

    .line 84
    .line 85
    aget v8, v8, v6

    .line 86
    .line 87
    cmpl-float v8, v8, v1

    .line 88
    .line 89
    if-lez v8, :cond_3

    .line 90
    .line 91
    move v2, v0

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    iget-object v8, v5, Lb/a;->f:[I

    .line 94
    .line 95
    aget v6, v8, v6

    .line 96
    .line 97
    add-int/lit8 v7, v7, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0}, Lb/e;->h()V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    :try_start_0
    invoke-virtual {p0, v4}, Lb/e;->m(Lb/b;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v4}, Lb/e;->q(Lb/b;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lb/e;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    :goto_4
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {p0}, Lb/e;->h()V

    .line 118
    .line 119
    .line 120
    throw v0
.end method

.method public final q(Lb/b;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget v4, v0, Lb/e;->g:I

    .line 8
    .line 9
    if-ge v3, v4, :cond_0

    .line 10
    .line 11
    iget-object v4, v0, Lb/e;->f:[Z

    .line 12
    .line 13
    aput-boolean v2, v4, v3

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v2

    .line 19
    move v4, v3

    .line 20
    :goto_1
    if-nez v3, :cond_10

    .line 21
    .line 22
    iget-object v5, v1, Lb/b;->c:Lb/a;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget v6, v5, Lb/a;->h:I

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    move v8, v2

    .line 31
    move-object v9, v7

    .line 32
    :goto_2
    const/4 v10, 0x0

    .line 33
    const/4 v11, -0x1

    .line 34
    if-eq v6, v11, :cond_3

    .line 35
    .line 36
    iget v12, v5, Lb/a;->a:I

    .line 37
    .line 38
    if-ge v8, v12, :cond_3

    .line 39
    .line 40
    iget-object v11, v5, Lb/a;->g:[F

    .line 41
    .line 42
    aget v11, v11, v6

    .line 43
    .line 44
    cmpg-float v10, v11, v10

    .line 45
    .line 46
    if-gez v10, :cond_2

    .line 47
    .line 48
    iget-object v10, v5, Lb/a;->c:Lb/c;

    .line 49
    .line 50
    iget-object v10, v10, Lb/c;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v10, [Lb/g;

    .line 53
    .line 54
    iget-object v11, v5, Lb/a;->e:[I

    .line 55
    .line 56
    aget v11, v11, v6

    .line 57
    .line 58
    aget-object v10, v10, v11

    .line 59
    .line 60
    if-eqz v9, :cond_1

    .line 61
    .line 62
    iget v11, v9, Lb/g;->c:I

    .line 63
    .line 64
    iget v12, v10, Lb/g;->c:I

    .line 65
    .line 66
    if-le v11, v12, :cond_2

    .line 67
    .line 68
    :cond_1
    move-object v9, v10

    .line 69
    :cond_2
    iget-object v10, v5, Lb/a;->f:[I

    .line 70
    .line 71
    aget v6, v10, v6

    .line 72
    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const/4 v6, 0x1

    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    iget-object v8, v0, Lb/e;->f:[Z

    .line 80
    .line 81
    iget v12, v9, Lb/g;->a:I

    .line 82
    .line 83
    aget-boolean v13, v8, v12

    .line 84
    .line 85
    if-eqz v13, :cond_4

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_4
    aput-boolean v6, v8, v12

    .line 89
    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 91
    .line 92
    iget v7, v0, Lb/e;->g:I

    .line 93
    .line 94
    if-lt v4, v7, :cond_5

    .line 95
    .line 96
    move v3, v6

    .line 97
    :cond_5
    move-object v7, v9

    .line 98
    :goto_3
    if-eqz v7, :cond_f

    .line 99
    .line 100
    invoke-virtual {v5, v7}, Lb/a;->b(Lb/g;)F

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 105
    .line 106
    .line 107
    move v12, v2

    .line 108
    move v14, v12

    .line 109
    move v13, v11

    .line 110
    :goto_4
    iget v15, v0, Lb/e;->h:I

    .line 111
    .line 112
    if-ge v12, v15, :cond_c

    .line 113
    .line 114
    iget-object v15, v0, Lb/e;->e:[Lb/b;

    .line 115
    .line 116
    aget-object v15, v15, v12

    .line 117
    .line 118
    iget-object v2, v15, Lb/b;->a:Lb/g;

    .line 119
    .line 120
    iget v2, v2, Lb/g;->e:I

    .line 121
    .line 122
    if-ne v2, v6, :cond_6

    .line 123
    .line 124
    move v6, v10

    .line 125
    goto :goto_8

    .line 126
    :cond_6
    iget-object v2, v15, Lb/b;->c:Lb/a;

    .line 127
    .line 128
    iget v15, v2, Lb/a;->h:I

    .line 129
    .line 130
    if-ne v15, v11, :cond_7

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_7
    const/4 v6, 0x0

    .line 134
    :goto_5
    if-eq v15, v11, :cond_9

    .line 135
    .line 136
    iget v11, v2, Lb/a;->a:I

    .line 137
    .line 138
    if-ge v6, v11, :cond_9

    .line 139
    .line 140
    iget-object v11, v2, Lb/a;->e:[I

    .line 141
    .line 142
    aget v11, v11, v15

    .line 143
    .line 144
    iget v10, v7, Lb/g;->a:I

    .line 145
    .line 146
    if-ne v11, v10, :cond_8

    .line 147
    .line 148
    const/4 v6, 0x1

    .line 149
    goto :goto_7

    .line 150
    :cond_8
    iget-object v10, v2, Lb/a;->f:[I

    .line 151
    .line 152
    aget v15, v10, v15

    .line 153
    .line 154
    add-int/lit8 v6, v6, 0x1

    .line 155
    .line 156
    const/4 v10, 0x0

    .line 157
    const/4 v11, -0x1

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    :goto_6
    const/4 v6, 0x0

    .line 160
    :goto_7
    if-eqz v6, :cond_a

    .line 161
    .line 162
    invoke-virtual {v2, v7}, Lb/a;->b(Lb/g;)F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    const/4 v6, 0x0

    .line 167
    cmpl-float v10, v2, v6

    .line 168
    .line 169
    if-lez v10, :cond_b

    .line 170
    .line 171
    div-float v2, v8, v2

    .line 172
    .line 173
    iget v10, v7, Lb/g;->c:I

    .line 174
    .line 175
    if-lt v10, v14, :cond_b

    .line 176
    .line 177
    cmpg-float v11, v2, v9

    .line 178
    .line 179
    if-gez v11, :cond_b

    .line 180
    .line 181
    move v9, v2

    .line 182
    move v14, v10

    .line 183
    move v13, v12

    .line 184
    goto :goto_8

    .line 185
    :cond_a
    const/4 v6, 0x0

    .line 186
    :cond_b
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 187
    .line 188
    move v10, v6

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v6, 0x1

    .line 191
    const/4 v11, -0x1

    .line 192
    goto :goto_4

    .line 193
    :cond_c
    move v2, v11

    .line 194
    if-le v13, v2, :cond_e

    .line 195
    .line 196
    iget-object v6, v0, Lb/e;->e:[Lb/b;

    .line 197
    .line 198
    aget-object v6, v6, v13

    .line 199
    .line 200
    iget-object v8, v6, Lb/b;->a:Lb/g;

    .line 201
    .line 202
    iput v2, v8, Lb/g;->b:I

    .line 203
    .line 204
    invoke-virtual {v6, v7}, Lb/b;->g(Lb/g;)V

    .line 205
    .line 206
    .line 207
    iget-object v2, v6, Lb/b;->a:Lb/g;

    .line 208
    .line 209
    iput v13, v2, Lb/g;->b:I

    .line 210
    .line 211
    const/4 v2, 0x0

    .line 212
    :goto_9
    iget v7, v0, Lb/e;->h:I

    .line 213
    .line 214
    if-ge v2, v7, :cond_d

    .line 215
    .line 216
    iget-object v7, v0, Lb/e;->e:[Lb/b;

    .line 217
    .line 218
    aget-object v7, v7, v2

    .line 219
    .line 220
    iget-object v8, v7, Lb/b;->c:Lb/a;

    .line 221
    .line 222
    invoke-virtual {v8, v7, v6}, Lb/a;->e(Lb/b;Lb/b;)V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 226
    .line 227
    goto :goto_9

    .line 228
    :cond_d
    invoke-virtual {v5, v1, v6}, Lb/a;->e(Lb/b;Lb/b;)V

    .line 229
    .line 230
    .line 231
    move v6, v3

    .line 232
    goto :goto_a

    .line 233
    :cond_e
    const/4 v6, 0x1

    .line 234
    :goto_a
    move v3, v6

    .line 235
    goto :goto_b

    .line 236
    :cond_f
    const/4 v3, 0x1

    .line 237
    :goto_b
    const/4 v2, 0x0

    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :cond_10
    return-void
.end method

.method public final r()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lb/e;->j:Lb/c;

    .line 4
    .line 5
    iget-object v3, v2, Lb/c;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v3, [Lb/g;

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    if-ge v1, v4, :cond_1

    .line 11
    .line 12
    aget-object v2, v3, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lb/g;->b()V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, v2, Lb/c;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lb/f;

    .line 25
    .line 26
    iget v3, p0, Lb/e;->l:I

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move v4, v0

    .line 32
    :goto_1
    if-ge v4, v3, :cond_3

    .line 33
    .line 34
    iget-object v5, p0, Lb/e;->k:[Lb/g;

    .line 35
    .line 36
    aget-object v5, v5, v4

    .line 37
    .line 38
    iget v6, v1, Lb/f;->b:I

    .line 39
    .line 40
    iget-object v7, v1, Lb/f;->a:[Ljava/lang/Object;

    .line 41
    .line 42
    array-length v8, v7

    .line 43
    if-ge v6, v8, :cond_2

    .line 44
    .line 45
    aput-object v5, v7, v6

    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    iput v6, v1, Lb/f;->b:I

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iput v0, p0, Lb/e;->l:I

    .line 55
    .line 56
    iget-object v1, v2, Lb/c;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, [Lb/g;

    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput v0, p0, Lb/e;->a:I

    .line 65
    .line 66
    iget-object v1, p0, Lb/e;->b:Lb/b;

    .line 67
    .line 68
    const/4 v4, 0x1

    .line 69
    if-eqz v1, :cond_4

    .line 70
    .line 71
    iget-object v5, v2, Lb/c;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Lb/f;

    .line 74
    .line 75
    iget v6, v5, Lb/f;->b:I

    .line 76
    .line 77
    iget-object v7, v5, Lb/f;->a:[Ljava/lang/Object;

    .line 78
    .line 79
    array-length v8, v7

    .line 80
    if-ge v6, v8, :cond_4

    .line 81
    .line 82
    aput-object v1, v7, v6

    .line 83
    .line 84
    add-int/2addr v6, v4

    .line 85
    iput v6, v5, Lb/f;->b:I

    .line 86
    .line 87
    :cond_4
    iput-object v3, p0, Lb/e;->b:Lb/b;

    .line 88
    .line 89
    iput v4, p0, Lb/e;->g:I

    .line 90
    .line 91
    move v1, v0

    .line 92
    :goto_2
    iget v4, p0, Lb/e;->h:I

    .line 93
    .line 94
    if-ge v1, v4, :cond_5

    .line 95
    .line 96
    iget-object v4, p0, Lb/e;->e:[Lb/b;

    .line 97
    .line 98
    aget-object v4, v4, v1

    .line 99
    .line 100
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move v1, v0

    .line 107
    :goto_3
    iget-object v4, p0, Lb/e;->e:[Lb/b;

    .line 108
    .line 109
    array-length v5, v4

    .line 110
    if-ge v1, v5, :cond_7

    .line 111
    .line 112
    aget-object v5, v4, v1

    .line 113
    .line 114
    if-eqz v5, :cond_6

    .line 115
    .line 116
    iget-object v6, v2, Lb/c;->b:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v6, Lb/f;

    .line 119
    .line 120
    iget v7, v6, Lb/f;->b:I

    .line 121
    .line 122
    iget-object v8, v6, Lb/f;->a:[Ljava/lang/Object;

    .line 123
    .line 124
    array-length v9, v8

    .line 125
    if-ge v7, v9, :cond_6

    .line 126
    .line 127
    aput-object v5, v8, v7

    .line 128
    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 130
    .line 131
    iput v7, v6, Lb/f;->b:I

    .line 132
    .line 133
    :cond_6
    aput-object v3, v4, v1

    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    iput v0, p0, Lb/e;->h:I

    .line 139
    .line 140
    return-void
.end method
