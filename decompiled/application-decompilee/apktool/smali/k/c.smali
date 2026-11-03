.class public final Lk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/c$a;,
        Lk/c$b;
    }
.end annotation


# instance fields
.field public final a:Lp/g;


# direct methods
.method public constructor <init>(Lp/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk/c;->a:Lp/g;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;[I[Ljava/lang/String;)Le/c;
    .locals 18

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [Lo/b;

    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;

    .line 11
    .line 12
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v6, -0x1

    .line 17
    if-eq v3, v6, :cond_0

    .line 18
    .line 19
    new-instance v7, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v7, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    if-ge v8, v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-interface {v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v8, v8, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v7, 0x0

    .line 42
    :cond_1
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    move-object/from16 v8, p0

    .line 55
    .line 56
    iget-object v9, v8, Lk/c;->a:Lp/g;

    .line 57
    .line 58
    if-eqz v3, :cond_11

    .line 59
    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/String;

    .line 65
    .line 66
    const/4 v10, 0x0

    .line 67
    :goto_2
    array-length v11, v1

    .line 68
    if-ge v10, v11, :cond_4

    .line 69
    .line 70
    aget-object v11, v1, v10

    .line 71
    .line 72
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v11

    .line 76
    if-eqz v11, :cond_3

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move v10, v6

    .line 83
    :goto_3
    if-gez v10, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Ljava/lang/String;

    .line 91
    .line 92
    if-nez v3, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const-string v11, "@"

    .line 96
    .line 97
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_10

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-static {v6, v3}, Lb/d;->i0(ILjava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    int-to-long v12, v3

    .line 113
    const-wide/16 v14, -0x1

    .line 114
    .line 115
    cmp-long v3, v12, v14

    .line 116
    .line 117
    if-nez v3, :cond_7

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_7
    const/16 v3, 0x18

    .line 121
    .line 122
    shr-long v14, v12, v3

    .line 123
    .line 124
    const-wide/16 v16, 0xff

    .line 125
    .line 126
    and-long v14, v14, v16

    .line 127
    .line 128
    long-to-int v3, v14

    .line 129
    int-to-short v3, v3

    .line 130
    const/16 v14, 0x10

    .line 131
    .line 132
    shr-long v14, v12, v14

    .line 133
    .line 134
    and-long v14, v14, v16

    .line 135
    .line 136
    long-to-int v14, v14

    .line 137
    int-to-short v14, v14

    .line 138
    const-wide/32 v15, 0xffff

    .line 139
    .line 140
    .line 141
    and-long v4, v12, v15

    .line 142
    .line 143
    long-to-int v4, v4

    .line 144
    iget-object v5, v9, Lp/g;->a:Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Lp/f;

    .line 155
    .line 156
    if-nez v3, :cond_8

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    iget-object v5, v3, Lp/f;->d:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lp/l;

    .line 170
    .line 171
    iget-object v3, v3, Lp/f;->e:Ljava/util/HashMap;

    .line 172
    .line 173
    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/util/List;

    .line 182
    .line 183
    if-eqz v5, :cond_e

    .line 184
    .line 185
    if-nez v3, :cond_9

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_9
    iget-object v5, v5, Lp/l;->a:[J

    .line 189
    .line 190
    array-length v5, v5

    .line 191
    if-ge v4, v5, :cond_a

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_a
    const/4 v11, 0x0

    .line 195
    :goto_4
    if-nez v11, :cond_b

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_e

    .line 207
    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Lp/j;

    .line 213
    .line 214
    invoke-virtual {v5, v4}, Lp/j;->a(I)Lp/d;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    if-nez v5, :cond_c

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_c
    iget-object v5, v5, Lp/d;->d:Lo/b;

    .line 222
    .line 223
    if-nez v5, :cond_d

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_d
    instance-of v9, v5, Lo/b$i;

    .line 227
    .line 228
    if-eqz v9, :cond_f

    .line 229
    .line 230
    move-object v9, v5

    .line 231
    check-cast v9, Lo/b$i;

    .line 232
    .line 233
    iget v9, v9, Lo/b;->a:I

    .line 234
    .line 235
    int-to-long v14, v9

    .line 236
    const-wide v16, 0xffffffffL

    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    and-long v14, v14, v16

    .line 242
    .line 243
    cmp-long v9, v12, v14

    .line 244
    .line 245
    if-nez v9, :cond_f

    .line 246
    .line 247
    goto :goto_5

    .line 248
    :cond_e
    :goto_6
    const/4 v5, 0x0

    .line 249
    :cond_f
    aput-object v5, v0, v10

    .line 250
    .line 251
    if-nez v5, :cond_2

    .line 252
    .line 253
    new-instance v3, Lk/c$a;

    .line 254
    .line 255
    long-to-int v4, v12

    .line 256
    invoke-direct {v3, v4}, Lk/c$a;-><init>(I)V

    .line 257
    .line 258
    .line 259
    aput-object v3, v0, v10

    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :cond_10
    new-instance v4, Lk/c$b;

    .line 264
    .line 265
    invoke-direct {v4, v3}, Lk/c$b;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    aput-object v4, v0, v10

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_11
    new-instance v1, Lk/d;

    .line 273
    .line 274
    invoke-direct {v1, v9, v0}, Lk/d;-><init>(Lp/g;[Lo/b;)V

    .line 275
    .line 276
    .line 277
    return-object v1
.end method
