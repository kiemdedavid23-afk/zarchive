.class public final Lp0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/e$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, "%02d"

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v2, ""

    .line 10
    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    const-wide/16 v5, 0x3e8

    .line 16
    .line 17
    div-long/2addr v3, v5

    .line 18
    long-to-int p0, v3

    .line 19
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    new-array v5, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    rem-int/lit8 v6, p0, 0x3c

    .line 25
    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x0

    .line 31
    aput-object v6, v5, v7

    .line 32
    .line 33
    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    div-int/lit8 p0, p0, 0x3c

    .line 38
    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    new-array v6, v4, [Ljava/lang/Object;

    .line 45
    .line 46
    rem-int/lit8 v8, p0, 0x3c

    .line 47
    .line 48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    aput-object v8, v6, v7

    .line 53
    .line 54
    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    div-int/lit8 p0, p0, 0x3c

    .line 72
    .line 73
    if-lez p0, :cond_1

    .line 74
    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    new-array v4, v4, [Ljava/lang/Object;

    .line 81
    .line 82
    rem-int/lit8 p0, p0, 0x3c

    .line 83
    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    aput-object p0, v4, v7

    .line 89
    .line 90
    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :cond_1
    return-object v2
.end method

.method public static b(IILg0/h;)Lp0/e$a;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lg0/h;->o()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p0, v0}, Lb/d;->K(II)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p2}, Lg0/h;->r()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :try_start_0
    const-string p2, "apks"

    .line 21
    .line 22
    invoke-static {p0}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-static {p1, p0}, Lp0/a;->e(ILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p0}, Lp0/a;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-gt p2, p1, :cond_2

    .line 48
    .line 49
    invoke-static {p0, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 50
    .line 51
    .line 52
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    return-object v1

    .line 55
    :catch_1
    move-object p0, v1

    .line 56
    :catch_2
    :cond_2
    :goto_0
    if-eqz p0, :cond_3

    .line 57
    .line 58
    new-instance p1, Lp0/e$a;

    .line 59
    .line 60
    invoke-direct {p1, p0, v1, v1}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static c(Lg0/h;II[B)Lp0/e$a;
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1, v0}, Lb/d;->K(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-array p1, v2, [I

    .line 13
    .line 14
    fill-array-data p1, :array_0

    .line 15
    .line 16
    .line 17
    new-array v1, v2, [Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x4

    .line 21
    invoke-static {p1, v1}, Lb/d;->K(II)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    new-array p1, v4, [I

    .line 28
    .line 29
    const v1, 0x7f0c005d

    .line 30
    .line 31
    .line 32
    aput v1, p1, v3

    .line 33
    .line 34
    new-array v1, v4, [Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object p1, v5

    .line 38
    move-object v1, p1

    .line 39
    :goto_0
    invoke-virtual {p0}, Lg0/h;->e()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_3

    .line 48
    .line 49
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Le0/a;->c()Lru/zdevs/zarchiver/archiver/NArc;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-nez v7, :cond_2

    .line 58
    .line 59
    return-object v5

    .line 60
    :cond_2
    iget-object v8, p0, Lg0/h;->d:Ljava/lang/String;

    .line 61
    .line 62
    const/4 v9, -0x1

    .line 63
    invoke-static {v9, v8}, Lb/d;->i0(ILjava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iget-object v9, p0, Lg0/h;->e:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v7, v8, v9}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 79
    .line 80
    invoke-static {p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lg0/f;->w()Ljava/io/InputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    invoke-static {p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7}, Lg0/f;->w()Ljava/io/InputStream;

    .line 94
    .line 95
    .line 96
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 97
    :goto_1
    if-nez v7, :cond_5

    .line 98
    .line 99
    :try_start_1
    invoke-virtual {p0}, Lg0/h;->e()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-static {v7}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 103
    .line 104
    .line 105
    return-object v5

    .line 106
    :cond_5
    :try_start_2
    new-instance p0, Lb/c;

    .line 107
    .line 108
    invoke-direct {p0, v4}, Lb/c;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {v6}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {p0, v7, v6, v4}, Lb/c;->b(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 116
    .line 117
    .line 118
    iget-object v6, p0, Lb/c;->e:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v6, [B

    .line 121
    .line 122
    if-eqz v6, :cond_6

    .line 123
    .line 124
    invoke-static {v6, p2, p3}, Lp0/b;->c([BI[B)Landroid/graphics/Bitmap;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move-object p2, v5

    .line 130
    :goto_2
    if-eqz p1, :cond_b

    .line 131
    .line 132
    array-length p3, p1

    .line 133
    if-le p3, v4, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0, v3}, Lb/c;->a(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    aput-object p3, v1, v3

    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lb/c;->a(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p3

    .line 145
    aput-object p3, v1, v4

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Lb/c;->a(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    aput-object p0, v1, v0

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_7
    invoke-virtual {p0, v4}, Lb/c;->a(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p3

    .line 158
    invoke-virtual {p0, v0}, Lb/c;->a(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    if-nez p0, :cond_8

    .line 163
    .line 164
    if-eqz p3, :cond_b

    .line 165
    .line 166
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    if-eqz p3, :cond_9

    .line 172
    .line 173
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    if-eqz p0, :cond_a

    .line 177
    .line 178
    const-string p3, " - "

    .line 179
    .line 180
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    aput-object p0, v1, v3

    .line 195
    .line 196
    :cond_b
    :goto_4
    if-nez p2, :cond_c

    .line 197
    .line 198
    if-eqz p1, :cond_d

    .line 199
    .line 200
    :cond_c
    new-instance p0, Lp0/e$a;

    .line 201
    .line 202
    invoke-direct {p0, p2, p1, v1}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    .line 204
    .line 205
    invoke-static {v7}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 206
    .line 207
    .line 208
    return-object p0

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    move-object v5, v7

    .line 211
    goto :goto_5

    .line 212
    :catchall_1
    move-exception p0

    .line 213
    :goto_5
    invoke-static {v5}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :catch_0
    move-object v7, v5

    .line 218
    :catch_1
    :cond_d
    invoke-static {v7}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 219
    .line 220
    .line 221
    return-object v5

    .line 222
    nop

    .line 223
    :array_0
    .array-data 4
        0x7f0c005a
        0x7f0c005d
        0x7f0c006f
    .end array-data
.end method

.method public static d(Lg0/h;JII[B)Lp0/e$a;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    invoke-static {v3, v6}, Lb/d;->K(II)Z

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x1

    .line 18
    const/4 v10, 0x0

    .line 19
    if-eqz v7, :cond_0

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    new-array v11, v7, [I

    .line 23
    .line 24
    fill-array-data v11, :array_0

    .line 25
    .line 26
    .line 27
    new-array v7, v7, [Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v7, 0x4

    .line 31
    invoke-static {v3, v7}, Lb/d;->K(II)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    new-array v11, v9, [I

    .line 38
    .line 39
    const v7, 0x7f0c0068

    .line 40
    .line 41
    .line 42
    aput v7, v11, v8

    .line 43
    .line 44
    new-array v7, v9, [Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move-object v7, v10

    .line 48
    move-object v11, v7

    .line 49
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lg0/h;->e()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lg0/h;->k()Z

    .line 54
    .line 55
    .line 56
    move-result v13
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 57
    if-eqz v13, :cond_4

    .line 58
    .line 59
    :try_start_1
    invoke-static/range {p0 .. p0}, Lg0/e;->c(Lg0/h;)I

    .line 60
    .line 61
    .line 62
    move-result v13

    .line 63
    invoke-static {v13, v9}, Lb/d;->K(II)Z

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    if-nez v13, :cond_4

    .line 68
    .line 69
    invoke-static {v3, v9}, Lb/d;->K(II)Z

    .line 70
    .line 71
    .line 72
    move-result v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    return-object v10

    .line 76
    :cond_2
    :try_start_2
    invoke-static/range {p0 .. p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const v1, 0x9000

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lg0/f;->v(I)Landroid/os/ParcelFileDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :try_start_3
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    new-instance v2, Lp0/e$a;

    .line 98
    .line 99
    invoke-direct {v2, v0, v11, v7}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    .line 102
    :try_start_4
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 103
    .line 104
    .line 105
    return-object v2

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto :goto_1

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    move-object v1, v10

    .line 110
    :goto_1
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :catch_0
    move-object v1, v10

    .line 115
    :catch_1
    :cond_3
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 116
    .line 117
    .line 118
    return-object v10

    .line 119
    :catchall_2
    move-exception v0

    .line 120
    goto :goto_4

    .line 121
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lg0/h;->g()Z

    .line 122
    .line 123
    .line 124
    move-result v13
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 125
    const/4 v14, -0x1

    .line 126
    const-wide/16 v8, 0x0

    .line 127
    .line 128
    const/16 v15, 0x18

    .line 129
    .line 130
    if-eqz v13, :cond_6

    .line 131
    .line 132
    :try_start_6
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-virtual {v13}, Le0/a;->c()Lru/zdevs/zarchiver/archiver/NArc;

    .line 137
    .line 138
    .line 139
    move-result-object v13

    .line 140
    if-nez v13, :cond_5

    .line 141
    .line 142
    return-object v10

    .line 143
    :cond_5
    iget-object v6, v0, Lg0/h;->d:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v14, v6}, Lb/d;->i0(ILjava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    iget-object v14, v0, Lg0/h;->e:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v13, v6, v14}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 152
    .line 153
    .line 154
    move-result-object v6
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lg0/h;->m()Z

    .line 157
    .line 158
    .line 159
    move-result v6
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 160
    if-eqz v6, :cond_7

    .line 161
    .line 162
    :try_start_8
    invoke-static/range {p0 .. p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-virtual {v6}, Lg0/f;->w()Ljava/io/InputStream;

    .line 167
    .line 168
    .line 169
    move-result-object v6
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 170
    :goto_2
    move-object v13, v10

    .line 171
    goto :goto_7

    .line 172
    :cond_7
    :try_start_9
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 173
    .line 174
    if-ge v6, v15, :cond_9

    .line 175
    .line 176
    if-eqz v7, :cond_9

    .line 177
    .line 178
    :try_start_a
    array-length v6, v7

    .line 179
    const/4 v13, 0x1

    .line 180
    if-eq v6, v13, :cond_9

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lg0/h;->j()Z

    .line 183
    .line 184
    .line 185
    move-result v6
    :try_end_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 186
    if-nez v6, :cond_8

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    move-object v6, v10

    .line 190
    move-object v13, v6

    .line 191
    goto :goto_7

    .line 192
    :cond_9
    :goto_3
    :try_start_b
    invoke-static/range {p0 .. p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const/high16 v13, 0x10000000

    .line 197
    .line 198
    invoke-virtual {v6, v13}, Lg0/f;->v(I)Landroid/os/ParcelFileDescriptor;

    .line 199
    .line 200
    .line 201
    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 202
    goto :goto_5

    .line 203
    :goto_4
    move-object v13, v10

    .line 204
    goto/16 :goto_14

    .line 205
    .line 206
    :catch_2
    move-object v6, v10

    .line 207
    move-object v13, v6

    .line 208
    goto/16 :goto_9

    .line 209
    .line 210
    :catch_3
    move-object v6, v10

    .line 211
    :goto_5
    if-eqz v6, :cond_b

    .line 212
    .line 213
    :try_start_c
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    sget v14, Landroid/system/OsConstants;->SEEK_SET:I

    .line 218
    .line 219
    invoke-static {v13, v8, v9, v14}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 220
    .line 221
    .line 222
    move-result-wide v13

    .line 223
    cmp-long v13, v13, v8

    .line 224
    .line 225
    if-nez v13, :cond_a

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    .line 229
    .line 230
    const-string v1, "Seek error! Unsupported path!"

    .line 231
    .line 232
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw v0
    :try_end_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 236
    :catchall_3
    move-exception v0

    .line 237
    move-object v13, v6

    .line 238
    goto/16 :goto_14

    .line 239
    .line 240
    :catch_4
    move-object v13, v6

    .line 241
    move-object v6, v10

    .line 242
    goto/16 :goto_9

    .line 243
    .line 244
    :cond_b
    :goto_6
    move-object v13, v6

    .line 245
    move-object v6, v10

    .line 246
    :goto_7
    if-nez v6, :cond_c

    .line 247
    .line 248
    if-nez v13, :cond_c

    .line 249
    .line 250
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lg0/h;->j()Z

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-eqz v14, :cond_c

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v14

    .line 260
    goto :goto_8

    .line 261
    :catchall_4
    move-exception v0

    .line 262
    move-object v10, v6

    .line 263
    goto/16 :goto_14

    .line 264
    .line 265
    :cond_c
    move-object v14, v10

    .line 266
    :goto_8
    if-nez v6, :cond_d

    .line 267
    .line 268
    if-nez v13, :cond_d

    .line 269
    .line 270
    if-nez v14, :cond_d

    .line 271
    .line 272
    invoke-virtual/range {p0 .. p0}, Lg0/h;->e()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 273
    .line 274
    .line 275
    invoke-static {v6}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v13}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 279
    .line 280
    .line 281
    return-object v10

    .line 282
    :cond_d
    :try_start_e
    invoke-static {v12}, Lb/d;->I(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v16

    .line 286
    const/high16 v8, 0x20000

    .line 287
    .line 288
    if-eqz v6, :cond_13

    .line 289
    .line 290
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-nez v9, :cond_13

    .line 295
    .line 296
    invoke-virtual/range {p0 .. p0}, Lg0/h;->g()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    const-wide/32 v17, 0x200000

    .line 301
    .line 302
    .line 303
    cmp-long v9, v1, v17

    .line 304
    .line 305
    const/high16 v10, 0x500000

    .line 306
    .line 307
    if-gtz v9, :cond_e

    .line 308
    .line 309
    if-eqz v0, :cond_f

    .line 310
    .line 311
    :cond_e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 312
    .line 313
    if-lt v9, v15, :cond_f

    .line 314
    .line 315
    if-eqz v16, :cond_f

    .line 316
    .line 317
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 318
    .line 319
    invoke-direct {v1, v6, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 320
    .line 321
    .line 322
    :try_start_f
    invoke-virtual {v1, v10}, Ljava/io/InputStream;->mark(I)V
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 323
    .line 324
    .line 325
    move-object v6, v1

    .line 326
    goto :goto_a

    .line 327
    :catchall_5
    move-exception v0

    .line 328
    move-object v10, v1

    .line 329
    goto/16 :goto_14

    .line 330
    .line 331
    :catch_5
    move-object v6, v1

    .line 332
    goto :goto_9

    .line 333
    :cond_f
    const-wide/32 v18, 0x20000

    .line 334
    .line 335
    .line 336
    cmp-long v9, v1, v18

    .line 337
    .line 338
    if-gtz v9, :cond_10

    .line 339
    .line 340
    if-eqz v0, :cond_13

    .line 341
    .line 342
    :cond_10
    :try_start_10
    invoke-static {v12}, Lb/d;->P(Ljava/lang/String;)Z

    .line 343
    .line 344
    .line 345
    move-result v0
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 346
    if-eqz v0, :cond_13

    .line 347
    .line 348
    const-wide/32 v18, 0x500000

    .line 349
    .line 350
    .line 351
    cmp-long v0, v1, v18

    .line 352
    .line 353
    if-lez v0, :cond_12

    .line 354
    .line 355
    :catch_6
    :cond_11
    :goto_9
    invoke-static {v6}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v13}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 359
    .line 360
    .line 361
    const/4 v1, 0x0

    .line 362
    return-object v1

    .line 363
    :cond_12
    :try_start_11
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 364
    .line 365
    long-to-int v0, v1

    .line 366
    const/4 v1, 0x1

    .line 367
    add-int/2addr v0, v1

    .line 368
    invoke-direct {v9, v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 369
    .line 370
    .line 371
    :try_start_12
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->mark(I)V
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 372
    .line 373
    .line 374
    move-object v6, v9

    .line 375
    goto :goto_a

    .line 376
    :catchall_6
    move-exception v0

    .line 377
    move-object v10, v9

    .line 378
    goto/16 :goto_14

    .line 379
    .line 380
    :catch_7
    move-object v6, v9

    .line 381
    goto :goto_9

    .line 382
    :cond_13
    :goto_a
    const-string v0, "x"

    .line 383
    .line 384
    const-string v1, ""

    .line 385
    .line 386
    if-eqz v16, :cond_21

    .line 387
    .line 388
    if-eqz v6, :cond_14

    .line 389
    .line 390
    :try_start_13
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    if-eqz v2, :cond_21

    .line 395
    .line 396
    :cond_14
    if-eqz v14, :cond_15

    .line 397
    .line 398
    new-instance v2, Lp0/d;

    .line 399
    .line 400
    invoke-direct {v2, v14}, Lp0/d;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 405
    .line 406
    if-lt v2, v15, :cond_18

    .line 407
    .line 408
    if-eqz v13, :cond_17

    .line 409
    .line 410
    sget v9, Lp0/d;->b:I

    .line 411
    .line 412
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    const/16 v10, 0x1c

    .line 417
    .line 418
    if-ge v2, v10, :cond_16

    .line 419
    .line 420
    new-instance v2, Lp0/d;

    .line 421
    .line 422
    new-instance v10, Ljava/io/FileInputStream;

    .line 423
    .line 424
    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 425
    .line 426
    .line 427
    invoke-direct {v2, v10}, Lp0/d;-><init>(Ljava/io/InputStream;)V

    .line 428
    .line 429
    .line 430
    goto :goto_b

    .line 431
    :cond_16
    new-instance v2, Lp0/d;

    .line 432
    .line 433
    invoke-direct {v2, v9}, Lp0/d;-><init>(Ljava/io/FileDescriptor;)V

    .line 434
    .line 435
    .line 436
    goto :goto_b

    .line 437
    :cond_17
    new-instance v2, Lp0/d;

    .line 438
    .line 439
    invoke-direct {v2, v6}, Lp0/d;-><init>(Ljava/io/InputStream;)V

    .line 440
    .line 441
    .line 442
    goto :goto_b

    .line 443
    :cond_18
    const/4 v2, 0x0

    .line 444
    :goto_b
    if-eqz v2, :cond_21

    .line 445
    .line 446
    if-eqz v7, :cond_1b

    .line 447
    .line 448
    const-string v9, "ImageWidth"

    .line 449
    .line 450
    const/4 v10, 0x0

    .line 451
    invoke-virtual {v2, v9, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 452
    .line 453
    .line 454
    move-result v9

    .line 455
    const-string v15, "ImageLength"

    .line 456
    .line 457
    invoke-virtual {v2, v15, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 458
    .line 459
    .line 460
    move-result v15

    .line 461
    move v10, v15

    .line 462
    if-lez v9, :cond_19

    .line 463
    .line 464
    if-lez v10, :cond_19

    .line 465
    .line 466
    new-instance v15, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v15, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v9

    .line 484
    const/4 v10, 0x0

    .line 485
    aput-object v9, v7, v10

    .line 486
    .line 487
    :cond_19
    array-length v9, v7

    .line 488
    const/4 v10, 0x1

    .line 489
    if-le v9, v10, :cond_1a

    .line 490
    .line 491
    const-string v9, "Make"

    .line 492
    .line 493
    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    aput-object v9, v7, v10

    .line 498
    .line 499
    const-string v9, "Model"

    .line 500
    .line 501
    invoke-virtual {v2, v9}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v9

    .line 505
    const/4 v10, 0x2

    .line 506
    aput-object v9, v7, v10

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_1a
    move v9, v10

    .line 510
    goto :goto_d

    .line 511
    :cond_1b
    :goto_c
    const/4 v9, 0x1

    .line 512
    :goto_d
    invoke-static {v3, v9}, Lb/d;->K(II)Z

    .line 513
    .line 514
    .line 515
    move-result v10

    .line 516
    if-eqz v10, :cond_1c

    .line 517
    .line 518
    invoke-static {v2, v4, v5}, Lp0/e;->e(Lp0/d;I[B)Landroid/graphics/Bitmap;

    .line 519
    .line 520
    .line 521
    move-result-object v9

    .line 522
    if-eqz v9, :cond_1e

    .line 523
    .line 524
    new-instance v0, Lp0/e$a;

    .line 525
    .line 526
    invoke-direct {v0, v9, v11, v7}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    goto/16 :goto_13

    .line 530
    .line 531
    :cond_1c
    if-eqz v7, :cond_1d

    .line 532
    .line 533
    const/4 v9, 0x0

    .line 534
    aget-object v10, v7, v9

    .line 535
    .line 536
    if-nez v10, :cond_1d

    .line 537
    .line 538
    new-instance v0, Lp0/e$a;

    .line 539
    .line 540
    const/4 v1, 0x0

    .line 541
    invoke-direct {v0, v1, v11, v7}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_13

    .line 545
    .line 546
    :cond_1d
    const/4 v9, 0x0

    .line 547
    :cond_1e
    invoke-static {v2}, Lp0/e;->h(Lp0/d;)I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v6, :cond_1f

    .line 552
    .line 553
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 554
    .line 555
    .line 556
    :cond_1f
    if-eqz v13, :cond_20

    .line 557
    .line 558
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 559
    .line 560
    .line 561
    move-result-object v10

    .line 562
    sget v15, Landroid/system/OsConstants;->SEEK_SET:I

    .line 563
    .line 564
    move-object/from16 p0, v9

    .line 565
    .line 566
    const-wide/16 v8, 0x0

    .line 567
    .line 568
    invoke-static {v10, v8, v9, v15}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 569
    .line 570
    .line 571
    goto :goto_e

    .line 572
    :cond_20
    move-object/from16 p0, v9

    .line 573
    .line 574
    :goto_e
    move v8, v2

    .line 575
    move-object/from16 v2, p0

    .line 576
    .line 577
    goto :goto_f

    .line 578
    :cond_21
    const/4 v2, 0x0

    .line 579
    const/4 v8, 0x0

    .line 580
    :goto_f
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    .line 581
    .line 582
    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 583
    .line 584
    .line 585
    iput-object v5, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 586
    .line 587
    invoke-static {v12}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v5

    .line 591
    const-string v10, "png"

    .line 592
    .line 593
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 594
    .line 595
    .line 596
    move-result v5

    .line 597
    const/4 v10, 0x1

    .line 598
    xor-int/2addr v5, v10

    .line 599
    if-eqz v5, :cond_22

    .line 600
    .line 601
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 602
    .line 603
    iput-object v5, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 604
    .line 605
    :cond_22
    const/4 v5, 0x1

    .line 606
    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 607
    .line 608
    if-eqz v14, :cond_23

    .line 609
    .line 610
    invoke-static {v14, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 611
    .line 612
    .line 613
    goto :goto_11

    .line 614
    :cond_23
    if-eqz v13, :cond_24

    .line 615
    .line 616
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    const/4 v10, 0x0

    .line 621
    invoke-static {v5, v10, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 622
    .line 623
    .line 624
    goto :goto_11

    .line 625
    :cond_24
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    .line 626
    .line 627
    .line 628
    move-result v5

    .line 629
    if-nez v5, :cond_25

    .line 630
    .line 631
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 632
    .line 633
    const/high16 v10, 0x20000

    .line 634
    .line 635
    invoke-direct {v5, v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_13
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 636
    .line 637
    .line 638
    :try_start_14
    invoke-virtual {v5, v10}, Ljava/io/InputStream;->mark(I)V
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 639
    .line 640
    .line 641
    move-object v6, v5

    .line 642
    goto :goto_10

    .line 643
    :catchall_7
    move-exception v0

    .line 644
    move-object v10, v5

    .line 645
    goto/16 :goto_14

    .line 646
    .line 647
    :catch_8
    move-object v6, v5

    .line 648
    goto/16 :goto_9

    .line 649
    .line 650
    :cond_25
    :goto_10
    const/4 v5, 0x0

    .line 651
    :try_start_15
    invoke-static {v6, v5, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 652
    .line 653
    .line 654
    :goto_11
    iget v5, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 655
    .line 656
    const/4 v10, -0x1

    .line 657
    if-eq v5, v10, :cond_2a

    .line 658
    .line 659
    if-eqz v7, :cond_26

    .line 660
    .line 661
    const/4 v5, 0x0

    .line 662
    aget-object v10, v7, v5

    .line 663
    .line 664
    if-nez v10, :cond_26

    .line 665
    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 672
    .line 673
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    .line 675
    .line 676
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 680
    .line 681
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    const/4 v1, 0x0

    .line 689
    aput-object v0, v7, v1

    .line 690
    .line 691
    :cond_26
    const/4 v0, 0x1

    .line 692
    invoke-static {v3, v0}, Lb/d;->K(II)Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    if-eqz v0, :cond_2a

    .line 697
    .line 698
    const/4 v0, 0x0

    .line 699
    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 700
    .line 701
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 702
    .line 703
    div-int/2addr v0, v4

    .line 704
    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 705
    .line 706
    div-int/2addr v1, v4

    .line 707
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 712
    .line 713
    if-eqz v14, :cond_27

    .line 714
    .line 715
    invoke-static {v14, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 716
    .line 717
    .line 718
    move-result-object v2

    .line 719
    goto :goto_12

    .line 720
    :cond_27
    if-eqz v13, :cond_28

    .line 721
    .line 722
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    .line 727
    .line 728
    const-wide/16 v2, 0x0

    .line 729
    .line 730
    invoke-static {v0, v2, v3, v1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 731
    .line 732
    .line 733
    const/4 v1, 0x0

    .line 734
    invoke-static {v0, v1, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    goto :goto_12

    .line 739
    :cond_28
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_29

    .line 744
    .line 745
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 746
    .line 747
    .line 748
    :cond_29
    const/4 v1, 0x0

    .line 749
    invoke-static {v6, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    :cond_2a
    :goto_12
    if-nez v2, :cond_2b

    .line 754
    .line 755
    if-eqz v11, :cond_11

    .line 756
    .line 757
    :cond_2b
    if-eqz v8, :cond_2c

    .line 758
    .line 759
    if-eqz v2, :cond_2c

    .line 760
    .line 761
    int-to-float v0, v8

    .line 762
    invoke-static {v2, v0}, Lp0/b;->f(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    :cond_2c
    new-instance v0, Lp0/e$a;

    .line 767
    .line 768
    invoke-direct {v0, v2, v11, v7}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 769
    .line 770
    .line 771
    :goto_13
    invoke-static {v6}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 772
    .line 773
    .line 774
    invoke-static {v13}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 775
    .line 776
    .line 777
    return-object v0

    .line 778
    :catchall_8
    move-exception v0

    .line 779
    const/4 v10, 0x0

    .line 780
    const/4 v13, 0x0

    .line 781
    :goto_14
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 782
    .line 783
    .line 784
    invoke-static {v13}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 785
    .line 786
    .line 787
    throw v0

    .line 788
    :catch_9
    const/4 v6, 0x0

    .line 789
    const/4 v13, 0x0

    .line 790
    goto/16 :goto_9

    .line 791
    .line 792
    nop

    .line 793
    :array_0
    .array-data 4
        0x7f0c0068
        0x7f0c0065
        0x7f0c0066
    .end array-data
.end method

.method public static e(Lp0/d;I[B)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lp0/d;->getThumbnail()[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    invoke-static {v1, p1, p2}, Lp0/b;->c([BI[B)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p0}, Lp0/e;->h(Lp0/d;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    int-to-float p0, p0

    .line 28
    invoke-static {p1, p0}, Lp0/b;->f(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_1
    return-object p1

    .line 33
    :catch_0
    :cond_2
    return-object v0
.end method

.method public static f(Lg0/h;JIII[B)Lp0/e$a;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v1, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move/from16 v10, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    const/16 v5, 0x1a

    .line 14
    .line 15
    const/16 v7, 0x1e

    .line 16
    .line 17
    const/4 v8, 0x6

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x1

    .line 20
    const/4 v13, 0x4

    .line 21
    const/4 v14, 0x0

    .line 22
    if-eq v1, v13, :cond_3f

    .line 23
    .line 24
    const/16 v15, 0x9

    .line 25
    .line 26
    if-eq v1, v15, :cond_3e

    .line 27
    .line 28
    const/16 v9, 0x14

    .line 29
    .line 30
    if-eq v1, v9, :cond_3d

    .line 31
    .line 32
    const/4 v15, 0x3

    .line 33
    const/4 v13, 0x2

    .line 34
    if-eq v1, v8, :cond_23

    .line 35
    .line 36
    const v16, 0x7f0c006d

    .line 37
    .line 38
    .line 39
    const v17, 0x7f0c006e

    .line 40
    .line 41
    .line 42
    const/4 v5, 0x7

    .line 43
    if-eq v1, v5, :cond_19

    .line 44
    .line 45
    const-wide/16 v8, 0x0

    .line 46
    .line 47
    packed-switch v1, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    move-object v1, v14

    .line 51
    return-object v1

    .line 52
    :pswitch_0
    invoke-static {v0, v4, v10, v6}, Lp0/e;->c(Lg0/h;II[B)Lp0/e$a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lg0/h;->j()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 66
    .line 67
    const/16 v2, 0x1b

    .line 68
    .line 69
    if-lt v1, v2, :cond_8

    .line 70
    .line 71
    :try_start_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v12}, Lb/d;->K(II)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-static {v0, v10, v14}, Lp0/b;->c([BI[B)Landroid/graphics/Bitmap;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v5, v0

    .line 100
    move-wide v2, v8

    .line 101
    const/16 v0, 0x14

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-wide/16 v6, -0x1

    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    move-object v5, v1

    .line 108
    move-wide v2, v8

    .line 109
    move v8, v0

    .line 110
    const/16 v0, 0x14

    .line 111
    .line 112
    move/from16 v9, p5

    .line 113
    .line 114
    move/from16 v10, p5

    .line 115
    .line 116
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    .line 117
    .line 118
    .line 119
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    goto :goto_0

    .line 121
    :cond_2
    move-wide v2, v8

    .line 122
    const/16 v0, 0x14

    .line 123
    .line 124
    move-object v5, v14

    .line 125
    :goto_0
    :try_start_3
    invoke-static {v4, v13}, Lb/d;->K(II)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_3

    .line 130
    .line 131
    new-array v4, v15, [I

    .line 132
    .line 133
    aput v17, v4, v11

    .line 134
    .line 135
    const v6, 0x7f0c0068

    .line 136
    .line 137
    .line 138
    aput v6, v4, v12

    .line 139
    .line 140
    aput v16, v4, v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .line 142
    :try_start_4
    new-array v6, v15, [Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    const/4 v6, 0x4

    .line 146
    :try_start_5
    invoke-static {v4, v6}, Lb/d;->K(II)Z

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-eqz v4, :cond_4

    .line 151
    .line 152
    new-array v4, v12, [I

    .line 153
    .line 154
    aput v17, v4, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    .line 156
    :try_start_6
    new-array v6, v12, [Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_0
    move-object v6, v14

    .line 160
    goto/16 :goto_3

    .line 161
    .line 162
    :cond_4
    move-object v4, v14

    .line 163
    move-object v6, v4

    .line 164
    :goto_1
    if-eqz v4, :cond_7

    .line 165
    .line 166
    const/16 v7, 0x9

    .line 167
    .line 168
    :try_start_7
    invoke-virtual {v1, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-static {v7}, Lp0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    aput-object v7, v6, v11

    .line 177
    .line 178
    array-length v7, v4

    .line 179
    if-le v7, v12, :cond_7

    .line 180
    .line 181
    const/16 v7, 0x13

    .line 182
    .line 183
    invoke-virtual {v1, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    const/16 v8, 0x12

    .line 188
    .line 189
    invoke-virtual {v1, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    if-eqz v7, :cond_5

    .line 194
    .line 195
    if-eqz v8, :cond_5

    .line 196
    .line 197
    new-instance v9, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v8, "x"

    .line 206
    .line 207
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v7

    .line 217
    aput-object v7, v6, v12

    .line 218
    .line 219
    :cond_5
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v2, v3, v0}, Lb/d;->j0(JLjava/lang/String;)J

    .line 224
    .line 225
    .line 226
    move-result-wide v7

    .line 227
    const-wide/16 v9, 0x400

    .line 228
    .line 229
    div-long/2addr v7, v9

    .line 230
    cmp-long v0, v7, v2

    .line 231
    .line 232
    if-lez v0, :cond_7

    .line 233
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v2, " kb/s"

    .line 243
    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    aput-object v0, v6, v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catch_1
    move-object v4, v14

    .line 255
    move-object v6, v4

    .line 256
    goto :goto_3

    .line 257
    :catchall_0
    move-exception v0

    .line 258
    goto :goto_2

    .line 259
    :catchall_1
    move-exception v0

    .line 260
    move-object v1, v14

    .line 261
    :goto_2
    if-eqz v1, :cond_6

    .line 262
    .line 263
    :try_start_8
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 264
    .line 265
    .line 266
    :cond_6
    throw v0

    .line 267
    :catch_2
    move-object v1, v14

    .line 268
    :catch_3
    move-object v4, v14

    .line 269
    move-object v5, v4

    .line 270
    move-object v6, v5

    .line 271
    :catch_4
    :goto_3
    if-eqz v1, :cond_9

    .line 272
    .line 273
    :cond_7
    :goto_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_8
    invoke-static {v4, v12}, Lb/d;->K(II)Z

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    if-eqz v1, :cond_c

    .line 282
    .line 283
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v0, v15}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    move-object v4, v14

    .line 292
    move-object v6, v4

    .line 293
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 294
    .line 295
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_a

    .line 300
    .line 301
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_a

    .line 306
    .line 307
    new-instance v0, Landroid/graphics/Canvas;

    .line 308
    .line 309
    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    const/4 v2, 0x4

    .line 325
    div-int/2addr v1, v2

    .line 326
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 327
    .line 328
    .line 329
    move-result-object v2

    .line 330
    const/16 v3, 0x1f

    .line 331
    .line 332
    invoke-static {v2, v3}, Ly0/b;->e(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    new-instance v3, Landroid/graphics/Rect;

    .line 337
    .line 338
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    div-int/2addr v7, v13

    .line 343
    sub-int/2addr v7, v1

    .line 344
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    div-int/2addr v8, v13

    .line 349
    sub-int/2addr v8, v1

    .line 350
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 351
    .line 352
    .line 353
    move-result v9

    .line 354
    div-int/2addr v9, v13

    .line 355
    add-int/2addr v9, v1

    .line 356
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    div-int/2addr v10, v13

    .line 361
    add-int/2addr v10, v1

    .line 362
    invoke-direct {v3, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v2, v14, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_a
    move-object v5, v14

    .line 370
    :goto_6
    if-nez v5, :cond_b

    .line 371
    .line 372
    if-eqz v4, :cond_c

    .line 373
    .line 374
    :cond_b
    new-instance v0, Lp0/e$a;

    .line 375
    .line 376
    invoke-direct {v0, v5, v4, v6}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 377
    .line 378
    .line 379
    move-object v14, v0

    .line 380
    :catch_5
    :cond_c
    :goto_7
    return-object v14

    .line 381
    :pswitch_2
    move-wide v5, v8

    .line 382
    :try_start_9
    invoke-static/range {p0 .. p2}, Lp0/e;->i(Lg0/h;J)Landroid/os/ParcelFileDescriptor;

    .line 383
    .line 384
    .line 385
    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 386
    if-nez v1, :cond_d

    .line 387
    .line 388
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_f

    .line 392
    .line 393
    :cond_d
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lg0/h;->o()Z

    .line 394
    .line 395
    .line 396
    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 397
    if-eqz v0, :cond_15

    .line 398
    .line 399
    const/16 v0, 0x8

    .line 400
    .line 401
    :try_start_b
    new-array v2, v0, [B

    .line 402
    .line 403
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    aput-byte v11, v2, v11

    .line 408
    .line 409
    invoke-static {v3, v2, v11, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    const/4 v8, 0x4

    .line 414
    if-lt v7, v8, :cond_18

    .line 415
    .line 416
    aget-byte v7, v2, v11

    .line 417
    .line 418
    const/16 v8, 0x25

    .line 419
    .line 420
    if-ne v7, v8, :cond_18

    .line 421
    .line 422
    aget-byte v7, v2, v12

    .line 423
    .line 424
    const/16 v8, 0x50

    .line 425
    .line 426
    if-ne v7, v8, :cond_18

    .line 427
    .line 428
    aget-byte v7, v2, v13

    .line 429
    .line 430
    const/16 v8, 0x44

    .line 431
    .line 432
    if-ne v7, v8, :cond_18

    .line 433
    .line 434
    aget-byte v7, v2, v15

    .line 435
    .line 436
    const/16 v8, 0x46

    .line 437
    .line 438
    if-eq v7, v8, :cond_e

    .line 439
    .line 440
    goto/16 :goto_e

    .line 441
    .line 442
    :cond_e
    const/4 v7, -0x8

    .line 443
    int-to-long v14, v7

    .line 444
    sget v7, Landroid/system/OsConstants;->SEEK_END:I

    .line 445
    .line 446
    invoke-static {v3, v14, v15, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 447
    .line 448
    .line 449
    move-result-wide v13

    .line 450
    cmp-long v7, v13, v5

    .line 451
    .line 452
    if-gtz v7, :cond_f

    .line 453
    .line 454
    goto/16 :goto_e

    .line 455
    .line 456
    :cond_f
    invoke-static {v3, v2, v11, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    const/4 v7, 0x4

    .line 461
    if-ge v0, v7, :cond_10

    .line 462
    .line 463
    goto/16 :goto_e

    .line 464
    .line 465
    :cond_10
    move v0, v11

    .line 466
    :goto_8
    const/4 v7, 0x5

    .line 467
    if-ge v0, v7, :cond_13

    .line 468
    .line 469
    aget-byte v7, v2, v0

    .line 470
    .line 471
    const/16 v13, 0x45

    .line 472
    .line 473
    if-ne v7, v13, :cond_12

    .line 474
    .line 475
    add-int/lit8 v7, v0, 0x1

    .line 476
    .line 477
    aget-byte v13, v2, v7

    .line 478
    .line 479
    const/16 v14, 0x4f

    .line 480
    .line 481
    if-ne v13, v14, :cond_12

    .line 482
    .line 483
    add-int/lit8 v0, v0, 0x2

    .line 484
    .line 485
    aget-byte v0, v2, v0

    .line 486
    .line 487
    if-eq v0, v8, :cond_11

    .line 488
    .line 489
    goto :goto_9

    .line 490
    :cond_11
    move v0, v7

    .line 491
    goto :goto_8

    .line 492
    :cond_12
    :goto_9
    move v0, v12

    .line 493
    goto :goto_a

    .line 494
    :cond_13
    move v0, v11

    .line 495
    :goto_a
    if-nez v0, :cond_14

    .line 496
    .line 497
    goto :goto_e

    .line 498
    :cond_14
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    .line 499
    .line 500
    invoke-static {v3, v5, v6, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 501
    .line 502
    .line 503
    :cond_15
    :try_start_c
    new-instance v2, Landroid/graphics/pdf/PdfRenderer;

    .line 504
    .line 505
    invoke-direct {v2, v1}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 506
    .line 507
    .line 508
    :try_start_d
    invoke-static {v4, v12}, Lb/d;->K(II)Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_16

    .line 513
    .line 514
    invoke-static {v2, v10}, Lp0/e;->g(Landroid/graphics/pdf/PdfRenderer;I)Landroid/graphics/Bitmap;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    goto :goto_b

    .line 519
    :cond_16
    const/4 v0, 0x0

    .line 520
    :goto_b
    const/4 v3, 0x6

    .line 521
    invoke-static {v4, v3}, Lb/d;->L(II)Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    if-eqz v3, :cond_17

    .line 526
    .line 527
    new-array v3, v12, [I

    .line 528
    .line 529
    const v4, 0x7f0c005c

    .line 530
    .line 531
    .line 532
    aput v4, v3, v11

    .line 533
    .line 534
    new-array v4, v12, [Ljava/lang/String;

    .line 535
    .line 536
    invoke-virtual {v2}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    aput-object v5, v4, v11

    .line 545
    .line 546
    new-instance v5, Lp0/e$a;

    .line 547
    .line 548
    invoke-direct {v5, v0, v3, v4}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 549
    .line 550
    .line 551
    invoke-static {v2}, Lm0/d;->e(Ljava/lang/AutoCloseable;)V

    .line 552
    .line 553
    .line 554
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 555
    .line 556
    .line 557
    move-object v14, v5

    .line 558
    goto :goto_f

    .line 559
    :catchall_2
    move-exception v0

    .line 560
    move-object v14, v2

    .line 561
    goto :goto_d

    .line 562
    :catchall_3
    move-exception v0

    .line 563
    goto :goto_c

    .line 564
    :catchall_4
    move-exception v0

    .line 565
    const/4 v1, 0x0

    .line 566
    :goto_c
    const/4 v14, 0x0

    .line 567
    :goto_d
    invoke-static {v14}, Lm0/d;->e(Ljava/lang/AutoCloseable;)V

    .line 568
    .line 569
    .line 570
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 571
    .line 572
    .line 573
    throw v0

    .line 574
    :catch_6
    const/4 v1, 0x0

    .line 575
    :catch_7
    const/4 v2, 0x0

    .line 576
    :catch_8
    :cond_17
    invoke-static {v2}, Lm0/d;->e(Ljava/lang/AutoCloseable;)V

    .line 577
    .line 578
    .line 579
    :catch_9
    :cond_18
    :goto_e
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 580
    .line 581
    .line 582
    const/4 v14, 0x0

    .line 583
    :goto_f
    return-object v14

    .line 584
    :cond_19
    move-object v1, v14

    .line 585
    const/16 v2, 0x14

    .line 586
    .line 587
    invoke-virtual/range {p0 .. p0}, Lg0/h;->j()Z

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    if-nez v3, :cond_1a

    .line 592
    .line 593
    goto/16 :goto_13

    .line 594
    .line 595
    :cond_1a
    :try_start_e
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    .line 596
    .line 597
    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 598
    .line 599
    .line 600
    :try_start_f
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-static {v4, v12}, Lb/d;->K(II)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_1b

    .line 612
    .line 613
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    if-eqz v0, :cond_1b

    .line 618
    .line 619
    invoke-static {v0, v10, v6}, Lp0/b;->c([BI[B)Landroid/graphics/Bitmap;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    goto :goto_10

    .line 624
    :cond_1b
    move-object v0, v1

    .line 625
    :goto_10
    invoke-static {v4, v13}, Lb/d;->K(II)Z

    .line 626
    .line 627
    .line 628
    move-result v6

    .line 629
    if-eqz v6, :cond_1c

    .line 630
    .line 631
    const/4 v6, 0x5

    .line 632
    new-array v4, v6, [I

    .line 633
    .line 634
    aput v17, v4, v11

    .line 635
    .line 636
    const v6, 0x7f0c0070

    .line 637
    .line 638
    .line 639
    aput v6, v4, v12

    .line 640
    .line 641
    const v6, 0x7f0c006c

    .line 642
    .line 643
    .line 644
    aput v6, v4, v13

    .line 645
    .line 646
    const v6, 0x7f0c006f

    .line 647
    .line 648
    .line 649
    aput v6, v4, v15

    .line 650
    .line 651
    const/4 v6, 0x4

    .line 652
    aput v16, v4, v6

    .line 653
    .line 654
    const/4 v6, 0x5

    .line 655
    new-array v6, v6, [Ljava/lang/String;

    .line 656
    .line 657
    goto :goto_11

    .line 658
    :cond_1c
    const/4 v6, 0x4

    .line 659
    invoke-static {v4, v6}, Lb/d;->K(II)Z

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-eqz v4, :cond_1d

    .line 664
    .line 665
    new-array v4, v12, [I

    .line 666
    .line 667
    aput v17, v4, v11

    .line 668
    .line 669
    new-array v6, v12, [Ljava/lang/String;

    .line 670
    .line 671
    goto :goto_11

    .line 672
    :cond_1d
    move-object v4, v1

    .line 673
    move-object v6, v4

    .line 674
    :goto_11
    if-eqz v4, :cond_1e

    .line 675
    .line 676
    const/16 v7, 0x9

    .line 677
    .line 678
    invoke-virtual {v3, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v7

    .line 682
    invoke-static {v7}, Lp0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    aput-object v7, v6, v11

    .line 687
    .line 688
    array-length v7, v4

    .line 689
    if-le v7, v12, :cond_1e

    .line 690
    .line 691
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v5

    .line 695
    aput-object v5, v6, v12

    .line 696
    .line 697
    invoke-virtual {v3, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    aput-object v5, v6, v13

    .line 702
    .line 703
    const/4 v5, 0x6

    .line 704
    invoke-virtual {v3, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    aput-object v5, v6, v15

    .line 709
    .line 710
    invoke-virtual {v3, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    const/4 v5, 0x4

    .line 715
    aput-object v2, v6, v5

    .line 716
    .line 717
    :cond_1e
    if-nez v0, :cond_1f

    .line 718
    .line 719
    if-eqz v4, :cond_21

    .line 720
    .line 721
    :cond_1f
    new-instance v2, Lp0/e$a;

    .line 722
    .line 723
    invoke-direct {v2, v0, v4, v6}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 724
    .line 725
    .line 726
    :try_start_10
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 727
    .line 728
    .line 729
    :catch_a
    move-object v14, v2

    .line 730
    goto :goto_14

    .line 731
    :catchall_5
    move-exception v0

    .line 732
    move-object v14, v3

    .line 733
    goto :goto_12

    .line 734
    :catchall_6
    move-exception v0

    .line 735
    move-object v14, v1

    .line 736
    :goto_12
    if-eqz v14, :cond_20

    .line 737
    .line 738
    :try_start_11
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    .line 739
    .line 740
    .line 741
    :catch_b
    :cond_20
    throw v0

    .line 742
    :catch_c
    move-object v3, v1

    .line 743
    :catch_d
    if-eqz v3, :cond_22

    .line 744
    .line 745
    :cond_21
    :try_start_12
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 746
    .line 747
    .line 748
    :catch_e
    :cond_22
    :goto_13
    move-object v14, v1

    .line 749
    :goto_14
    return-object v14

    .line 750
    :cond_23
    move-object v1, v14

    .line 751
    invoke-static {v4, v13}, Lb/d;->K(II)Z

    .line 752
    .line 753
    .line 754
    move-result v6

    .line 755
    const v8, 0x7f0c0051

    .line 756
    .line 757
    .line 758
    if-eqz v6, :cond_24

    .line 759
    .line 760
    const/4 v6, 0x5

    .line 761
    new-array v9, v6, [I

    .line 762
    .line 763
    fill-array-data v9, :array_0

    .line 764
    .line 765
    .line 766
    new-array v6, v6, [Ljava/lang/String;

    .line 767
    .line 768
    goto :goto_15

    .line 769
    :cond_24
    const/4 v6, 0x4

    .line 770
    invoke-static {v4, v6}, Lb/d;->K(II)Z

    .line 771
    .line 772
    .line 773
    move-result v9

    .line 774
    if-eqz v9, :cond_25

    .line 775
    .line 776
    new-array v9, v12, [I

    .line 777
    .line 778
    aput v8, v9, v11

    .line 779
    .line 780
    new-array v6, v12, [Ljava/lang/String;

    .line 781
    .line 782
    goto :goto_15

    .line 783
    :cond_25
    move-object v6, v1

    .line 784
    move-object v9, v6

    .line 785
    :goto_15
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lg0/h;->j()Z

    .line 786
    .line 787
    .line 788
    move-result v14
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 789
    if-eqz v14, :cond_26

    .line 790
    .line 791
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    move-object v14, v1

    .line 796
    goto :goto_18

    .line 797
    :catchall_7
    move-exception v0

    .line 798
    goto :goto_16

    .line 799
    :cond_26
    if-eqz v9, :cond_27

    .line 800
    .line 801
    array-length v14, v9
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_11
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 802
    if-le v14, v12, :cond_27

    .line 803
    .line 804
    move v14, v12

    .line 805
    goto :goto_17

    .line 806
    :goto_16
    move-object v14, v1

    .line 807
    goto/16 :goto_29

    .line 808
    .line 809
    :cond_27
    move v14, v11

    .line 810
    :goto_17
    :try_start_15
    invoke-static {v0, v2, v3, v14}, Lp0/e;->j(Lg0/h;JZ)Ljava/io/InputStream;

    .line 811
    .line 812
    .line 813
    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    .line 814
    move-object v14, v0

    .line 815
    move-object v0, v1

    .line 816
    :goto_18
    :try_start_16
    invoke-static {v4, v12}, Lb/d;->K(II)Z

    .line 817
    .line 818
    .line 819
    move-result v4
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 820
    const-string v1, "+"

    .line 821
    .line 822
    const-string v15, "API "

    .line 823
    .line 824
    const-string v8, ""

    .line 825
    .line 826
    if-nez v4, :cond_2b

    .line 827
    .line 828
    if-nez v9, :cond_28

    .line 829
    .line 830
    goto :goto_1b

    .line 831
    :cond_28
    if-eqz v0, :cond_29

    .line 832
    .line 833
    :try_start_17
    new-instance v2, Lk/b;

    .line 834
    .line 835
    invoke-direct {v2, v0}, Lk/b;-><init>(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    goto :goto_19

    .line 839
    :catchall_8
    move-exception v0

    .line 840
    goto :goto_1a

    .line 841
    :cond_29
    if-eqz v14, :cond_2a

    .line 842
    .line 843
    new-instance v2, Lk/a;

    .line 844
    .line 845
    invoke-direct {v2, v14, v11}, Lk/a;-><init>(Ljava/io/InputStream;I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 846
    .line 847
    .line 848
    :goto_19
    const/4 v0, 0x0

    .line 849
    goto/16 :goto_25

    .line 850
    .line 851
    :goto_1a
    move-object v1, v14

    .line 852
    const/4 v14, 0x0

    .line 853
    goto/16 :goto_27

    .line 854
    .line 855
    :cond_2a
    :goto_1b
    invoke-static {v14}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 856
    .line 857
    .line 858
    goto/16 :goto_2b

    .line 859
    .line 860
    :cond_2b
    if-eqz v0, :cond_34

    .line 861
    .line 862
    :try_start_18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 863
    .line 864
    if-ge v4, v7, :cond_2d

    .line 865
    .line 866
    const-wide v16, 0x80000000L

    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    cmp-long v2, v2, v16

    .line 872
    .line 873
    if-gez v2, :cond_2c

    .line 874
    .line 875
    goto :goto_1c

    .line 876
    :cond_2c
    const/4 v2, 0x0

    .line 877
    const/4 v3, 0x0

    .line 878
    goto :goto_1d

    .line 879
    :cond_2d
    :goto_1c
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    invoke-virtual {v2, v0, v12}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 888
    .line 889
    .line 890
    move-result-object v3

    .line 891
    :goto_1d
    const/16 v11, 0x18

    .line 892
    .line 893
    if-eqz v3, :cond_2e

    .line 894
    .line 895
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 896
    .line 897
    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 898
    .line 899
    iput-object v0, v7, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 900
    .line 901
    invoke-virtual {v7, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 902
    .line 903
    .line 904
    move-result-object v0

    .line 905
    goto :goto_1f

    .line 906
    :cond_2e
    if-lt v4, v11, :cond_2f

    .line 907
    .line 908
    if-ge v4, v7, :cond_2f

    .line 909
    .line 910
    invoke-static {v0}, Lw0/c;->e(Ljava/lang/String;)Lw0/c$a;

    .line 911
    .line 912
    .line 913
    move-result-object v2

    .line 914
    if-eqz v2, :cond_2f

    .line 915
    .line 916
    iget v2, v2, Lw0/c$a;->f:I

    .line 917
    .line 918
    invoke-static {v2, v13}, Lb/d;->K(II)Z

    .line 919
    .line 920
    .line 921
    move-result v2

    .line 922
    if-eqz v2, :cond_2f

    .line 923
    .line 924
    new-instance v2, Ljava/io/FileInputStream;

    .line 925
    .line 926
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    move-object v14, v2

    .line 930
    goto :goto_1e

    .line 931
    :catchall_9
    move-exception v0

    .line 932
    goto/16 :goto_28

    .line 933
    .line 934
    :cond_2f
    :goto_1e
    const/4 v0, 0x0

    .line 935
    :goto_1f
    if-eqz v0, :cond_34

    .line 936
    .line 937
    if-lt v4, v5, :cond_31

    .line 938
    .line 939
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 940
    .line 941
    if-eqz v2, :cond_30

    .line 942
    .line 943
    goto :goto_20

    .line 944
    :cond_30
    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 945
    .line 946
    invoke-static {v0, v10}, Lp0/b;->b(Landroid/graphics/drawable/AdaptiveIconDrawable;I)Landroid/graphics/Bitmap;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    goto :goto_21

    .line 951
    :cond_31
    :goto_20
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 952
    .line 953
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-static {v0, v10, v10, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 958
    .line 959
    .line 960
    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_f
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    .line 961
    :goto_21
    if-eqz v9, :cond_35

    .line 962
    .line 963
    const/4 v2, 0x0

    .line 964
    :try_start_19
    aget v5, v9, v2

    .line 965
    .line 966
    const v7, 0x7f0c0051

    .line 967
    .line 968
    .line 969
    if-eq v5, v7, :cond_33

    .line 970
    .line 971
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 972
    .line 973
    aput-object v5, v6, v2

    .line 974
    .line 975
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 976
    .line 977
    aput-object v2, v6, v12

    .line 978
    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    .line 980
    .line 981
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 985
    .line 986
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    aput-object v2, v6, v13

    .line 994
    .line 995
    if-lt v4, v11, :cond_35

    .line 996
    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    .line 998
    .line 999
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1003
    .line 1004
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1005
    .line 1006
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v2

    .line 1016
    const/4 v4, 0x3

    .line 1017
    aput-object v2, v6, v4

    .line 1018
    .line 1019
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 1020
    .line 1021
    if-eqz v2, :cond_32

    .line 1022
    .line 1023
    array-length v3, v2

    .line 1024
    if-lez v3, :cond_32

    .line 1025
    .line 1026
    const/4 v3, 0x0

    .line 1027
    aget-object v2, v2, v3

    .line 1028
    .line 1029
    goto :goto_22

    .line 1030
    :cond_32
    const/4 v2, 0x0

    .line 1031
    :goto_22
    const/4 v3, 0x4

    .line 1032
    aput-object v2, v6, v3

    .line 1033
    .line 1034
    goto :goto_23

    .line 1035
    :cond_33
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1036
    .line 1037
    const/4 v3, 0x0

    .line 1038
    aput-object v2, v6, v3

    .line 1039
    .line 1040
    goto :goto_23

    .line 1041
    :cond_34
    const/4 v0, 0x0

    .line 1042
    :cond_35
    :goto_23
    if-eqz v14, :cond_37

    .line 1043
    .line 1044
    new-instance v2, Lk/a;

    .line 1045
    .line 1046
    invoke-direct {v2, v14, v12}, Lk/a;-><init>(Ljava/io/InputStream;I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 1047
    .line 1048
    .line 1049
    :try_start_1a
    iget-object v3, v2, Lk/a;->d:Ll/a;

    .line 1050
    .line 1051
    if-eqz v3, :cond_36

    .line 1052
    .line 1053
    iget-object v3, v3, Ll/a;->a:Ljava/lang/String;

    .line 1054
    .line 1055
    if-eqz v3, :cond_36

    .line 1056
    .line 1057
    move v3, v12

    .line 1058
    goto :goto_24

    .line 1059
    :catchall_a
    move-exception v0

    .line 1060
    goto :goto_26

    .line 1061
    :cond_36
    const/4 v3, 0x0

    .line 1062
    :goto_24
    if-eqz v3, :cond_38

    .line 1063
    .line 1064
    invoke-static {v2, v10}, Lp0/a;->d(Lk/a;I)Landroid/graphics/Bitmap;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v0

    .line 1068
    goto :goto_25

    .line 1069
    :cond_37
    const/4 v2, 0x0

    .line 1070
    :cond_38
    :goto_25
    if-eqz v9, :cond_3a

    .line 1071
    .line 1072
    if-eqz v2, :cond_3a

    .line 1073
    .line 1074
    iget-object v3, v2, Lk/a;->d:Ll/a;

    .line 1075
    .line 1076
    if-eqz v3, :cond_3a

    .line 1077
    .line 1078
    const/4 v4, 0x0

    .line 1079
    aget v5, v9, v4

    .line 1080
    .line 1081
    const v7, 0x7f0c0051

    .line 1082
    .line 1083
    .line 1084
    if-eq v5, v7, :cond_39

    .line 1085
    .line 1086
    iget-object v5, v3, Ll/a;->a:Ljava/lang/String;

    .line 1087
    .line 1088
    aput-object v5, v6, v4

    .line 1089
    .line 1090
    iget-object v4, v3, Ll/a;->d:Ljava/lang/String;

    .line 1091
    .line 1092
    aput-object v4, v6, v12

    .line 1093
    .line 1094
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1097
    .line 1098
    .line 1099
    iget-object v5, v3, Ll/a;->e:Ljava/lang/Long;

    .line 1100
    .line 1101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v4

    .line 1108
    aput-object v4, v6, v13

    .line 1109
    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    iget-object v5, v3, Ll/a;->g:Ljava/lang/String;

    .line 1116
    .line 1117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v1

    .line 1127
    const/4 v4, 0x3

    .line 1128
    aput-object v1, v6, v4

    .line 1129
    .line 1130
    iget-object v1, v3, Ll/a;->f:Ljava/lang/String;

    .line 1131
    .line 1132
    const/4 v3, 0x4

    .line 1133
    aput-object v1, v6, v3

    .line 1134
    .line 1135
    goto :goto_2a

    .line 1136
    :cond_39
    iget-object v1, v3, Ll/a;->d:Ljava/lang/String;

    .line 1137
    .line 1138
    const/4 v3, 0x0

    .line 1139
    aput-object v1, v6, v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_12
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 1140
    .line 1141
    goto :goto_2a

    .line 1142
    :goto_26
    move-object v1, v14

    .line 1143
    move-object v14, v2

    .line 1144
    :goto_27
    move-object/from16 v18, v14

    .line 1145
    .line 1146
    move-object v14, v1

    .line 1147
    move-object/from16 v1, v18

    .line 1148
    .line 1149
    goto :goto_29

    .line 1150
    :catch_f
    const/4 v0, 0x0

    .line 1151
    :catch_10
    const/4 v2, 0x0

    .line 1152
    goto :goto_2a

    .line 1153
    :catchall_b
    move-exception v0

    .line 1154
    const/4 v14, 0x0

    .line 1155
    :goto_28
    const/4 v1, 0x0

    .line 1156
    :goto_29
    invoke-static {v14}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 1160
    .line 1161
    .line 1162
    throw v0

    .line 1163
    :catch_11
    const/4 v0, 0x0

    .line 1164
    const/4 v2, 0x0

    .line 1165
    const/4 v14, 0x0

    .line 1166
    :catch_12
    :cond_3a
    :goto_2a
    invoke-static {v14}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 1167
    .line 1168
    .line 1169
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 1170
    .line 1171
    .line 1172
    if-nez v0, :cond_3c

    .line 1173
    .line 1174
    if-eqz v9, :cond_3b

    .line 1175
    .line 1176
    goto :goto_2c

    .line 1177
    :cond_3b
    :goto_2b
    const/4 v14, 0x0

    .line 1178
    goto :goto_2d

    .line 1179
    :cond_3c
    :goto_2c
    new-instance v14, Lp0/e$a;

    .line 1180
    .line 1181
    invoke-direct {v14, v0, v9, v6}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    :goto_2d
    return-object v14

    .line 1185
    :cond_3d
    invoke-static {v4, v10, v0}, Lp0/e;->b(IILg0/h;)Lp0/e$a;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    return-object v0

    .line 1190
    :cond_3e
    move-object/from16 v1, p0

    .line 1191
    .line 1192
    move-wide/from16 v2, p1

    .line 1193
    .line 1194
    move/from16 v4, p4

    .line 1195
    .line 1196
    move/from16 v5, p5

    .line 1197
    .line 1198
    move-object/from16 v6, p6

    .line 1199
    .line 1200
    invoke-static/range {v1 .. v6}, Lp0/e;->d(Lg0/h;JII[B)Lp0/e$a;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v0

    .line 1204
    return-object v0

    .line 1205
    :cond_3f
    move v1, v8

    .line 1206
    invoke-static {v4, v1}, Lb/d;->L(II)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    if-eqz v1, :cond_40

    .line 1211
    .line 1212
    new-array v1, v12, [I

    .line 1213
    .line 1214
    const v2, 0x7f0c004f

    .line 1215
    .line 1216
    .line 1217
    const/4 v3, 0x0

    .line 1218
    aput v2, v1, v3

    .line 1219
    .line 1220
    new-array v2, v12, [Ljava/lang/String;

    .line 1221
    .line 1222
    goto :goto_2e

    .line 1223
    :cond_40
    const/4 v1, 0x0

    .line 1224
    const/4 v2, 0x0

    .line 1225
    :goto_2e
    :try_start_1b
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v3

    .line 1229
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1238
    .line 1239
    const/16 v6, 0x2d

    .line 1240
    .line 1241
    if-lt v4, v7, :cond_47

    .line 1242
    .line 1243
    const-string v7, "/data/app"

    .line 1244
    .line 1245
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1246
    .line 1247
    .line 1248
    move-result v7

    .line 1249
    if-eqz v7, :cond_47

    .line 1250
    .line 1251
    const/16 v5, 0x22

    .line 1252
    .line 1253
    if-lt v4, v5, :cond_42

    .line 1254
    .line 1255
    const/4 v4, 0x0

    .line 1256
    invoke-static {v4}, Ln0/a;->c(I)Ln0/a;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v5

    .line 1260
    invoke-static {v0, v5}, Li0/g;->b(Ljava/lang/String;Ln0/a;)Ljava/util/ArrayList;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    invoke-static {v5}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1268
    .line 1269
    .line 1270
    move-result v4

    .line 1271
    if-eqz v4, :cond_41

    .line 1272
    .line 1273
    goto :goto_2f

    .line 1274
    :cond_41
    const/4 v4, 0x0

    .line 1275
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    check-cast v0, Ljava/lang/String;

    .line 1280
    .line 1281
    goto :goto_30

    .line 1282
    :cond_42
    new-instance v4, Ljava/io/File;

    .line 1283
    .line 1284
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    if-eqz v0, :cond_44

    .line 1292
    .line 1293
    array-length v4, v0

    .line 1294
    if-ge v4, v12, :cond_43

    .line 1295
    .line 1296
    goto :goto_2f

    .line 1297
    :cond_43
    const/4 v4, 0x0

    .line 1298
    aget-object v0, v0, v4

    .line 1299
    .line 1300
    goto :goto_30

    .line 1301
    :cond_44
    :goto_2f
    const/4 v0, 0x0

    .line 1302
    :goto_30
    if-nez v0, :cond_45

    .line 1303
    .line 1304
    goto/16 :goto_35

    .line 1305
    .line 1306
    :cond_45
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1307
    .line 1308
    .line 1309
    move-result v4

    .line 1310
    if-lez v4, :cond_46

    .line 1311
    .line 1312
    const/4 v5, 0x0

    .line 1313
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    :cond_46
    move-object v4, v0

    .line 1318
    const/4 v0, 0x0

    .line 1319
    goto/16 :goto_33

    .line 1320
    .line 1321
    :cond_47
    const-string v7, "/app/"

    .line 1322
    .line 1323
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v7
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_1b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_13

    .line 1327
    const-string v8, ".apk"

    .line 1328
    .line 1329
    const/16 v9, 0x2f

    .line 1330
    .line 1331
    if-nez v7, :cond_4c

    .line 1332
    .line 1333
    :try_start_1c
    const-string v7, "/priv-app/"

    .line 1334
    .line 1335
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1336
    .line 1337
    .line 1338
    move-result v7

    .line 1339
    if-eqz v7, :cond_48

    .line 1340
    .line 1341
    goto :goto_31

    .line 1342
    :cond_48
    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v7

    .line 1346
    if-gt v4, v5, :cond_49

    .line 1347
    .line 1348
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    .line 1355
    .line 1356
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v0

    .line 1369
    invoke-static {v0}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 1370
    .line 1371
    .line 1372
    move-result v4

    .line 1373
    if-nez v4, :cond_4a

    .line 1374
    .line 1375
    :cond_49
    const/4 v0, 0x0

    .line 1376
    :cond_4a
    if-nez v0, :cond_4f

    .line 1377
    .line 1378
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1379
    .line 1380
    .line 1381
    move-result v4

    .line 1382
    if-lez v4, :cond_4b

    .line 1383
    .line 1384
    const/4 v5, 0x0

    .line 1385
    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v4

    .line 1389
    goto :goto_33

    .line 1390
    :cond_4b
    move-object v4, v7

    .line 1391
    goto :goto_33

    .line 1392
    :cond_4c
    :goto_31
    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 1393
    .line 1394
    .line 1395
    move-result-object v4

    .line 1396
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    .line 1397
    .line 1398
    .line 1399
    move-result v5

    .line 1400
    if-lez v5, :cond_4d

    .line 1401
    .line 1402
    goto :goto_32

    .line 1403
    :cond_4d
    const/4 v12, 0x0

    .line 1404
    :goto_32
    if-eqz v12, :cond_4e

    .line 1405
    .line 1406
    const-string v4, "base"

    .line 1407
    .line 1408
    :cond_4e
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1409
    .line 1410
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    .line 1421
    .line 1422
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v0

    .line 1429
    :cond_4f
    const/4 v4, 0x0

    .line 1430
    :goto_33
    if-eqz v0, :cond_50

    .line 1431
    .line 1432
    const/4 v5, 0x0

    .line 1433
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v4

    .line 1437
    if-eqz v4, :cond_51

    .line 1438
    .line 1439
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1440
    .line 1441
    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1442
    .line 1443
    iput-object v0, v5, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1444
    .line 1445
    goto :goto_34

    .line 1446
    :cond_50
    const/4 v0, 0x0

    .line 1447
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v4

    .line 1451
    :cond_51
    :goto_34
    if-nez v4, :cond_52

    .line 1452
    .line 1453
    goto :goto_35

    .line 1454
    :cond_52
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1455
    .line 1456
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageItemInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    const/4 v5, 0x4

    .line 1461
    invoke-static {v5}, Ly0/b;->a(I)Landroid/graphics/Bitmap;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v5

    .line 1465
    invoke-static {v5, v0}, Ly0/b;->d(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v0

    .line 1469
    if-eqz v0, :cond_54

    .line 1470
    .line 1471
    if-eqz v2, :cond_53

    .line 1472
    .line 1473
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1474
    .line 1475
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v3

    .line 1479
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    const/4 v4, 0x0

    .line 1484
    aput-object v3, v2, v4

    .line 1485
    .line 1486
    :cond_53
    new-instance v3, Lp0/e$a;

    .line 1487
    .line 1488
    invoke-direct {v3, v0, v1, v2}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_13
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_13

    .line 1489
    .line 1490
    .line 1491
    move-object v14, v3

    .line 1492
    goto :goto_36

    .line 1493
    :catch_13
    :cond_54
    :goto_35
    const/4 v14, 0x0

    .line 1494
    :goto_36
    return-object v14

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0c004f
        0x7f0c0051
        0x7f0c0052
        0x7f0c0050
        0x7f0c0058
    .end array-data
.end method

.method public static g(Landroid/graphics/pdf/PdfRenderer;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer;->getPageCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    int-to-float p1, p1

    .line 30
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-float v1, v1

    .line 35
    div-float v1, p1, v1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    div-float/2addr p1, v2

    .line 43
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    new-instance v1, Landroid/graphics/Matrix;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    int-to-float v2, v2

    .line 60
    mul-float/2addr v2, p1

    .line 61
    float-to-int v2, v2

    .line 62
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    mul-float/2addr v3, p1

    .line 68
    float-to-int p1, v3

    .line 69
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 70
    .line 71
    invoke-static {v2, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/graphics/pdf/PdfRenderer$Page;->close()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {p0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const/4 v1, -0x1

    .line 99
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Landroid/graphics/Canvas;

    .line 103
    .line 104
    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-object p0

    .line 115
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static h(Lp0/d;)I
    .locals 2

    .line 1
    const-string v0, "Orientation"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x3

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x6

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    const/16 p0, 0x10e

    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    const/16 p0, 0x5a

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    const/16 p0, 0xb4

    .line 27
    .line 28
    return p0
.end method

.method public static i(Lg0/h;J)Landroid/os/ParcelFileDescriptor;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lg0/h;->o()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const/high16 p1, 0x10000000

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lg0/f;->v(I)Landroid/os/ParcelFileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v2, 0x1a

    .line 22
    .line 23
    if-lt v1, v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    cmp-long v1, p1, v1

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    const/high16 v1, 0x80000

    .line 38
    .line 39
    int-to-long v2, v1

    .line 40
    cmp-long p1, p1, v2

    .line 41
    .line 42
    if-lez p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Le0/a;->c()Lru/zdevs/zarchiver/archiver/NArc;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    iget-object p2, p0, Lg0/h;->d:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {p1, p0, v0, v1}, Lru/zdevs/zarchiver/archiver/NArc;->d(ILjava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_3
    iget-object p0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p2, -0x1

    .line 72
    invoke-virtual {p1, p2, p0, v1}, Lru/zdevs/zarchiver/archiver/NArc;->d(ILjava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object p0

    .line 77
    :catch_0
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static j(Lg0/h;JZ)Ljava/io/InputStream;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lg0/h;->o()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lg0/f;->w()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v2, 0x1a

    .line 20
    .line 21
    if-lt v1, v2, :cond_5

    .line 22
    .line 23
    invoke-virtual {p0}, Lg0/h;->g()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    cmp-long v1, p1, v1

    .line 32
    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    const/high16 v1, 0x1e00000

    .line 36
    .line 37
    int-to-long v1, v1

    .line 38
    cmp-long p1, p1, v1

    .line 39
    .line 40
    if-lez p1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    if-eqz p3, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {p1}, Lru/zdevs/zarchiver/archiver/NArc;->l(Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Le0/a;->c()Lru/zdevs/zarchiver/archiver/NArc;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_0
    if-nez p1, :cond_3

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    iget-object p2, p0, Lg0/h;->d:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v1, -0x1

    .line 66
    invoke-static {v1, p2}, Lb/d;->i0(ILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    iget-object p0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, p2, p0}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    if-eqz p3, :cond_4

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    iput-boolean p1, p0, Ld0/f;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    :cond_4
    return-object p0

    .line 84
    :catch_0
    :cond_5
    :goto_1
    return-object v0
.end method
