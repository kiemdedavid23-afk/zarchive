.class public abstract Lc1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x7

    .line 12
    const/4 v6, 0x6

    .line 13
    const/4 v7, 0x3

    .line 14
    const/4 v8, 0x2

    .line 15
    const/4 v9, 0x1

    .line 16
    if-eqz p1, :cond_b

    .line 17
    .line 18
    const-string v10, "text/x-c"

    .line 19
    .line 20
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    if-eqz v10, :cond_0

    .line 25
    .line 26
    return v9

    .line 27
    :cond_0
    const-string v10, "text/x-java-source"

    .line 28
    .line 29
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-eqz v10, :cond_1

    .line 34
    .line 35
    return v8

    .line 36
    :cond_1
    const-string v10, "x-rust"

    .line 37
    .line 38
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-eqz v10, :cond_2

    .line 43
    .line 44
    return v7

    .line 45
    :cond_2
    const-string v10, "javascript"

    .line 46
    .line 47
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eqz v10, :cond_3

    .line 52
    .line 53
    return v6

    .line 54
    :cond_3
    const-string v10, "x-php"

    .line 55
    .line 56
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-nez v10, :cond_a

    .line 61
    .line 62
    const-string v10, "x-httpd-php"

    .line 63
    .line 64
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v10

    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    const-string v10, "x-python"

    .line 72
    .line 73
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    if-eqz v10, :cond_5

    .line 78
    .line 79
    return v4

    .line 80
    :cond_5
    const-string v10, "x-ruby"

    .line 81
    .line 82
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-eqz v10, :cond_6

    .line 87
    .line 88
    return v3

    .line 89
    :cond_6
    const-string v10, "application/x-sh"

    .line 90
    .line 91
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-nez v10, :cond_9

    .line 96
    .line 97
    const-string v10, "application/x-shellscript"

    .line 98
    .line 99
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_7

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_7
    const-string v10, "/xml"

    .line 107
    .line 108
    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    if-eqz v10, :cond_8

    .line 113
    .line 114
    return v1

    .line 115
    :cond_8
    const-string v10, "/css"

    .line 116
    .line 117
    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_b

    .line 122
    .line 123
    return v0

    .line 124
    :cond_9
    :goto_0
    return v2

    .line 125
    :cond_a
    :goto_1
    return v5

    .line 126
    :cond_b
    const/4 p1, 0x0

    .line 127
    if-eqz p0, :cond_19

    .line 128
    .line 129
    invoke-static {p0}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    new-instance v10, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v11, ","

    .line 136
    .line 137
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v10

    .line 150
    const-string v11, ",c,cc,cpp,cxx,h,hh,hpp,cyc,m,"

    .line 151
    .line 152
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_c

    .line 157
    .line 158
    move v0, v9

    .line 159
    goto/16 :goto_2

    .line 160
    .line 161
    :cond_c
    const-string v9, "java"

    .line 162
    .line 163
    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    if-eqz v9, :cond_d

    .line 168
    .line 169
    move v0, v8

    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_d
    const-string v8, ",rc,rs,rust,"

    .line 173
    .line 174
    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_e

    .line 179
    .line 180
    move v0, v7

    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_e
    const-string v7, "cs"

    .line 184
    .line 185
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_f

    .line 190
    .line 191
    const/4 v0, 0x4

    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_f
    const-string v7, "go"

    .line 195
    .line 196
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    if-eqz v7, :cond_10

    .line 201
    .line 202
    const/4 v0, 0x5

    .line 203
    goto :goto_2

    .line 204
    :cond_10
    const-string v7, ",js,ts,javascript,typescript,"

    .line 205
    .line 206
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    if-eqz v7, :cond_11

    .line 211
    .line 212
    move v0, v6

    .line 213
    goto :goto_2

    .line 214
    :cond_11
    const-string v6, "php"

    .line 215
    .line 216
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_12

    .line 221
    .line 222
    move v0, v5

    .line 223
    goto :goto_2

    .line 224
    :cond_12
    const-string v5, ",cv,py,python,"

    .line 225
    .line 226
    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_13

    .line 231
    .line 232
    move v0, v4

    .line 233
    goto :goto_2

    .line 234
    :cond_13
    const-string v4, ",rb,ruby,"

    .line 235
    .line 236
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    if-eqz v4, :cond_14

    .line 241
    .line 242
    move v0, v3

    .line 243
    goto :goto_2

    .line 244
    :cond_14
    const-string v3, ",sh,bsh,csh,bash,"

    .line 245
    .line 246
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_15

    .line 251
    .line 252
    move v0, v2

    .line 253
    goto :goto_2

    .line 254
    :cond_15
    const-string v2, ",xml,html,htm,"

    .line 255
    .line 256
    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_16

    .line 261
    .line 262
    move v0, v1

    .line 263
    goto :goto_2

    .line 264
    :cond_16
    const-string v1, ",conf,cfg,ini,"

    .line 265
    .line 266
    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_17

    .line 271
    .line 272
    const/16 v0, 0xc

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_17
    const-string v1, "css"

    .line 276
    .line 277
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    if-eqz p0, :cond_18

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_18
    move v0, p1

    .line 285
    :goto_2
    return v0

    .line 286
    :cond_19
    return p1
.end method


# virtual methods
.method public abstract a(BC[CI)B
.end method

.method public abstract c()I
.end method

.method public abstract d(B)B
.end method

.method public abstract e(B)B
.end method

.method public abstract f([CII)B
.end method
