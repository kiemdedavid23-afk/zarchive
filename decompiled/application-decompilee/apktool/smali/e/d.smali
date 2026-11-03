.class public final Le/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d$f;,
        Le/d$e;,
        Le/d$c;,
        Le/d$b;,
        Le/d$a;,
        Le/d$d;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public a:Le/d$f;

.field public b:Z

.field public final c:[F

.field public final d:Landroid/graphics/Matrix;

.field public final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Le/d;->c:[F

    .line 3
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/d;->d:Landroid/graphics/Matrix;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le/d;->e:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Le/d$f;

    invoke-direct {v0}, Le/d$f;-><init>()V

    iput-object v0, p0, Le/d;->a:Le/d$f;

    return-void
.end method

.method public constructor <init>(Le/d$f;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 7
    iput-object v0, p0, Le/d;->c:[F

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/d;->d:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Le/d;->e:Landroid/graphics/Rect;

    .line 10
    iput-object p1, p0, Le/d;->a:Le/d$f;

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v0, p0, Le/d;->e:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_c

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-gtz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Le/d;->d:Landroid/graphics/Matrix;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Le/d;->c:[F

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aget v3, v2, v1

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x4

    .line 38
    aget v4, v2, v4

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/4 v5, 0x1

    .line 45
    aget v6, v2, v5

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    const/4 v7, 0x3

    .line 52
    aget v2, v2, v7

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v7, 0x0

    .line 59
    cmpl-float v6, v6, v7

    .line 60
    .line 61
    if-nez v6, :cond_1

    .line 62
    .line 63
    cmpl-float v2, v2, v7

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 68
    .line 69
    move v4, v3

    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    int-to-float v2, v2

    .line 75
    mul-float/2addr v2, v3

    .line 76
    float-to-int v2, v2

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    int-to-float v3, v3

    .line 82
    mul-float/2addr v3, v4

    .line 83
    float-to-int v3, v3

    .line 84
    const/16 v4, 0x800

    .line 85
    .line 86
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-lez v10, :cond_c

    .line 95
    .line 96
    if-gtz v11, :cond_3

    .line 97
    .line 98
    goto/16 :goto_3

    .line 99
    .line 100
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    int-to-float v3, v3

    .line 107
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    int-to-float v4, v4

    .line 110
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Le/d;->a:Le/d$f;

    .line 117
    .line 118
    iget-object v4, v3, Le/d$f;->c:Landroid/graphics/Bitmap;

    .line 119
    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    if-ne v10, v4, :cond_4

    .line 127
    .line 128
    iget-object v4, v3, Le/d$f;->c:Landroid/graphics/Bitmap;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-ne v11, v4, :cond_4

    .line 135
    .line 136
    move v4, v5

    .line 137
    goto :goto_0

    .line 138
    :cond_4
    move v4, v1

    .line 139
    :goto_0
    if-nez v4, :cond_6

    .line 140
    .line 141
    :cond_5
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 142
    .line 143
    invoke-static {v10, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iput-object v4, v3, Le/d$f;->c:Landroid/graphics/Bitmap;

    .line 148
    .line 149
    iput-boolean v5, v3, Le/d$f;->e:Z

    .line 150
    .line 151
    :cond_6
    iget-object v3, p0, Le/d;->a:Le/d$f;

    .line 152
    .line 153
    iget-boolean v4, v3, Le/d$f;->e:Z

    .line 154
    .line 155
    if-nez v4, :cond_7

    .line 156
    .line 157
    iget v4, v3, Le/d$f;->d:I

    .line 158
    .line 159
    iget-object v6, v3, Le/d$f;->b:Le/d$e;

    .line 160
    .line 161
    iget v6, v6, Le/d$e;->l:I

    .line 162
    .line 163
    if-ne v4, v6, :cond_7

    .line 164
    .line 165
    move v4, v5

    .line 166
    goto :goto_1

    .line 167
    :cond_7
    move v4, v1

    .line 168
    :goto_1
    if-nez v4, :cond_8

    .line 169
    .line 170
    iget-object v4, v3, Le/d$f;->c:Landroid/graphics/Bitmap;

    .line 171
    .line 172
    invoke-virtual {v4, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 173
    .line 174
    .line 175
    new-instance v9, Landroid/graphics/Canvas;

    .line 176
    .line 177
    iget-object v4, v3, Le/d$f;->c:Landroid/graphics/Bitmap;

    .line 178
    .line 179
    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 180
    .line 181
    .line 182
    iget-object v6, v3, Le/d$f;->b:Le/d$e;

    .line 183
    .line 184
    iget-object v7, v6, Le/d$e;->g:Le/d$c;

    .line 185
    .line 186
    sget-object v8, Le/d$e;->o:Landroid/graphics/Matrix;

    .line 187
    .line 188
    invoke-virtual/range {v6 .. v11}, Le/d$e;->a(Le/d$c;Landroid/graphics/Matrix;Landroid/graphics/Canvas;II)V

    .line 189
    .line 190
    .line 191
    iget-object v3, p0, Le/d;->a:Le/d$f;

    .line 192
    .line 193
    iget-object v4, v3, Le/d$f;->b:Le/d$e;

    .line 194
    .line 195
    iget v4, v4, Le/d$e;->l:I

    .line 196
    .line 197
    iput v4, v3, Le/d$f;->d:I

    .line 198
    .line 199
    iput-boolean v1, v3, Le/d$f;->e:Z

    .line 200
    .line 201
    :cond_8
    iget-object v3, p0, Le/d;->a:Le/d$f;

    .line 202
    .line 203
    iget-object v4, v3, Le/d$f;->b:Le/d$e;

    .line 204
    .line 205
    iget v4, v4, Le/d$e;->l:I

    .line 206
    .line 207
    const/16 v6, 0xff

    .line 208
    .line 209
    if-ge v4, v6, :cond_9

    .line 210
    .line 211
    move v1, v5

    .line 212
    :cond_9
    const/4 v4, 0x0

    .line 213
    if-nez v1, :cond_a

    .line 214
    .line 215
    move-object v1, v4

    .line 216
    goto :goto_2

    .line 217
    :cond_a
    iget-object v1, v3, Le/d$f;->f:Landroid/graphics/Paint;

    .line 218
    .line 219
    if-nez v1, :cond_b

    .line 220
    .line 221
    new-instance v1, Landroid/graphics/Paint;

    .line 222
    .line 223
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 224
    .line 225
    .line 226
    iput-object v1, v3, Le/d$f;->f:Landroid/graphics/Paint;

    .line 227
    .line 228
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 229
    .line 230
    .line 231
    :cond_b
    iget-object v1, v3, Le/d$f;->f:Landroid/graphics/Paint;

    .line 232
    .line 233
    iget-object v5, v3, Le/d$f;->b:Le/d$e;

    .line 234
    .line 235
    iget v5, v5, Le/d$e;->l:I

    .line 236
    .line 237
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v3, Le/d$f;->f:Landroid/graphics/Paint;

    .line 241
    .line 242
    :goto_2
    iget-object v3, v3, Le/d$f;->c:Landroid/graphics/Bitmap;

    .line 243
    .line 244
    invoke-virtual {p1, v3, v4, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 248
    .line 249
    .line 250
    :cond_c
    :goto_3
    return-void
.end method

.method public final getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/d;->a:Le/d$f;

    .line 2
    .line 3
    iget-object v0, v0, Le/d$f;->b:Le/d$e;

    .line 4
    .line 5
    iget v0, v0, Le/d$e;->l:I

    .line 6
    .line 7
    return v0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Le/d;->a:Le/d$f;

    .line 6
    .line 7
    iget v1, v1, Le/d$f;->a:I

    .line 8
    .line 9
    or-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Le/d;->a:Le/d$f;

    .line 2
    .line 3
    invoke-virtual {p0}, Le/d;->getChangingConfigurations()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iput v1, v0, Le/d$f;->a:I

    .line 8
    .line 9
    iget-object v0, p0, Le/d;->a:Le/d$f;

    .line 10
    .line 11
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Le/d;->a:Le/d$f;

    iget-object v0, v0, Le/d$f;->b:Le/d$e;

    iget v0, v0, Le/d$e;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Le/d;->a:Le/d$f;

    iget-object v0, v0, Le/d$f;->b:Le/d$e;

    iget v0, v0, Le/d$e;->h:F

    float-to-int v0, v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public final isStateful()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/d;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Le/d$f;

    .line 12
    .line 13
    iget-object v1, p0, Le/d;->a:Le/d$f;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Le/d$f;-><init>(Le/d$f;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Le/d;->a:Le/d$f;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Le/d;->b:Z

    .line 22
    .line 23
    :cond_0
    return-object p0
.end method

.method public final onStateChange([I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/d;->a:Le/d$f;

    .line 2
    .line 3
    iget-object v0, v0, Le/d$f;->b:Le/d$e;

    .line 4
    .line 5
    iget v1, v0, Le/d$e;->l:I

    .line 6
    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    iput p1, v0, Le/d$e;->l:I

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    return-void
.end method
