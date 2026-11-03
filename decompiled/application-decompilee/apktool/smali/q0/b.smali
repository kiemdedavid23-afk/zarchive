.class public final Lq0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/b$b;
    }
.end annotation


# direct methods
.method public static a(Lr0/a;Lg0/f;Lg0/h;III)I
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move/from16 v8, p5

    .line 8
    .line 9
    invoke-static/range {p2 .. p2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual/range {p1 .. p1}, Lg0/f;->l()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v9, -0x2

    .line 18
    const/4 v4, -0x1

    .line 19
    const-string v5, "Copy"

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    const/4 v10, 0x0

    .line 23
    if-eqz v3, :cond_9

    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Lg0/f;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    move/from16 v11, p4

    .line 30
    .line 31
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v7, v3}, Lr0/a;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v11, 0x0

    .line 39
    .line 40
    invoke-interface {v7, v11, v12}, Lr0/a;->c(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Lg0/f;->f(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    const/4 v11, 0x0

    .line 52
    if-eqz v8, :cond_6

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Lg0/f;->j()Lg0/h;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v8, v0}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    if-eqz v8, :cond_0

    .line 63
    .line 64
    invoke-static {v3, v10, v5, v2}, Lq0/b;->h(Ljava/lang/String;ZLjava/lang/String;Lg0/f;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    new-instance v5, Lg0/h;

    .line 70
    .line 71
    invoke-direct {v5, v3, v0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v5}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    if-nez p3, :cond_1

    .line 79
    .line 80
    move-object v8, v7

    .line 81
    check-cast v8, Lr0/g;

    .line 82
    .line 83
    invoke-virtual {v8, v1, v5}, Lr0/g;->i(Lg0/f;Lg0/f;)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    move/from16 v8, p3

    .line 89
    .line 90
    :goto_0
    const/16 v12, 0x10

    .line 91
    .line 92
    invoke-static {v8, v12}, Lb/d;->K(II)Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-nez v12, :cond_2

    .line 97
    .line 98
    move v12, v10

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move v12, v8

    .line 101
    :goto_1
    const/16 v13, 0x8

    .line 102
    .line 103
    invoke-static {v8, v13}, Lb/d;->K(II)Z

    .line 104
    .line 105
    .line 106
    move-result v13

    .line 107
    if-eqz v13, :cond_3

    .line 108
    .line 109
    return v9

    .line 110
    :cond_3
    const/4 v9, 0x2

    .line 111
    invoke-static {v8, v9}, Lb/d;->K(II)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_4

    .line 116
    .line 117
    return v12

    .line 118
    :cond_4
    const/4 v9, 0x4

    .line 119
    invoke-static {v8, v9}, Lb/d;->K(II)Z

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    if-eqz v8, :cond_5

    .line 124
    .line 125
    invoke-static {v3, v10, v11, v2}, Lq0/b;->h(Ljava/lang/String;ZLjava/lang/String;Lg0/f;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    move-object v11, v5

    .line 131
    goto :goto_4

    .line 132
    :cond_6
    :goto_2
    move/from16 v12, p3

    .line 133
    .line 134
    :goto_3
    move v6, v10

    .line 135
    :goto_4
    if-nez v11, :cond_7

    .line 136
    .line 137
    new-instance v2, Lg0/h;

    .line 138
    .line 139
    invoke-direct {v2, v3, v0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 140
    .line 141
    .line 142
    invoke-static {v2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    :cond_7
    invoke-static {v7, v1, v11, v6}, Lq0/b;->b(Lr0/a;Lg0/f;Lg0/f;Z)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-nez v0, :cond_8

    .line 151
    .line 152
    return v4

    .line 153
    :cond_8
    move v4, v12

    .line 154
    goto/16 :goto_8

    .line 155
    .line 156
    :cond_9
    move/from16 v11, p4

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Lg0/f;->k()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_f

    .line 163
    .line 164
    invoke-virtual/range {p1 .. p1}, Lg0/f;->m()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_f

    .line 169
    .line 170
    invoke-virtual/range {p1 .. p1}, Lg0/f;->p()[Lg0/f;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v2, v3}, Lg0/f;->f(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eqz v13, :cond_a

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p1}, Lg0/f;->j()Lg0/h;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    invoke-virtual {v14, v0}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v14

    .line 192
    if-eqz v14, :cond_a

    .line 193
    .line 194
    invoke-static {v3, v6, v5, v2}, Lq0/b;->h(Ljava/lang/String;ZLjava/lang/String;Lg0/f;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    move-object v13, v3

    .line 199
    move v3, v10

    .line 200
    goto :goto_5

    .line 201
    :cond_a
    move v15, v13

    .line 202
    move-object v13, v3

    .line 203
    move v3, v15

    .line 204
    :goto_5
    if-nez v3, :cond_b

    .line 205
    .line 206
    :try_start_0
    invoke-virtual {v2, v13}, Lg0/f;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_6

    .line 210
    :catch_0
    move-exception v0

    .line 211
    move-object v2, v0

    .line 212
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v7, v0, v2}, Lq0/b;->k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 217
    .line 218
    .line 219
    return v4

    .line 220
    :cond_b
    :goto_6
    array-length v14, v12

    .line 221
    move/from16 v4, p3

    .line 222
    .line 223
    :goto_7
    if-ge v10, v14, :cond_10

    .line 224
    .line 225
    aget-object v2, v12, v10

    .line 226
    .line 227
    const/16 v1, 0x32

    .line 228
    .line 229
    if-ge v8, v1, :cond_c

    .line 230
    .line 231
    new-instance v3, Lg0/h;

    .line 232
    .line 233
    invoke-direct {v3, v13, v0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 234
    .line 235
    .line 236
    add-int/lit8 v6, v8, 0x1

    .line 237
    .line 238
    move-object/from16 v1, p0

    .line 239
    .line 240
    move/from16 v5, p4

    .line 241
    .line 242
    invoke-static/range {v1 .. v6}, Lq0/b;->a(Lr0/a;Lg0/f;Lg0/h;III)I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    move v4, v1

    .line 247
    :cond_c
    move-object v1, v7

    .line 248
    check-cast v1, Lr0/g;

    .line 249
    .line 250
    invoke-virtual {v1}, Lr0/g;->isCancelled()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-eqz v1, :cond_d

    .line 255
    .line 256
    return v9

    .line 257
    :cond_d
    if-gez v4, :cond_e

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_e
    add-int/lit8 v10, v10, 0x1

    .line 261
    .line 262
    goto :goto_7

    .line 263
    :cond_f
    move/from16 v4, p3

    .line 264
    .line 265
    :cond_10
    :goto_8
    return v4
.end method

.method public static b(Lr0/a;Lg0/f;Lg0/f;Z)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lg0/f;->o()J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    invoke-virtual {p2, v4, v5}, Lg0/f;->x(J)Ljava/io/OutputStream;

    .line 10
    .line 11
    .line 12
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-eqz v4, :cond_7

    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p1}, Lg0/f;->w()Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lg0/f;->o()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    cmp-long v7, v5, v1

    .line 24
    .line 25
    if-gez v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    int-to-long v5, v5

    .line 32
    :cond_0
    move-wide v8, v5

    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p2}, Lg0/f;->o()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    cmp-long p3, v8, v5

    .line 40
    .line 41
    if-gez p3, :cond_1

    .line 42
    .line 43
    const/4 p3, 0x1

    .line 44
    move v11, p3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v11, v0

    .line 47
    :goto_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v5, 0x1d

    .line 50
    .line 51
    if-ge p3, v5, :cond_4

    .line 52
    .line 53
    move-object v6, p0

    .line 54
    move-object v7, v3

    .line 55
    move-object v10, v4

    .line 56
    invoke-static/range {v6 .. v11}, Lq0/b;->c(Lr0/a;Ljava/io/InputStream;JLjava/io/OutputStream;Z)Z

    .line 57
    .line 58
    .line 59
    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    check-cast p0, Lr0/g;

    .line 61
    .line 62
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-static {v3}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 67
    .line 68
    .line 69
    if-nez p0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Lg0/f;->n()J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    cmp-long p1, v5, v1

    .line 76
    .line 77
    if-lez p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p2, v5, v6, v4}, Lg0/f;->z(JLjava/io/OutputStream;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-static {v4}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 83
    .line 84
    .line 85
    if-eqz p0, :cond_3

    .line 86
    .line 87
    invoke-static {p2}, Lq0/b;->f(Lg0/f;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    return p3

    .line 91
    :cond_4
    move-object v6, p0

    .line 92
    move-object v7, v3

    .line 93
    move-object v10, v4

    .line 94
    :try_start_2
    invoke-static/range {v6 .. v11}, Lq0/b;->d(Lr0/a;Ljava/io/InputStream;JLjava/io/OutputStream;Z)Z

    .line 95
    .line 96
    .line 97
    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    check-cast p0, Lr0/g;

    .line 99
    .line 100
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-static {v3}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 105
    .line 106
    .line 107
    if-nez p0, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1}, Lg0/f;->n()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    cmp-long p1, v5, v1

    .line 114
    .line 115
    if-lez p1, :cond_5

    .line 116
    .line 117
    invoke-virtual {p2, v5, v6, v4}, Lg0/f;->z(JLjava/io/OutputStream;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-static {v4}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 121
    .line 122
    .line 123
    if-eqz p0, :cond_6

    .line 124
    .line 125
    invoke-static {p2}, Lq0/b;->f(Lg0/f;)Z

    .line 126
    .line 127
    .line 128
    :cond_6
    return p3

    .line 129
    :cond_7
    :try_start_3
    new-instance p3, Ljava/lang/Exception;

    .line 130
    .line 131
    const-string v5, "Failed to open"

    .line 132
    .line 133
    invoke-direct {p3, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    :catch_0
    move-exception p3

    .line 138
    goto :goto_1

    .line 139
    :catchall_0
    move-exception p3

    .line 140
    move-object v4, v3

    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception p3

    .line 143
    move-object v4, v3

    .line 144
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Lg0/f;->i()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    invoke-static {p0, v5, p3}, Lq0/b;->k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    .line 150
    .line 151
    check-cast p0, Lr0/g;

    .line 152
    .line 153
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    invoke-static {v3}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 158
    .line 159
    .line 160
    if-nez p0, :cond_8

    .line 161
    .line 162
    invoke-virtual {p1}, Lg0/f;->n()J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    cmp-long p1, v5, v1

    .line 167
    .line 168
    if-lez p1, :cond_8

    .line 169
    .line 170
    invoke-virtual {p2, v5, v6, v4}, Lg0/f;->z(JLjava/io/OutputStream;)Z

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-static {v4}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 174
    .line 175
    .line 176
    if-eqz p0, :cond_9

    .line 177
    .line 178
    invoke-static {p2}, Lq0/b;->f(Lg0/f;)Z

    .line 179
    .line 180
    .line 181
    :cond_9
    return v0

    .line 182
    :catchall_1
    move-exception p3

    .line 183
    :goto_2
    check-cast p0, Lr0/g;

    .line 184
    .line 185
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    invoke-static {v3}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 190
    .line 191
    .line 192
    if-nez p0, :cond_a

    .line 193
    .line 194
    invoke-virtual {p1}, Lg0/f;->n()J

    .line 195
    .line 196
    .line 197
    move-result-wide v5

    .line 198
    cmp-long p1, v5, v1

    .line 199
    .line 200
    if-lez p1, :cond_a

    .line 201
    .line 202
    invoke-virtual {p2, v5, v6, v4}, Lg0/f;->z(JLjava/io/OutputStream;)Z

    .line 203
    .line 204
    .line 205
    :cond_a
    invoke-static {v4}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 206
    .line 207
    .line 208
    if-eqz p0, :cond_b

    .line 209
    .line 210
    invoke-static {p2}, Lq0/b;->f(Lg0/f;)Z

    .line 211
    .line 212
    .line 213
    :cond_b
    throw p3
.end method

.method public static c(Lr0/a;Ljava/io/InputStream;JLjava/io/OutputStream;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v3, p4

    .line 6
    .line 7
    const-wide/16 v4, 0x64

    .line 8
    .line 9
    div-long v4, v1, v4

    .line 10
    .line 11
    const-wide/32 v6, 0x40000

    .line 12
    .line 13
    .line 14
    cmp-long v8, v4, v6

    .line 15
    .line 16
    if-gez v8, :cond_0

    .line 17
    .line 18
    move-wide v4, v6

    .line 19
    :cond_0
    const/16 v6, 0x2000

    .line 20
    .line 21
    new-array v7, v6, [B

    .line 22
    .line 23
    const-wide/16 v10, 0x0

    .line 24
    .line 25
    const-wide/16 v12, 0x0

    .line 26
    .line 27
    :cond_1
    :goto_0
    const/4 v14, 0x0

    .line 28
    move-object/from16 v15, p1

    .line 29
    .line 30
    invoke-virtual {v15, v7, v14, v6}, Ljava/io/InputStream;->read([BII)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    const/4 v9, -0x1

    .line 35
    if-eq v8, v9, :cond_3

    .line 36
    .line 37
    invoke-virtual {v3, v7, v14, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 38
    .line 39
    .line 40
    int-to-long v8, v8

    .line 41
    add-long/2addr v10, v8

    .line 42
    cmp-long v8, v10, v4

    .line 43
    .line 44
    if-ltz v8, :cond_1

    .line 45
    .line 46
    invoke-interface {v0, v10, v11}, Lr0/a;->c(J)V

    .line 47
    .line 48
    .line 49
    add-long/2addr v12, v10

    .line 50
    move-object v8, v0

    .line 51
    check-cast v8, Lr0/g;

    .line 52
    .line 53
    invoke-virtual {v8}, Lr0/g;->isCancelled()Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_2

    .line 58
    .line 59
    return v14

    .line 60
    :cond_2
    const-wide/16 v10, 0x0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {v0, v10, v11}, Lr0/a;->c(J)V

    .line 64
    .line 65
    .line 66
    add-long/2addr v12, v10

    .line 67
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V

    .line 68
    .line 69
    .line 70
    check-cast v0, Lr0/g;

    .line 71
    .line 72
    invoke-virtual {v0}, Lr0/g;->isCancelled()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    cmp-long v0, v12, v1

    .line 79
    .line 80
    if-ltz v0, :cond_5

    .line 81
    .line 82
    if-eqz p5, :cond_4

    .line 83
    .line 84
    instance-of v0, v3, Ljava/io/FileOutputStream;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    move-object v0, v3

    .line 89
    check-cast v0, Ljava/io/FileOutputStream;

    .line 90
    .line 91
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, v1, v2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :cond_4
    const/4 v0, 0x1

    .line 99
    return v0

    .line 100
    :cond_5
    return v14
.end method

.method public static d(Lr0/a;Ljava/io/InputStream;JLjava/io/OutputStream;Z)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    move-object v1, p0

    .line 3
    check-cast v1, Lr0/g;

    .line 4
    .line 5
    iget v1, v1, Lr0/g;->e:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v1, v2}, Lb/d;->K(II)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-wide/16 v3, 0x1000

    .line 15
    .line 16
    cmp-long v1, p2, v3

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    instance-of v1, p4, Ljava/io/FileOutputStream;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    move-object v1, p0

    .line 25
    check-cast v1, Lr0/g;

    .line 26
    .line 27
    iget-object v1, v1, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 28
    .line 29
    const-class v3, Landroid/os/storage/StorageManager;

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 36
    .line 37
    move-object v3, p4

    .line 38
    check-cast v3, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->isAllocationSupported(Ljava/io/FileDescriptor;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v3, p2, p3}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 51
    .line 52
    .line 53
    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    :cond_0
    move v1, v0

    .line 56
    :goto_0
    if-nez v1, :cond_1

    .line 57
    .line 58
    :try_start_2
    move-object v1, p0

    .line 59
    check-cast v1, Lr0/g;

    .line 60
    .line 61
    iget v3, v1, Lr0/g;->e:I

    .line 62
    .line 63
    or-int/2addr v3, v2

    .line 64
    iput v3, v1, Lr0/g;->e:I

    .line 65
    .line 66
    :cond_1
    new-instance v1, Landroid/os/CancellationSignal;

    .line 67
    .line 68
    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v3, Lq0/b$b;

    .line 72
    .line 73
    invoke-direct {v3}, Lq0/b$b;-><init>()V

    .line 74
    .line 75
    .line 76
    new-instance v4, Lq0/b$a;

    .line 77
    .line 78
    invoke-direct {v4, p0, v1}, Lq0/b$a;-><init>(Lr0/a;Landroid/os/CancellationSignal;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1, p4, v1, v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V

    .line 86
    .line 87
    .line 88
    check-cast p0, Lr0/g;

    .line 89
    .line 90
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-nez p0, :cond_3

    .line 95
    .line 96
    cmp-long p0, v3, p2

    .line 97
    .line 98
    if-ltz p0, :cond_3

    .line 99
    .line 100
    if-eqz p5, :cond_2

    .line 101
    .line 102
    instance-of p0, p4, Ljava/io/FileOutputStream;

    .line 103
    .line 104
    if-eqz p0, :cond_2

    .line 105
    .line 106
    check-cast p4, Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .line 108
    :try_start_3
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, p2, p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 113
    .line 114
    .line 115
    :catch_1
    :cond_2
    return v2

    .line 116
    :cond_3
    return v0

    .line 117
    :catch_2
    move-exception p0

    .line 118
    instance-of p2, p0, Ljava/io/IOException;

    .line 119
    .line 120
    if-eqz p2, :cond_7

    .line 121
    .line 122
    instance-of p2, p4, Lk0/e;

    .line 123
    .line 124
    if-eqz p2, :cond_4

    .line 125
    .line 126
    check-cast p4, Lk0/e;

    .line 127
    .line 128
    iget-object p1, p4, Lk0/e;->c:Lg0/h;

    .line 129
    .line 130
    invoke-static {p1}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    instance-of p2, p1, Lk0/d;

    .line 136
    .line 137
    if-eqz p2, :cond_5

    .line 138
    .line 139
    check-cast p1, Lk0/d;

    .line 140
    .line 141
    iget-object p1, p1, Lk0/d;->c:Lg0/h;

    .line 142
    .line 143
    invoke-static {p1}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    const/4 p1, 0x0

    .line 149
    :goto_1
    if-nez p1, :cond_6

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    new-instance p0, Ljava/io/IOException;

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_7
    :goto_2
    instance-of p1, p0, Landroid/os/OperationCanceledException;

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    return v0

    .line 163
    :cond_8
    throw p0
.end method

.method public static e(Lr0/a;Lg0/f;I)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg0/f;->k()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Lg0/f;->p()[Lg0/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-static {p0, v3, p2}, Lq0/b;->e(Lr0/a;Lg0/f;I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Lg0/f;->g()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p0, p2}, Lr0/a;->a(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p1}, Lg0/f;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p2

    .line 42
    invoke-virtual {p1}, Lg0/f;->i()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1, p2}, Lq0/b;->k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public static f(Lg0/f;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lg0/f;->c()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Lr0/a;Lg0/f;[Lg0/h;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg0/f;->k()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    invoke-virtual {p1}, Lg0/f;->p()[Lg0/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v1, :cond_5

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    if-eqz p2, :cond_3

    .line 22
    .line 23
    invoke-virtual {v4}, Lg0/f;->k()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_3

    .line 28
    .line 29
    array-length v5, p2

    .line 30
    move v6, v2

    .line 31
    :goto_1
    if-ge v6, v5, :cond_2

    .line 32
    .line 33
    aget-object v7, p2, v6

    .line 34
    .line 35
    iget-object v8, v4, Lg0/f;->a:Lg0/h;

    .line 36
    .line 37
    invoke-virtual {v8, v7}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    move v5, v2

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v5, 0x1

    .line 49
    :goto_2
    if-eqz v5, :cond_4

    .line 50
    .line 51
    :cond_3
    invoke-static {p0, v4, p2}, Lq0/b;->g(Lr0/a;Lg0/f;[Lg0/h;)V

    .line 52
    .line 53
    .line 54
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    :try_start_0
    invoke-virtual {p1}, Lg0/f;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_3

    .line 61
    :catch_0
    move-exception p2

    .line 62
    invoke-virtual {p1}, Lg0/f;->i()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1, p2}, Lq0/b;->k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    .line 68
    .line 69
    :goto_3
    return-void
.end method

.method public static h(Ljava/lang/String;ZLjava/lang/String;Lg0/f;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0x2e

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-ltz p1, :cond_1

    .line 13
    .line 14
    add-int/lit8 v1, p1, 0x1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    move-object p1, p0

    .line 32
    move-object p0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move-object p1, v0

    .line 35
    :goto_1
    const/4 v1, 0x1

    .line 36
    move v2, v1

    .line 37
    :cond_2
    const-string v3, ")"

    .line 38
    .line 39
    const-string v4, "("

    .line 40
    .line 41
    if-ne v2, v1, :cond_3

    .line 42
    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    if-nez p2, :cond_4

    .line 82
    .line 83
    move-object v4, v0

    .line 84
    goto :goto_2

    .line 85
    :cond_4
    const-string v4, " "

    .line 86
    .line 87
    invoke-virtual {p2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 108
    .line 109
    invoke-virtual {p3, v3}, Lg0/f;->f(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_2

    .line 114
    .line 115
    return-object v3
.end method

.method public static i(Lr0/a;Lg0/f;Lg0/f;III)I
    .locals 15

    .line 1
    move-object v7, p0

    .line 2
    move-object/from16 v8, p1

    .line 3
    .line 4
    move-object/from16 v0, p2

    .line 5
    .line 6
    move/from16 v9, p5

    .line 7
    .line 8
    iget-object v1, v0, Lg0/f;->a:Lg0/h;

    .line 9
    .line 10
    if-nez v9, :cond_0

    .line 11
    .line 12
    invoke-virtual/range {p2 .. p2}, Lg0/f;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v8, v1}, Lg0/f;->t(Lg0/h;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    return p3

    .line 25
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lg0/f;->l()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x1

    .line 31
    const/4 v10, -0x2

    .line 32
    const/4 v5, -0x1

    .line 33
    if-eqz v2, :cond_d

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lg0/f;->g()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move/from16 v11, p4

    .line 40
    .line 41
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {p0, v2}, Lr0/a;->a(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-wide/16 v11, 0x0

    .line 49
    .line 50
    invoke-interface {p0, v11, v12}, Lr0/a;->c(J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Lg0/f;->f(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v9, 0x0

    .line 62
    if-eqz v6, :cond_7

    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Lg0/f;->j()Lg0/h;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6, v1}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    return p3

    .line 75
    :cond_1
    if-nez p3, :cond_2

    .line 76
    .line 77
    new-instance v6, Lg0/h;

    .line 78
    .line 79
    invoke-direct {v6, v2, v1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v6}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    move-object v11, v7

    .line 87
    check-cast v11, Lr0/g;

    .line 88
    .line 89
    invoke-virtual {v11, v8, v6}, Lr0/g;->i(Lg0/f;Lg0/f;)I

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move/from16 v11, p3

    .line 95
    .line 96
    move-object v6, v9

    .line 97
    :goto_0
    const/16 v12, 0x10

    .line 98
    .line 99
    invoke-static {v11, v12}, Lb/d;->K(II)Z

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    if-nez v12, :cond_3

    .line 104
    .line 105
    move v12, v3

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move v12, v11

    .line 108
    :goto_1
    const/16 v13, 0x8

    .line 109
    .line 110
    invoke-static {v11, v13}, Lb/d;->K(II)Z

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    if-eqz v13, :cond_4

    .line 115
    .line 116
    return v10

    .line 117
    :cond_4
    const/4 v10, 0x2

    .line 118
    invoke-static {v11, v10}, Lb/d;->K(II)Z

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_5

    .line 123
    .line 124
    return v12

    .line 125
    :cond_5
    const/4 v13, 0x4

    .line 126
    invoke-static {v11, v13}, Lb/d;->K(II)Z

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    if-eqz v11, :cond_6

    .line 131
    .line 132
    invoke-static {v2, v3, v9, v0}, Lq0/b;->h(Ljava/lang/String;ZLjava/lang/String;Lg0/f;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    goto :goto_2

    .line 137
    :cond_6
    move v10, v4

    .line 138
    move-object v9, v6

    .line 139
    goto :goto_2

    .line 140
    :cond_7
    move/from16 v12, p3

    .line 141
    .line 142
    move v10, v3

    .line 143
    :goto_2
    if-nez v10, :cond_9

    .line 144
    .line 145
    :try_start_0
    invoke-virtual {v8, v1}, Lg0/f;->t(Lg0/h;)Z

    .line 146
    .line 147
    .line 148
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    if-nez v0, :cond_8

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    move v0, v4

    .line 153
    goto :goto_4

    .line 154
    :catch_0
    :goto_3
    move v0, v3

    .line 155
    :goto_4
    if-nez v0, :cond_15

    .line 156
    .line 157
    :cond_9
    if-nez v9, :cond_a

    .line 158
    .line 159
    new-instance v0, Lg0/h;

    .line 160
    .line 161
    invoke-direct {v0, v2, v1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    :cond_a
    if-ne v10, v4, :cond_b

    .line 169
    .line 170
    move v3, v4

    .line 171
    :cond_b
    invoke-static {p0, v8, v9, v3}, Lq0/b;->b(Lr0/a;Lg0/f;Lg0/f;Z)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_c

    .line 176
    .line 177
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lg0/f;->c()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 178
    .line 179
    .line 180
    goto/16 :goto_7

    .line 181
    .line 182
    :cond_c
    return v5

    .line 183
    :cond_d
    move/from16 v11, p4

    .line 184
    .line 185
    invoke-virtual/range {p1 .. p1}, Lg0/f;->k()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_16

    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2}, Lg0/f;->f(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_10

    .line 200
    .line 201
    :try_start_2
    invoke-virtual {v8, v1}, Lg0/f;->t(Lg0/h;)Z

    .line 202
    .line 203
    .line 204
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 205
    if-nez v2, :cond_e

    .line 206
    .line 207
    :catch_1
    move v4, v3

    .line 208
    :cond_e
    if-eqz v4, :cond_f

    .line 209
    .line 210
    return p3

    .line 211
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lg0/f;->p()[Lg0/f;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-virtual {v0, v4}, Lg0/f;->r(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :catch_2
    move-exception v0

    .line 224
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-static {p0, v1, v0}, Lq0/b;->k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 229
    .line 230
    .line 231
    return v5

    .line 232
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lg0/f;->p()[Lg0/f;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    :goto_5
    move-object v0, v2

    .line 237
    new-instance v2, Lg0/h;

    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Lg0/f;->i()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-direct {v2, v4, v1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 244
    .line 245
    .line 246
    invoke-static {v2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 247
    .line 248
    .line 249
    move-result-object v12

    .line 250
    array-length v13, v0

    .line 251
    move/from16 v4, p3

    .line 252
    .line 253
    move v14, v3

    .line 254
    :goto_6
    if-ge v14, v13, :cond_14

    .line 255
    .line 256
    aget-object v2, v0, v14

    .line 257
    .line 258
    const/16 v1, 0x32

    .line 259
    .line 260
    if-ge v9, v1, :cond_11

    .line 261
    .line 262
    add-int/lit8 v6, v9, 0x1

    .line 263
    .line 264
    move-object v1, p0

    .line 265
    move-object v3, v12

    .line 266
    move/from16 v5, p4

    .line 267
    .line 268
    invoke-static/range {v1 .. v6}, Lq0/b;->i(Lr0/a;Lg0/f;Lg0/f;III)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    move v4, v1

    .line 273
    :cond_11
    move-object v1, v7

    .line 274
    check-cast v1, Lr0/g;

    .line 275
    .line 276
    invoke-virtual {v1}, Lr0/g;->isCancelled()Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_12

    .line 281
    .line 282
    return v10

    .line 283
    :cond_12
    if-gez v4, :cond_13

    .line 284
    .line 285
    return v4

    .line 286
    :cond_13
    add-int/lit8 v14, v14, 0x1

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_14
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lg0/f;->c()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 290
    .line 291
    .line 292
    :catch_3
    move v12, v4

    .line 293
    :catch_4
    :cond_15
    :goto_7
    return v12

    .line 294
    :cond_16
    return v5
.end method

.method public static j(Lr0/a;Lg0/h;Lg0/h;II)I
    .locals 6

    if-nez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    move-result-object v1

    invoke-static {p2}, Lg0/f;->u(Lg0/h;)Lg0/f;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lq0/b;->i(Lr0/a;Lg0/f;Lg0/f;III)I

    move-result p0

    return p0
.end method

.method public static k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    check-cast p0, Lr0/g;

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lr0/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
