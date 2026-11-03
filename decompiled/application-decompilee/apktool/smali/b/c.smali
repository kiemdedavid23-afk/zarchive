.class public final Lb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lb/f;

    .line 8
    .line 9
    invoke-direct {p1}, Lb/f;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lb/c;->a:Ljava/lang/Object;

    .line 13
    .line 14
    new-instance p1, Lb/f;

    .line 15
    .line 16
    invoke-direct {p1}, Lb/f;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lb/c;->b:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance p1, Lb/f;

    .line 22
    .line 23
    invoke-direct {p1}, Lb/f;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lb/c;->c:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance p1, Lb/f;

    .line 29
    .line 30
    invoke-direct {p1}, Lb/f;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lb/c;->d:Ljava/lang/Object;

    .line 34
    .line 35
    const/16 p1, 0x20

    .line 36
    .line 37
    new-array p1, p1, [Lb/g;

    .line 38
    .line 39
    iput-object p1, p0, Lb/c;->e:Ljava/lang/Object;

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq p1, v3, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    iget-object p1, p0, Lb/c;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    iget-object p1, p0, Lb/c;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Ljava/lang/String;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    iget-object p1, p0, Lb/c;->a:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lb/c;->b:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lb/c;->b:Ljava/lang/Object;

    .line 47
    .line 48
    move-object v4, v1

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    if-nez v4, :cond_4

    .line 52
    .line 53
    move-object v1, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lb/c;->a:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v1, v0

    .line 66
    check-cast v1, Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    check-cast v0, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lb/c;->a:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/lang/String;

    .line 81
    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_6
    iget-object p1, p0, Lb/c;->a:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/lang/String;

    .line 98
    .line 99
    if-nez p1, :cond_7

    .line 100
    .line 101
    iget-object p1, p0, Lb/c;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p1, Ljava/lang/String;

    .line 104
    .line 105
    if-nez p1, :cond_7

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lb/c;->a:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v3, v1

    .line 116
    check-cast v3, Ljava/lang/String;

    .line 117
    .line 118
    if-nez v3, :cond_8

    .line 119
    .line 120
    move-object v1, v2

    .line 121
    goto :goto_1

    .line 122
    :cond_8
    check-cast v1, Ljava/lang/String;

    .line 123
    .line 124
    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lb/c;->b:Ljava/lang/Object;

    .line 131
    .line 132
    move-object v1, v0

    .line 133
    check-cast v1, Ljava/lang/String;

    .line 134
    .line 135
    if-nez v1, :cond_9

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    move-object v2, v0

    .line 139
    check-cast v2, Ljava/lang/String;

    .line 140
    .line 141
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    return-object p1
.end method

.method public final b(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lb/c;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object v3, v0, Lb/c;->c:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object v3, v0, Lb/c;->b:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v3, v0, Lb/c;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v3, v0, Lb/c;->e:Ljava/lang/Object;

    .line 17
    .line 18
    const-string v4, "fb2"

    .line 19
    .line 20
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v7, 0x3

    .line 25
    const/4 v8, 0x1

    .line 26
    const-string v9, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 27
    .line 28
    const/4 v10, 0x0

    .line 29
    if-eqz v4, :cond_25

    .line 30
    .line 31
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    move-object v12, v3

    .line 46
    move v4, v10

    .line 47
    move v9, v4

    .line 48
    move v11, v9

    .line 49
    move v13, v11

    .line 50
    move v14, v13

    .line 51
    move v15, v14

    .line 52
    move/from16 v16, v15

    .line 53
    .line 54
    :goto_0
    if-eq v1, v8, :cond_36

    .line 55
    .line 56
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 67
    .line 68
    .line 69
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const-string v3, "genre"

    .line 71
    .line 72
    const-string v8, "book-title"

    .line 73
    .line 74
    const-string v10, "binary"

    .line 75
    .line 76
    const-string v6, "author"

    .line 77
    .line 78
    move/from16 p1, v4

    .line 79
    .line 80
    const-string v4, "title-info"

    .line 81
    .line 82
    if-ne v5, v7, :cond_7

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    if-eqz p3, :cond_36

    .line 91
    .line 92
    if-nez v12, :cond_1

    .line 93
    .line 94
    goto/16 :goto_e

    .line 95
    .line 96
    :cond_1
    move/from16 v19, p1

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    const/4 v9, 0x0

    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    move/from16 v19, p1

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    const/4 v11, 0x0

    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_3
    if-eqz v1, :cond_4

    .line 115
    .line 116
    const-string v4, "-name"

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    move/from16 v19, p1

    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v14, 0x0

    .line 128
    const/4 v15, 0x0

    .line 129
    goto/16 :goto_6

    .line 130
    .line 131
    :cond_4
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    goto/16 :goto_3

    .line 138
    .line 139
    :cond_5
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    const/4 v4, 0x0

    .line 146
    const/16 v19, 0x0

    .line 147
    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_24

    .line 155
    .line 156
    move/from16 v4, p1

    .line 157
    .line 158
    const/16 v16, 0x0

    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_7
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/4 v7, 0x2

    .line 167
    if-ne v5, v7, :cond_10

    .line 168
    .line 169
    if-eqz v9, :cond_d

    .line 170
    .line 171
    if-eqz v11, :cond_9

    .line 172
    .line 173
    const-string v3, "first-name"

    .line 174
    .line 175
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_8

    .line 180
    .line 181
    move/from16 v19, p1

    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    const/4 v14, 0x1

    .line 185
    goto/16 :goto_6

    .line 186
    .line 187
    :cond_8
    const-string v3, "last-name"

    .line 188
    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_24

    .line 194
    .line 195
    move/from16 v19, p1

    .line 196
    .line 197
    const/4 v4, 0x0

    .line 198
    const/4 v15, 0x1

    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_9
    const-string v4, "image"

    .line 202
    .line 203
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_a

    .line 208
    .line 209
    const/4 v4, 0x0

    .line 210
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    if-eqz v12, :cond_e

    .line 215
    .line 216
    const/4 v1, 0x1

    .line 217
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v12

    .line 221
    goto :goto_1

    .line 222
    :cond_a
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    if-eqz v4, :cond_b

    .line 227
    .line 228
    const/4 v13, 0x1

    .line 229
    goto :goto_1

    .line 230
    :cond_b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_c

    .line 235
    .line 236
    const/4 v11, 0x1

    .line 237
    goto :goto_1

    .line 238
    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eqz v1, :cond_24

    .line 243
    .line 244
    const/16 v16, 0x1

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_d
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_f

    .line 252
    .line 253
    const/4 v9, 0x1

    .line 254
    :cond_e
    :goto_1
    move/from16 v4, p1

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_f
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_24

    .line 262
    .line 263
    if-eqz v12, :cond_24

    .line 264
    .line 265
    const-string v1, "id"

    .line 266
    .line 267
    const/4 v3, 0x0

    .line 268
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    move v4, v1

    .line 277
    :goto_2
    move/from16 v19, v4

    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    goto/16 :goto_6

    .line 281
    .line 282
    :cond_10
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    const/4 v3, 0x4

    .line 287
    if-ne v1, v3, :cond_24

    .line 288
    .line 289
    if-eqz v13, :cond_11

    .line 290
    .line 291
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v0, Lb/c;->c:Ljava/lang/Object;

    .line 296
    .line 297
    :goto_3
    move/from16 v19, p1

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    const/4 v13, 0x0

    .line 301
    goto/16 :goto_6

    .line 302
    .line 303
    :cond_11
    if-eqz v14, :cond_12

    .line 304
    .line 305
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iput-object v1, v0, Lb/c;->a:Ljava/lang/Object;

    .line 310
    .line 311
    goto/16 :goto_5

    .line 312
    .line 313
    :cond_12
    if-eqz v15, :cond_13

    .line 314
    .line 315
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iput-object v1, v0, Lb/c;->b:Ljava/lang/Object;

    .line 320
    .line 321
    goto/16 :goto_5

    .line 322
    .line 323
    :cond_13
    if-eqz v16, :cond_23

    .line 324
    .line 325
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    const-string v3, "sf"

    .line 330
    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_14

    .line 336
    .line 337
    const-string v1, "Science Fiction & Fantasy"

    .line 338
    .line 339
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 340
    .line 341
    goto/16 :goto_5

    .line 342
    .line 343
    :cond_14
    const-string v3, "det"

    .line 344
    .line 345
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_22

    .line 350
    .line 351
    const-string v3, "thriller"

    .line 352
    .line 353
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-eqz v3, :cond_15

    .line 358
    .line 359
    goto/16 :goto_4

    .line 360
    .line 361
    :cond_15
    const-string v3, "prose"

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_16

    .line 368
    .line 369
    const-string v1, "Prose"

    .line 370
    .line 371
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 372
    .line 373
    goto/16 :goto_5

    .line 374
    .line 375
    :cond_16
    const-string v3, "love"

    .line 376
    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    if-eqz v3, :cond_17

    .line 382
    .line 383
    const-string v1, "Romance"

    .line 384
    .line 385
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 386
    .line 387
    goto/16 :goto_5

    .line 388
    .line 389
    :cond_17
    const-string v3, "adv"

    .line 390
    .line 391
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_18

    .line 396
    .line 397
    const-string v1, "Adventure"

    .line 398
    .line 399
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 400
    .line 401
    goto/16 :goto_5

    .line 402
    .line 403
    :cond_18
    const-string v3, "child"

    .line 404
    .line 405
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_19

    .line 410
    .line 411
    const-string v1, "Children\'s"

    .line 412
    .line 413
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 414
    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :cond_19
    const-string v3, "antique"

    .line 418
    .line 419
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-eqz v3, :cond_1a

    .line 424
    .line 425
    const-string v1, "Antique literature"

    .line 426
    .line 427
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 428
    .line 429
    goto/16 :goto_5

    .line 430
    .line 431
    :cond_1a
    const-string v3, "sci"

    .line 432
    .line 433
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 434
    .line 435
    .line 436
    move-result v3

    .line 437
    if-eqz v3, :cond_1b

    .line 438
    .line 439
    const-string v1, "Scientific-educational"

    .line 440
    .line 441
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 442
    .line 443
    goto/16 :goto_5

    .line 444
    .line 445
    :cond_1b
    const-string v3, "comp"

    .line 446
    .line 447
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-eqz v3, :cond_1c

    .line 452
    .line 453
    const-string v1, "Computers & Internet"

    .line 454
    .line 455
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_1c
    const-string v3, "ref"

    .line 459
    .line 460
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    if-eqz v3, :cond_1d

    .line 465
    .line 466
    const-string v1, "Reference"

    .line 467
    .line 468
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 469
    .line 470
    goto :goto_5

    .line 471
    :cond_1d
    const-string v3, "nonf"

    .line 472
    .line 473
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-eqz v3, :cond_1e

    .line 478
    .line 479
    const-string v1, "Nonfiction"

    .line 480
    .line 481
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_1e
    const-string v3, "religion"

    .line 485
    .line 486
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    if-eqz v3, :cond_1f

    .line 491
    .line 492
    const-string v1, "Religion & Inspiration"

    .line 493
    .line 494
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 495
    .line 496
    goto :goto_5

    .line 497
    :cond_1f
    const-string v3, "humor"

    .line 498
    .line 499
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_20

    .line 504
    .line 505
    const-string v1, "Humor"

    .line 506
    .line 507
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 508
    .line 509
    goto :goto_5

    .line 510
    :cond_20
    const-string v3, "home"

    .line 511
    .line 512
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_21

    .line 517
    .line 518
    const-string v1, "Home & Family"

    .line 519
    .line 520
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 521
    .line 522
    goto :goto_5

    .line 523
    :cond_21
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 524
    .line 525
    goto :goto_5

    .line 526
    :cond_22
    :goto_4
    const-string v1, "Detectives & Thrillers"

    .line 527
    .line 528
    iput-object v1, v0, Lb/c;->d:Ljava/lang/Object;

    .line 529
    .line 530
    goto :goto_5

    .line 531
    :cond_23
    if-eqz p1, :cond_24

    .line 532
    .line 533
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    const/4 v4, 0x0

    .line 538
    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iput-object v1, v0, Lb/c;->e:Ljava/lang/Object;

    .line 543
    .line 544
    goto/16 :goto_e

    .line 545
    .line 546
    :cond_24
    :goto_5
    const/4 v4, 0x0

    .line 547
    move/from16 v19, p1

    .line 548
    .line 549
    :goto_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 550
    .line 551
    .line 552
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 553
    move v10, v4

    .line 554
    move/from16 v4, v19

    .line 555
    .line 556
    const/4 v3, 0x0

    .line 557
    const/4 v7, 0x3

    .line 558
    const/4 v8, 0x1

    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_25
    move v4, v10

    .line 562
    const-string v3, "epub"

    .line 563
    .line 564
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    if-eqz v2, :cond_36

    .line 569
    .line 570
    :try_start_2
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 571
    .line 572
    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 573
    .line 574
    .line 575
    move v1, v4

    .line 576
    :goto_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    if-eqz v3, :cond_36

    .line 581
    .line 582
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v5

    .line 586
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    const-string v6, ".opf"

    .line 591
    .line 592
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 593
    .line 594
    .line 595
    move-result v6

    .line 596
    if-eqz v6, :cond_31

    .line 597
    .line 598
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    const/4 v6, 0x1

    .line 603
    invoke-interface {v1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 604
    .line 605
    .line 606
    const/4 v7, 0x0

    .line 607
    invoke-interface {v1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    move v5, v4

    .line 615
    move v8, v5

    .line 616
    move v10, v8

    .line 617
    :goto_8
    if-eq v3, v6, :cond_2f

    .line 618
    .line 619
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    if-eqz v3, :cond_26

    .line 624
    .line 625
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    :cond_26
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 630
    .line 631
    .line 632
    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    const-string v12, "metadata"

    .line 634
    .line 635
    const/4 v13, 0x3

    .line 636
    if-ne v11, v13, :cond_28

    .line 637
    .line 638
    :try_start_3
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    if-eqz v3, :cond_27

    .line 643
    .line 644
    const/4 v11, 0x4

    .line 645
    goto :goto_c

    .line 646
    :cond_27
    const/4 v14, 0x2

    .line 647
    goto :goto_9

    .line 648
    :cond_28
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 649
    .line 650
    .line 651
    move-result v11

    .line 652
    const/4 v14, 0x2

    .line 653
    if-ne v11, v14, :cond_2c

    .line 654
    .line 655
    if-eqz v5, :cond_2a

    .line 656
    .line 657
    const-string v8, "title"

    .line 658
    .line 659
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 660
    .line 661
    .line 662
    move-result v8

    .line 663
    if-eqz v8, :cond_29

    .line 664
    .line 665
    move v8, v4

    .line 666
    move v3, v6

    .line 667
    goto :goto_a

    .line 668
    :cond_29
    const-string v8, "creator"

    .line 669
    .line 670
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v3

    .line 674
    if-eqz v3, :cond_2b

    .line 675
    .line 676
    move v3, v4

    .line 677
    move v8, v6

    .line 678
    goto :goto_a

    .line 679
    :cond_2a
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    if-eqz v3, :cond_2b

    .line 684
    .line 685
    move v3, v4

    .line 686
    move v8, v3

    .line 687
    move v5, v6

    .line 688
    goto :goto_a

    .line 689
    :cond_2b
    :goto_9
    move v3, v4

    .line 690
    move v8, v3

    .line 691
    :goto_a
    move v10, v8

    .line 692
    const/4 v11, 0x4

    .line 693
    move v8, v3

    .line 694
    goto :goto_b

    .line 695
    :cond_2c
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    const/4 v11, 0x4

    .line 700
    if-ne v3, v11, :cond_2e

    .line 701
    .line 702
    if-eqz v8, :cond_2d

    .line 703
    .line 704
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v3

    .line 708
    iput-object v3, v0, Lb/c;->c:Ljava/lang/Object;

    .line 709
    .line 710
    goto :goto_b

    .line 711
    :cond_2d
    if-eqz v10, :cond_2e

    .line 712
    .line 713
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    iput-object v3, v0, Lb/c;->b:Ljava/lang/Object;

    .line 718
    .line 719
    :cond_2e
    :goto_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 720
    .line 721
    .line 722
    move-result v3

    .line 723
    goto :goto_8

    .line 724
    :cond_2f
    const/4 v11, 0x4

    .line 725
    const/4 v13, 0x3

    .line 726
    :goto_c
    const/4 v14, 0x2

    .line 727
    if-eqz p3, :cond_36

    .line 728
    .line 729
    iget-object v1, v0, Lb/c;->e:Ljava/lang/Object;

    .line 730
    .line 731
    check-cast v1, [B

    .line 732
    .line 733
    if-eqz v1, :cond_30

    .line 734
    .line 735
    goto :goto_e

    .line 736
    :cond_30
    move v1, v6

    .line 737
    goto/16 :goto_7

    .line 738
    .line 739
    :cond_31
    const/4 v6, 0x1

    .line 740
    const/4 v7, 0x0

    .line 741
    const/4 v11, 0x4

    .line 742
    const/4 v13, 0x3

    .line 743
    const/4 v14, 0x2

    .line 744
    iget-object v8, v0, Lb/c;->e:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v8, [B

    .line 747
    .line 748
    if-nez v8, :cond_35

    .line 749
    .line 750
    if-eqz p3, :cond_35

    .line 751
    .line 752
    const-string v8, "cover.jpg"

    .line 753
    .line 754
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    if-nez v8, :cond_32

    .line 759
    .line 760
    const-string v8, "cover.jpeg"

    .line 761
    .line 762
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v5

    .line 766
    if-eqz v5, :cond_35

    .line 767
    .line 768
    :cond_32
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 769
    .line 770
    .line 771
    move-result-wide v15

    .line 772
    const-wide/32 v17, 0xc8000

    .line 773
    .line 774
    .line 775
    cmp-long v5, v15, v17

    .line 776
    .line 777
    if-gez v5, :cond_35

    .line 778
    .line 779
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 780
    .line 781
    .line 782
    move-result-wide v4

    .line 783
    long-to-int v3, v4

    .line 784
    new-array v3, v3, [B

    .line 785
    .line 786
    iput-object v3, v0, Lb/c;->e:Ljava/lang/Object;

    .line 787
    .line 788
    const/4 v4, 0x0

    .line 789
    :cond_33
    iget-object v3, v0, Lb/c;->e:Ljava/lang/Object;

    .line 790
    .line 791
    move-object v5, v3

    .line 792
    check-cast v5, [B

    .line 793
    .line 794
    check-cast v3, [B

    .line 795
    .line 796
    array-length v3, v3

    .line 797
    sub-int/2addr v3, v4

    .line 798
    invoke-virtual {v2, v5, v4, v3}, Ljava/util/zip/ZipInputStream;->read([BII)I

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    if-gez v3, :cond_34

    .line 803
    .line 804
    goto :goto_d

    .line 805
    :cond_34
    add-int/2addr v4, v3

    .line 806
    iget-object v3, v0, Lb/c;->e:Ljava/lang/Object;

    .line 807
    .line 808
    check-cast v3, [B

    .line 809
    .line 810
    array-length v3, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 811
    if-lt v4, v3, :cond_33

    .line 812
    .line 813
    :goto_d
    if-eqz v1, :cond_35

    .line 814
    .line 815
    goto :goto_e

    .line 816
    :cond_35
    const/4 v4, 0x0

    .line 817
    goto/16 :goto_7

    .line 818
    .line 819
    :catch_0
    :cond_36
    :goto_e
    return-void
.end method
