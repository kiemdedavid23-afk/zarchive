.class public final Lr/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lr/b;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Le/b;)Lo/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    int-to-short v0, v0

    .line 14
    if-eqz v0, :cond_5

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_4

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x5

    .line 23
    if-eq v0, p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x6

    .line 26
    if-eq v0, p1, :cond_0

    .line 27
    .line 28
    packed-switch v0, :pswitch_data_0

    .line 29
    .line 30
    .line 31
    packed-switch v0, :pswitch_data_1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    new-instance p1, Lo/b$h;

    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Lo/b$h;-><init>(IS)V

    .line 41
    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    new-instance p1, Lo/b$a;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lo/b$a;-><init>(I)V

    .line 51
    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    new-instance p1, Lo/b$e;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lo/b$e;-><init>(I)V

    .line 61
    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    new-instance p1, Lo/b$b;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lo/b$b;-><init>(I)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :pswitch_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    new-instance v0, Lo/b$g;

    .line 79
    .line 80
    invoke-direct {v0, p0, p1}, Lo/b$g;-><init>(II)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :pswitch_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    new-instance p1, Lo/b$g;

    .line 89
    .line 90
    const/16 v0, 0x8

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lo/b$g;-><init>(II)V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    new-instance p1, Lo/b$d;

    .line 101
    .line 102
    invoke-direct {p1, p0}, Lo/b$d;-><init>(I)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    new-instance p1, Lo/b$c;

    .line 111
    .line 112
    invoke-direct {p1, p0}, Lo/b$c;-><init>(I)V

    .line 113
    .line 114
    .line 115
    return-object p1

    .line 116
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-ltz p0, :cond_3

    .line 121
    .line 122
    new-instance v0, Lo/b$j;

    .line 123
    .line 124
    invoke-direct {v0, p0, p1}, Lo/b$j;-><init>(ILe/b;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_3
    const/4 p0, 0x0

    .line 129
    return-object p0

    .line 130
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    new-instance p1, Lo/b$i;

    .line 135
    .line 136
    invoke-direct {p1, p0}, Lo/b$i;-><init>(I)V

    .line 137
    .line 138
    .line 139
    return-object p1

    .line 140
    :cond_5
    sget-object p0, Lo/b$f;->b:Lo/b$f;

    .line 141
    .line 142
    return-object p0

    .line 143
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/nio/ByteBuffer;Lo/c;)Le/b;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    int-to-long v2, v2

    .line 10
    iget v4, v1, Lo/c;->d:I

    .line 11
    .line 12
    new-array v5, v4, [I

    .line 13
    .line 14
    if-lez v4, :cond_0

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    :goto_0
    iget v8, v1, Lo/c;->d:I

    .line 18
    .line 19
    if-ge v7, v8, :cond_0

    .line 20
    .line 21
    invoke-static/range {p0 .. p0}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    long-to-int v8, v8

    .line 26
    aput v8, v5, v7

    .line 27
    .line 28
    add-int/lit8 v7, v7, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-wide v7, v1, Lo/c;->e:J

    .line 32
    .line 33
    const-wide/16 v9, 0x100

    .line 34
    .line 35
    and-long/2addr v7, v9

    .line 36
    const-wide/16 v9, 0x0

    .line 37
    .line 38
    cmp-long v7, v7, v9

    .line 39
    .line 40
    const/4 v8, 0x1

    .line 41
    if-eqz v7, :cond_1

    .line 42
    .line 43
    move v7, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v7, 0x0

    .line 46
    :goto_1
    iget-wide v9, v1, Lo/c;->f:J

    .line 47
    .line 48
    add-long/2addr v9, v2

    .line 49
    iget-short v11, v1, Lo/a;->b:S

    .line 50
    .line 51
    int-to-long v12, v11

    .line 52
    sub-long/2addr v9, v12

    .line 53
    invoke-static {v0, v9, v10}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 54
    .line 55
    .line 56
    new-array v12, v4, [Ln/f;

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    :goto_2
    if-ge v13, v4, :cond_2

    .line 60
    .line 61
    new-instance v14, Ln/f;

    .line 62
    .line 63
    aget v15, v5, v13

    .line 64
    .line 65
    move/from16 v16, v7

    .line 66
    .line 67
    int-to-long v6, v15

    .line 68
    const-wide v17, 0xffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long v6, v6, v17

    .line 74
    .line 75
    add-long/2addr v6, v9

    .line 76
    invoke-direct {v14, v13, v6, v7}, Ln/f;-><init>(IJ)V

    .line 77
    .line 78
    .line 79
    aput-object v14, v12, v13

    .line 80
    .line 81
    add-int/lit8 v13, v13, 0x1

    .line 82
    .line 83
    move/from16 v7, v16

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    move/from16 v16, v7

    .line 87
    .line 88
    new-instance v5, Le/b;

    .line 89
    .line 90
    iget v6, v1, Lo/c;->d:I

    .line 91
    .line 92
    invoke-direct {v5, v6, v8}, Le/b;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const-wide/16 v7, -0x1

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    :goto_3
    if-ge v9, v4, :cond_9

    .line 100
    .line 101
    aget-object v10, v12, v9

    .line 102
    .line 103
    iget-wide v13, v10, Ln/f;->b:J

    .line 104
    .line 105
    cmp-long v15, v13, v7

    .line 106
    .line 107
    move/from16 v17, v4

    .line 108
    .line 109
    iget-object v4, v5, Le/b;->a:Ljava/lang/Object;

    .line 110
    .line 111
    move-wide/from16 v18, v7

    .line 112
    .line 113
    iget v7, v10, Ln/f;->a:I

    .line 114
    .line 115
    if-nez v15, :cond_3

    .line 116
    .line 117
    check-cast v4, [Ljava/lang/String;

    .line 118
    .line 119
    aput-object v6, v4, v7

    .line 120
    .line 121
    move-wide/from16 v7, v18

    .line 122
    .line 123
    const/4 v13, 0x0

    .line 124
    goto/16 :goto_7

    .line 125
    .line 126
    :cond_3
    invoke-static {v0, v13, v14}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 127
    .line 128
    .line 129
    if-eqz v16, :cond_6

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    and-int/lit16 v6, v6, 0xff

    .line 136
    .line 137
    int-to-short v6, v6

    .line 138
    and-int/lit16 v6, v6, 0x80

    .line 139
    .line 140
    if-eqz v6, :cond_4

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    and-int/lit16 v6, v6, 0xff

    .line 150
    .line 151
    int-to-short v6, v6

    .line 152
    and-int/lit16 v8, v6, 0x80

    .line 153
    .line 154
    if-eqz v8, :cond_5

    .line 155
    .line 156
    and-int/lit8 v6, v6, 0x7f

    .line 157
    .line 158
    shl-int/lit8 v6, v6, 0x8

    .line 159
    .line 160
    const/4 v8, 0x0

    .line 161
    or-int/2addr v6, v8

    .line 162
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    and-int/lit16 v8, v8, 0xff

    .line 167
    .line 168
    int-to-short v8, v8

    .line 169
    add-int/2addr v6, v8

    .line 170
    :cond_5
    new-array v6, v6, [B

    .line 171
    .line 172
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    new-instance v8, Ljava/lang/String;

    .line 176
    .line 177
    sget-object v13, Lr/b;->a:Ljava/nio/charset/Charset;

    .line 178
    .line 179
    invoke-direct {v8, v6, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->get()B

    .line 183
    .line 184
    .line 185
    const/4 v13, 0x0

    .line 186
    goto :goto_6

    .line 187
    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    const v8, 0xffff

    .line 192
    .line 193
    .line 194
    and-int/2addr v6, v8

    .line 195
    const v13, 0x8000

    .line 196
    .line 197
    .line 198
    and-int/2addr v13, v6

    .line 199
    if-eqz v13, :cond_7

    .line 200
    .line 201
    and-int/lit16 v6, v6, 0x7fff

    .line 202
    .line 203
    shl-int/lit8 v6, v6, 0x10

    .line 204
    .line 205
    const/4 v13, 0x0

    .line 206
    or-int/2addr v6, v13

    .line 207
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    and-int/2addr v8, v14

    .line 212
    add-int/2addr v6, v8

    .line 213
    goto :goto_4

    .line 214
    :cond_7
    const/4 v13, 0x0

    .line 215
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 218
    .line 219
    .line 220
    move v14, v13

    .line 221
    :goto_5
    if-ge v14, v6, :cond_8

    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getChar()C

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    add-int/lit8 v14, v14, 0x1

    .line 231
    .line 232
    goto :goto_5

    .line 233
    :cond_8
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 238
    .line 239
    .line 240
    :goto_6
    check-cast v4, [Ljava/lang/String;

    .line 241
    .line 242
    aput-object v8, v4, v7

    .line 243
    .line 244
    iget-wide v6, v10, Ln/f;->b:J

    .line 245
    .line 246
    move-wide/from16 v20, v6

    .line 247
    .line 248
    move-object v6, v8

    .line 249
    move-wide/from16 v7, v20

    .line 250
    .line 251
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 252
    .line 253
    move/from16 v4, v17

    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_9
    iget v1, v1, Lo/a;->c:I

    .line 258
    .line 259
    sub-int/2addr v1, v11

    .line 260
    int-to-long v6, v1

    .line 261
    add-long/2addr v2, v6

    .line 262
    invoke-static {v0, v2, v3}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 263
    .line 264
    .line 265
    return-object v5
.end method
