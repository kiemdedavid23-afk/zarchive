.class public final Lu0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/h$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "GB"

.field public static b:Ljava/lang/String; = "MB"

.field public static c:Ljava/lang/String; = "KB"

.field public static d:Ljava/lang/String; = "B"

.field public static e:Ljava/lang/String; = "MB/s"

.field public static f:Ljava/lang/String; = "KB/s"


# direct methods
.method public static a(Ljava/lang/StringBuilder;JZ)V
    .locals 6

    .line 1
    const-wide/16 v0, 0xa

    .line 2
    .line 3
    const-wide/16 v2, 0x64

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const-wide/16 v4, 0x2710

    .line 8
    .line 9
    cmp-long p3, p1, v4

    .line 10
    .line 11
    if-ltz p3, :cond_0

    .line 12
    .line 13
    rem-long v4, p1, v2

    .line 14
    .line 15
    div-long/2addr v4, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    rem-long v4, p1, v2

    .line 18
    .line 19
    :goto_0
    div-long/2addr p1, v2

    .line 20
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    cmp-long p1, v4, v0

    .line 24
    .line 25
    if-gez p1, :cond_1

    .line 26
    .line 27
    const-string p1, ".0"

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string p1, "."

    .line 31
    .line 32
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static b(JILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 p3, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    :cond_0
    const-wide/32 v1, 0x40000000

    .line 17
    .line 18
    .line 19
    cmp-long p3, p0, v1

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const-wide/16 v4, 0x64

    .line 23
    .line 24
    const/4 v6, 0x1

    .line 25
    if-lez p3, :cond_2

    .line 26
    .line 27
    mul-long/2addr v4, p0

    .line 28
    div-long/2addr v4, v1

    .line 29
    if-ne p2, v6, :cond_1

    .line 30
    .line 31
    move v3, v6

    .line 32
    :cond_1
    invoke-static {v0, v4, v5, v3}, Lu0/h;->a(Ljava/lang/StringBuilder;JZ)V

    .line 33
    .line 34
    .line 35
    sget-object p3, Lu0/h;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-wide/32 v1, 0x100000

    .line 42
    .line 43
    .line 44
    cmp-long p3, p0, v1

    .line 45
    .line 46
    if-lez p3, :cond_4

    .line 47
    .line 48
    mul-long/2addr v4, p0

    .line 49
    div-long/2addr v4, v1

    .line 50
    if-ne p2, v6, :cond_3

    .line 51
    .line 52
    move v3, v6

    .line 53
    :cond_3
    invoke-static {v0, v4, v5, v3}, Lu0/h;->a(Ljava/lang/StringBuilder;JZ)V

    .line 54
    .line 55
    .line 56
    sget-object p3, Lu0/h;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    const-wide/16 v1, 0x400

    .line 63
    .line 64
    cmp-long p3, p0, v1

    .line 65
    .line 66
    if-lez p3, :cond_6

    .line 67
    .line 68
    mul-long/2addr v4, p0

    .line 69
    div-long/2addr v4, v1

    .line 70
    if-ne p2, v6, :cond_5

    .line 71
    .line 72
    move v3, v6

    .line 73
    :cond_5
    invoke-static {v0, v4, v5, v3}, Lu0/h;->a(Ljava/lang/StringBuilder;JZ)V

    .line 74
    .line 75
    .line 76
    sget-object p3, Lu0/h;->c:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    const-wide/16 v1, 0x0

    .line 83
    .line 84
    cmp-long p3, p0, v1

    .line 85
    .line 86
    if-eqz p3, :cond_8

    .line 87
    .line 88
    mul-long/2addr v4, p0

    .line 89
    if-ne p2, v6, :cond_7

    .line 90
    .line 91
    move v3, v6

    .line 92
    :cond_7
    invoke-static {v0, v4, v5, v3}, Lu0/h;->a(Ljava/lang/StringBuilder;JZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_8
    const/16 p3, 0x30

    .line 97
    .line 98
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    :goto_0
    sget-object p3, Lu0/h;->d:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    :goto_1
    const/4 p3, 0x2

    .line 107
    if-ne p2, p3, :cond_9

    .line 108
    .line 109
    const-string p2, " ("

    .line 110
    .line 111
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    sget-object p0, Lu0/h;->d:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string p0, ")"

    .line 123
    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 11

    .line 1
    const-string v0, "*"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, v2

    .line 16
    :goto_0
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x0

    .line 29
    move v7, v6

    .line 30
    :goto_1
    const-string v8, ".*"

    .line 31
    .line 32
    if-ge v7, v5, :cond_5

    .line 33
    .line 34
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    const/16 v10, 0x20

    .line 39
    .line 40
    if-eq v9, v10, :cond_2

    .line 41
    .line 42
    const/16 v10, 0x2e

    .line 43
    .line 44
    if-eq v9, v10, :cond_1

    .line 45
    .line 46
    const/16 v10, 0x3f

    .line 47
    .line 48
    if-eq v9, v10, :cond_1

    .line 49
    .line 50
    const/16 v10, 0x5b

    .line 51
    .line 52
    if-eq v9, v10, :cond_1

    .line 53
    .line 54
    const/16 v10, 0x5d

    .line 55
    .line 56
    if-eq v9, v10, :cond_1

    .line 57
    .line 58
    packed-switch v9, :pswitch_data_0

    .line 59
    .line 60
    .line 61
    packed-switch v9, :pswitch_data_1

    .line 62
    .line 63
    .line 64
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :pswitch_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    :pswitch_1
    const/16 v8, 0x5c

    .line 77
    .line 78
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    if-eqz v1, :cond_4

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-lez p0, :cond_6

    .line 118
    .line 119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-nez p0, :cond_8

    .line 131
    .line 132
    new-array p0, v2, [Ljava/lang/String;

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    move-object v0, v8

    .line 138
    :goto_3
    aput-object v0, p0, v6

    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_8
    if-eqz v1, :cond_a

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_9

    .line 157
    .line 158
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    check-cast v7, Ljava/lang/String;

    .line 163
    .line 164
    const-string v9, "(?=.*"

    .line 165
    .line 166
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const/16 v7, 0x29

    .line 173
    .line 174
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    goto :goto_5

    .line 186
    :cond_a
    const/4 v4, 0x0

    .line 187
    :goto_5
    if-eqz p1, :cond_e

    .line 188
    .line 189
    if-le p0, v2, :cond_b

    .line 190
    .line 191
    new-instance p0, Lu0/h$a;

    .line 192
    .line 193
    invoke-direct {p0}, Lu0/h$a;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    check-cast p0, Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_c

    .line 210
    .line 211
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    :cond_c
    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_d

    .line 220
    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    :cond_d
    const/4 p1, 0x2

    .line 226
    new-array p1, p1, [Ljava/lang/String;

    .line 227
    .line 228
    aput-object p0, p1, v6

    .line 229
    .line 230
    aput-object v4, p1, v2

    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_e
    if-eqz v1, :cond_f

    .line 234
    .line 235
    new-array p0, v2, [Ljava/lang/String;

    .line 236
    .line 237
    aput-object v4, p0, v6

    .line 238
    .line 239
    return-object p0

    .line 240
    :cond_f
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    check-cast p0, Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_10

    .line 251
    .line 252
    invoke-virtual {v8, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    :cond_10
    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    if-nez p1, :cond_11

    .line 261
    .line 262
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    :cond_11
    new-array p1, v2, [Ljava/lang/String;

    .line 267
    .line 268
    aput-object p0, p1, v6

    .line 269
    .line 270
    return-object p1

    .line 271
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const v0, 0x7f0c0093

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lu0/h;->a:Ljava/lang/String;

    .line 16
    .line 17
    const v0, 0x7f0c0096

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lu0/h;->b:Ljava/lang/String;

    .line 25
    .line 26
    const v0, 0x7f0c0094

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lu0/h;->c:Ljava/lang/String;

    .line 34
    .line 35
    const v0, 0x7f0c0092

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lu0/h;->d:Ljava/lang/String;

    .line 43
    .line 44
    const v0, 0x7f0c0097

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lu0/h;->e:Ljava/lang/String;

    .line 52
    .line 53
    const v0, 0x7f0c0095

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sput-object p0, Lu0/h;->f:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static g(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    const-string v3, ";#;"

    .line 9
    .line 10
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, -0x1

    .line 15
    if-le v3, v4, :cond_1

    .line 16
    .line 17
    if-eq v2, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    add-int/2addr v2, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    new-array p0, v1, [Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, [Ljava/lang/String;

    .line 49
    .line 50
    return-object p0
.end method

.method public static h(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/4 v4, -0x1

    .line 13
    if-le v3, v4, :cond_1

    .line 14
    .line 15
    if-eq v2, v3, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-ge v2, p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_2
    new-array p0, v1, [Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, [Ljava/lang/String;

    .line 47
    .line 48
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/16 v4, 0x41

    .line 14
    .line 15
    if-lt v3, v4, :cond_1

    .line 16
    .line 17
    const/16 v4, 0x5a

    .line 18
    .line 19
    if-gt v3, v4, :cond_1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x20

    .line 28
    .line 29
    int-to-char v3, v3

    .line 30
    aput-char v3, v1, v2

    .line 31
    .line 32
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v1, :cond_3

    .line 36
    .line 37
    new-instance p0, Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 40
    .line 41
    .line 42
    :cond_3
    return-object p0
.end method
