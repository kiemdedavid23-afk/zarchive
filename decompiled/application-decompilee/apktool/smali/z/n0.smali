.class public final Lz/n0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Landroid/content/Intent;

.field public final g:Z

.field public final h:Z

.field public final i:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;Landroid/net/Uri;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lz/n0;->e:I

    .line 5
    .line 6
    iput-object p2, p0, Lz/n0;->f:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p3, p0, Lz/n0;->i:Landroid/net/Uri;

    .line 9
    .line 10
    iput-boolean p4, p0, Lz/n0;->g:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lz/n0;->h:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 12

    .line 1
    new-instance v0, Lz/w;

    .line 2
    .line 3
    iget v1, p0, Lz/n0;->e:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lz/n0;->g:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lz/w;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lz/n0;->f:Landroid/content/Intent;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v5, "ZA_SHORTCUT"

    .line 26
    .line 27
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    :goto_0
    const/4 v5, 0x0

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    const-string v1, "shrtct"

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    new-instance v5, Lg0/h;

    .line 44
    .line 45
    invoke-direct {v5, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    iput-object v5, v0, Lz/w;->b:Lg0/h;

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_2
    iget-object v3, p0, Lz/n0;->i:Landroid/net/Uri;

    .line 52
    .line 53
    if-eqz v3, :cond_f

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "file"

    .line 60
    .line 61
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/4 v8, 0x1

    .line 66
    if-nez v6, :cond_4

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    if-eqz v9, :cond_3

    .line 73
    .line 74
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    if-eqz v10, :cond_3

    .line 79
    .line 80
    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    const-string v10, "archive"

    .line 85
    .line 86
    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v9

    .line 90
    if-eqz v9, :cond_3

    .line 91
    .line 92
    move v9, v8

    .line 93
    goto :goto_2

    .line 94
    :cond_3
    move v9, v4

    .line 95
    :goto_2
    if-nez v9, :cond_8

    .line 96
    .line 97
    :cond_4
    invoke-static {v5, v3}, Lu0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    if-nez v9, :cond_5

    .line 102
    .line 103
    const-string v9, "AbsolutePath"

    .line 104
    .line 105
    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v9

    .line 109
    :cond_5
    if-eqz v9, :cond_9

    .line 110
    .line 111
    new-instance v10, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_6

    .line 121
    .line 122
    invoke-static {v9}, Lw0/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    if-eqz v6, :cond_8

    .line 127
    .line 128
    invoke-static {v6}, Lm0/h;->b([Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-eqz v10, :cond_8

    .line 133
    .line 134
    const/4 v10, 0x2

    .line 135
    aget-object v6, v6, v10

    .line 136
    .line 137
    invoke-static {v9, v6}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    move-object v9, v6

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    if-nez v6, :cond_9

    .line 144
    .line 145
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    .line 147
    const/16 v10, 0x1e

    .line 148
    .line 149
    if-lt v6, v10, :cond_7

    .line 150
    .line 151
    invoke-static {v9}, Lw0/f;->e(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eqz v6, :cond_7

    .line 156
    .line 157
    move-object v9, v5

    .line 158
    :cond_7
    if-eqz v9, :cond_9

    .line 159
    .line 160
    const-string v6, "/mnt/appfuse"

    .line 161
    .line 162
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    if-eqz v6, :cond_9

    .line 167
    .line 168
    :cond_8
    move-object v9, v5

    .line 169
    :cond_9
    :goto_3
    const-string v6, "arch"

    .line 170
    .line 171
    const-string v10, "/"

    .line 172
    .line 173
    if-eqz v9, :cond_d

    .line 174
    .line 175
    new-instance v3, Ljava/io/File;

    .line 176
    .line 177
    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    if-eqz v11, :cond_a

    .line 185
    .line 186
    new-instance v2, Lg0/h;

    .line 187
    .line 188
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-direct {v2, v7, v3}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iput-object v2, v0, Lz/w;->b:Lg0/h;

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_a
    const-string v3, "isZA"

    .line 199
    .line 200
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_c

    .line 205
    .line 206
    sget v2, Ls0/b;->d:I

    .line 207
    .line 208
    const/high16 v3, 0x300000

    .line 209
    .line 210
    and-int/2addr v2, v3

    .line 211
    if-eqz v2, :cond_c

    .line 212
    .line 213
    invoke-static {v9}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    iput-object v3, v0, Lz/w;->d:Ljava/lang/String;

    .line 218
    .line 219
    const/high16 v3, 0x200000

    .line 220
    .line 221
    if-ne v2, v3, :cond_b

    .line 222
    .line 223
    move v4, v8

    .line 224
    :cond_b
    iput-boolean v4, v0, Lz/w;->e:Z

    .line 225
    .line 226
    new-instance v2, Lg0/h;

    .line 227
    .line 228
    invoke-static {v9}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-direct {v2, v7, v3}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iput-object v2, v0, Lz/w;->b:Lg0/h;

    .line 236
    .line 237
    :cond_c
    :goto_4
    iget-object v2, v0, Lz/w;->b:Lg0/h;

    .line 238
    .line 239
    if-nez v2, :cond_f

    .line 240
    .line 241
    const-string v2, "//"

    .line 242
    .line 243
    invoke-virtual {v9, v2, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    new-instance v3, Lg0/h;

    .line 248
    .line 249
    invoke-direct {v3, v6, v2, v10}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iput-object v3, v0, Lz/w;->b:Lg0/h;

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_d
    invoke-static {v3}, Lru/zdevs/zarchiver/io/ZAIO;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    if-nez v2, :cond_e

    .line 260
    .line 261
    move-object v3, v5

    .line 262
    goto :goto_5

    .line 263
    :cond_e
    new-instance v3, Lg0/h;

    .line 264
    .line 265
    invoke-direct {v3, v6, v2, v10}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :goto_5
    iput-object v3, v0, Lz/w;->b:Lg0/h;

    .line 269
    .line 270
    :cond_f
    :goto_6
    iget-object v2, v0, Lz/w;->b:Lg0/h;

    .line 271
    .line 272
    if-eqz v2, :cond_10

    .line 273
    .line 274
    return-object v0

    .line 275
    :cond_10
    iget-boolean v2, p0, Lz/n0;->h:Z

    .line 276
    .line 277
    if-eqz v2, :cond_11

    .line 278
    .line 279
    new-instance v2, Lg0/h;

    .line 280
    .line 281
    sget-object v3, Ls0/b;->b:[Ljava/lang/String;

    .line 282
    .line 283
    aget-object v1, v3, v1

    .line 284
    .line 285
    invoke-direct {v2, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iput-object v2, v0, Lz/w;->b:Lg0/h;

    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_11
    return-object v5
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
