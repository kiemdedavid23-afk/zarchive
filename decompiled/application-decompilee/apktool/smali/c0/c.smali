.class public final Lc0/c;
.super Lc0/h;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc0/c$a;
    }
.end annotation


# static fields
.field public static final t:[Ljava/lang/Object;


# instance fields
.field public final o:I

.field public final p:I

.field public final q:Z

.field public r:Lg0/h;

.field public s:Lc0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Lc0/c;->t:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;Lc0/h;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lc0/h;-><init>(Landroid/content/Context;Lru/zdevs/zarchiver/b;)V

    .line 2
    .line 3
    .line 4
    instance-of p1, p3, Lc0/c;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    check-cast p3, Lc0/c;

    .line 9
    .line 10
    iget-object p1, p3, Lc0/c;->r:Lg0/h;

    .line 11
    .line 12
    iput-object p1, p0, Lc0/c;->r:Lg0/h;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Lg0/h;

    .line 16
    .line 17
    const-string p3, ""

    .line 18
    .line 19
    invoke-direct {p1, p3}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lc0/c;->r:Lg0/h;

    .line 23
    .line 24
    :goto_0
    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lc0/c;->s:Lc0/a;

    .line 26
    .line 27
    iget p1, p2, Lru/zdevs/zarchiver/b;->g:I

    .line 28
    .line 29
    iput p1, p0, Lc0/c;->o:I

    .line 30
    .line 31
    sget p2, Ls0/b;->k:I

    .line 32
    .line 33
    iput p2, p0, Lc0/c;->p:I

    .line 34
    .line 35
    const p3, 0x7f08002d

    .line 36
    .line 37
    .line 38
    if-ne p1, p3, :cond_1

    .line 39
    .line 40
    int-to-float p3, p2

    .line 41
    const v0, 0x3fcccccd    # 1.6f

    .line 42
    .line 43
    .line 44
    mul-float/2addr p3, v0

    .line 45
    float-to-int p3, p3

    .line 46
    iput p3, p0, Lc0/c;->p:I

    .line 47
    .line 48
    :cond_1
    const p3, 0x7f08002c

    .line 49
    .line 50
    .line 51
    if-eq p1, p3, :cond_3

    .line 52
    .line 53
    const p3, 0x7f08002b

    .line 54
    .line 55
    .line 56
    if-ne p1, p3, :cond_2

    .line 57
    .line 58
    sget p1, Ls0/b;->l:I

    .line 59
    .line 60
    int-to-float p1, p1

    .line 61
    const p3, 0x400ccccd    # 2.2f

    .line 62
    .line 63
    .line 64
    mul-float/2addr p1, p3

    .line 65
    float-to-int p1, p1

    .line 66
    add-int/lit8 p1, p1, 0x2

    .line 67
    .line 68
    invoke-static {p1}, Ly0/c;->a(I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-ge p2, p1, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 p1, 0x0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 78
    :goto_2
    iput-boolean p1, p0, Lc0/c;->q:Z

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lc0/c;->o:I

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lc0/c;->o:I

    const v1, 0x7f08002d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getPositionForSection(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lc0/c;->s:Lc0/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, v0, Lc0/a;->a:[Ljava/lang/Integer;

    .line 7
    .line 8
    array-length v2, v0

    .line 9
    if-lt p1, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    aget-object p1, v0, p1

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :cond_2
    :goto_0
    return v1
.end method

.method public final getSectionForPosition(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lc0/c;->s:Lc0/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lc0/c;->s:Lc0/a;

    .line 10
    .line 11
    iget-object v3, v3, Lc0/a;->a:[Ljava/lang/Integer;

    .line 12
    .line 13
    array-length v4, v3

    .line 14
    if-ge v2, v4, :cond_2

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-le v3, p1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v2, v0

    .line 25
    return v2

    .line 26
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc0/c;->s:Lc0/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lc0/c;->t:[Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, v0, Lc0/a;->b:[Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lc0/h;->a(I)Lc0/d;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    const v7, 0x7f08002c

    .line 6
    .line 7
    .line 8
    const v8, 0x7f08002d

    .line 9
    .line 10
    .line 11
    const v9, 0x7f070075

    .line 12
    .line 13
    .line 14
    const/4 v10, 0x0

    .line 15
    if-nez p2, :cond_4

    .line 16
    .line 17
    iget-object p2, p0, Lc0/h;->a:Landroid/view/LayoutInflater;

    .line 18
    .line 19
    iget v0, p0, Lc0/c;->o:I

    .line 20
    .line 21
    invoke-virtual {p2, v0, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance p3, Lc0/c$a;

    .line 26
    .line 27
    iget-boolean v1, p0, Lc0/c;->q:Z

    .line 28
    .line 29
    invoke-direct {p3, p2, v0, v1}, Lc0/c$a;-><init>(Landroid/view/View;IZ)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p3, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget v3, p0, Lc0/c;->p:I

    .line 39
    .line 40
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 41
    .line 42
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    iget-object v3, p3, Lc0/c$a;->b:Landroid/widget/TextView;

    .line 45
    .line 46
    if-eq v0, v8, :cond_3

    .line 47
    .line 48
    sget v4, Ls0/b;->l:I

    .line 49
    .line 50
    int-to-float v4, v4

    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
    .line 53
    .line 54
    if-ne v0, v7, :cond_0

    .line 55
    .line 56
    sget v0, Ls0/b;->k:I

    .line 57
    .line 58
    sget v4, Ls0/b;->l:I

    .line 59
    .line 60
    invoke-static {v4}, Ly0/c;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-int/2addr v0, v4

    .line 65
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    sget v0, Ls0/b;->k:I

    .line 70
    .line 71
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object v0, p3, Lc0/c$a;->e:Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    sget v3, Ls0/b;->l:I

    .line 79
    .line 80
    int-to-float v3, v3

    .line 81
    const v4, 0x3f1eb852    # 0.62f

    .line 82
    .line 83
    .line 84
    mul-float/2addr v3, v4

    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v0, p3, Lc0/c$a;->d:Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    sget v3, Ls0/b;->l:I

    .line 93
    .line 94
    int-to-float v3, v3

    .line 95
    const v4, 0x3f19999a    # 0.6f

    .line 96
    .line 97
    .line 98
    mul-float/2addr v3, v4

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    sget v0, Ls0/b;->l:I

    .line 107
    .line 108
    int-to-float v0, v0

    .line 109
    const v4, 0x3f4ccccd    # 0.8f

    .line 110
    .line 111
    .line 112
    mul-float/2addr v0, v4

    .line 113
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v10}, Landroid/view/View;->setClickable(Z)V

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    check-cast p3, Lc0/c$a;

    .line 131
    .line 132
    iget-object v0, p3, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 139
    .line 140
    .line 141
    const/high16 v0, 0x3f800000    # 1.0f

    .line 142
    .line 143
    iget-object v1, p3, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 146
    .line 147
    .line 148
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1, v9, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :goto_2
    iget-object v0, p0, Lc0/c;->r:Lg0/h;

    .line 156
    .line 157
    invoke-virtual {v6, v0}, Lc0/d;->e(Lg0/h;)I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    iget-object v4, p0, Lc0/c;->r:Lg0/h;

    .line 162
    .line 163
    const/4 v5, 0x1

    .line 164
    move-object v0, p0

    .line 165
    move v1, v11

    .line 166
    move-object v2, v6

    .line 167
    move-object v3, p3

    .line 168
    invoke-virtual/range {v0 .. v5}, Lc0/h;->b(ILc0/d;Lc0/g;Lg0/h;Z)Landroid/graphics/Bitmap;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v2, p3, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 177
    .line 178
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v2, v9, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v6, Lc0/d;->a:Ljava/lang/String;

    .line 189
    .line 190
    iget-object v3, p3, Lc0/c$a;->b:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    const/4 v1, 0x4

    .line 196
    invoke-static {v1}, Ls0/b;->l(I)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_6

    .line 201
    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 208
    .line 209
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 210
    .line 211
    .line 212
    :cond_6
    if-nez v0, :cond_7

    .line 213
    .line 214
    invoke-virtual {v6}, Lc0/d;->d()B

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    invoke-static {v0}, Ly0/b;->a(I)Landroid/graphics/Bitmap;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    iget-byte v3, v6, Lc0/d;->f:B

    .line 227
    .line 228
    invoke-static {v1, v0, v3}, Ly0/b;->c(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_7
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 237
    .line 238
    .line 239
    :goto_4
    iget v0, p3, Lc0/c$a;->f:I

    .line 240
    .line 241
    if-eq v0, v8, :cond_e

    .line 242
    .line 243
    invoke-virtual {v6}, Lc0/d;->h()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    .line 248
    .line 249
    .line 250
    iget-object v1, p3, Lc0/c$a;->d:Landroid/widget/TextView;

    .line 251
    .line 252
    if-eqz v1, :cond_c

    .line 253
    .line 254
    const/16 v2, 0x4000

    .line 255
    .line 256
    invoke-static {v2}, Ls0/b;->g(I)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    invoke-virtual {v6}, Lc0/d;->g()Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_b

    .line 265
    .line 266
    const-wide/16 v3, -0x1

    .line 267
    .line 268
    iget-wide v8, v6, Lc0/d;->c:J

    .line 269
    .line 270
    cmp-long v3, v8, v3

    .line 271
    .line 272
    if-nez v3, :cond_8

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_8
    sget-object v3, Lc0/d;->i:Ljava/text/DateFormat;

    .line 276
    .line 277
    if-eqz v2, :cond_a

    .line 278
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-boolean v3, p3, Lc0/c$a;->g:Z

    .line 296
    .line 297
    if-eqz v3, :cond_9

    .line 298
    .line 299
    const-string v3, " "

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_9
    const-string v3, "\n"

    .line 303
    .line 304
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    sget-object v3, Lc0/d;->j:Ljava/text/DateFormat;

    .line 308
    .line 309
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    goto :goto_7

    .line 325
    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v3, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    goto :goto_7

    .line 334
    :cond_b
    :goto_6
    const-string v2, ""

    .line 335
    .line 336
    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    :cond_c
    iget-object v1, p3, Lc0/c$a;->e:Landroid/widget/TextView;

    .line 340
    .line 341
    if-eqz v1, :cond_e

    .line 342
    .line 343
    if-ne v0, v7, :cond_d

    .line 344
    .line 345
    const/4 v0, 0x1

    .line 346
    goto :goto_8

    .line 347
    :cond_d
    move v0, v10

    .line 348
    :goto_8
    invoke-virtual {v6, v0}, Lc0/d;->c(Z)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    :cond_e
    iget-boolean v0, v6, Lc0/d;->g:Z

    .line 356
    .line 357
    iget-object v1, p3, Lc0/c$a;->e:Landroid/widget/TextView;

    .line 358
    .line 359
    iget-object v2, p3, Lc0/c$a;->d:Landroid/widget/TextView;

    .line 360
    .line 361
    iget-object v3, p3, Lc0/c$a;->a:Landroid/view/View;

    .line 362
    .line 363
    iget-object v4, p3, Lc0/c$a;->b:Landroid/widget/TextView;

    .line 364
    .line 365
    if-eqz v0, :cond_10

    .line 366
    .line 367
    iget v0, p0, Lc0/h;->d:I

    .line 368
    .line 369
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    .line 371
    .line 372
    iget v4, p0, Lc0/h;->e:I

    .line 373
    .line 374
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 375
    .line 376
    .line 377
    if-eqz v2, :cond_f

    .line 378
    .line 379
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    .line 381
    .line 382
    :cond_f
    if-eqz v1, :cond_12

    .line 383
    .line 384
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_10
    iget v0, p0, Lc0/h;->b:I

    .line 389
    .line 390
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 391
    .line 392
    .line 393
    iget v0, p0, Lc0/h;->f:I

    .line 394
    .line 395
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 396
    .line 397
    .line 398
    iget v0, p0, Lc0/h;->c:I

    .line 399
    .line 400
    if-eqz v2, :cond_11

    .line 401
    .line 402
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    .line 404
    .line 405
    :cond_11
    if-eqz v1, :cond_12

    .line 406
    .line 407
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    .line 409
    .line 410
    :cond_12
    :goto_9
    iget v0, p0, Lc0/h;->j:I

    .line 411
    .line 412
    const/high16 v1, 0x400000

    .line 413
    .line 414
    and-int/2addr v0, v1

    .line 415
    iget-object p3, p3, Lc0/c$a;->c:Landroid/widget/ImageView;

    .line 416
    .line 417
    if-eqz v0, :cond_13

    .line 418
    .line 419
    invoke-virtual {v6}, Lc0/d;->g()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-nez v0, :cond_13

    .line 424
    .line 425
    const v0, 0x7f070077

    .line 426
    .line 427
    .line 428
    invoke-virtual {p3, v0, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    const v0, 0x7f070078

    .line 432
    .line 433
    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    .line 436
    .line 437
    move-result-object p1

    .line 438
    invoke-virtual {p3, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 442
    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_13
    const/4 p1, 0x0

    .line 446
    invoke-virtual {p3, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p3, v10}, Landroid/view/View;->setLongClickable(Z)V

    .line 450
    .line 451
    .line 452
    :goto_a
    return-object p2
.end method

.method public final n(II)V
    .locals 10

    .line 1
    invoke-super {p0, p1, p2}, Lc0/h;->n(II)V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_a

    .line 5
    .line 6
    iget-object v0, p0, Lc0/h;->m:Lp0/g;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_0
    iget v0, p0, Lc0/h;->k:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {v0, v1}, Lb/d;->K(II)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    :goto_0
    iget-object v1, p0, Lc0/h;->m:Lp0/g;

    .line 25
    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    iget v1, p0, Lc0/h;->j:I

    .line 29
    .line 30
    if-eqz v1, :cond_6

    .line 31
    .line 32
    add-int/2addr p2, p1

    .line 33
    invoke-virtual {p0}, Lc0/h;->getCount()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-lt p2, v1, :cond_2

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_2
    iget-object p2, p0, Lc0/h;->h:Lc0/b;

    .line 41
    .line 42
    monitor-enter p2

    .line 43
    :try_start_0
    invoke-virtual {p2}, Lc0/b;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lc0/h;->m:Lp0/g;

    .line 48
    .line 49
    iget v2, v2, Lp0/g;->e:I

    .line 50
    .line 51
    div-int/lit8 v2, v2, 0x2

    .line 52
    .line 53
    if-lez v0, :cond_3

    .line 54
    .line 55
    sub-int v3, v1, p1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    move v3, p1

    .line 59
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    .line 67
    .line 68
    :goto_2
    if-ltz p1, :cond_5

    .line 69
    .line 70
    if-ge p1, v1, :cond_5

    .line 71
    .line 72
    if-lez v2, :cond_5

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lc0/b;->b(I)Lc0/d;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lc0/d;->d()B

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iget-byte v6, v4, Lc0/d;->f:B

    .line 83
    .line 84
    iget-wide v7, v4, Lc0/d;->d:J

    .line 85
    .line 86
    invoke-virtual {p0, v5, v6, v7, v8}, Lc0/h;->f(BBJ)Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_4

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v2, v2, -0x1

    .line 96
    .line 97
    :cond_4
    add-int/2addr p1, v0

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    monitor-exit p2

    .line 100
    goto :goto_4

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p1

    .line 104
    :cond_6
    :goto_3
    const/4 v3, 0x0

    .line 105
    :goto_4
    if-eqz v3, :cond_a

    .line 106
    .line 107
    iget-object p1, p0, Lc0/h;->m:Lp0/g;

    .line 108
    .line 109
    iget-object p2, p0, Lc0/c;->r:Lg0/h;

    .line 110
    .line 111
    iget-object v0, p1, Lp0/g;->f:Lp0/g$a;

    .line 112
    .line 113
    if-eqz v0, :cond_a

    .line 114
    .line 115
    iget-boolean v1, p1, Lp0/g;->g:Z

    .line 116
    .line 117
    if-nez v1, :cond_7

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    .line 125
    .line 126
    if-ne v0, v1, :cond_8

    .line 127
    .line 128
    iget-object v0, p1, Lp0/g;->f:Lp0/g$a;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    .line 132
    .line 133
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_9

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    move-object v5, v2

    .line 157
    check-cast v5, Lc0/d;

    .line 158
    .line 159
    new-instance v2, Lp0/g$b;

    .line 160
    .line 161
    const/4 v7, 0x5

    .line 162
    const/4 v8, 0x0

    .line 163
    invoke-virtual {v5, p2}, Lc0/d;->e(Lg0/h;)I

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    move-object v4, v2

    .line 168
    move-object v6, p2

    .line 169
    invoke-direct/range {v4 .. v9}, Lp0/g$b;-><init>(Lc0/d;Lg0/h;ILc0/g;I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    goto :goto_5

    .line 176
    :cond_9
    iget-object p1, p1, Lp0/g;->f:Lp0/g$a;

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Lp0/g$a;->a(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    .line 180
    .line 181
    :catch_0
    :cond_a
    :goto_6
    return-void
.end method
