.class public final Ly0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Landroid/widget/PopupWindow;

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILjava/lang/String;II)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ly0/d;->a:Landroid/view/View;

    .line 5
    .line 6
    iput p3, p0, Ly0/d;->b:I

    .line 7
    .line 8
    iput p5, p0, Ly0/d;->c:I

    .line 9
    .line 10
    iput p6, p0, Ly0/d;->d:I

    .line 11
    .line 12
    new-instance p2, Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Ly0/d;->e:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    .line 21
    .line 22
    const p5, 0x7f030009

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p5}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result p5

    .line 29
    const/16 p6, 0x8

    .line 30
    .line 31
    invoke-static {p6}, Ly0/c;->a(I)I

    .line 32
    .line 33
    .line 34
    move-result p6

    .line 35
    instance-of v0, p1, Landroid/app/Activity;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    check-cast v0, Landroid/app/Activity;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Landroid/content/ContextWrapper;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    instance-of v1, v0, Landroid/app/Activity;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    check-cast v0, Landroid/app/Activity;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_0
    const v1, 0x7fffffff

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 68
    .line 69
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 81
    .line 82
    .line 83
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 84
    .line 85
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    move v0, v1

    .line 89
    move v2, v0

    .line 90
    :goto_1
    new-instance v3, Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const v4, 0x1030046

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p6, p6, p6, p6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    .line 103
    .line 104
    invoke-static {p5}, Ly0/c;->e(I)I

    .line 105
    .line 106
    .line 107
    move-result p6

    .line 108
    invoke-virtual {v3, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    sget-object p6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 112
    .line 113
    invoke-virtual {v3, p6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, p5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .line 118
    .line 119
    if-ne v2, v1, :cond_3

    .line 120
    .line 121
    if-eq v0, v1, :cond_4

    .line 122
    .line 123
    :cond_3
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result p6

    .line 127
    mul-int/lit8 p6, p6, 0x2

    .line 128
    .line 129
    div-int/lit8 p6, p6, 0x3

    .line 130
    .line 131
    invoke-virtual {v3, p6}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 132
    .line 133
    .line 134
    :cond_4
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    new-instance p4, Landroid/widget/ImageView;

    .line 138
    .line 139
    invoke-direct {p4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 143
    .line 144
    sget-object p6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 145
    .line 146
    invoke-direct {p1, p5, p6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 150
    .line 151
    .line 152
    const p1, 0x7f060096

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    .line 157
    .line 158
    const/16 p1, 0x30

    .line 159
    .line 160
    const/4 p5, 0x1

    .line 161
    const/4 p6, -0x2

    .line 162
    if-eq p3, p1, :cond_6

    .line 163
    .line 164
    const/16 p1, 0x50

    .line 165
    .line 166
    if-ne p3, p1, :cond_5

    .line 167
    .line 168
    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    .line 170
    .line 171
    const/high16 p1, 0x43340000    # 180.0f

    .line 172
    .line 173
    invoke-virtual {p4, p1}, Landroid/view/View;->setRotation(F)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    .line 178
    invoke-direct {p1, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    .line 183
    .line 184
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .line 186
    invoke-direct {p1, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    .line 194
    .line 195
    const-string p2, "Unsupported gravity"

    .line 196
    .line 197
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p1

    .line 201
    :cond_6
    invoke-virtual {p2, p5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    .line 206
    invoke-direct {p1, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .line 214
    invoke-direct {p1, p6, p6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .line 219
    .line 220
    :goto_2
    new-instance p1, Landroid/widget/PopupWindow;

    .line 221
    .line 222
    const/4 p3, -0x1

    .line 223
    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 224
    .line 225
    .line 226
    iput-object p1, p0, Ly0/d;->f:Landroid/widget/PopupWindow;

    .line 227
    .line 228
    invoke-virtual {p1, p5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 229
    .line 230
    .line 231
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/d;->f:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ly0/d;->e:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iget v1, p0, Ly0/d;->g:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Ly0/d;->h:F

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v1, 0x12c

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v1, Ly0/d$a;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Ly0/d$a;-><init>(Ly0/d;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final onPreDraw()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ly0/d;->e:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    instance-of v3, v2, Landroid/app/Activity;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    check-cast v2, Landroid/app/Activity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    check-cast v2, Landroid/content/ContextWrapper;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    instance-of v3, v2, Landroid/app/Activity;

    .line 34
    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    check-cast v2, Landroid/app/Activity;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    :goto_0
    const/4 v3, 0x0

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 59
    .line 60
    .line 61
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    new-array v5, v4, [I

    .line 65
    .line 66
    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 67
    .line 68
    .line 69
    new-array v6, v4, [I

    .line 70
    .line 71
    iget-object v7, v0, Ly0/d;->a:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 74
    .line 75
    .line 76
    const/4 v8, 0x1

    .line 77
    aget v9, v6, v8

    .line 78
    .line 79
    aget v10, v5, v8

    .line 80
    .line 81
    sub-int/2addr v9, v10

    .line 82
    aget v6, v6, v3

    .line 83
    .line 84
    aget v5, v5, v3

    .line 85
    .line 86
    sub-int/2addr v6, v5

    .line 87
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    const/4 v10, 0x3

    .line 96
    const/16 v11, 0x50

    .line 97
    .line 98
    iget v12, v0, Ly0/d;->b:I

    .line 99
    .line 100
    if-eq v12, v10, :cond_4

    .line 101
    .line 102
    if-ne v12, v11, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    check-cast v10, Landroid/widget/TextView;

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Landroid/widget/TextView;

    .line 125
    .line 126
    move-object/from16 v17, v10

    .line 127
    .line 128
    move-object v10, v8

    .line 129
    move-object/from16 v8, v17

    .line 130
    .line 131
    :goto_2
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    const/16 v16, 0x14

    .line 148
    .line 149
    invoke-static/range {v16 .. v16}, Ly0/c;->a(I)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    const/16 v4, 0x30

    .line 154
    .line 155
    if-eq v12, v4, :cond_5

    .line 156
    .line 157
    if-ne v12, v11, :cond_9

    .line 158
    .line 159
    :cond_5
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    add-int/2addr v10, v15

    .line 164
    iget v13, v0, Ly0/d;->d:I

    .line 165
    .line 166
    if-ne v12, v4, :cond_6

    .line 167
    .line 168
    sub-int v7, v9, v10

    .line 169
    .line 170
    add-int/2addr v7, v13

    .line 171
    goto :goto_3

    .line 172
    :cond_6
    add-int/2addr v7, v9

    .line 173
    sub-int/2addr v7, v13

    .line 174
    :goto_3
    const/4 v10, 0x2

    .line 175
    div-int/2addr v5, v10

    .line 176
    add-int/2addr v5, v6

    .line 177
    div-int/lit8 v6, v11, 0x2

    .line 178
    .line 179
    sub-int v6, v5, v6

    .line 180
    .line 181
    add-int v10, v6, v11

    .line 182
    .line 183
    if-le v10, v2, :cond_7

    .line 184
    .line 185
    sub-int/2addr v2, v11

    .line 186
    mul-int/lit8 v6, v3, 0x2

    .line 187
    .line 188
    sub-int v6, v2, v6

    .line 189
    .line 190
    :cond_7
    const/4 v2, 0x0

    .line 191
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    add-int/2addr v6, v3

    .line 196
    invoke-virtual {v1, v6, v7, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 204
    .line 205
    sub-int v3, v5, v6

    .line 206
    .line 207
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    const/4 v10, 0x2

    .line 212
    div-int/2addr v6, v10

    .line 213
    sub-int/2addr v3, v6

    .line 214
    iget v6, v0, Ly0/d;->c:I

    .line 215
    .line 216
    sub-int/2addr v3, v6

    .line 217
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 218
    .line 219
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    int-to-float v2, v5

    .line 223
    iput v2, v0, Ly0/d;->g:F

    .line 224
    .line 225
    if-ne v12, v4, :cond_8

    .line 226
    .line 227
    int-to-float v2, v9

    .line 228
    goto :goto_4

    .line 229
    :cond_8
    int-to-float v2, v7

    .line 230
    :goto_4
    iput v2, v0, Ly0/d;->h:F

    .line 231
    .line 232
    :cond_9
    const/4 v2, 0x0

    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 234
    .line 235
    .line 236
    iget v3, v0, Ly0/d;->g:F

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 239
    .line 240
    .line 241
    iget v3, v0, Ly0/d;->h:F

    .line 242
    .line 243
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const-wide/16 v2, 0x12c

    .line 257
    .line 258
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const/high16 v2, 0x3f800000    # 1.0f

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 273
    .line 274
    .line 275
    const/4 v1, 0x0

    .line 276
    return v1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Ly0/d;->a()V

    const/4 p1, 0x0

    return p1
.end method
