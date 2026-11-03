.class public final Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/b$c;,
        Ld0/b$b;,
        Ld0/b$a;
    }
.end annotation


# static fields
.field public static a:Ld0/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x400

    .line 10
    .line 11
    div-long/2addr v0, v2

    .line 12
    const-wide/32 v2, 0x37000

    .line 13
    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-gez v0, :cond_4

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    if-eq p0, v2, :cond_0

    .line 25
    .line 26
    if-ne p0, v0, :cond_4

    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x5

    .line 29
    if-eq p1, p0, :cond_3

    .line 30
    .line 31
    const/4 p0, 0x7

    .line 32
    if-eq p1, p0, :cond_2

    .line 33
    .line 34
    const/16 p0, 0x9

    .line 35
    .line 36
    if-eq p1, p0, :cond_1

    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    return v0

    .line 40
    :cond_2
    return v2

    .line 41
    :cond_3
    const/16 p0, 0x8

    .line 42
    .line 43
    return p0

    .line 44
    :cond_4
    return v1
.end method

.method public static b(II)J
    .locals 8

    .line 1
    invoke-static {p0, p1}, Ld0/b;->a(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/16 v2, 0x400

    .line 7
    .line 8
    mul-long/2addr v0, v2

    .line 9
    const-wide/16 v4, 0x0

    .line 10
    .line 11
    cmp-long v6, v0, v4

    .line 12
    .line 13
    const/16 v7, 0x9

    .line 14
    .line 15
    if-nez v6, :cond_3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x3

    .line 21
    if-eq p1, v0, :cond_4

    .line 22
    .line 23
    const/4 v0, 0x7

    .line 24
    if-eq p1, v0, :cond_1

    .line 25
    .line 26
    if-eq p1, v7, :cond_0

    .line 27
    .line 28
    const-wide/16 v2, 0x4000

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/32 v2, 0x10000

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-wide/32 v2, 0x8000

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-wide/16 v2, 0x40

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    move-wide v2, v0

    .line 43
    :cond_4
    :goto_0
    invoke-static {}, Ls0/b;->a()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-long v0, v0

    .line 48
    cmp-long v4, v0, v4

    .line 49
    .line 50
    if-nez v4, :cond_5

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    int-to-long v0, v0

    .line 61
    :cond_5
    const/16 v4, 0x10

    .line 62
    .line 63
    const-wide/16 v5, 0x1

    .line 64
    .line 65
    if-eq p0, v4, :cond_9

    .line 66
    .line 67
    const/16 v4, 0x20

    .line 68
    .line 69
    if-ne p0, v4, :cond_6

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_6
    const/16 p1, 0x80

    .line 73
    .line 74
    if-ne p0, p1, :cond_7

    .line 75
    .line 76
    const-wide/16 p0, 0x19

    .line 77
    .line 78
    sub-long v2, v0, v5

    .line 79
    .line 80
    mul-long/2addr v2, p0

    .line 81
    const-wide/16 p0, 0x3c

    .line 82
    .line 83
    add-long/2addr v2, p0

    .line 84
    goto :goto_3

    .line 85
    :cond_7
    const/16 p1, 0x40

    .line 86
    .line 87
    if-ne p0, p1, :cond_8

    .line 88
    .line 89
    long-to-float p0, v2

    .line 90
    const p1, 0x40c33333    # 6.1f

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_8
    const-wide/16 v2, 0x10

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_9
    :goto_1
    const/4 p0, 0x5

    .line 98
    if-ge p1, p0, :cond_a

    .line 99
    .line 100
    long-to-float p0, v2

    .line 101
    const/high16 p1, 0x40f00000    # 7.5f

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_a
    long-to-float p0, v2

    .line 105
    if-ge p1, v7, :cond_b

    .line 106
    .line 107
    const/high16 p1, 0x41380000    # 11.5f

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_b
    const/high16 p1, 0x41280000    # 10.5f

    .line 111
    .line 112
    :goto_2
    mul-float/2addr p0, p1

    .line 113
    const/high16 p1, 0x44800000    # 1024.0f

    .line 114
    .line 115
    div-float/2addr p0, p1

    .line 116
    float-to-int p0, p0

    .line 117
    int-to-long v2, p0

    .line 118
    :goto_3
    sub-long/2addr v0, v5

    .line 119
    const-wide/16 p0, 0x4

    .line 120
    .line 121
    mul-long/2addr v0, p0

    .line 122
    add-long/2addr v0, v2

    .line 123
    add-long/2addr v0, p0

    .line 124
    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Ld0/b$a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-object v0, Ld0/b;->a:Ld0/b$a;

    .line 3
    .line 4
    sget-boolean v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ld0/b$b;

    .line 16
    .line 17
    invoke-direct {p0}, Ld0/b$b;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :cond_1
    :goto_0
    const/4 v1, 0x4

    .line 22
    invoke-static {v1}, Ls0/b;->f(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v1, v2}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    const-string v2, ""

    .line 31
    .line 32
    invoke-static {v1, p0, v2}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cList(ILjava/lang/String;Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    sget-object v1, Ld0/b;->a:Ld0/b$a;

    .line 36
    .line 37
    sput-object v0, Ld0/b;->a:Ld0/b$a;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-static {p0}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v0, "0"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    iget p0, v1, Ld0/b$a;->d:I

    .line 54
    .line 55
    or-int/lit8 p0, p0, 0x20

    .line 56
    .line 57
    iput p0, v1, Ld0/b$a;->d:I

    .line 58
    .line 59
    :cond_2
    return-object v1
.end method

.method public static declared-synchronized d(Lg0/h;)V
    .locals 17

    .line 1
    const-class v1, Ld0/b;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ld0/b$b;

    .line 16
    .line 17
    invoke-direct {v0}, Ld0/b$b;-><init>()V

    .line 18
    .line 19
    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    const-string v3, "power"

    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/os/PowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_1
    move-object/from16 v3, p0

    .line 36
    .line 37
    :try_start_1
    iget-object v4, v3, Lg0/h;->c:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p0}, Lg0/h;->h()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/4 v6, 0x2

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x1

    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    const-wide/16 v9, 0x0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    new-instance v5, Ljava/io/File;

    .line 52
    .line 53
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 57
    .line 58
    .line 59
    move-result-wide v9

    .line 60
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_4

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-nez v5, :cond_5

    .line 71
    .line 72
    :cond_4
    const-string v5, "/SAF"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_5

    .line 79
    .line 80
    const-string v5, "/uri/"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_5

    .line 87
    .line 88
    invoke-static {v4}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-static/range {p0 .. p0}, Lw0/f;->b(Lg0/h;)B

    .line 95
    .line 96
    .line 97
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    if-ne v3, v6, :cond_5

    .line 99
    .line 100
    :goto_2
    move v3, v8

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    move v3, v7

    .line 103
    :goto_3
    move v5, v8

    .line 104
    const/4 v11, 0x0

    .line 105
    :goto_4
    if-eqz v5, :cond_10

    .line 106
    .line 107
    :try_start_2
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-virtual {v12, v4}, Ld0/h;->e(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_6

    .line 116
    .line 117
    new-instance v12, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v13, "\\-p"

    .line 123
    .line 124
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 128
    .line 129
    .line 130
    move-result-object v13

    .line 131
    invoke-virtual {v13, v4, v8}, Ld0/h;->b(Ljava/lang/String;Z)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    const-string v12, ""

    .line 144
    .line 145
    :goto_5
    if-nez v3, :cond_7

    .line 146
    .line 147
    move v13, v8

    .line 148
    goto :goto_6

    .line 149
    :cond_7
    move v13, v7

    .line 150
    :goto_6
    invoke-static {v13}, Le0/a;->j(Z)Le0/d;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    sput-object v13, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 155
    .line 156
    invoke-interface {v13, v9, v10, v4}, Le0/d;->a(JLjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    if-eqz v0, :cond_8

    .line 160
    .line 161
    const-string v14, "ZArchiver:List"

    .line 162
    .line 163
    invoke-virtual {v0, v8, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    const-wide/32 v14, 0x124f80

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v14, v15}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 171
    .line 172
    .line 173
    :cond_8
    const/4 v14, 0x3

    .line 174
    const/4 v15, 0x4

    .line 175
    if-eqz v3, :cond_b

    .line 176
    .line 177
    sget v16, Ls0/b;->m:I

    .line 178
    .line 179
    invoke-static/range {v16 .. v16}, Ln0/a;->c(I)Ln0/a;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput v7, v2, Ln0/a;->a:I

    .line 184
    .line 185
    invoke-virtual {v2}, Ln0/a;->f()Z

    .line 186
    .line 187
    .line 188
    move-result v16

    .line 189
    if-eqz v16, :cond_9

    .line 190
    .line 191
    invoke-static {v15}, Ls0/b;->f(I)Z

    .line 192
    .line 193
    .line 194
    move-result v15

    .line 195
    invoke-static {v4, v12, v2, v15}, Lb/d;->f0(Ljava/lang/String;Ljava/lang/String;Ln0/a;Z)Z

    .line 196
    .line 197
    .line 198
    move-result v12

    .line 199
    if-nez v12, :cond_a

    .line 200
    .line 201
    invoke-interface {v13}, Le0/d;->d()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    if-gtz v12, :cond_a

    .line 206
    .line 207
    invoke-interface {v13}, Le0/d;->f()I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    if-nez v12, :cond_a

    .line 212
    .line 213
    invoke-interface {v13, v14}, Le0/d;->n(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_7

    .line 217
    :cond_9
    const/16 v12, 0xc8

    .line 218
    .line 219
    invoke-interface {v13, v12}, Le0/d;->n(I)V

    .line 220
    .line 221
    .line 222
    :cond_a
    :goto_7
    invoke-virtual {v2}, Ln0/a;->close()V

    .line 223
    .line 224
    .line 225
    goto :goto_9

    .line 226
    :cond_b
    sget v2, Ls0/b;->g:I

    .line 227
    .line 228
    invoke-static {v8, v2}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 229
    .line 230
    .line 231
    invoke-static {v15}, Ls0/b;->f(I)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_c

    .line 236
    .line 237
    move v2, v8

    .line 238
    goto :goto_8

    .line 239
    :cond_c
    move v2, v7

    .line 240
    :goto_8
    invoke-static {v15, v2}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 241
    .line 242
    .line 243
    invoke-static {v7, v4, v12}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cList(ILjava/lang/String;Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_d

    .line 248
    .line 249
    invoke-interface {v13}, Le0/d;->d()I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-gtz v2, :cond_d

    .line 254
    .line 255
    invoke-interface {v13}, Le0/d;->f()I

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-nez v2, :cond_d

    .line 260
    .line 261
    invoke-interface {v13, v14}, Le0/d;->n(I)V

    .line 262
    .line 263
    .line 264
    :cond_d
    :goto_9
    sget-object v2, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 265
    .line 266
    if-eqz v2, :cond_e

    .line 267
    .line 268
    invoke-interface {v2}, Le0/d;->h()V

    .line 269
    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_e
    invoke-interface {v13}, Le0/d;->clear()V

    .line 273
    .line 274
    .line 275
    :goto_a
    invoke-interface {v13}, Le0/d;->f()I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-ne v2, v6, :cond_f

    .line 280
    .line 281
    const v2, 0x7f0c004d

    .line 282
    .line 283
    .line 284
    invoke-static {v2}, Lru/zdevs/zarchiver/ZApp;->i(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    .line 286
    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :cond_f
    move v5, v7

    .line 290
    goto/16 :goto_4

    .line 291
    .line 292
    :catchall_0
    move-exception v0

    .line 293
    goto :goto_b

    .line 294
    :cond_10
    const/4 v2, 0x0

    .line 295
    :try_start_3
    sput-object v2, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 296
    .line 297
    if-eqz v11, :cond_11

    .line 298
    .line 299
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 300
    .line 301
    .line 302
    :cond_11
    monitor-exit v1

    .line 303
    return-void

    .line 304
    :catchall_1
    move-exception v0

    .line 305
    const/4 v11, 0x0

    .line 306
    :goto_b
    const/4 v2, 0x0

    .line 307
    :try_start_4
    sput-object v2, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 308
    .line 309
    if-eqz v11, :cond_12

    .line 310
    .line 311
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 312
    .line 313
    .line 314
    :cond_12
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 315
    :catchall_2
    move-exception v0

    .line 316
    monitor-exit v1

    .line 317
    throw v0
.end method

.method public static e(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    const/16 v2, 0x5c

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static f(Z)I
    .locals 7

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0x20

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p0, Ls0/b;->f:I

    .line 7
    .line 8
    and-int/lit16 p0, p0, 0xff0

    .line 9
    .line 10
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/16 v2, 0x400

    .line 19
    .line 20
    div-long/2addr v0, v2

    .line 21
    const-wide/16 v4, 0x2800

    .line 22
    .line 23
    sub-long/2addr v0, v4

    .line 24
    const/16 v4, 0x9

    .line 25
    .line 26
    invoke-static {p0, v4}, Ld0/b;->b(II)J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    mul-long/2addr v5, v2

    .line 31
    cmp-long v5, v0, v5

    .line 32
    .line 33
    if-ltz v5, :cond_1

    .line 34
    .line 35
    return v4

    .line 36
    :cond_1
    const/4 v4, 0x7

    .line 37
    invoke-static {p0, v4}, Ld0/b;->b(II)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    mul-long/2addr v5, v2

    .line 42
    cmp-long p0, v0, v5

    .line 43
    .line 44
    if-ltz p0, :cond_2

    .line 45
    .line 46
    return v4

    .line 47
    :cond_2
    const/4 p0, 0x5

    .line 48
    return p0
.end method

.method public static g(Le0/d;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, ""

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ld0/h;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Ld0/b$c;

    .line 29
    .line 30
    iget-object v4, v1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 31
    .line 32
    invoke-direct {v3, v4, v1, v0, p0}, Ld0/b$c;-><init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;Ljava/lang/StringBuilder;Le0/d;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 36
    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    :try_start_3
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    const-string p0, ""

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_2
    iget-object p0, p0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 56
    .line 57
    const/4 v1, -0x2

    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, -0x1

    .line 60
    invoke-virtual {p0, v1, v2, v3}, Lru/zdevs/zarchiver/d;->b(III)Lf0/i;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-eqz p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Lf0/i;->e()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 67
    .line 68
    .line 69
    :catch_1
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    throw p0

    .line 76
    :catch_2
    const-string p0, ""

    .line 77
    .line 78
    return-object p0
.end method

.method public static h(Lg0/h;J)Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_e

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    invoke-static {v0}, Ls0/b;->f(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Le0/a;->h()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/high16 v1, 0x1000000

    .line 27
    .line 28
    invoke-static {v0, v1}, Lb/d;->K(II)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v1}, Lb/d;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "zip"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-nez v5, :cond_4

    .line 52
    .line 53
    const-string v5, "apk"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_4

    .line 60
    .line 61
    const-string v5, "mtz"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    const-string v5, "7z"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-nez v5, :cond_4

    .line 76
    .line 77
    const-string v5, "rar"

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_4

    .line 84
    .line 85
    const-string v5, "lzo"

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_4

    .line 92
    .line 93
    const-string v5, "lzh"

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_4

    .line 100
    .line 101
    const-string v5, "lha"

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_4

    .line 108
    .line 109
    const-string v5, "wim"

    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_4

    .line 116
    .line 117
    const-string v5, "egg"

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_4

    .line 124
    .line 125
    const-string v5, "alz"

    .line 126
    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_3

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_3
    :goto_0
    move v4, v2

    .line 135
    goto :goto_2

    .line 136
    :cond_4
    :goto_1
    move v4, v3

    .line 137
    :goto_2
    const-wide/16 v5, 0x0

    .line 138
    .line 139
    if-nez v4, :cond_5

    .line 140
    .line 141
    cmp-long v4, p1, v5

    .line 142
    .line 143
    if-eqz v4, :cond_e

    .line 144
    .line 145
    :cond_5
    cmp-long v4, p1, v5

    .line 146
    .line 147
    if-ltz v4, :cond_e

    .line 148
    .line 149
    const-wide/32 v7, 0x2800000

    .line 150
    .line 151
    .line 152
    cmp-long p1, p1, v7

    .line 153
    .line 154
    if-lez p1, :cond_6

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    and-int/lit8 p1, v0, 0x1

    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    const-wide/32 p1, 0xa00000

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_7
    and-int/lit8 p1, v0, 0x10

    .line 166
    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    const-wide/32 p1, 0x3200000

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    move-wide p1, v5

    .line 174
    :goto_3
    invoke-virtual {p0}, Lg0/h;->i()Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_b

    .line 179
    .line 180
    const-string p0, "/uri/ru.zdevs.zarchiver.archive"

    .line 181
    .line 182
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result p0

    .line 186
    if-eqz p0, :cond_9

    .line 187
    .line 188
    return v2

    .line 189
    :cond_9
    cmp-long p0, p1, v5

    .line 190
    .line 191
    if-eqz p0, :cond_d

    .line 192
    .line 193
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-virtual {p0}, Le0/a;->d()J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    cmp-long p0, v0, v5

    .line 202
    .line 203
    if-lez p0, :cond_a

    .line 204
    .line 205
    cmp-long p0, v0, p1

    .line 206
    .line 207
    if-gtz p0, :cond_a

    .line 208
    .line 209
    move v2, v3

    .line 210
    :cond_a
    return v2

    .line 211
    :cond_b
    cmp-long p0, p1, v5

    .line 212
    .line 213
    if-eqz p0, :cond_d

    .line 214
    .line 215
    :try_start_0
    invoke-static {v1}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    iget-wide v0, p0, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :catch_0
    const-wide/16 v0, -0x1

    .line 223
    .line 224
    :goto_4
    cmp-long p0, v0, v5

    .line 225
    .line 226
    if-lez p0, :cond_c

    .line 227
    .line 228
    cmp-long p0, v0, p1

    .line 229
    .line 230
    if-gtz p0, :cond_c

    .line 231
    .line 232
    move v2, v3

    .line 233
    :cond_c
    return v2

    .line 234
    :cond_d
    return v3

    .line 235
    :cond_e
    :goto_5
    return v2
.end method
