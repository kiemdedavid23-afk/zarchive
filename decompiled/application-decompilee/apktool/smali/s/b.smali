.class public final Ls/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:B

.field public g:Ljava/lang/String;

.field public final h:[Lt/b;

.field public i:Lt/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ls/b;->e:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Ls/b;->i:Lt/f;

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [Lt/b;

    .line 12
    .line 13
    iput-object v0, p0, Ls/b;->h:[Lt/b;

    .line 14
    .line 15
    invoke-virtual {p0}, Ls/b;->c()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 13

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    new-instance v1, Ls/b;

    .line 6
    .line 7
    invoke-direct {v1}, Ls/b;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x0

    .line 18
    iget-object v6, v1, Ls/b;->h:[Lt/b;

    .line 19
    .line 20
    if-lez p0, :cond_13

    .line 21
    .line 22
    iget-boolean v7, v1, Ls/b;->b:Z

    .line 23
    .line 24
    if-nez v7, :cond_13

    .line 25
    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    if-lez p0, :cond_1

    .line 31
    .line 32
    iput-boolean v2, v1, Ls/b;->d:Z

    .line 33
    .line 34
    :cond_1
    iget-boolean v7, v1, Ls/b;->c:Z

    .line 35
    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    iput-boolean v5, v1, Ls/b;->c:Z

    .line 39
    .line 40
    if-le p0, v4, :cond_2

    .line 41
    .line 42
    invoke-static {v0}, Ls/b;->b([B)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    if-eqz v7, :cond_2

    .line 47
    .line 48
    iput-object v7, v1, Ls/b;->g:Ljava/lang/String;

    .line 49
    .line 50
    iput-boolean v2, v1, Ls/b;->b:Z

    .line 51
    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_2
    add-int v7, v5, p0

    .line 55
    .line 56
    move v8, v5

    .line 57
    :goto_0
    if-ge v8, v7, :cond_e

    .line 58
    .line 59
    aget-byte v9, v0, v8

    .line 60
    .line 61
    and-int/lit16 v10, v9, 0xff

    .line 62
    .line 63
    and-int/lit16 v11, v10, 0x80

    .line 64
    .line 65
    if-eqz v11, :cond_6

    .line 66
    .line 67
    const/16 v11, 0xa0

    .line 68
    .line 69
    if-eq v10, v11, :cond_6

    .line 70
    .line 71
    iget v9, v1, Ls/b;->a:I

    .line 72
    .line 73
    if-eq v9, v4, :cond_d

    .line 74
    .line 75
    iput v4, v1, Ls/b;->a:I

    .line 76
    .line 77
    iget-object v9, v1, Ls/b;->i:Lt/f;

    .line 78
    .line 79
    if-eqz v9, :cond_3

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    iput-object v9, v1, Ls/b;->i:Lt/f;

    .line 83
    .line 84
    :cond_3
    aget-object v9, v6, v5

    .line 85
    .line 86
    if-nez v9, :cond_4

    .line 87
    .line 88
    new-instance v9, Lt/j;

    .line 89
    .line 90
    invoke-direct {v9}, Lt/j;-><init>()V

    .line 91
    .line 92
    .line 93
    aput-object v9, v6, v5

    .line 94
    .line 95
    :cond_4
    aget-object v9, v6, v2

    .line 96
    .line 97
    if-nez v9, :cond_5

    .line 98
    .line 99
    new-instance v9, Lt/k;

    .line 100
    .line 101
    invoke-direct {v9}, Lt/k;-><init>()V

    .line 102
    .line 103
    .line 104
    aput-object v9, v6, v2

    .line 105
    .line 106
    :cond_5
    aget-object v9, v6, v3

    .line 107
    .line 108
    if-nez v9, :cond_d

    .line 109
    .line 110
    new-instance v9, Lt/i;

    .line 111
    .line 112
    invoke-direct {v9}, Lt/i;-><init>()V

    .line 113
    .line 114
    .line 115
    aput-object v9, v6, v3

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    iget v11, v1, Ls/b;->a:I

    .line 119
    .line 120
    const/16 v12, 0x7e

    .line 121
    .line 122
    if-ne v11, v2, :cond_8

    .line 123
    .line 124
    const/16 v11, 0x1b

    .line 125
    .line 126
    if-eq v10, v11, :cond_7

    .line 127
    .line 128
    const/16 v11, 0x7b

    .line 129
    .line 130
    if-ne v10, v11, :cond_8

    .line 131
    .line 132
    iget-byte v11, v1, Ls/b;->f:B

    .line 133
    .line 134
    if-ne v11, v12, :cond_8

    .line 135
    .line 136
    :cond_7
    iput v3, v1, Ls/b;->a:I

    .line 137
    .line 138
    :cond_8
    iget v11, v1, Ls/b;->a:I

    .line 139
    .line 140
    if-ne v11, v2, :cond_c

    .line 141
    .line 142
    iget-boolean v11, v1, Ls/b;->e:Z

    .line 143
    .line 144
    if-eqz v11, :cond_c

    .line 145
    .line 146
    const/16 v11, 0x20

    .line 147
    .line 148
    if-lt v10, v11, :cond_9

    .line 149
    .line 150
    if-le v10, v12, :cond_b

    .line 151
    .line 152
    :cond_9
    const/16 v11, 0xa

    .line 153
    .line 154
    if-eq v10, v11, :cond_b

    .line 155
    .line 156
    const/16 v11, 0xd

    .line 157
    .line 158
    if-eq v10, v11, :cond_b

    .line 159
    .line 160
    const/16 v11, 0x9

    .line 161
    .line 162
    if-ne v10, v11, :cond_a

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_a
    move v10, v5

    .line 166
    goto :goto_2

    .line 167
    :cond_b
    :goto_1
    move v10, v2

    .line 168
    :goto_2
    iput-boolean v10, v1, Ls/b;->e:Z

    .line 169
    .line 170
    :cond_c
    iput-byte v9, v1, Ls/b;->f:B

    .line 171
    .line 172
    :cond_d
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_e
    iget v7, v1, Ls/b;->a:I

    .line 176
    .line 177
    if-ne v7, v3, :cond_11

    .line 178
    .line 179
    iget-object v7, v1, Ls/b;->i:Lt/f;

    .line 180
    .line 181
    if-nez v7, :cond_f

    .line 182
    .line 183
    new-instance v7, Lt/f;

    .line 184
    .line 185
    invoke-direct {v7}, Lt/f;-><init>()V

    .line 186
    .line 187
    .line 188
    iput-object v7, v1, Ls/b;->i:Lt/f;

    .line 189
    .line 190
    :cond_f
    iget-object v7, v1, Ls/b;->i:Lt/f;

    .line 191
    .line 192
    invoke-virtual {v7, v0, p0}, Lt/f;->d([BI)I

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eq p0, v3, :cond_10

    .line 197
    .line 198
    iget-object p0, v1, Ls/b;->i:Lt/f;

    .line 199
    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    :cond_10
    iput-boolean v2, v1, Ls/b;->b:Z

    .line 204
    .line 205
    iget-object p0, v1, Ls/b;->i:Lt/f;

    .line 206
    .line 207
    iget-object p0, p0, Lt/f;->e:Ljava/lang/String;

    .line 208
    .line 209
    iput-object p0, v1, Ls/b;->g:Ljava/lang/String;

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_11
    if-ne v7, v4, :cond_13

    .line 213
    .line 214
    array-length v7, v6

    .line 215
    move v8, v5

    .line 216
    :goto_4
    if-ge v8, v7, :cond_13

    .line 217
    .line 218
    aget-object v9, v6, v8

    .line 219
    .line 220
    invoke-virtual {v9, v0, p0}, Lt/b;->d([BI)I

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-ne v10, v3, :cond_12

    .line 225
    .line 226
    iput-boolean v2, v1, Ls/b;->b:Z

    .line 227
    .line 228
    invoke-virtual {v9}, Lt/b;->a()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    iput-object p0, v1, Ls/b;->g:Ljava/lang/String;

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_13
    :goto_5
    iget-boolean p0, v1, Ls/b;->d:Z

    .line 239
    .line 240
    if-nez p0, :cond_14

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_14
    iget-object p0, v1, Ls/b;->g:Ljava/lang/String;

    .line 244
    .line 245
    if-eqz p0, :cond_15

    .line 246
    .line 247
    iput-boolean v2, v1, Ls/b;->b:Z

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_15
    iget p0, v1, Ls/b;->a:I

    .line 251
    .line 252
    if-ne p0, v4, :cond_18

    .line 253
    .line 254
    const/4 p0, 0x0

    .line 255
    move v0, v5

    .line 256
    :goto_6
    array-length v2, v6

    .line 257
    if-ge v5, v2, :cond_17

    .line 258
    .line 259
    aget-object v2, v6, v5

    .line 260
    .line 261
    invoke-virtual {v2}, Lt/b;->b()F

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    cmpl-float v3, v2, p0

    .line 266
    .line 267
    if-lez v3, :cond_16

    .line 268
    .line 269
    move p0, v2

    .line 270
    move v0, v5

    .line 271
    :cond_16
    add-int/lit8 v5, v5, 0x1

    .line 272
    .line 273
    goto :goto_6

    .line 274
    :cond_17
    const v2, 0x3e4ccccd    # 0.2f

    .line 275
    .line 276
    .line 277
    cmpl-float p0, p0, v2

    .line 278
    .line 279
    if-lez p0, :cond_1a

    .line 280
    .line 281
    aget-object p0, v6, v0

    .line 282
    .line 283
    invoke-virtual {p0}, Lt/b;->a()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    iput-object p0, v1, Ls/b;->g:Ljava/lang/String;

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_18
    if-ne p0, v3, :cond_19

    .line 291
    .line 292
    goto :goto_7

    .line 293
    :cond_19
    if-ne p0, v2, :cond_1a

    .line 294
    .line 295
    sget-object p0, Ls/a;->A:Ljava/lang/String;

    .line 296
    .line 297
    iput-object p0, v1, Ls/b;->g:Ljava/lang/String;

    .line 298
    .line 299
    :cond_1a
    :goto_7
    iget-object p0, v1, Ls/b;->g:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v1}, Ls/b;->c()V

    .line 302
    .line 303
    .line 304
    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x3

    .line 3
    if-le v0, v1, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget-byte v0, p0, v0

    .line 7
    .line 8
    const/16 v2, 0xff

    .line 9
    .line 10
    and-int/2addr v0, v2

    .line 11
    const/4 v3, 0x1

    .line 12
    aget-byte v3, p0, v3

    .line 13
    .line 14
    and-int/2addr v3, v2

    .line 15
    const/4 v4, 0x2

    .line 16
    aget-byte v4, p0, v4

    .line 17
    .line 18
    and-int/2addr v4, v2

    .line 19
    aget-byte p0, p0, v1

    .line 20
    .line 21
    and-int/2addr p0, v2

    .line 22
    const/16 v1, 0xfe

    .line 23
    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    const/16 v5, 0xef

    .line 27
    .line 28
    if-eq v0, v5, :cond_4

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    if-eq v0, v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-ne v3, v1, :cond_1

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    sget-object p0, Ls/a;->y:Ljava/lang/String;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    if-ne v3, v1, :cond_6

    .line 45
    .line 46
    sget-object p0, Ls/a;->w:Ljava/lang/String;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_2
    if-ne v3, v2, :cond_3

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    if-nez p0, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    if-ne v3, v2, :cond_6

    .line 57
    .line 58
    sget-object p0, Ls/a;->v:Ljava/lang/String;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_4
    const/16 p0, 0xbb

    .line 62
    .line 63
    if-ne v3, p0, :cond_6

    .line 64
    .line 65
    const/16 p0, 0xbf

    .line 66
    .line 67
    if-ne v4, p0, :cond_6

    .line 68
    .line 69
    sget-object p0, Ls/a;->u:Ljava/lang/String;

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_5
    if-nez v3, :cond_6

    .line 73
    .line 74
    if-ne v4, v1, :cond_6

    .line 75
    .line 76
    if-ne p0, v2, :cond_6

    .line 77
    .line 78
    sget-object p0, Ls/a;->x:Ljava/lang/String;

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_6
    :goto_0
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls/b;->b:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Ls/b;->c:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Ls/b;->g:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean v0, p0, Ls/b;->d:Z

    .line 11
    .line 12
    iput v1, p0, Ls/b;->a:I

    .line 13
    .line 14
    iput-byte v0, p0, Ls/b;->f:B

    .line 15
    .line 16
    iget-object v1, p0, Ls/b;->i:Lt/f;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Lt/f;->e()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Ls/b;->h:[Lt/b;

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    :goto_0
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    aget-object v3, v1, v0

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Lt/b;->e()V

    .line 33
    .line 34
    .line 35
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method
