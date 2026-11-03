.class public final Ld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)[Ld/a$a;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v5, v2

    .line 10
    const/4 v4, 0x1

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-ge v4, v6, :cond_10

    .line 16
    .line 17
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    const/16 v7, 0x45

    .line 22
    .line 23
    const/16 v8, 0x65

    .line 24
    .line 25
    if-ge v4, v6, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    add-int/lit8 v9, v6, -0x41

    .line 32
    .line 33
    add-int/lit8 v10, v6, -0x5a

    .line 34
    .line 35
    mul-int/2addr v10, v9

    .line 36
    if-lez v10, :cond_0

    .line 37
    .line 38
    add-int/lit8 v9, v6, -0x61

    .line 39
    .line 40
    add-int/lit8 v10, v6, -0x7a

    .line 41
    .line 42
    mul-int/2addr v10, v9

    .line 43
    if-gtz v10, :cond_1

    .line 44
    .line 45
    :cond_0
    if-eq v6, v8, :cond_1

    .line 46
    .line 47
    if-eq v6, v7, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    :goto_2
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-lez v6, :cond_f

    .line 66
    .line 67
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    const/16 v9, 0x7a

    .line 72
    .line 73
    if-eq v6, v9, :cond_e

    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/16 v9, 0x5a

    .line 80
    .line 81
    if-ne v6, v9, :cond_3

    .line 82
    .line 83
    goto/16 :goto_a

    .line 84
    .line 85
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    new-array v9, v6, [F

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    move v12, v2

    .line 96
    const/4 v11, 0x1

    .line 97
    :goto_3
    if-ge v11, v10, :cond_c

    .line 98
    .line 99
    move v14, v2

    .line 100
    move v15, v14

    .line 101
    move/from16 v16, v15

    .line 102
    .line 103
    move/from16 v17, v16

    .line 104
    .line 105
    move v13, v11

    .line 106
    :goto_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-ge v13, v3, :cond_9

    .line 111
    .line 112
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    const/16 v2, 0x20

    .line 117
    .line 118
    if-eq v3, v2, :cond_6

    .line 119
    .line 120
    if-eq v3, v7, :cond_5

    .line 121
    .line 122
    if-eq v3, v8, :cond_5

    .line 123
    .line 124
    packed-switch v3, :pswitch_data_0

    .line 125
    .line 126
    .line 127
    goto :goto_6

    .line 128
    :pswitch_0
    if-nez v15, :cond_4

    .line 129
    .line 130
    const/4 v15, 0x1

    .line 131
    goto :goto_6

    .line 132
    :pswitch_1
    if-eq v13, v11, :cond_7

    .line 133
    .line 134
    if-nez v17, :cond_7

    .line 135
    .line 136
    :cond_4
    const/4 v14, 0x1

    .line 137
    goto :goto_5

    .line 138
    :cond_5
    const/16 v17, 0x1

    .line 139
    .line 140
    goto :goto_7

    .line 141
    :cond_6
    :goto_5
    :pswitch_2
    const/16 v16, 0x1

    .line 142
    .line 143
    :cond_7
    :goto_6
    const/16 v17, 0x0

    .line 144
    .line 145
    :goto_7
    if-eqz v16, :cond_8

    .line 146
    .line 147
    goto :goto_8

    .line 148
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_4

    .line 152
    :cond_9
    :goto_8
    if-ge v11, v13, :cond_a

    .line 153
    .line 154
    add-int/lit8 v2, v12, 0x1

    .line 155
    .line 156
    invoke-virtual {v5, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    aput v3, v9, v12

    .line 165
    .line 166
    move v12, v2

    .line 167
    :cond_a
    if-eqz v14, :cond_b

    .line 168
    .line 169
    goto :goto_9

    .line 170
    :cond_b
    add-int/lit8 v13, v13, 0x1

    .line 171
    .line 172
    :goto_9
    move v11, v13

    .line 173
    const/4 v2, 0x0

    .line 174
    goto :goto_3

    .line 175
    :cond_c
    if-ltz v12, :cond_d

    .line 176
    .line 177
    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    new-array v3, v12, [F

    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    invoke-static {v9, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    goto :goto_b

    .line 189
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/RuntimeException;

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v3, "error in parsing \""

    .line 201
    .line 202
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, "\""

    .line 209
    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw v1

    .line 221
    :cond_e
    :goto_a
    new-array v3, v2, [F

    .line 222
    .line 223
    :goto_b
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    new-instance v2, Ld/a$a;

    .line 228
    .line 229
    invoke-direct {v2, v5, v3}, Ld/a$a;-><init>(C[F)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    :cond_f
    add-int/lit8 v2, v4, 0x1

    .line 236
    .line 237
    move v5, v4

    .line 238
    move v4, v2

    .line 239
    const/4 v2, 0x0

    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :cond_10
    sub-int/2addr v4, v5

    .line 243
    const/4 v2, 0x1

    .line 244
    if-ne v4, v2, :cond_11

    .line 245
    .line 246
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-ge v5, v2, :cond_11

    .line 251
    .line 252
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    const/4 v2, 0x0

    .line 257
    new-array v3, v2, [F

    .line 258
    .line 259
    new-instance v4, Ld/a$a;

    .line 260
    .line 261
    invoke-direct {v4, v0, v3}, Ld/a$a;-><init>(C[F)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    goto :goto_c

    .line 268
    :cond_11
    const/4 v2, 0x0

    .line 269
    :goto_c
    new-array v0, v2, [Ld/a$a;

    .line 270
    .line 271
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    check-cast v0, [Ld/a$a;

    .line 276
    .line 277
    return-object v0

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
