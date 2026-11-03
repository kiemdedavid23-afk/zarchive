.class public final Lo0/d;
.super Lo0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/d$a;
    }
.end annotation


# direct methods
.method public static c(Ljava/lang/String;)I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x72

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    const/4 v4, 0x2

    .line 16
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x77

    .line 21
    .line 22
    if-ne v4, v5, :cond_1

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x2

    .line 25
    .line 26
    :cond_1
    const/4 v4, 0x3

    .line 27
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/16 v6, 0x78

    .line 32
    .line 33
    if-ne v4, v6, :cond_2

    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    :cond_2
    mul-int/lit8 v0, v0, 0x64

    .line 38
    .line 39
    add-int/2addr v0, v3

    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-ne v4, v1, :cond_3

    .line 45
    .line 46
    move v4, v2

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v4, v3

    .line 49
    :goto_1
    const/4 v7, 0x5

    .line 50
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-ne v7, v5, :cond_4

    .line 55
    .line 56
    add-int/lit8 v4, v4, 0x2

    .line 57
    .line 58
    :cond_4
    const/4 v7, 0x6

    .line 59
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    if-ne v7, v6, :cond_5

    .line 64
    .line 65
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    :cond_5
    mul-int/lit8 v4, v4, 0xa

    .line 68
    .line 69
    add-int/2addr v4, v0

    .line 70
    const/4 v0, 0x7

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v1, :cond_6

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_6
    move v2, v3

    .line 79
    :goto_2
    const/16 v0, 0x8

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-ne v0, v5, :cond_7

    .line 86
    .line 87
    add-int/lit8 v2, v2, 0x2

    .line 88
    .line 89
    :cond_7
    const/16 v0, 0x9

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-ne p0, v6, :cond_8

    .line 96
    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    :cond_8
    add-int/2addr v4, v2

    .line 100
    return v4

    .line 101
    :catch_0
    const/4 p0, -0x1

    .line 102
    return p0
.end method

.method public static d(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-static {}, Lo0/a;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-static/range {p0 .. p4}, Lo0/d;->f(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lo0/a;->a()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " ls -l"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    and-int/lit8 v3, p3, 0x1

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    const-string v3, "d"

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    and-int/lit8 v3, p3, 0x2

    .line 44
    .line 45
    const/4 v5, 0x2

    .line 46
    if-ne v3, v5, :cond_2

    .line 47
    .line 48
    const-string v3, "L"

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_2
    and-int/lit8 v3, p3, 0x4

    .line 54
    .line 55
    const/4 v6, 0x4

    .line 56
    if-ne v3, v6, :cond_3

    .line 57
    .line 58
    const-string v3, "A"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_3
    const-string v3, " \'"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const/16 v3, 0x10

    .line 69
    .line 70
    and-int/lit8 v7, p3, 0x10

    .line 71
    .line 72
    const-string v8, "\'"

    .line 73
    .line 74
    if-ne v7, v3, :cond_4

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const-string v3, "\'\\\'\'"

    .line 81
    .line 82
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x0

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    return v2

    .line 104
    :catch_0
    :cond_5
    :goto_1
    invoke-virtual {v0, v4}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_f

    .line 109
    .line 110
    const/16 v3, 0x9

    .line 111
    .line 112
    :try_start_0
    invoke-static {v1, v3}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    array-length v3, v1

    .line 117
    const/4 v7, 0x6

    .line 118
    if-ge v3, v7, :cond_6

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_6
    aget-object v3, v1, v2

    .line 122
    .line 123
    if-eqz v3, :cond_e

    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    const/16 v8, 0xa

    .line 130
    .line 131
    if-lt v3, v8, :cond_e

    .line 132
    .line 133
    const/4 v3, 0x5

    .line 134
    aget-object v8, v1, v3

    .line 135
    .line 136
    if-nez v8, :cond_7

    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_7
    new-instance v8, Lo0/d$a;

    .line 141
    .line 142
    invoke-direct {v8}, Lo0/d$a;-><init>()V

    .line 143
    .line 144
    .line 145
    aget-object v9, v1, v2

    .line 146
    .line 147
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    const/16 v10, 0x64

    .line 152
    .line 153
    if-ne v9, v10, :cond_8

    .line 154
    .line 155
    move v9, v4

    .line 156
    goto :goto_2

    .line 157
    :cond_8
    move v9, v2

    .line 158
    :goto_2
    iput-boolean v9, v8, Lo0/d$a;->g:Z

    .line 159
    .line 160
    aget-object v9, v1, v2

    .line 161
    .line 162
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    const/16 v11, 0x6c

    .line 167
    .line 168
    if-ne v9, v11, :cond_9

    .line 169
    .line 170
    move v9, v4

    .line 171
    goto :goto_3

    .line 172
    :cond_9
    move v9, v2

    .line 173
    :goto_3
    iput-boolean v9, v8, Lo0/d$a;->h:Z

    .line 174
    .line 175
    iget-boolean v11, v8, Lo0/d$a;->g:Z

    .line 176
    .line 177
    const-wide/16 v12, 0x0

    .line 178
    .line 179
    if-nez v11, :cond_a

    .line 180
    .line 181
    if-nez v9, :cond_a

    .line 182
    .line 183
    const/4 v9, 0x3

    .line 184
    aget-object v9, v1, v9

    .line 185
    .line 186
    invoke-static {v12, v13, v9}, Lb/d;->j0(JLjava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v14

    .line 190
    iput-wide v14, v8, Lo0/d$a;->b:J

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_a
    iput-wide v12, v8, Lo0/d$a;->b:J

    .line 194
    .line 195
    :goto_4
    aget-object v9, v1, v6

    .line 196
    .line 197
    invoke-static {v12, v13, v9}, Lb/d;->j0(JLjava/lang/String;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v11

    .line 201
    const-wide/16 v13, 0x3e8

    .line 202
    .line 203
    mul-long/2addr v11, v13

    .line 204
    iput-wide v11, v8, Lo0/d$a;->c:J

    .line 205
    .line 206
    aget-object v3, v1, v3

    .line 207
    .line 208
    iput-object v3, v8, Lo0/d$a;->a:Ljava/lang/String;

    .line 209
    .line 210
    if-eqz p4, :cond_b

    .line 211
    .line 212
    aget-object v3, v1, v2

    .line 213
    .line 214
    invoke-static {v3}, Lo0/d;->c(Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    iput v3, v8, Lo0/d$a;->d:I

    .line 219
    .line 220
    aget-object v3, v1, v4

    .line 221
    .line 222
    iput-object v3, v8, Lo0/d$a;->e:Ljava/lang/String;

    .line 223
    .line 224
    aget-object v3, v1, v5

    .line 225
    .line 226
    iput-object v3, v8, Lo0/d$a;->f:Ljava/lang/String;

    .line 227
    .line 228
    :cond_b
    iget-boolean v3, v8, Lo0/d$a;->h:Z

    .line 229
    .line 230
    if-eqz v3, :cond_d

    .line 231
    .line 232
    array-length v3, v1

    .line 233
    if-le v3, v7, :cond_d

    .line 234
    .line 235
    aget-object v3, v1, v7

    .line 236
    .line 237
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    iput-object v3, v8, Lo0/d$a;->i:Ljava/lang/String;

    .line 242
    .line 243
    aget-object v1, v1, v7

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-ne v1, v10, :cond_c

    .line 250
    .line 251
    move v1, v4

    .line 252
    goto :goto_5

    .line 253
    :cond_c
    move v1, v2

    .line 254
    :goto_5
    iput-boolean v1, v8, Lo0/d$a;->g:Z

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_d
    const/4 v1, 0x0

    .line 258
    iput-object v1, v8, Lo0/d$a;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .line 260
    :goto_6
    move-object/from16 v1, p1

    .line 261
    .line 262
    :try_start_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .line 264
    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :catch_1
    :cond_e
    :goto_7
    move-object/from16 v1, p1

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_f
    iget v0, v0, Ln0/a;->h:I

    .line 272
    .line 273
    if-nez v0, :cond_10

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_10
    move v4, v2

    .line 277
    :goto_8
    return v4
.end method

.method public static e(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;IZ)Z
    .locals 10

    .line 1
    const-string v0, "\'"

    .line 2
    .line 3
    const-string v1, "\'\\\'\'"

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Lb/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    array-length v3, p3

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x1

    .line 21
    move v6, v4

    .line 22
    move v7, v5

    .line 23
    :goto_0
    if-ge v6, v3, :cond_1

    .line 24
    .line 25
    aget-object v8, p3, v6

    .line 26
    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    move v7, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string v9, "\' \'"

    .line 32
    .line 33
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    :goto_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    add-int/lit8 v6, v6, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    or-int/2addr p4, v5

    .line 54
    or-int/lit8 p4, p4, 0x10

    .line 55
    .line 56
    invoke-static {p0, p1, p3, p4, p5}, Lo0/d;->d(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_2

    .line 61
    .line 62
    return v4

    .line 63
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lo0/d$a;

    .line 82
    .line 83
    iget-object p3, p2, Lo0/d$a;->a:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-gt p3, p0, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    iget-object p3, p2, Lo0/d$a;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p3, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    iput-object p3, p2, Lo0/d$a;->a:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    return v5
.end method

.method public static f(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "ls -l"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 v3, p3, 0x1

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/16 v5, 0x64

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v6, 0x1a

    .line 26
    .line 27
    if-lt v3, v6, :cond_1

    .line 28
    .line 29
    const/16 v3, 0x48

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    and-int/lit8 v6, p3, 0x2

    .line 37
    .line 38
    const/4 v7, 0x2

    .line 39
    if-ne v6, v7, :cond_2

    .line 40
    .line 41
    const/16 v6, 0x4c

    .line 42
    .line 43
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    :cond_2
    and-int/lit8 v6, p3, 0x4

    .line 47
    .line 48
    const/4 v8, 0x4

    .line 49
    if-ne v6, v8, :cond_4

    .line 50
    .line 51
    const/16 v6, 0x1c

    .line 52
    .line 53
    if-lt v3, v6, :cond_3

    .line 54
    .line 55
    const/16 v6, 0x41

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/16 v6, 0x61

    .line 59
    .line 60
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_4
    const-string v6, " \'"

    .line 64
    .line 65
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v6, "\'"

    .line 69
    .line 70
    const-string v8, "\'\\\'\'"

    .line 71
    .line 72
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    const/4 v6, 0x0

    .line 91
    if-nez v2, :cond_5

    .line 92
    .line 93
    return v6

    .line 94
    :cond_5
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 95
    .line 96
    const-string v8, "yyyy-MM-dd HH:mm"

    .line 97
    .line 98
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    .line 100
    invoke-direct {v2, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    .line 102
    .line 103
    const/16 v8, 0x17

    .line 104
    .line 105
    if-gt v3, v8, :cond_6

    .line 106
    .line 107
    move v7, v4

    .line 108
    move v3, v6

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    move v3, v4

    .line 111
    :goto_2
    invoke-virtual {v0, v4}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    const/16 v9, 0x2f

    .line 116
    .line 117
    if-eqz v8, :cond_18

    .line 118
    .line 119
    const/16 v10, 0x20

    .line 120
    .line 121
    :try_start_0
    invoke-static {v8, v10}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    array-length v11, v8

    .line 126
    const/4 v12, 0x6

    .line 127
    if-ge v11, v12, :cond_7

    .line 128
    .line 129
    goto/16 :goto_a

    .line 130
    .line 131
    :cond_7
    aget-object v11, v8, v6

    .line 132
    .line 133
    if-eqz v11, :cond_17

    .line 134
    .line 135
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    const/16 v12, 0xa

    .line 140
    .line 141
    if-ge v11, v12, :cond_8

    .line 142
    .line 143
    goto/16 :goto_a

    .line 144
    .line 145
    :cond_8
    aget-object v11, v8, v6

    .line 146
    .line 147
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-ne v11, v9, :cond_9

    .line 152
    .line 153
    goto/16 :goto_a

    .line 154
    .line 155
    :cond_9
    const/16 v9, 0x62

    .line 156
    .line 157
    if-eq v11, v9, :cond_b

    .line 158
    .line 159
    const/16 v9, 0x63

    .line 160
    .line 161
    if-ne v11, v9, :cond_a

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_a
    move v9, v6

    .line 165
    goto :goto_4

    .line 166
    :cond_b
    :goto_3
    move v9, v4

    .line 167
    :goto_4
    new-instance v12, Lo0/d$a;

    .line 168
    .line 169
    invoke-direct {v12}, Lo0/d$a;-><init>()V

    .line 170
    .line 171
    .line 172
    if-ne v11, v5, :cond_c

    .line 173
    .line 174
    move v13, v4

    .line 175
    goto :goto_5

    .line 176
    :cond_c
    move v13, v6

    .line 177
    :goto_5
    iput-boolean v13, v12, Lo0/d$a;->g:Z

    .line 178
    .line 179
    const/16 v13, 0x6c

    .line 180
    .line 181
    if-ne v11, v13, :cond_d

    .line 182
    .line 183
    move v11, v4

    .line 184
    goto :goto_6

    .line 185
    :cond_d
    move v11, v6

    .line 186
    :goto_6
    iput-boolean v11, v12, Lo0/d$a;->h:Z

    .line 187
    .line 188
    if-eqz p4, :cond_e

    .line 189
    .line 190
    aget-object v11, v8, v6

    .line 191
    .line 192
    invoke-static {v11}, Lo0/d;->c(Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    iput v11, v12, Lo0/d$a;->d:I

    .line 197
    .line 198
    :cond_e
    add-int/lit8 v11, v7, 0x1

    .line 199
    .line 200
    aget-object v13, v8, v7

    .line 201
    .line 202
    iput-object v13, v12, Lo0/d$a;->e:Ljava/lang/String;

    .line 203
    .line 204
    add-int/lit8 v13, v11, 0x1

    .line 205
    .line 206
    aget-object v11, v8, v11

    .line 207
    .line 208
    iput-object v11, v12, Lo0/d$a;->f:Ljava/lang/String;

    .line 209
    .line 210
    iget-boolean v11, v12, Lo0/d$a;->g:Z

    .line 211
    .line 212
    const-wide/16 v14, 0x0

    .line 213
    .line 214
    if-nez v11, :cond_f

    .line 215
    .line 216
    iget-boolean v11, v12, Lo0/d$a;->h:Z

    .line 217
    .line 218
    if-nez v11, :cond_f

    .line 219
    .line 220
    if-nez v9, :cond_f

    .line 221
    .line 222
    add-int/lit8 v9, v13, 0x1

    .line 223
    .line 224
    aget-object v11, v8, v13

    .line 225
    .line 226
    invoke-static {v14, v15, v11}, Lb/d;->j0(JLjava/lang/String;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v5

    .line 230
    iput-wide v5, v12, Lo0/d$a;->b:J

    .line 231
    .line 232
    move v13, v9

    .line 233
    goto :goto_7

    .line 234
    :cond_f
    iput-wide v14, v12, Lo0/d$a;->b:J

    .line 235
    .line 236
    if-eqz v3, :cond_10

    .line 237
    .line 238
    add-int/lit8 v13, v13, 0x1

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_10
    if-eqz v9, :cond_11

    .line 242
    .line 243
    add-int/lit8 v13, v13, 0x2

    .line 244
    .line 245
    :cond_11
    :goto_7
    iput-wide v14, v12, Lo0/d$a;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 246
    .line 247
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    aget-object v6, v8, v13

    .line 253
    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    add-int/lit8 v6, v13, 0x1

    .line 261
    .line 262
    aget-object v6, v8, v6

    .line 263
    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 276
    .line 277
    .line 278
    move-result-wide v5

    .line 279
    iput-wide v5, v12, Lo0/d$a;->c:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 280
    .line 281
    :catch_0
    add-int/lit8 v13, v13, 0x2

    .line 282
    .line 283
    const/4 v5, 0x0

    .line 284
    :try_start_2
    iput-object v5, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v5, v12, Lo0/d$a;->i:Ljava/lang/String;

    .line 287
    .line 288
    :goto_8
    array-length v5, v8

    .line 289
    if-ge v13, v5, :cond_15

    .line 290
    .line 291
    iget-boolean v5, v12, Lo0/d$a;->h:Z

    .line 292
    .line 293
    if-eqz v5, :cond_13

    .line 294
    .line 295
    iget-object v5, v12, Lo0/d$a;->i:Ljava/lang/String;

    .line 296
    .line 297
    if-eqz v5, :cond_12

    .line 298
    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iget-object v6, v12, Lo0/d$a;->i:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v6, " "

    .line 310
    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    aget-object v6, v8, v13

    .line 315
    .line 316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    iput-object v5, v12, Lo0/d$a;->i:Ljava/lang/String;

    .line 324
    .line 325
    goto :goto_9

    .line 326
    :cond_12
    const-string v5, "->"

    .line 327
    .line 328
    aget-object v6, v8, v13

    .line 329
    .line 330
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_13

    .line 335
    .line 336
    add-int/lit8 v13, v13, 0x1

    .line 337
    .line 338
    aget-object v5, v8, v13

    .line 339
    .line 340
    iput-object v5, v12, Lo0/d$a;->i:Ljava/lang/String;

    .line 341
    .line 342
    goto :goto_9

    .line 343
    :cond_13
    iget-object v5, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 344
    .line 345
    if-eqz v5, :cond_14

    .line 346
    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    iget-object v6, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    aget-object v6, v8, v13

    .line 361
    .line 362
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    iput-object v5, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 370
    .line 371
    goto :goto_9

    .line 372
    :cond_14
    aget-object v5, v8, v13

    .line 373
    .line 374
    iput-object v5, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 375
    .line 376
    :goto_9
    add-int/2addr v13, v4

    .line 377
    goto :goto_8

    .line 378
    :cond_15
    iget-object v5, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 379
    .line 380
    if-eqz v5, :cond_17

    .line 381
    .line 382
    const-string v6, "."

    .line 383
    .line 384
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    if-nez v5, :cond_17

    .line 389
    .line 390
    const-string v5, ".."

    .line 391
    .line 392
    iget-object v6, v12, Lo0/d$a;->a:Ljava/lang/String;

    .line 393
    .line 394
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 398
    if-eqz v5, :cond_16

    .line 399
    .line 400
    goto :goto_a

    .line 401
    :cond_16
    move-object/from16 v5, p1

    .line 402
    .line 403
    :try_start_3
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 404
    .line 405
    .line 406
    goto :goto_b

    .line 407
    :catch_1
    :cond_17
    :goto_a
    move-object/from16 v5, p1

    .line 408
    .line 409
    :catch_2
    :goto_b
    const/16 v5, 0x64

    .line 410
    .line 411
    const/4 v6, 0x0

    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :cond_18
    move-object/from16 v5, p1

    .line 415
    .line 416
    iget v2, v0, Ln0/a;->h:I

    .line 417
    .line 418
    if-eqz v2, :cond_19

    .line 419
    .line 420
    const/4 v2, 0x0

    .line 421
    return v2

    .line 422
    :cond_19
    const/16 v2, 0x8

    .line 423
    .line 424
    and-int/lit8 v3, p3, 0x8

    .line 425
    .line 426
    if-ne v3, v2, :cond_1e

    .line 427
    .line 428
    new-instance v2, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .line 432
    .line 433
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    :cond_1a
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 438
    .line 439
    .line 440
    move-result v5

    .line 441
    if-eqz v5, :cond_1e

    .line 442
    .line 443
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    check-cast v5, Lo0/d$a;

    .line 448
    .line 449
    iget-boolean v6, v5, Lo0/d$a;->h:Z

    .line 450
    .line 451
    if-eqz v6, :cond_1d

    .line 452
    .line 453
    iget-object v6, v5, Lo0/d$a;->i:Ljava/lang/String;

    .line 454
    .line 455
    if-eqz v6, :cond_1d

    .line 456
    .line 457
    const-string v7, "/"

    .line 458
    .line 459
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 460
    .line 461
    .line 462
    move-result v6

    .line 463
    if-nez v6, :cond_1b

    .line 464
    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    .line 466
    .line 467
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    iget-object v7, v5, Lo0/d$a;->i:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    goto :goto_d

    .line 486
    :cond_1b
    iget-object v6, v5, Lo0/d$a;->i:Ljava/lang/String;

    .line 487
    .line 488
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 489
    .line 490
    .line 491
    const/4 v7, 0x7

    .line 492
    const/4 v8, 0x0

    .line 493
    invoke-static {v0, v2, v6, v7, v8}, Lo0/d;->f(Ln0/a;Ljava/util/ArrayList;Ljava/lang/String;IZ)Z

    .line 494
    .line 495
    .line 496
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 497
    .line 498
    .line 499
    move-result v6

    .line 500
    if-ne v6, v4, :cond_1c

    .line 501
    .line 502
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v6

    .line 506
    check-cast v6, Lo0/d$a;

    .line 507
    .line 508
    iget-boolean v6, v6, Lo0/d$a;->g:Z

    .line 509
    .line 510
    iput-boolean v6, v5, Lo0/d$a;->g:Z

    .line 511
    .line 512
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    check-cast v6, Lo0/d$a;

    .line 517
    .line 518
    iget-wide v6, v6, Lo0/d$a;->b:J

    .line 519
    .line 520
    iput-wide v6, v5, Lo0/d$a;->b:J

    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    if-le v6, v4, :cond_1a

    .line 528
    .line 529
    iput-boolean v4, v5, Lo0/d$a;->g:Z

    .line 530
    .line 531
    goto :goto_c

    .line 532
    :cond_1d
    const/4 v8, 0x0

    .line 533
    goto :goto_c

    .line 534
    :cond_1e
    return v4
.end method
