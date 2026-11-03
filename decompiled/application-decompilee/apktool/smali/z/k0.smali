.class public final Lz/k0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Lg0/h;

.field public final f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg0/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lz/k0;->e:Lg0/h;

    .line 5
    .line 6
    iput-object p1, p0, Lz/k0;->f:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lz/k0;->g:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 13

    .line 1
    iget-object v0, p0, Lz/k0;->e:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lz/k0;->g:Z

    .line 8
    .line 9
    iget-object v3, p0, Lz/k0;->f:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v1, v3}, Lg0/f;->b(Ljava/lang/String;)Lg0/h;

    .line 17
    .line 18
    .line 19
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-eqz v7, :cond_0

    .line 21
    .line 22
    move v7, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v7, v6

    .line 25
    :goto_0
    if-nez v7, :cond_3

    .line 26
    .line 27
    :try_start_1
    iget-object v8, v1, Lg0/f;->a:Lg0/h;

    .line 28
    .line 29
    invoke-static {v8}, Lg0/e;->c(Lg0/h;)I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    const/16 v9, 0x20

    .line 34
    .line 35
    invoke-static {v8, v9}, Lb/d;->K(II)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    if-eqz v8, :cond_3

    .line 40
    .line 41
    new-instance v8, Lg0/h;

    .line 42
    .line 43
    invoke-direct {v8, v3, v0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v8}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const-wide/16 v9, 0x0

    .line 51
    .line 52
    invoke-virtual {v8, v9, v10}, Lg0/f;->x(J)Ljava/io/OutputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-static {v8}, Lm0/d;->d(Ljava/io/Closeable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    .line 58
    .line 59
    if-eqz v8, :cond_1

    .line 60
    .line 61
    move v7, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v7, v6

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :try_start_2
    invoke-virtual {v1, v3}, Lg0/f;->s(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v7
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    goto :goto_1

    .line 70
    :catch_0
    move-exception v1

    .line 71
    goto :goto_2

    .line 72
    :catch_1
    :try_start_3
    invoke-virtual {v1, v3}, Lg0/f;->q(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :cond_3
    :goto_1
    if-nez v7, :cond_4

    .line 77
    .line 78
    :try_start_4
    invoke-virtual {v1}, Lg0/f;->h()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 82
    goto :goto_4

    .line 83
    :catch_2
    move-exception v1

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    move-object v1, v5

    .line 86
    goto :goto_4

    .line 87
    :goto_2
    move v7, v6

    .line 88
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_4
    if-nez v7, :cond_d

    .line 93
    .line 94
    invoke-virtual {v0}, Lg0/h;->j()Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_d

    .line 99
    .line 100
    invoke-virtual {v0}, Lg0/h;->r()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-static {v8}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-eqz v8, :cond_d

    .line 109
    .line 110
    sget v7, Ls0/b;->m:I

    .line 111
    .line 112
    invoke-static {v7}, Ln0/a;->c(I)Ln0/a;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7}, Ln0/a;->f()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_5

    .line 121
    .line 122
    invoke-static {v6}, Ln0/a;->c(I)Ln0/a;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    :cond_5
    invoke-virtual {v0}, Lg0/h;->r()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-static {v8, v3}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    const-string v9, "\'\\\'\'"

    .line 135
    .line 136
    const-string v10, "\'"

    .line 137
    .line 138
    if-eqz v2, :cond_7

    .line 139
    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v12, "touch \'"

    .line 143
    .line 144
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v7, v8}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v8

    .line 165
    if-nez v8, :cond_6

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_6
    invoke-virtual {v7, v6}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    iget v8, v7, Ln0/a;->h:I

    .line 172
    .line 173
    if-nez v8, :cond_9

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string v12, "mkdir -p -m 755 \'"

    .line 179
    .line 180
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v8

    .line 197
    invoke-virtual {v7, v8}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v8

    .line 201
    if-nez v8, :cond_8

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_8
    invoke-virtual {v7, v6}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    iget v8, v7, Ln0/a;->h:I

    .line 208
    .line 209
    if-nez v8, :cond_9

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_9
    move v4, v6

    .line 213
    :goto_5
    move v6, v4

    .line 214
    :goto_6
    if-eqz v6, :cond_b

    .line 215
    .line 216
    const/high16 v4, 0x2000000

    .line 217
    .line 218
    invoke-static {v4}, Ls0/b;->f(I)Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-eqz v4, :cond_a

    .line 223
    .line 224
    invoke-static {v0}, Lo0/f;->a(Lg0/h;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-eqz v4, :cond_a

    .line 229
    .line 230
    invoke-static {v7, v0, v3}, Lb/d;->d0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto :goto_7

    .line 234
    :cond_a
    iget-object v4, v0, Lg0/h;->c:Ljava/lang/String;

    .line 235
    .line 236
    invoke-static {v4}, Lw0/f;->e(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_c

    .line 241
    .line 242
    invoke-static {v7, v0, v3}, Lb/d;->c0(Ln0/a;Lg0/h;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_b
    invoke-virtual {v7}, Ln0/a;->d()I

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    if-eqz v4, :cond_c

    .line 251
    .line 252
    iget-object v4, v7, Ln0/a;->c:Ljava/lang/String;

    .line 253
    .line 254
    if-eqz v4, :cond_c

    .line 255
    .line 256
    move-object v1, v4

    .line 257
    :cond_c
    :goto_7
    invoke-virtual {v7}, Ln0/a;->close()V

    .line 258
    .line 259
    .line 260
    move v7, v6

    .line 261
    :cond_d
    if-eqz v7, :cond_f

    .line 262
    .line 263
    if-eqz v2, :cond_e

    .line 264
    .line 265
    new-instance v0, Lz/z;

    .line 266
    .line 267
    const/4 v1, -0x1

    .line 268
    invoke-direct {v0, v1}, Lz/z;-><init>(I)V

    .line 269
    .line 270
    .line 271
    return-object v0

    .line 272
    :cond_e
    new-instance v1, Lz/p;

    .line 273
    .line 274
    new-instance v2, Lg0/h;

    .line 275
    .line 276
    invoke-direct {v2, v3, v0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 277
    .line 278
    .line 279
    invoke-direct {v1, v2}, Lz/p;-><init>(Lg0/h;)V

    .line 280
    .line 281
    .line 282
    return-object v1

    .line 283
    :cond_f
    if-eqz v1, :cond_10

    .line 284
    .line 285
    new-instance v0, Lz/x;

    .line 286
    .line 287
    invoke-direct {v0, v1}, Lz/x;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_10
    return-object v5
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method
