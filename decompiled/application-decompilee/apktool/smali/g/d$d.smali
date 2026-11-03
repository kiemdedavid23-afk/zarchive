.class public final Lg/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:F

.field public final b:Landroid/graphics/PointF;

.field public final c:Landroid/graphics/PointF;

.field public d:J

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public final synthetic i:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;FLandroid/graphics/PointF;)V
    .locals 2

    .line 11
    iput-object p1, p0, Lg/d$d;->i:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 12
    iput-wide v0, p0, Lg/d$d;->d:J

    const/4 p1, 0x2

    .line 13
    iput p1, p0, Lg/d$d;->e:I

    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lg/d$d;->f:I

    .line 15
    iput-boolean p1, p0, Lg/d$d;->g:Z

    .line 16
    iput-boolean p1, p0, Lg/d$d;->h:Z

    .line 17
    iput p2, p0, Lg/d$d;->a:F

    .line 18
    iput-object p3, p0, Lg/d$d;->b:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lg/d$d;->c:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lg/d;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .line 20
    iput-object p1, p0, Lg/d$d;->i:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 21
    iput-wide v0, p0, Lg/d$d;->d:J

    const/4 p1, 0x2

    .line 22
    iput p1, p0, Lg/d$d;->e:I

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lg/d$d;->f:I

    .line 24
    iput-boolean p1, p0, Lg/d$d;->g:Z

    .line 25
    iput-boolean p1, p0, Lg/d$d;->h:Z

    .line 26
    iput p2, p0, Lg/d$d;->a:F

    .line 27
    iput-object p3, p0, Lg/d$d;->b:Landroid/graphics/PointF;

    .line 28
    iput-object p4, p0, Lg/d$d;->c:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lg/d;Landroid/graphics/PointF;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lg/d$d;->i:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 2
    iput-wide v0, p0, Lg/d$d;->d:J

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lg/d$d;->e:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lg/d$d;->f:I

    .line 5
    iput-boolean v0, p0, Lg/d$d;->g:Z

    .line 6
    iput-boolean v0, p0, Lg/d$d;->h:Z

    .line 7
    iget p1, p1, Lg/d;->w:F

    .line 8
    iput p1, p0, Lg/d$d;->a:F

    .line 9
    iput-object p2, p0, Lg/d$d;->b:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lg/d$d;->c:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lg/d$d;->i:Lg/d;

    .line 2
    .line 3
    iget-object v1, v0, Lg/d;->c0:Lg/d$c;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sub-int/2addr v2, v3

    .line 23
    div-int/lit8 v2, v2, 0x2

    .line 24
    .line 25
    add-int/2addr v2, v1

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v3, v4

    .line 44
    div-int/lit8 v3, v3, 0x2

    .line 45
    .line 46
    add-int/2addr v3, v1

    .line 47
    invoke-virtual {v0}, Lg/d;->p()F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iget v4, p0, Lg/d$d;->a:F

    .line 52
    .line 53
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    iget v4, v0, Lg/d;->h:F

    .line 58
    .line 59
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-boolean v4, p0, Lg/d$d;->h:Z

    .line 64
    .line 65
    iget-object v5, p0, Lg/d$d;->b:Landroid/graphics/PointF;

    .line 66
    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    iget v4, v5, Landroid/graphics/PointF;->x:F

    .line 70
    .line 71
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 72
    .line 73
    new-instance v6, Landroid/graphics/PointF;

    .line 74
    .line 75
    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4, v5, v1}, Lg/d;->A(FFF)Landroid/graphics/PointF;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    sub-int/2addr v7, v8

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    sub-int/2addr v7, v8

    .line 100
    div-int/lit8 v7, v7, 0x2

    .line 101
    .line 102
    add-int/2addr v7, v5

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    sub-int/2addr v8, v9

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    sub-int/2addr v8, v9

    .line 121
    div-int/lit8 v8, v8, 0x2

    .line 122
    .line 123
    add-int/2addr v8, v5

    .line 124
    int-to-float v5, v7

    .line 125
    iget v7, v4, Landroid/graphics/PointF;->x:F

    .line 126
    .line 127
    sub-float/2addr v5, v7

    .line 128
    div-float/2addr v5, v1

    .line 129
    int-to-float v7, v8

    .line 130
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 131
    .line 132
    sub-float/2addr v7, v4

    .line 133
    div-float/2addr v7, v1

    .line 134
    invoke-virtual {v6, v5, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 135
    .line 136
    .line 137
    move-object v5, v6

    .line 138
    :cond_0
    new-instance v4, Lg/d$c;

    .line 139
    .line 140
    invoke-direct {v4}, Lg/d$c;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v4, v0, Lg/d;->c0:Lg/d$c;

    .line 144
    .line 145
    iget v6, v0, Lg/d;->w:F

    .line 146
    .line 147
    iput v6, v4, Lg/d$c;->a:F

    .line 148
    .line 149
    iput v1, v4, Lg/d$c;->b:F

    .line 150
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    iput-wide v6, v4, Lg/d$c;->k:J

    .line 156
    .line 157
    iget-object v4, v0, Lg/d;->c0:Lg/d$c;

    .line 158
    .line 159
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object v4, v0, Lg/d;->c0:Lg/d$c;

    .line 163
    .line 164
    invoke-virtual {v0}, Lg/d;->getCenter()Landroid/graphics/PointF;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    iput-object v6, v4, Lg/d$c;->c:Landroid/graphics/PointF;

    .line 169
    .line 170
    iget-object v4, v0, Lg/d;->c0:Lg/d$c;

    .line 171
    .line 172
    iput-object v5, v4, Lg/d$c;->d:Landroid/graphics/PointF;

    .line 173
    .line 174
    iget v6, v5, Landroid/graphics/PointF;->x:F

    .line 175
    .line 176
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 177
    .line 178
    new-instance v7, Landroid/graphics/PointF;

    .line 179
    .line 180
    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    .line 181
    .line 182
    .line 183
    iget-object v8, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 184
    .line 185
    if-nez v8, :cond_1

    .line 186
    .line 187
    const/4 v7, 0x0

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v0, v6}, Lg/d;->y(F)F

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual {v0, v5}, Lg/d;->z(F)F

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    invoke-virtual {v7, v6, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 198
    .line 199
    .line 200
    :goto_0
    iput-object v7, v4, Lg/d$c;->e:Landroid/graphics/PointF;

    .line 201
    .line 202
    iget-object v4, v0, Lg/d;->c0:Lg/d$c;

    .line 203
    .line 204
    new-instance v5, Landroid/graphics/PointF;

    .line 205
    .line 206
    int-to-float v2, v2

    .line 207
    int-to-float v3, v3

    .line 208
    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 209
    .line 210
    .line 211
    iput-object v5, v4, Lg/d$c;->f:Landroid/graphics/PointF;

    .line 212
    .line 213
    iget-object v2, v0, Lg/d;->c0:Lg/d$c;

    .line 214
    .line 215
    iget-wide v3, p0, Lg/d$d;->d:J

    .line 216
    .line 217
    iput-wide v3, v2, Lg/d$c;->g:J

    .line 218
    .line 219
    iget-boolean v3, p0, Lg/d$d;->g:Z

    .line 220
    .line 221
    iput-boolean v3, v2, Lg/d$c;->h:Z

    .line 222
    .line 223
    iget v3, p0, Lg/d$d;->e:I

    .line 224
    .line 225
    iput v3, v2, Lg/d$c;->i:I

    .line 226
    .line 227
    iget v3, p0, Lg/d$d;->f:I

    .line 228
    .line 229
    iput v3, v2, Lg/d$c;->j:I

    .line 230
    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v3

    .line 235
    iput-wide v3, v2, Lg/d$c;->k:J

    .line 236
    .line 237
    iget-object v2, v0, Lg/d;->c0:Lg/d$c;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    iget-object v2, p0, Lg/d$d;->c:Landroid/graphics/PointF;

    .line 243
    .line 244
    if-eqz v2, :cond_2

    .line 245
    .line 246
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 247
    .line 248
    iget-object v4, v0, Lg/d;->c0:Lg/d$c;

    .line 249
    .line 250
    iget-object v4, v4, Lg/d$c;->c:Landroid/graphics/PointF;

    .line 251
    .line 252
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 253
    .line 254
    mul-float/2addr v5, v1

    .line 255
    sub-float/2addr v3, v5

    .line 256
    iget v5, v2, Landroid/graphics/PointF;->y:F

    .line 257
    .line 258
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 259
    .line 260
    mul-float/2addr v4, v1

    .line 261
    sub-float/2addr v5, v4

    .line 262
    new-instance v4, Lg/d$i;

    .line 263
    .line 264
    new-instance v6, Landroid/graphics/PointF;

    .line 265
    .line 266
    invoke-direct {v6, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 267
    .line 268
    .line 269
    invoke-direct {v4, v1, v6}, Lg/d$i;-><init>(FLandroid/graphics/PointF;)V

    .line 270
    .line 271
    .line 272
    const/4 v1, 0x1

    .line 273
    invoke-virtual {v0, v1, v4}, Lg/d;->l(ZLg/d$i;)V

    .line 274
    .line 275
    .line 276
    iget-object v1, v0, Lg/d;->c0:Lg/d$c;

    .line 277
    .line 278
    new-instance v4, Landroid/graphics/PointF;

    .line 279
    .line 280
    iget v7, v2, Landroid/graphics/PointF;->x:F

    .line 281
    .line 282
    iget v8, v6, Landroid/graphics/PointF;->x:F

    .line 283
    .line 284
    sub-float/2addr v8, v3

    .line 285
    add-float/2addr v8, v7

    .line 286
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 287
    .line 288
    iget v3, v6, Landroid/graphics/PointF;->y:F

    .line 289
    .line 290
    sub-float/2addr v3, v5

    .line 291
    add-float/2addr v3, v2

    .line 292
    invoke-direct {v4, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 293
    .line 294
    .line 295
    iput-object v4, v1, Lg/d$c;->f:Landroid/graphics/PointF;

    .line 296
    .line 297
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 298
    .line 299
    .line 300
    return-void
.end method
