.class public final Li0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d([ILc0/b;)I
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x7

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    move v5, v2

    .line 6
    move v4, v3

    .line 7
    :goto_0
    if-ge v4, v0, :cond_b

    .line 8
    .line 9
    aget v6, p0, v4

    .line 10
    .line 11
    invoke-virtual {p1, v6}, Lc0/b;->b(I)Lc0/d;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-virtual {v6}, Lc0/d;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    and-int/lit8 p0, v1, 0x20

    .line 22
    .line 23
    or-int/lit8 v1, p0, 0x10

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v6}, Lc0/d;->d()B

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-byte v8, v6, Lc0/d;->f:B

    .line 32
    .line 33
    const/4 v9, 0x6

    .line 34
    if-eq v7, v9, :cond_1

    .line 35
    .line 36
    and-int/lit8 v1, v1, -0x5

    .line 37
    .line 38
    :cond_1
    if-eq v7, v9, :cond_3

    .line 39
    .line 40
    const/16 v9, 0x14

    .line 41
    .line 42
    if-ne v7, v9, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v9, v3

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    move v9, v2

    .line 48
    :goto_2
    if-eqz v9, :cond_4

    .line 49
    .line 50
    or-int/lit8 v1, v1, 0x20

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_4
    invoke-static {v7}, Lb/d;->G(B)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/16 v10, 0x1e

    .line 58
    .line 59
    if-nez v9, :cond_7

    .line 60
    .line 61
    const/4 v9, 0x2

    .line 62
    if-eq v7, v9, :cond_7

    .line 63
    .line 64
    if-eq v8, v10, :cond_7

    .line 65
    .line 66
    const/16 v6, 0x1b

    .line 67
    .line 68
    if-ne v7, v6, :cond_5

    .line 69
    .line 70
    move v6, v2

    .line 71
    goto :goto_3

    .line 72
    :cond_5
    move v6, v3

    .line 73
    :goto_3
    if-eqz v6, :cond_6

    .line 74
    .line 75
    or-int/lit16 v1, v1, 0x100

    .line 76
    .line 77
    goto :goto_4

    .line 78
    :cond_6
    and-int/lit8 v1, v1, -0x3

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_7
    if-eqz v5, :cond_a

    .line 82
    .line 83
    const/16 v7, 0x1d

    .line 84
    .line 85
    if-eq v8, v7, :cond_8

    .line 86
    .line 87
    if-ne v8, v10, :cond_a

    .line 88
    .line 89
    :cond_8
    if-ne v8, v10, :cond_9

    .line 90
    .line 91
    or-int/lit16 v1, v1, 0x100

    .line 92
    .line 93
    :cond_9
    iget-object v6, v6, Lc0/d;->a:Ljava/lang/String;

    .line 94
    .line 95
    const/16 v7, 0x2e

    .line 96
    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    add-int/lit8 v6, v6, -0x5

    .line 106
    .line 107
    if-ge v7, v6, :cond_a

    .line 108
    .line 109
    move v5, v3

    .line 110
    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_b
    move v3, v5

    .line 114
    :goto_5
    if-eqz v3, :cond_c

    .line 115
    .line 116
    or-int/lit16 v1, v1, 0x200

    .line 117
    .line 118
    :cond_c
    return v1
.end method


# virtual methods
.method public final a(Lg0/g;Lg0/h;B[ILc0/i;Z)Z
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Lg0/h;->j()Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return v4

    .line 14
    :cond_0
    :try_start_0
    invoke-static/range {p4 .. p5}, Li0/f;->d([ILc0/b;)I

    .line 15
    .line 16
    .line 17
    move-result v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual/range {p2 .. p2}, Lg0/h;->l()Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x1

    .line 23
    const/4 v7, 0x2

    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    move-object/from16 v5, p2

    .line 27
    .line 28
    move v8, v7

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object/from16 v5, p2

    .line 31
    .line 32
    move v8, v6

    .line 33
    :goto_0
    iget-object v9, v5, Lg0/h;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v9}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    array-length v10, v2

    .line 40
    const/16 v11, 0x100

    .line 41
    .line 42
    const/16 v12, 0x20

    .line 43
    .line 44
    const/4 v13, 0x3

    .line 45
    if-ne v10, v6, :cond_6

    .line 46
    .line 47
    invoke-static {v3, v6}, Lb/d;->K(II)Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eqz v10, :cond_6

    .line 52
    .line 53
    if-eqz p6, :cond_2

    .line 54
    .line 55
    const/16 v10, 0x1000

    .line 56
    .line 57
    invoke-static {v10}, Ls0/b;->l(I)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-eqz v10, :cond_6

    .line 62
    .line 63
    :cond_2
    invoke-static {v3, v12}, Lb/d;->K(II)Z

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_3

    .line 68
    .line 69
    const/16 v10, 0xc

    .line 70
    .line 71
    invoke-virtual {p1, v10}, Lg0/g;->a(I)V

    .line 72
    .line 73
    .line 74
    :cond_3
    invoke-static {v3, v7}, Lb/d;->K(II)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-eqz v10, :cond_4

    .line 79
    .line 80
    invoke-static {v3, v11}, Lb/d;->K(II)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_6

    .line 85
    .line 86
    :cond_4
    invoke-virtual {p1, v13}, Lg0/g;->a(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {v3, v11}, Lb/d;->K(II)Z

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    if-eqz v10, :cond_5

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-static {v3, v12}, Lb/d;->K(II)Z

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    if-eqz v10, :cond_6

    .line 103
    .line 104
    const/16 v10, 0x12

    .line 105
    .line 106
    invoke-virtual {p1, v10}, Lg0/g;->a(I)V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-static {v3, v7}, Lb/d;->K(II)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_9

    .line 114
    .line 115
    array-length v7, v2

    .line 116
    if-gt v7, v6, :cond_7

    .line 117
    .line 118
    if-eqz p6, :cond_7

    .line 119
    .line 120
    const/16 v7, 0x800

    .line 121
    .line 122
    invoke-static {v7}, Ls0/b;->l(I)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_9

    .line 127
    .line 128
    invoke-static {v3, v12}, Lb/d;->K(II)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_9

    .line 133
    .line 134
    :cond_7
    array-length v7, v2

    .line 135
    if-ne v7, v6, :cond_8

    .line 136
    .line 137
    invoke-static {v3, v11}, Lb/d;->K(II)Z

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    xor-int/2addr v7, v6

    .line 142
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 143
    .line 144
    .line 145
    :cond_8
    const/4 v7, 0x5

    .line 146
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p2 .. p2}, Lg0/h;->l()Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-nez v5, :cond_9

    .line 154
    .line 155
    const/16 v5, 0xb

    .line 156
    .line 157
    invoke-virtual {p1, v5}, Lg0/g;->a(I)V

    .line 158
    .line 159
    .line 160
    :cond_9
    const/16 v5, 0x8

    .line 161
    .line 162
    invoke-virtual {p1, v5}, Lg0/g;->a(I)V

    .line 163
    .line 164
    .line 165
    if-eqz p6, :cond_14

    .line 166
    .line 167
    array-length v5, v2

    .line 168
    const/16 v7, 0x16

    .line 169
    .line 170
    if-ne v5, v6, :cond_a

    .line 171
    .line 172
    invoke-static {v3, v6}, Lb/d;->K(II)Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 179
    .line 180
    .line 181
    :cond_a
    const/16 v5, 0x18

    .line 182
    .line 183
    invoke-virtual {p1, v5}, Lg0/g;->a(I)V

    .line 184
    .line 185
    .line 186
    if-eq v1, v6, :cond_f

    .line 187
    .line 188
    if-eqz v9, :cond_b

    .line 189
    .line 190
    if-eq v1, v13, :cond_f

    .line 191
    .line 192
    :cond_b
    array-length v1, v2

    .line 193
    move v5, v4

    .line 194
    :goto_1
    if-ge v5, v1, :cond_e

    .line 195
    .line 196
    aget v10, v2, v5

    .line 197
    .line 198
    move-object/from16 v11, p5

    .line 199
    .line 200
    invoke-virtual {v11, v10}, Lc0/i;->j(I)Lc0/f;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    iget-object v10, v10, Lc0/f;->k:Lg0/h;

    .line 205
    .line 206
    invoke-static {v10, v4}, Lw0/f;->d(Lg0/h;Z)B

    .line 207
    .line 208
    .line 209
    move-result v10

    .line 210
    if-eq v10, v6, :cond_d

    .line 211
    .line 212
    if-eqz v9, :cond_c

    .line 213
    .line 214
    if-eq v10, v13, :cond_d

    .line 215
    .line 216
    :cond_c
    const/4 v1, 0x4

    .line 217
    goto :goto_2

    .line 218
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_e
    move v1, v6

    .line 222
    :cond_f
    :goto_2
    if-eq v1, v6, :cond_10

    .line 223
    .line 224
    if-eqz v9, :cond_11

    .line 225
    .line 226
    if-ne v1, v13, :cond_11

    .line 227
    .line 228
    :cond_10
    const/16 v1, 0x19

    .line 229
    .line 230
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 231
    .line 232
    .line 233
    const/16 v1, 0x17

    .line 234
    .line 235
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 236
    .line 237
    .line 238
    array-length v1, v2

    .line 239
    if-ne v1, v6, :cond_11

    .line 240
    .line 241
    const/16 v1, 0x1b

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 244
    .line 245
    .line 246
    :cond_11
    array-length v1, v2

    .line 247
    if-gt v1, v6, :cond_12

    .line 248
    .line 249
    invoke-static {v3, v6}, Lb/d;->K(II)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_13

    .line 254
    .line 255
    :cond_12
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 256
    .line 257
    .line 258
    :cond_13
    invoke-static {v3, v6}, Lb/d;->K(II)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_14

    .line 263
    .line 264
    if-ne v8, v6, :cond_14

    .line 265
    .line 266
    const/16 v1, 0x14

    .line 267
    .line 268
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 269
    .line 270
    .line 271
    :cond_14
    return v6

    .line 272
    :catch_0
    return v4
.end method

.method public final b(Lg0/g;Lg0/h;B[ILc0/b;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p4, p5}, Li0/f;->d([ILc0/b;)I

    .line 10
    .line 11
    .line 12
    move-result p5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-virtual {p2}, Lg0/h;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move v0, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v2

    .line 24
    :goto_0
    iget-object v3, p2, Lg0/h;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v3}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    array-length v4, p4

    .line 31
    const/4 v5, 0x3

    .line 32
    const/16 v6, 0x10

    .line 33
    .line 34
    if-ne v4, v2, :cond_d

    .line 35
    .line 36
    invoke-static {p5, v1}, Lb/d;->K(II)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/16 v7, 0x1000

    .line 41
    .line 42
    const/16 v8, 0x120

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    invoke-static {p5, v8}, Lb/d;->L(II)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    const/16 v4, 0x800

    .line 53
    .line 54
    invoke-static {v4}, Ls0/b;->l(I)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_3

    .line 59
    .line 60
    :cond_2
    invoke-static {p5, v8}, Lb/d;->L(II)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_9

    .line 65
    .line 66
    invoke-static {v7}, Ls0/b;->l(I)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_9

    .line 71
    .line 72
    :cond_3
    invoke-static {p5, v8}, Lb/d;->L(II)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Lg0/g;->a(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    if-ne v0, v2, :cond_5

    .line 83
    .line 84
    const/16 v8, 0xb

    .line 85
    .line 86
    invoke-virtual {p1, v8}, Lg0/g;->a(I)V

    .line 87
    .line 88
    .line 89
    :cond_5
    :goto_1
    if-eq p3, v2, :cond_6

    .line 90
    .line 91
    if-eqz v3, :cond_9

    .line 92
    .line 93
    if-ne p3, v5, :cond_9

    .line 94
    .line 95
    :cond_6
    if-ne p3, v2, :cond_8

    .line 96
    .line 97
    if-nez v4, :cond_7

    .line 98
    .line 99
    const/4 v4, 0x6

    .line 100
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 101
    .line 102
    .line 103
    :cond_7
    const/4 v4, 0x7

    .line 104
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 105
    .line 106
    .line 107
    :cond_8
    const/4 v4, 0x5

    .line 108
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 109
    .line 110
    .line 111
    :cond_9
    const/16 v4, 0x12

    .line 112
    .line 113
    invoke-static {p5, v4}, Lb/d;->L(II)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_a

    .line 118
    .line 119
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 120
    .line 121
    .line 122
    :cond_a
    invoke-static {p5, v6}, Lb/d;->K(II)Z

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-nez v4, :cond_b

    .line 127
    .line 128
    invoke-static {v7}, Ls0/b;->l(I)Z

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_d

    .line 133
    .line 134
    invoke-static {p5, v1}, Lb/d;->L(II)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_d

    .line 139
    .line 140
    :cond_b
    if-eq p3, v2, :cond_c

    .line 141
    .line 142
    sget-object v4, Ls0/b;->a:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v4, :cond_d

    .line 145
    .line 146
    :cond_c
    const/16 v4, 0x9

    .line 147
    .line 148
    const-string v7, "*.zip"

    .line 149
    .line 150
    invoke-virtual {p1, v4, v7}, Lg0/g;->b(ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const/16 v4, 0xa

    .line 154
    .line 155
    const-string v7, "*.7z"

    .line 156
    .line 157
    invoke-virtual {p1, v4, v7}, Lg0/g;->b(ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_d
    const/16 v4, 0x8

    .line 161
    .line 162
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {p5, v6}, Lb/d;->K(II)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    const/16 v8, 0x16

    .line 170
    .line 171
    if-nez v7, :cond_e

    .line 172
    .line 173
    invoke-virtual {p1, v8}, Lg0/g;->a(I)V

    .line 174
    .line 175
    .line 176
    :cond_e
    const/16 v7, 0x18

    .line 177
    .line 178
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 179
    .line 180
    .line 181
    const/16 v7, 0x1b

    .line 182
    .line 183
    const/16 v9, 0x17

    .line 184
    .line 185
    if-eq p3, v2, :cond_10

    .line 186
    .line 187
    if-eqz v3, :cond_f

    .line 188
    .line 189
    if-ne p3, v5, :cond_f

    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_f
    if-ne p3, v1, :cond_11

    .line 193
    .line 194
    array-length v1, p4

    .line 195
    if-ne v1, v2, :cond_11

    .line 196
    .line 197
    invoke-virtual {p1, v9}, Lg0/g;->a(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 201
    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_10
    :goto_2
    const/16 v1, 0x19

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v9}, Lg0/g;->a(I)V

    .line 210
    .line 211
    .line 212
    array-length v1, p4

    .line 213
    if-ne v1, v2, :cond_11

    .line 214
    .line 215
    invoke-virtual {p1, v7}, Lg0/g;->a(I)V

    .line 216
    .line 217
    .line 218
    :cond_11
    :goto_3
    invoke-static {p5, v6}, Lb/d;->K(II)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_12

    .line 223
    .line 224
    invoke-virtual {p1, v8}, Lg0/g;->a(I)V

    .line 225
    .line 226
    .line 227
    :cond_12
    if-eq p3, v2, :cond_13

    .line 228
    .line 229
    if-eqz v3, :cond_13

    .line 230
    .line 231
    invoke-static {p2}, Lg0/e;->c(Lg0/h;)I

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    invoke-static {p2, v4}, Lb/d;->K(II)Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-eqz p2, :cond_13

    .line 240
    .line 241
    const/16 p2, 0x62

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 244
    .line 245
    .line 246
    :cond_13
    invoke-static {p5, v2}, Lb/d;->K(II)Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eqz p2, :cond_14

    .line 251
    .line 252
    if-ne v0, v2, :cond_14

    .line 253
    .line 254
    const/16 p2, 0x14

    .line 255
    .line 256
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 257
    .line 258
    .line 259
    :cond_14
    array-length p2, p4

    .line 260
    if-ne p2, v2, :cond_15

    .line 261
    .line 262
    invoke-static {p5, v6}, Lb/d;->K(II)Z

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    if-eqz p2, :cond_15

    .line 267
    .line 268
    const/16 p2, 0x46

    .line 269
    .line 270
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 271
    .line 272
    .line 273
    :cond_15
    return v2

    .line 274
    :catch_0
    return v1
.end method

.method public final c(Lg0/g;Lg0/h;B[ILc0/b;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Lg0/h;->j()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lg0/h;->l()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    move v4, v6

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v4, v7

    .line 28
    :goto_0
    :try_start_0
    invoke-static/range {p4 .. p5}, Li0/f;->d([ILc0/b;)I

    .line 29
    .line 30
    .line 31
    move-result v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 32
    array-length v9, v3

    .line 33
    const/16 v10, 0x20

    .line 34
    .line 35
    const/16 v11, 0xc

    .line 36
    .line 37
    const/4 v12, 0x3

    .line 38
    if-ne v9, v7, :cond_4

    .line 39
    .line 40
    invoke-static {v8, v7}, Lb/d;->K(II)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_4

    .line 45
    .line 46
    invoke-static {v8, v10}, Lb/d;->K(II)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0, v11}, Lg0/g;->a(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {v8, v6}, Lb/d;->K(II)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    const/16 v5, 0x100

    .line 62
    .line 63
    invoke-static {v8, v5}, Lb/d;->K(II)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_10

    .line 68
    .line 69
    :cond_3
    invoke-virtual {v0, v12}, Lg0/g;->a(I)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_b

    .line 73
    .line 74
    :cond_4
    const/4 v9, 0x4

    .line 75
    invoke-static {v8, v9}, Lb/d;->K(II)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_10

    .line 80
    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v13, v1, Lg0/h;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v13, "/"

    .line 92
    .line 93
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    array-length v13, v3

    .line 101
    move v15, v5

    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v12, 0x0

    .line 104
    :goto_1
    if-ge v5, v13, :cond_f

    .line 105
    .line 106
    aget v6, v3, v5

    .line 107
    .line 108
    move-object/from16 v11, p5

    .line 109
    .line 110
    invoke-virtual {v11, v6}, Lc0/b;->b(I)Lc0/d;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    new-instance v14, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v6, v6, Lc0/d;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    const-string v14, "AndroidManifest.xml"

    .line 132
    .line 133
    if-eqz v6, :cond_8

    .line 134
    .line 135
    :try_start_1
    new-instance v7, Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .line 137
    move-object/from16 v16, v9

    .line 138
    .line 139
    :try_start_2
    new-instance v9, Ljava/io/File;

    .line 140
    .line 141
    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 v6, 0x1

    .line 145
    invoke-direct {v7, v9, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    .line 147
    .line 148
    :try_start_3
    invoke-virtual {v7, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 149
    .line 150
    .line 151
    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-nez v6, :cond_5

    .line 153
    .line 154
    invoke-static {v7}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    :try_start_4
    invoke-virtual {v7, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    invoke-static {v6}, Lb/d;->T(Ljava/io/InputStream;)[B

    .line 163
    .line 164
    .line 165
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    invoke-static {v7}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 167
    .line 168
    .line 169
    if-nez v6, :cond_6

    .line 170
    .line 171
    :goto_2
    const/4 v7, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    goto :goto_8

    .line 174
    :cond_6
    new-instance v7, Ln/e;

    .line 175
    .line 176
    invoke-direct {v7}, Ln/e;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    new-instance v9, Ln/b;

    .line 184
    .line 185
    const/4 v14, 0x0

    .line 186
    invoke-direct {v9, v6, v14}, Ln/b;-><init>(Ljava/nio/ByteBuffer;Lp/g;)V

    .line 187
    .line 188
    .line 189
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 190
    .line 191
    if-eqz v6, :cond_7

    .line 192
    .line 193
    iput-object v6, v9, Ln/b;->f:Ljava/util/Locale;

    .line 194
    .line 195
    :cond_7
    iput-object v7, v9, Ln/b;->d:Ln/g;

    .line 196
    .line 197
    invoke-virtual {v9}, Ln/b;->a()V

    .line 198
    .line 199
    .line 200
    goto :goto_8

    .line 201
    :catchall_0
    move-exception v0

    .line 202
    move-object v14, v7

    .line 203
    goto :goto_4

    .line 204
    :catch_0
    const/4 v14, 0x0

    .line 205
    goto :goto_6

    .line 206
    :catch_1
    :goto_3
    const/4 v14, 0x0

    .line 207
    goto :goto_5

    .line 208
    :catchall_1
    move-exception v0

    .line 209
    const/4 v14, 0x0

    .line 210
    :goto_4
    invoke-static {v14}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :catch_2
    move-object/from16 v16, v9

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :goto_5
    move-object v7, v14

    .line 218
    :goto_6
    invoke-static {v7}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_8
    move-object/from16 v16, v9

    .line 223
    .line 224
    const/4 v14, 0x0

    .line 225
    :goto_7
    move-object v7, v14

    .line 226
    :goto_8
    if-nez v7, :cond_9

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_9
    if-nez v12, :cond_a

    .line 230
    .line 231
    iget-object v12, v7, Ln/e;->a:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v10, v7, Ln/e;->b:Ljava/lang/Long;

    .line 234
    .line 235
    if-eqz v12, :cond_b

    .line 236
    .line 237
    if-nez v10, :cond_c

    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_a
    iget-object v6, v7, Ln/e;->a:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_b

    .line 247
    .line 248
    iget-object v6, v7, Ln/e;->b:Ljava/lang/Long;

    .line 249
    .line 250
    invoke-virtual {v10, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_c

    .line 255
    .line 256
    :cond_b
    :goto_9
    const/4 v6, -0x1

    .line 257
    move v15, v6

    .line 258
    :cond_c
    if-gez v15, :cond_d

    .line 259
    .line 260
    const/4 v5, 0x1

    .line 261
    goto :goto_a

    .line 262
    :cond_d
    iget-object v6, v7, Ln/e;->c:Ljava/lang/String;

    .line 263
    .line 264
    if-eqz v6, :cond_e

    .line 265
    .line 266
    add-int/lit8 v15, v15, 0x1

    .line 267
    .line 268
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 269
    .line 270
    move-object/from16 v9, v16

    .line 271
    .line 272
    const/4 v6, 0x2

    .line 273
    const/4 v7, 0x1

    .line 274
    const/16 v11, 0xc

    .line 275
    .line 276
    goto/16 :goto_1

    .line 277
    .line 278
    :cond_f
    move v5, v7

    .line 279
    :goto_a
    add-int/2addr v15, v5

    .line 280
    array-length v5, v3

    .line 281
    if-ne v15, v5, :cond_10

    .line 282
    .line 283
    const/16 v5, 0xc

    .line 284
    .line 285
    invoke-virtual {v0, v5}, Lg0/g;->a(I)V

    .line 286
    .line 287
    .line 288
    :cond_10
    :goto_b
    const/4 v5, 0x2

    .line 289
    invoke-static {v8, v5}, Lb/d;->K(II)Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_14

    .line 294
    .line 295
    array-length v3, v3

    .line 296
    const/4 v5, 0x1

    .line 297
    if-ne v3, v5, :cond_11

    .line 298
    .line 299
    const/16 v3, 0x120

    .line 300
    .line 301
    invoke-static {v8, v3}, Lb/d;->L(II)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    xor-int/2addr v3, v5

    .line 306
    invoke-virtual {v0, v3}, Lg0/g;->a(I)V

    .line 307
    .line 308
    .line 309
    :cond_11
    if-eq v2, v5, :cond_12

    .line 310
    .line 311
    iget-object v3, v1, Lg0/h;->c:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v3}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_13

    .line 318
    .line 319
    const/4 v3, 0x3

    .line 320
    if-ne v2, v3, :cond_13

    .line 321
    .line 322
    :cond_12
    const/4 v3, 0x6

    .line 323
    invoke-virtual {v0, v3}, Lg0/g;->a(I)V

    .line 324
    .line 325
    .line 326
    const/16 v3, 0x200

    .line 327
    .line 328
    invoke-static {v8, v3}, Lb/d;->K(II)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_13

    .line 333
    .line 334
    const/4 v3, 0x7

    .line 335
    invoke-virtual {v0, v3}, Lg0/g;->a(I)V

    .line 336
    .line 337
    .line 338
    :cond_13
    const/4 v3, 0x5

    .line 339
    invoke-virtual {v0, v3}, Lg0/g;->a(I)V

    .line 340
    .line 341
    .line 342
    const/4 v3, 0x1

    .line 343
    if-ne v4, v3, :cond_14

    .line 344
    .line 345
    const/16 v3, 0xb

    .line 346
    .line 347
    invoke-virtual {v0, v3}, Lg0/g;->a(I)V

    .line 348
    .line 349
    .line 350
    :cond_14
    const/4 v3, 0x2

    .line 351
    invoke-static {v8, v3}, Lb/d;->K(II)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_15

    .line 356
    .line 357
    const/16 v3, 0x20

    .line 358
    .line 359
    invoke-static {v8, v3}, Lb/d;->K(II)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-eqz v3, :cond_17

    .line 364
    .line 365
    :cond_15
    const/4 v3, 0x1

    .line 366
    if-eq v2, v3, :cond_16

    .line 367
    .line 368
    sget-object v2, Ls0/b;->a:Ljava/lang/String;

    .line 369
    .line 370
    if-nez v2, :cond_16

    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Lg0/h;->j()Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_17

    .line 377
    .line 378
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 379
    .line 380
    invoke-static {v1}, Lw0/f;->g(Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    const/4 v2, 0x2

    .line 385
    if-eq v1, v2, :cond_17

    .line 386
    .line 387
    :cond_16
    const/16 v1, 0x9

    .line 388
    .line 389
    const-string v2, "*.zip"

    .line 390
    .line 391
    invoke-virtual {v0, v1, v2}, Lg0/g;->b(ILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const/16 v1, 0xa

    .line 395
    .line 396
    const-string v2, "*.7z"

    .line 397
    .line 398
    invoke-virtual {v0, v1, v2}, Lg0/g;->b(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_17
    const/16 v1, 0x8

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Lg0/g;->a(I)V

    .line 404
    .line 405
    .line 406
    const/4 v0, 0x1

    .line 407
    return v0

    .line 408
    :catch_3
    return v5
.end method
