.class public Landroid/support/constraint/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintLayout$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc/d;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/16 v0, 0x64

    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Landroid/support/constraint/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    new-instance p2, Lc/d;

    .line 21
    .line 22
    invoke-direct {p2}, Lc/d;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->d:Z

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 32
    .line 33
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 34
    .line 35
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->g:I

    .line 36
    .line 37
    iput v0, p0, Landroid/support/constraint/ConstraintLayout;->h:I

    .line 38
    .line 39
    iput-object p0, p2, Lc/c;->E:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(I)Lc/c;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/view/View;

    .line 13
    .line 14
    if-ne p1, p0, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    if-nez p1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/support/constraint/ConstraintLayout$a;

    .line 26
    .line 27
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$a;->S:Lc/c;

    .line 28
    .line 29
    :goto_0
    return-object p1
.end method

.method public final b(Landroid/view/View;)Lc/c;
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/support/constraint/ConstraintLayout$a;

    .line 15
    .line 16
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$a;->S:Lc/c;

    .line 17
    .line 18
    :goto_0
    return-object p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/constraint/ConstraintLayout$a;

    return p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0}, Landroid/support/constraint/ConstraintLayout$a;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroid/support/constraint/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroid/support/constraint/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    :goto_0
    if-ge p2, p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object p4

    .line 16
    check-cast p4, Landroid/support/constraint/ConstraintLayout$a;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    .line 19
    .line 20
    .line 21
    move-result p5

    .line 22
    const/16 v0, 0x8

    .line 23
    .line 24
    if-ne p5, v0, :cond_0

    .line 25
    .line 26
    iget-boolean p5, p4, Landroid/support/constraint/ConstraintLayout$a;->K:Z

    .line 27
    .line 28
    if-nez p5, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p4, p4, Landroid/support/constraint/ConstraintLayout$a;->S:Lc/c;

    .line 32
    .line 33
    iget p5, p4, Lc/c;->t:I

    .line 34
    .line 35
    iget v0, p4, Lc/c;->x:I

    .line 36
    .line 37
    add-int/2addr p5, v0

    .line 38
    iget v0, p4, Lc/c;->u:I

    .line 39
    .line 40
    iget v1, p4, Lc/c;->y:I

    .line 41
    .line 42
    add-int/2addr v0, v1

    .line 43
    invoke-virtual {p4}, Lc/c;->e()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v1, p5

    .line 48
    invoke-virtual {p4}, Lc/c;->d()I

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    add-int/2addr p4, v0

    .line 53
    invoke-virtual {p3, p5, v0, v1, p4}, Landroid/view/View;->layout(IIII)V

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 p2, p2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    iget v5, v0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 16
    .line 17
    const/high16 v7, 0x40000000    # 2.0f

    .line 18
    .line 19
    iget-object v8, v0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    const/4 v10, -0x1

    .line 23
    if-eq v5, v10, :cond_0

    .line 24
    .line 25
    iget v11, v0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 26
    .line 27
    if-eq v11, v10, :cond_0

    .line 28
    .line 29
    iget v12, v0, Landroid/support/constraint/ConstraintLayout;->h:I

    .line 30
    .line 31
    if-eq v12, v10, :cond_0

    .line 32
    .line 33
    iget v13, v0, Landroid/support/constraint/ConstraintLayout;->g:I

    .line 34
    .line 35
    if-eq v13, v10, :cond_0

    .line 36
    .line 37
    if-ne v5, v3, :cond_0

    .line 38
    .line 39
    if-ne v11, v4, :cond_0

    .line 40
    .line 41
    if-ne v13, v1, :cond_0

    .line 42
    .line 43
    if-eq v12, v2, :cond_7

    .line 44
    .line 45
    :cond_0
    iput v3, v8, Lc/c;->r:I

    .line 46
    .line 47
    iput v4, v8, Lc/c;->s:I

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 54
    .line 55
    .line 56
    move-result v11

    .line 57
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 62
    .line 63
    .line 64
    move-result v13

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 66
    .line 67
    .line 68
    move-result v14

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 70
    .line 71
    .line 72
    move-result v15

    .line 73
    add-int/2addr v15, v14

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 79
    .line 80
    .line 81
    move-result v16

    .line 82
    add-int v16, v16, v14

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    const/16 v17, 0x2

    .line 89
    .line 90
    const/high16 v6, -0x80000000

    .line 91
    .line 92
    if-eq v5, v6, :cond_3

    .line 93
    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    if-eq v5, v7, :cond_1

    .line 97
    .line 98
    const/4 v5, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    sub-int v11, v11, v16

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget v11, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    .line 105
    if-lez v11, :cond_3

    .line 106
    .line 107
    :goto_0
    const/4 v5, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    move/from16 v5, v17

    .line 110
    .line 111
    :goto_1
    move v11, v9

    .line 112
    :goto_2
    if-eq v12, v6, :cond_6

    .line 113
    .line 114
    if-eqz v12, :cond_5

    .line 115
    .line 116
    if-eq v12, v7, :cond_4

    .line 117
    .line 118
    move v13, v9

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    sub-int/2addr v13, v15

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    iget v13, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    .line 124
    if-lez v13, :cond_6

    .line 125
    .line 126
    :goto_3
    const/4 v6, 0x1

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    move v13, v9

    .line 129
    move/from16 v6, v17

    .line 130
    .line 131
    :goto_4
    invoke-virtual {v8, v5}, Lc/c;->l(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8, v11}, Lc/c;->p(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v6}, Lc/c;->o(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v13}, Lc/c;->j(I)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-boolean v5, v0, Landroid/support/constraint/ConstraintLayout;->d:Z

    .line 144
    .line 145
    iget-object v6, v0, Landroid/support/constraint/ConstraintLayout;->b:Ljava/util/ArrayList;

    .line 146
    .line 147
    if-eqz v5, :cond_30

    .line 148
    .line 149
    iput-boolean v9, v0, Landroid/support/constraint/ConstraintLayout;->d:Z

    .line 150
    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    move v11, v9

    .line 156
    :goto_5
    if-ge v11, v5, :cond_9

    .line 157
    .line 158
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-virtual {v12}, Landroid/view/View;->isLayoutRequested()Z

    .line 163
    .line 164
    .line 165
    move-result v12

    .line 166
    if-eqz v12, :cond_8

    .line 167
    .line 168
    const/4 v5, 0x1

    .line 169
    goto :goto_6

    .line 170
    :cond_8
    add-int/lit8 v11, v11, 0x1

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_9
    move v5, v9

    .line 174
    :goto_6
    if-eqz v5, :cond_2f

    .line 175
    .line 176
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    move v11, v9

    .line 184
    :goto_7
    if-ge v11, v5, :cond_2f

    .line 185
    .line 186
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v12

    .line 190
    invoke-virtual {v0, v12}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/view/View;)Lc/c;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    if-nez v13, :cond_a

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    .line 199
    .line 200
    move-result-object v14

    .line 201
    check-cast v14, Landroid/support/constraint/ConstraintLayout$a;

    .line 202
    .line 203
    invoke-virtual {v13}, Lc/c;->g()V

    .line 204
    .line 205
    .line 206
    iput-object v8, v13, Lc/c;->m:Lc/c;

    .line 207
    .line 208
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    iput v15, v13, Lc/c;->F:I

    .line 213
    .line 214
    iput-object v12, v13, Lc/c;->E:Ljava/lang/Object;

    .line 215
    .line 216
    iget-boolean v12, v14, Landroid/support/constraint/ConstraintLayout$a;->I:Z

    .line 217
    .line 218
    if-eqz v12, :cond_b

    .line 219
    .line 220
    iget-boolean v12, v14, Landroid/support/constraint/ConstraintLayout$a;->H:Z

    .line 221
    .line 222
    if-nez v12, :cond_c

    .line 223
    .line 224
    :cond_b
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :cond_c
    iget-boolean v12, v14, Landroid/support/constraint/ConstraintLayout$a;->K:Z

    .line 228
    .line 229
    if-eqz v12, :cond_10

    .line 230
    .line 231
    check-cast v13, Lc/e;

    .line 232
    .line 233
    const/high16 v12, -0x40800000    # -1.0f

    .line 234
    .line 235
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$a;->a:I

    .line 236
    .line 237
    if-eq v15, v10, :cond_d

    .line 238
    .line 239
    if-le v15, v10, :cond_d

    .line 240
    .line 241
    iput v12, v13, Lc/e;->M:F

    .line 242
    .line 243
    iput v15, v13, Lc/e;->N:I

    .line 244
    .line 245
    iput v10, v13, Lc/e;->O:I

    .line 246
    .line 247
    :cond_d
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$a;->b:I

    .line 248
    .line 249
    if-eq v15, v10, :cond_e

    .line 250
    .line 251
    if-le v15, v10, :cond_e

    .line 252
    .line 253
    iput v12, v13, Lc/e;->M:F

    .line 254
    .line 255
    iput v10, v13, Lc/e;->N:I

    .line 256
    .line 257
    iput v15, v13, Lc/e;->O:I

    .line 258
    .line 259
    :cond_e
    iget v14, v14, Landroid/support/constraint/ConstraintLayout$a;->c:F

    .line 260
    .line 261
    cmpl-float v12, v14, v12

    .line 262
    .line 263
    if-eqz v12, :cond_f

    .line 264
    .line 265
    if-lez v12, :cond_f

    .line 266
    .line 267
    iput v14, v13, Lc/e;->M:F

    .line 268
    .line 269
    iput v10, v13, Lc/e;->N:I

    .line 270
    .line 271
    iput v10, v13, Lc/e;->O:I

    .line 272
    .line 273
    :cond_f
    :goto_8
    move/from16 v26, v4

    .line 274
    .line 275
    move/from16 v24, v5

    .line 276
    .line 277
    move-object/from16 v25, v6

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_10
    iget v12, v14, Landroid/support/constraint/ConstraintLayout$a;->L:I

    .line 281
    .line 282
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$a;->E:I

    .line 283
    .line 284
    iget v7, v14, Landroid/support/constraint/ConstraintLayout$a;->k:I

    .line 285
    .line 286
    iget v9, v14, Landroid/support/constraint/ConstraintLayout$a;->j:I

    .line 287
    .line 288
    iget v10, v14, Landroid/support/constraint/ConstraintLayout$a;->i:I

    .line 289
    .line 290
    move/from16 v24, v5

    .line 291
    .line 292
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$a;->h:I

    .line 293
    .line 294
    move-object/from16 v25, v6

    .line 295
    .line 296
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->F:I

    .line 297
    .line 298
    iget v2, v14, Landroid/support/constraint/ConstraintLayout$a;->l:I

    .line 299
    .line 300
    const/4 v1, -0x1

    .line 301
    move/from16 v26, v4

    .line 302
    .line 303
    if-ne v12, v1, :cond_12

    .line 304
    .line 305
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 306
    .line 307
    if-ne v4, v1, :cond_12

    .line 308
    .line 309
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$a;->N:I

    .line 310
    .line 311
    if-ne v4, v1, :cond_12

    .line 312
    .line 313
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$a;->O:I

    .line 314
    .line 315
    if-ne v4, v1, :cond_12

    .line 316
    .line 317
    if-ne v5, v1, :cond_12

    .line 318
    .line 319
    if-ne v10, v1, :cond_12

    .line 320
    .line 321
    if-ne v9, v1, :cond_12

    .line 322
    .line 323
    if-ne v7, v1, :cond_12

    .line 324
    .line 325
    if-ne v2, v1, :cond_12

    .line 326
    .line 327
    if-ne v15, v1, :cond_12

    .line 328
    .line 329
    if-eq v6, v1, :cond_11

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_11
    :goto_9
    move/from16 v27, v3

    .line 333
    .line 334
    move-object/from16 v33, v8

    .line 335
    .line 336
    move/from16 v28, v11

    .line 337
    .line 338
    goto/16 :goto_16

    .line 339
    .line 340
    :cond_12
    :goto_a
    iget v1, v14, Landroid/support/constraint/ConstraintLayout$a;->M:I

    .line 341
    .line 342
    iget v4, v14, Landroid/support/constraint/ConstraintLayout$a;->N:I

    .line 343
    .line 344
    move/from16 v27, v3

    .line 345
    .line 346
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$a;->O:I

    .line 347
    .line 348
    move/from16 v28, v11

    .line 349
    .line 350
    iget v11, v14, Landroid/support/constraint/ConstraintLayout$a;->P:I

    .line 351
    .line 352
    move/from16 v29, v6

    .line 353
    .line 354
    iget v6, v14, Landroid/support/constraint/ConstraintLayout$a;->Q:I

    .line 355
    .line 356
    move/from16 v30, v15

    .line 357
    .line 358
    iget v15, v14, Landroid/support/constraint/ConstraintLayout$a;->R:F

    .line 359
    .line 360
    sget-object v31, Lc/b$a;->c:Lc/b$a;

    .line 361
    .line 362
    sget-object v32, Lc/b$a;->a:Lc/b$a;

    .line 363
    .line 364
    move-object/from16 v33, v8

    .line 365
    .line 366
    const/4 v8, -0x1

    .line 367
    if-eq v12, v8, :cond_14

    .line 368
    .line 369
    invoke-virtual {v0, v12}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 370
    .line 371
    .line 372
    move-result-object v20

    .line 373
    if-eqz v20, :cond_13

    .line 374
    .line 375
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 376
    .line 377
    move-object/from16 v18, v13

    .line 378
    .line 379
    move-object/from16 v19, v32

    .line 380
    .line 381
    move-object/from16 v21, v32

    .line 382
    .line 383
    move/from16 v22, v1

    .line 384
    .line 385
    move/from16 v23, v11

    .line 386
    .line 387
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 388
    .line 389
    .line 390
    :cond_13
    :goto_b
    const/4 v1, -0x1

    .line 391
    goto :goto_c

    .line 392
    :cond_14
    if-eq v1, v8, :cond_15

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 395
    .line 396
    .line 397
    move-result-object v20

    .line 398
    if-eqz v20, :cond_13

    .line 399
    .line 400
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 401
    .line 402
    move-object/from16 v18, v13

    .line 403
    .line 404
    move-object/from16 v19, v32

    .line 405
    .line 406
    move-object/from16 v21, v31

    .line 407
    .line 408
    move/from16 v22, v1

    .line 409
    .line 410
    move/from16 v23, v11

    .line 411
    .line 412
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 413
    .line 414
    .line 415
    goto :goto_b

    .line 416
    :cond_15
    move v1, v8

    .line 417
    :goto_c
    if-eq v4, v1, :cond_16

    .line 418
    .line 419
    invoke-virtual {v0, v4}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 420
    .line 421
    .line 422
    move-result-object v20

    .line 423
    if-eqz v20, :cond_17

    .line 424
    .line 425
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 426
    .line 427
    move-object/from16 v18, v13

    .line 428
    .line 429
    move-object/from16 v19, v31

    .line 430
    .line 431
    move-object/from16 v21, v32

    .line 432
    .line 433
    move/from16 v22, v1

    .line 434
    .line 435
    move/from16 v23, v6

    .line 436
    .line 437
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 438
    .line 439
    .line 440
    goto :goto_d

    .line 441
    :cond_16
    if-eq v3, v1, :cond_17

    .line 442
    .line 443
    invoke-virtual {v0, v3}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 444
    .line 445
    .line 446
    move-result-object v20

    .line 447
    if-eqz v20, :cond_17

    .line 448
    .line 449
    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 450
    .line 451
    move-object/from16 v18, v13

    .line 452
    .line 453
    move-object/from16 v19, v31

    .line 454
    .line 455
    move-object/from16 v21, v31

    .line 456
    .line 457
    move/from16 v22, v1

    .line 458
    .line 459
    move/from16 v23, v6

    .line 460
    .line 461
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 462
    .line 463
    .line 464
    :cond_17
    :goto_d
    sget-object v1, Lc/b$a;->d:Lc/b$a;

    .line 465
    .line 466
    sget-object v3, Lc/b$a;->b:Lc/b$a;

    .line 467
    .line 468
    const/4 v4, -0x1

    .line 469
    if-eq v5, v4, :cond_18

    .line 470
    .line 471
    invoke-virtual {v0, v5}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 472
    .line 473
    .line 474
    move-result-object v20

    .line 475
    if-eqz v20, :cond_19

    .line 476
    .line 477
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 478
    .line 479
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 480
    .line 481
    move-object/from16 v18, v13

    .line 482
    .line 483
    move-object/from16 v19, v3

    .line 484
    .line 485
    move-object/from16 v21, v3

    .line 486
    .line 487
    move/from16 v22, v4

    .line 488
    .line 489
    move/from16 v23, v5

    .line 490
    .line 491
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 492
    .line 493
    .line 494
    goto :goto_e

    .line 495
    :cond_18
    if-eq v10, v4, :cond_1a

    .line 496
    .line 497
    invoke-virtual {v0, v10}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 498
    .line 499
    .line 500
    move-result-object v20

    .line 501
    if-eqz v20, :cond_19

    .line 502
    .line 503
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 504
    .line 505
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$a;->r:I

    .line 506
    .line 507
    move-object/from16 v18, v13

    .line 508
    .line 509
    move-object/from16 v19, v3

    .line 510
    .line 511
    move-object/from16 v21, v1

    .line 512
    .line 513
    move/from16 v22, v4

    .line 514
    .line 515
    move/from16 v23, v5

    .line 516
    .line 517
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 518
    .line 519
    .line 520
    :cond_19
    :goto_e
    const/4 v4, -0x1

    .line 521
    :cond_1a
    if-eq v9, v4, :cond_1b

    .line 522
    .line 523
    invoke-virtual {v0, v9}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 524
    .line 525
    .line 526
    move-result-object v20

    .line 527
    if-eqz v20, :cond_1c

    .line 528
    .line 529
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 530
    .line 531
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 532
    .line 533
    move-object/from16 v18, v13

    .line 534
    .line 535
    move-object/from16 v19, v1

    .line 536
    .line 537
    move-object/from16 v21, v3

    .line 538
    .line 539
    move/from16 v22, v4

    .line 540
    .line 541
    move/from16 v23, v5

    .line 542
    .line 543
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 544
    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_1b
    if-eq v7, v4, :cond_1d

    .line 548
    .line 549
    invoke-virtual {v0, v7}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 550
    .line 551
    .line 552
    move-result-object v20

    .line 553
    if-eqz v20, :cond_1c

    .line 554
    .line 555
    iget v4, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 556
    .line 557
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$a;->t:I

    .line 558
    .line 559
    move-object/from16 v18, v13

    .line 560
    .line 561
    move-object/from16 v19, v1

    .line 562
    .line 563
    move-object/from16 v21, v1

    .line 564
    .line 565
    move/from16 v22, v4

    .line 566
    .line 567
    move/from16 v23, v5

    .line 568
    .line 569
    invoke-virtual/range {v18 .. v23}, Lc/c;->f(Lc/b$a;Lc/c;Lc/b$a;II)V

    .line 570
    .line 571
    .line 572
    :cond_1c
    :goto_f
    const/4 v4, -0x1

    .line 573
    :cond_1d
    if-eq v2, v4, :cond_1e

    .line 574
    .line 575
    iget-object v4, v0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 576
    .line 577
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    check-cast v4, Landroid/view/View;

    .line 582
    .line 583
    invoke-virtual {v0, v2}, Landroid/support/constraint/ConstraintLayout;->a(I)Lc/c;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    if-eqz v2, :cond_1e

    .line 588
    .line 589
    if-eqz v4, :cond_1e

    .line 590
    .line 591
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    instance-of v5, v5, Landroid/support/constraint/ConstraintLayout$a;

    .line 596
    .line 597
    if-eqz v5, :cond_1e

    .line 598
    .line 599
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    check-cast v4, Landroid/support/constraint/ConstraintLayout$a;

    .line 604
    .line 605
    const/4 v5, 0x1

    .line 606
    iput-boolean v5, v14, Landroid/support/constraint/ConstraintLayout$a;->J:Z

    .line 607
    .line 608
    iput-boolean v5, v4, Landroid/support/constraint/ConstraintLayout$a;->J:Z

    .line 609
    .line 610
    sget-object v4, Lc/b$a;->e:Lc/b$a;

    .line 611
    .line 612
    invoke-virtual {v13, v4}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    invoke-virtual {v2, v4}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 617
    .line 618
    .line 619
    move-result-object v6

    .line 620
    const/4 v7, 0x0

    .line 621
    const/4 v8, -0x1

    .line 622
    const/4 v9, 0x2

    .line 623
    const/4 v10, 0x0

    .line 624
    const/4 v11, 0x1

    .line 625
    invoke-virtual/range {v5 .. v11}, Lc/b;->a(Lc/b;IIIIZ)Z

    .line 626
    .line 627
    .line 628
    invoke-virtual {v13, v3}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v2}, Lc/b;->c()V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v13, v1}, Lc/c;->c(Lc/b$a;)Lc/b;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    invoke-virtual {v1}, Lc/b;->c()V

    .line 640
    .line 641
    .line 642
    :cond_1e
    const/4 v1, 0x0

    .line 643
    cmpl-float v2, v15, v1

    .line 644
    .line 645
    const/high16 v3, 0x3f000000    # 0.5f

    .line 646
    .line 647
    if-ltz v2, :cond_1f

    .line 648
    .line 649
    cmpl-float v2, v15, v3

    .line 650
    .line 651
    if-eqz v2, :cond_1f

    .line 652
    .line 653
    iput v15, v13, Lc/c;->A:F

    .line 654
    .line 655
    :cond_1f
    iget v2, v14, Landroid/support/constraint/ConstraintLayout$a;->x:F

    .line 656
    .line 657
    cmpl-float v4, v2, v1

    .line 658
    .line 659
    if-ltz v4, :cond_20

    .line 660
    .line 661
    cmpl-float v3, v2, v3

    .line 662
    .line 663
    if-eqz v3, :cond_20

    .line 664
    .line 665
    iput v2, v13, Lc/c;->B:F

    .line 666
    .line 667
    :cond_20
    iget-boolean v2, v14, Landroid/support/constraint/ConstraintLayout$a;->H:Z

    .line 668
    .line 669
    const/4 v3, 0x3

    .line 670
    if-nez v2, :cond_21

    .line 671
    .line 672
    invoke-virtual {v13, v3}, Lc/c;->l(I)V

    .line 673
    .line 674
    .line 675
    const/4 v2, 0x0

    .line 676
    invoke-virtual {v13, v2}, Lc/c;->p(I)V

    .line 677
    .line 678
    .line 679
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 680
    .line 681
    const/4 v4, -0x1

    .line 682
    if-ne v2, v4, :cond_22

    .line 683
    .line 684
    invoke-virtual/range {v33 .. v33}, Lc/c;->e()I

    .line 685
    .line 686
    .line 687
    move-result v2

    .line 688
    invoke-virtual {v13, v2}, Lc/c;->p(I)V

    .line 689
    .line 690
    .line 691
    goto :goto_10

    .line 692
    :cond_21
    const/4 v2, 0x1

    .line 693
    invoke-virtual {v13, v2}, Lc/c;->l(I)V

    .line 694
    .line 695
    .line 696
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 697
    .line 698
    invoke-virtual {v13, v2}, Lc/c;->p(I)V

    .line 699
    .line 700
    .line 701
    :cond_22
    :goto_10
    iget-boolean v2, v14, Landroid/support/constraint/ConstraintLayout$a;->I:Z

    .line 702
    .line 703
    if-nez v2, :cond_23

    .line 704
    .line 705
    invoke-virtual {v13, v3}, Lc/c;->o(I)V

    .line 706
    .line 707
    .line 708
    const/4 v2, 0x0

    .line 709
    invoke-virtual {v13, v2}, Lc/c;->j(I)V

    .line 710
    .line 711
    .line 712
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 713
    .line 714
    const/4 v3, -0x1

    .line 715
    if-ne v2, v3, :cond_24

    .line 716
    .line 717
    invoke-virtual/range {v33 .. v33}, Lc/c;->d()I

    .line 718
    .line 719
    .line 720
    move-result v2

    .line 721
    invoke-virtual {v13, v2}, Lc/c;->p(I)V

    .line 722
    .line 723
    .line 724
    goto :goto_11

    .line 725
    :cond_23
    const/4 v2, 0x1

    .line 726
    invoke-virtual {v13, v2}, Lc/c;->o(I)V

    .line 727
    .line 728
    .line 729
    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 730
    .line 731
    invoke-virtual {v13, v2}, Lc/c;->j(I)V

    .line 732
    .line 733
    .line 734
    :cond_24
    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 735
    .line 736
    .line 737
    move-result v2

    .line 738
    if-eqz v2, :cond_26

    .line 739
    .line 740
    move/from16 v3, v30

    .line 741
    .line 742
    const/4 v2, -0x1

    .line 743
    move/from16 v4, v29

    .line 744
    .line 745
    if-ne v3, v2, :cond_25

    .line 746
    .line 747
    if-eq v4, v2, :cond_26

    .line 748
    .line 749
    :cond_25
    iput v3, v13, Lc/c;->r:I

    .line 750
    .line 751
    iput v4, v13, Lc/c;->s:I

    .line 752
    .line 753
    :cond_26
    iget-object v2, v14, Landroid/support/constraint/ConstraintLayout$a;->y:Ljava/lang/String;

    .line 754
    .line 755
    if-eqz v2, :cond_2e

    .line 756
    .line 757
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 758
    .line 759
    .line 760
    move-result v3

    .line 761
    if-nez v3, :cond_27

    .line 762
    .line 763
    iput v1, v13, Lc/c;->p:F

    .line 764
    .line 765
    goto/16 :goto_15

    .line 766
    .line 767
    :cond_27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    const/16 v4, 0x2c

    .line 772
    .line 773
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    if-lez v4, :cond_2a

    .line 778
    .line 779
    add-int/lit8 v5, v3, -0x1

    .line 780
    .line 781
    if-ge v4, v5, :cond_2a

    .line 782
    .line 783
    const/4 v5, 0x0

    .line 784
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v6

    .line 788
    const-string v5, "W"

    .line 789
    .line 790
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 791
    .line 792
    .line 793
    move-result v5

    .line 794
    if-eqz v5, :cond_28

    .line 795
    .line 796
    const/4 v5, 0x0

    .line 797
    goto :goto_12

    .line 798
    :cond_28
    const-string v5, "H"

    .line 799
    .line 800
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    if-eqz v5, :cond_29

    .line 805
    .line 806
    const/4 v5, 0x1

    .line 807
    goto :goto_12

    .line 808
    :cond_29
    const/4 v5, -0x1

    .line 809
    :goto_12
    add-int/lit8 v4, v4, 0x1

    .line 810
    .line 811
    goto :goto_13

    .line 812
    :cond_2a
    const/4 v4, 0x0

    .line 813
    const/4 v5, -0x1

    .line 814
    :goto_13
    const/16 v6, 0x3a

    .line 815
    .line 816
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    .line 817
    .line 818
    .line 819
    move-result v6

    .line 820
    if-ltz v6, :cond_2c

    .line 821
    .line 822
    add-int/lit8 v3, v3, -0x1

    .line 823
    .line 824
    if-ge v6, v3, :cond_2c

    .line 825
    .line 826
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v3

    .line 830
    add-int/lit8 v6, v6, 0x1

    .line 831
    .line 832
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    if-lez v4, :cond_2d

    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 843
    .line 844
    .line 845
    move-result v4

    .line 846
    if-lez v4, :cond_2d

    .line 847
    .line 848
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    cmpl-float v4, v3, v1

    .line 857
    .line 858
    if-lez v4, :cond_2d

    .line 859
    .line 860
    cmpl-float v4, v2, v1

    .line 861
    .line 862
    if-lez v4, :cond_2d

    .line 863
    .line 864
    const/4 v4, 0x1

    .line 865
    if-ne v5, v4, :cond_2b

    .line 866
    .line 867
    div-float/2addr v2, v3

    .line 868
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 869
    .line 870
    .line 871
    move-result v2

    .line 872
    goto :goto_14

    .line 873
    :cond_2b
    div-float/2addr v3, v2

    .line 874
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 875
    .line 876
    .line 877
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    goto :goto_14

    .line 879
    :cond_2c
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 884
    .line 885
    .line 886
    move-result v3

    .line 887
    if-lez v3, :cond_2d

    .line 888
    .line 889
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 890
    .line 891
    .line 892
    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 893
    goto :goto_14

    .line 894
    :catch_0
    :cond_2d
    move v2, v1

    .line 895
    :goto_14
    cmpl-float v1, v2, v1

    .line 896
    .line 897
    if-lez v1, :cond_2e

    .line 898
    .line 899
    iput v2, v13, Lc/c;->p:F

    .line 900
    .line 901
    iput v5, v13, Lc/c;->q:I

    .line 902
    .line 903
    :cond_2e
    :goto_15
    iget v1, v14, Landroid/support/constraint/ConstraintLayout$a;->A:F

    .line 904
    .line 905
    iput v1, v13, Lc/c;->K:F

    .line 906
    .line 907
    iget v1, v14, Landroid/support/constraint/ConstraintLayout$a;->B:F

    .line 908
    .line 909
    iput v1, v13, Lc/c;->L:F

    .line 910
    .line 911
    iget v1, v14, Landroid/support/constraint/ConstraintLayout$a;->C:I

    .line 912
    .line 913
    iput v1, v13, Lc/c;->G:I

    .line 914
    .line 915
    iget v1, v14, Landroid/support/constraint/ConstraintLayout$a;->D:I

    .line 916
    .line 917
    iput v1, v13, Lc/c;->H:I

    .line 918
    .line 919
    :goto_16
    add-int/lit8 v11, v28, 0x1

    .line 920
    .line 921
    move/from16 v1, p1

    .line 922
    .line 923
    move/from16 v2, p2

    .line 924
    .line 925
    move/from16 v5, v24

    .line 926
    .line 927
    move-object/from16 v6, v25

    .line 928
    .line 929
    move/from16 v4, v26

    .line 930
    .line 931
    move/from16 v3, v27

    .line 932
    .line 933
    move-object/from16 v8, v33

    .line 934
    .line 935
    const/high16 v7, 0x40000000    # 2.0f

    .line 936
    .line 937
    const/4 v9, 0x0

    .line 938
    const/4 v10, -0x1

    .line 939
    goto/16 :goto_7

    .line 940
    .line 941
    :cond_2f
    move/from16 v27, v3

    .line 942
    .line 943
    move/from16 v26, v4

    .line 944
    .line 945
    move-object/from16 v25, v6

    .line 946
    .line 947
    move-object/from16 v33, v8

    .line 948
    .line 949
    move/from16 v1, v27

    .line 950
    .line 951
    goto :goto_17

    .line 952
    :cond_30
    move/from16 v26, v4

    .line 953
    .line 954
    move-object/from16 v25, v6

    .line 955
    .line 956
    move-object/from16 v33, v8

    .line 957
    .line 958
    move v1, v3

    .line 959
    :goto_17
    iput v1, v0, Landroid/support/constraint/ConstraintLayout;->e:I

    .line 960
    .line 961
    move/from16 v2, v26

    .line 962
    .line 963
    iput v2, v0, Landroid/support/constraint/ConstraintLayout;->f:I

    .line 964
    .line 965
    move/from16 v3, p1

    .line 966
    .line 967
    iput v3, v0, Landroid/support/constraint/ConstraintLayout;->g:I

    .line 968
    .line 969
    move/from16 v4, p2

    .line 970
    .line 971
    iput v4, v0, Landroid/support/constraint/ConstraintLayout;->h:I

    .line 972
    .line 973
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 974
    .line 975
    .line 976
    move-result v5

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 978
    .line 979
    .line 980
    move-result v6

    .line 981
    add-int/2addr v6, v5

    .line 982
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 983
    .line 984
    .line 985
    move-result v5

    .line 986
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 987
    .line 988
    .line 989
    move-result v7

    .line 990
    add-int/2addr v7, v5

    .line 991
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 992
    .line 993
    .line 994
    move-result v5

    .line 995
    const/4 v8, 0x0

    .line 996
    :goto_18
    const/16 v9, 0x8

    .line 997
    .line 998
    const/4 v10, -0x2

    .line 999
    if-ge v8, v5, :cond_38

    .line 1000
    .line 1001
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v11

    .line 1005
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 1006
    .line 1007
    .line 1008
    move-result v12

    .line 1009
    if-ne v12, v9, :cond_31

    .line 1010
    .line 1011
    goto :goto_1b

    .line 1012
    :cond_31
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v9

    .line 1016
    check-cast v9, Landroid/support/constraint/ConstraintLayout$a;

    .line 1017
    .line 1018
    iget-object v12, v9, Landroid/support/constraint/ConstraintLayout$a;->S:Lc/c;

    .line 1019
    .line 1020
    iget-boolean v13, v9, Landroid/support/constraint/ConstraintLayout$a;->K:Z

    .line 1021
    .line 1022
    if-eqz v13, :cond_32

    .line 1023
    .line 1024
    goto :goto_1b

    .line 1025
    :cond_32
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1026
    .line 1027
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1028
    .line 1029
    iget-boolean v15, v9, Landroid/support/constraint/ConstraintLayout$a;->H:Z

    .line 1030
    .line 1031
    if-nez v15, :cond_33

    .line 1032
    .line 1033
    iget-boolean v15, v9, Landroid/support/constraint/ConstraintLayout$a;->I:Z

    .line 1034
    .line 1035
    if-eqz v15, :cond_36

    .line 1036
    .line 1037
    :cond_33
    if-nez v13, :cond_34

    .line 1038
    .line 1039
    invoke-static {v3, v7, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1040
    .line 1041
    .line 1042
    move-result v13

    .line 1043
    goto :goto_19

    .line 1044
    :cond_34
    invoke-static {v3, v7, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1045
    .line 1046
    .line 1047
    move-result v13

    .line 1048
    :goto_19
    if-nez v14, :cond_35

    .line 1049
    .line 1050
    invoke-static {v4, v6, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1051
    .line 1052
    .line 1053
    move-result v10

    .line 1054
    goto :goto_1a

    .line 1055
    :cond_35
    invoke-static {v4, v6, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1056
    .line 1057
    .line 1058
    move-result v10

    .line 1059
    :goto_1a
    invoke-virtual {v11, v13, v10}, Landroid/view/View;->measure(II)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 1063
    .line 1064
    .line 1065
    move-result v13

    .line 1066
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 1067
    .line 1068
    .line 1069
    move-result v14

    .line 1070
    :cond_36
    invoke-virtual {v12, v13}, Lc/c;->p(I)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v12, v14}, Lc/c;->j(I)V

    .line 1074
    .line 1075
    .line 1076
    iget-boolean v9, v9, Landroid/support/constraint/ConstraintLayout$a;->J:Z

    .line 1077
    .line 1078
    if-eqz v9, :cond_37

    .line 1079
    .line 1080
    invoke-virtual {v11}, Landroid/view/View;->getBaseline()I

    .line 1081
    .line 1082
    .line 1083
    move-result v9

    .line 1084
    const/4 v10, -0x1

    .line 1085
    if-eq v9, v10, :cond_37

    .line 1086
    .line 1087
    iput v9, v12, Lc/c;->z:I

    .line 1088
    .line 1089
    :cond_37
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    .line 1090
    .line 1091
    goto :goto_18

    .line 1092
    :cond_38
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1093
    .line 1094
    .line 1095
    move-result v5

    .line 1096
    if-lez v5, :cond_39

    .line 1097
    .line 1098
    const/4 v5, 0x0

    .line 1099
    sput-boolean v5, Lc/a;->g:Z

    .line 1100
    .line 1101
    move-object/from16 v6, v33

    .line 1102
    .line 1103
    const/4 v5, 0x1

    .line 1104
    iput-boolean v5, v6, Lc/d;->U:Z

    .line 1105
    .line 1106
    invoke-virtual {v6}, Lc/d;->s()V

    .line 1107
    .line 1108
    .line 1109
    goto :goto_1c

    .line 1110
    :cond_39
    move-object/from16 v6, v33

    .line 1111
    .line 1112
    :goto_1c
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    .line 1113
    .line 1114
    .line 1115
    move-result v5

    .line 1116
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 1117
    .line 1118
    .line 1119
    move-result v7

    .line 1120
    add-int/2addr v7, v2

    .line 1121
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    add-int/2addr v2, v1

    .line 1126
    if-lez v5, :cond_45

    .line 1127
    .line 1128
    const/4 v1, 0x0

    .line 1129
    const/4 v8, 0x0

    .line 1130
    const/4 v11, 0x0

    .line 1131
    :goto_1d
    if-ge v1, v5, :cond_43

    .line 1132
    .line 1133
    move-object/from16 v12, v25

    .line 1134
    .line 1135
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1136
    .line 1137
    .line 1138
    move-result-object v13

    .line 1139
    check-cast v13, Lc/c;

    .line 1140
    .line 1141
    instance-of v14, v13, Lc/e;

    .line 1142
    .line 1143
    if-eqz v14, :cond_3a

    .line 1144
    .line 1145
    goto :goto_1e

    .line 1146
    :cond_3a
    iget-object v14, v13, Lc/c;->E:Ljava/lang/Object;

    .line 1147
    .line 1148
    check-cast v14, Landroid/view/View;

    .line 1149
    .line 1150
    if-nez v14, :cond_3b

    .line 1151
    .line 1152
    goto :goto_1e

    .line 1153
    :cond_3b
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 1154
    .line 1155
    .line 1156
    move-result v15

    .line 1157
    if-ne v15, v9, :cond_3c

    .line 1158
    .line 1159
    :goto_1e
    move/from16 v19, v5

    .line 1160
    .line 1161
    const/4 v10, -0x1

    .line 1162
    goto/16 :goto_23

    .line 1163
    .line 1164
    :cond_3c
    invoke-virtual {v13}, Lc/c;->e()I

    .line 1165
    .line 1166
    .line 1167
    move-result v15

    .line 1168
    const/high16 v9, 0x40000000    # 2.0f

    .line 1169
    .line 1170
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1171
    .line 1172
    .line 1173
    move-result v15

    .line 1174
    invoke-virtual {v13}, Lc/c;->d()I

    .line 1175
    .line 1176
    .line 1177
    move-result v10

    .line 1178
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 1179
    .line 1180
    .line 1181
    move-result v10

    .line 1182
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v19

    .line 1186
    move-object/from16 v9, v19

    .line 1187
    .line 1188
    check-cast v9, Landroid/support/constraint/ConstraintLayout$a;

    .line 1189
    .line 1190
    move/from16 v19, v5

    .line 1191
    .line 1192
    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1193
    .line 1194
    move/from16 v21, v10

    .line 1195
    .line 1196
    const/4 v10, -0x2

    .line 1197
    if-ne v5, v10, :cond_3d

    .line 1198
    .line 1199
    invoke-static {v3, v2, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1200
    .line 1201
    .line 1202
    move-result v15

    .line 1203
    goto :goto_1f

    .line 1204
    :cond_3d
    iget v5, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1205
    .line 1206
    if-ne v5, v10, :cond_3e

    .line 1207
    .line 1208
    invoke-static {v4, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 1209
    .line 1210
    .line 1211
    move-result v5

    .line 1212
    goto :goto_20

    .line 1213
    :cond_3e
    :goto_1f
    move/from16 v5, v21

    .line 1214
    .line 1215
    :goto_20
    invoke-virtual {v14, v15, v5}, Landroid/view/View;->measure(II)V

    .line 1216
    .line 1217
    .line 1218
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 1219
    .line 1220
    .line 1221
    move-result v5

    .line 1222
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 1223
    .line 1224
    .line 1225
    move-result v15

    .line 1226
    invoke-virtual {v13}, Lc/c;->e()I

    .line 1227
    .line 1228
    .line 1229
    move-result v10

    .line 1230
    if-eq v5, v10, :cond_3f

    .line 1231
    .line 1232
    invoke-virtual {v13, v5}, Lc/c;->p(I)V

    .line 1233
    .line 1234
    .line 1235
    const/4 v5, 0x1

    .line 1236
    goto :goto_21

    .line 1237
    :cond_3f
    move v5, v11

    .line 1238
    :goto_21
    invoke-virtual {v13}, Lc/c;->d()I

    .line 1239
    .line 1240
    .line 1241
    move-result v10

    .line 1242
    if-eq v15, v10, :cond_40

    .line 1243
    .line 1244
    invoke-virtual {v13, v15}, Lc/c;->j(I)V

    .line 1245
    .line 1246
    .line 1247
    const/4 v5, 0x1

    .line 1248
    :cond_40
    iget-boolean v9, v9, Landroid/support/constraint/ConstraintLayout$a;->J:Z

    .line 1249
    .line 1250
    if-eqz v9, :cond_41

    .line 1251
    .line 1252
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    .line 1253
    .line 1254
    .line 1255
    move-result v9

    .line 1256
    const/4 v10, -0x1

    .line 1257
    if-eq v9, v10, :cond_42

    .line 1258
    .line 1259
    iget v11, v13, Lc/c;->z:I

    .line 1260
    .line 1261
    if-eq v9, v11, :cond_42

    .line 1262
    .line 1263
    iput v9, v13, Lc/c;->z:I

    .line 1264
    .line 1265
    const/4 v5, 0x1

    .line 1266
    goto :goto_22

    .line 1267
    :cond_41
    const/4 v10, -0x1

    .line 1268
    :cond_42
    :goto_22
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    .line 1269
    .line 1270
    .line 1271
    move-result v9

    .line 1272
    invoke-static {v8, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 1273
    .line 1274
    .line 1275
    move-result v8

    .line 1276
    move v11, v5

    .line 1277
    :goto_23
    add-int/lit8 v1, v1, 0x1

    .line 1278
    .line 1279
    move-object/from16 v25, v12

    .line 1280
    .line 1281
    move/from16 v5, v19

    .line 1282
    .line 1283
    const/16 v9, 0x8

    .line 1284
    .line 1285
    const/4 v10, -0x2

    .line 1286
    goto/16 :goto_1d

    .line 1287
    .line 1288
    :cond_43
    if-eqz v11, :cond_44

    .line 1289
    .line 1290
    const/4 v1, 0x0

    .line 1291
    sput-boolean v1, Lc/a;->g:Z

    .line 1292
    .line 1293
    const/4 v1, 0x1

    .line 1294
    iput-boolean v1, v6, Lc/d;->U:Z

    .line 1295
    .line 1296
    invoke-virtual {v6}, Lc/d;->s()V

    .line 1297
    .line 1298
    .line 1299
    :cond_44
    move v9, v8

    .line 1300
    goto :goto_24

    .line 1301
    :cond_45
    const/4 v1, 0x0

    .line 1302
    move v9, v1

    .line 1303
    :goto_24
    invoke-virtual {v6}, Lc/c;->e()I

    .line 1304
    .line 1305
    .line 1306
    move-result v1

    .line 1307
    add-int/2addr v1, v2

    .line 1308
    invoke-virtual {v6}, Lc/c;->d()I

    .line 1309
    .line 1310
    .line 1311
    move-result v2

    .line 1312
    add-int/2addr v2, v7

    .line 1313
    invoke-static {v1, v3, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1314
    .line 1315
    .line 1316
    move-result v1

    .line 1317
    shl-int/lit8 v3, v9, 0x10

    .line 1318
    .line 1319
    invoke-static {v2, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    const v3, 0xffffff

    .line 1324
    .line 1325
    .line 1326
    and-int/2addr v1, v3

    .line 1327
    and-int/2addr v2, v3

    .line 1328
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1329
    .line 1330
    .line 1331
    return-void
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/view/View;)Lc/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, La/a;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    instance-of v1, v0, Lc/e;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/support/constraint/ConstraintLayout$a;

    .line 22
    .line 23
    new-instance v1, Lc/e;

    .line 24
    .line 25
    invoke-direct {v1}, Lc/e;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Landroid/support/constraint/ConstraintLayout$a;->S:Lc/c;

    .line 29
    .line 30
    iput-boolean v2, v0, Landroid/support/constraint/ConstraintLayout$a;->K:Z

    .line 31
    .line 32
    iget v3, v0, Landroid/support/constraint/ConstraintLayout$a;->G:I

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Lc/e;->s(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Landroid/support/constraint/ConstraintLayout$a;->S:Lc/c;

    .line 38
    .line 39
    :cond_0
    iput-object p1, v0, Lc/c;->E:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v1, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    .line 51
    .line 52
    iget-object v1, p1, Lc/g;->M:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lc/c;->m:Lc/c;

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    check-cast v1, Lc/g;

    .line 62
    .line 63
    iget-object v1, v1, Lc/g;->M:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    iput-object v1, v0, Lc/c;->m:Lc/c;

    .line 70
    .line 71
    :cond_1
    iput-object p1, v0, Lc/c;->m:Lc/c;

    .line 72
    .line 73
    iput-boolean v2, p0, Landroid/support/constraint/ConstraintLayout;->d:Z

    .line 74
    .line 75
    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->a:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintLayout;->b(Landroid/view/View;)Lc/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    .line 18
    .line 19
    iget-object v0, v0, Lc/g;->M:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p1, Lc/c;->m:Lc/c;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroid/support/constraint/ConstraintLayout;->d:Z

    .line 29
    .line 30
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/support/constraint/ConstraintLayout;->d:Z

    .line 6
    .line 7
    return-void
.end method

.method public setDebugDirectResolution(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout;->c:Lc/d;

    iput-boolean p1, v0, Lc/d;->U:Z

    return-void
.end method
