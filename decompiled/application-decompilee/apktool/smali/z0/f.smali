.class public final Lz0/f;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz0/f$a;
    }
.end annotation


# instance fields
.field public final a:Lz0/f$a;

.field public final b:Lz0/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILz0/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lz0/f;->a:Lz0/f$a;

    .line 5
    .line 6
    iget-object p1, p3, Lz0/f$a;->h:Lz0/g;

    .line 7
    .line 8
    iput-object p1, p0, Lz0/f;->b:Lz0/g;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/WindowManager;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/graphics/Point;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 20
    .line 21
    .line 22
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 23
    .line 24
    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 25
    .line 26
    if-lt v0, v2, :cond_1

    .line 27
    .line 28
    instance-of v0, p0, Landroid/app/Activity;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    check-cast p0, Landroid/app/Activity;

    .line 33
    .line 34
    invoke-static {p0}, Ly0/e;->a(Landroid/app/Activity;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget p0, v1, Landroid/graphics/Point;->y:I

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 45
    :goto_1
    return p0
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/f;->b:Lz0/g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    check-cast v0, Lf0/v;

    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Lf0/v;->s(Lz0/f;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lz0/f;->a:Lz0/f$a;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v1, v0, Lz0/f$a;->a:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_a

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget v5, v0, Lz0/f$a;->e:I

    .line 22
    .line 23
    or-int/lit8 v5, v5, 0x50

    .line 24
    .line 25
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26
    .line 27
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 28
    .line 29
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    .line 31
    iget-boolean v5, v0, Lz0/f$a;->f:Z

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 36
    .line 37
    const/high16 v6, 0x8000000

    .line 38
    .line 39
    or-int/2addr v5, v6

    .line 40
    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 41
    .line 42
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "BottomSheet"

    .line 47
    .line 48
    const-string v4, "Window came back as null, unable to set defaults"

    .line 49
    .line 50
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iput-boolean v3, v0, Lz0/f$a;->f:Z

    .line 54
    .line 55
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    iget-boolean p1, v0, Lz0/f$a;->b:Z

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 61
    .line 62
    .line 63
    iget-boolean p1, v0, Lz0/f$a;->b:Z

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget v1, v0, Lz0/f$a;->d:I

    .line 73
    .line 74
    if-gtz v1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const v4, 0x7f050009

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    :cond_2
    if-gtz v1, :cond_3

    .line 88
    .line 89
    invoke-static {p1}, Lz0/f;->a(Landroid/content/Context;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    :cond_3
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 94
    .line 95
    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lz0/f$a;->a:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {p0, v1, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, v0, Lz0/f$a;->a:Landroid/view/View;

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v1, Lz0/a;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lz0/a;-><init>(Lz0/f;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    .line 116
    .line 117
    iget-boolean p1, v0, Lz0/f$a;->b:Z

    .line 118
    .line 119
    if-eqz p1, :cond_4

    .line 120
    .line 121
    const p1, 0x7f07008e

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v1, Lz0/b;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lz0/b;-><init>(Lz0/f;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    const p1, 0x7f0700af

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 144
    .line 145
    iget v1, v0, Lz0/f$a;->c:I

    .line 146
    .line 147
    if-lez v1, :cond_5

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setAnchorOffset(I)V

    .line 150
    .line 151
    .line 152
    :cond_5
    new-instance v1, Lz0/c;

    .line 153
    .line 154
    invoke-direct {v1, p0}, Lz0/c;-><init>(Lz0/f;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;)V

    .line 158
    .line 159
    .line 160
    iget-boolean v1, v0, Lz0/f$a;->f:Z

    .line 161
    .line 162
    if-eqz v1, :cond_6

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    new-instance v2, Lz0/d;

    .line 173
    .line 174
    invoke-direct {v2, p0, p1}, Lz0/d;-><init>(Lz0/f;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    iget-boolean v0, v0, Lz0/f$a;->g:Z

    .line 181
    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    const v0, 0x7f0700ae

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const/high16 v1, 0x41400000    # 12.0f

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 194
    .line 195
    .line 196
    :cond_7
    const v0, 0x102000a

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    if-eqz v0, :cond_8

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    .line 206
    .line 207
    .line 208
    :cond_8
    new-instance v0, Lz0/e;

    .line 209
    .line 210
    invoke-direct {v0, p0, p1}, Lz0/e;-><init>(Lz0/f;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lz0/f;->b:Lz0/g;

    .line 217
    .line 218
    if-eqz p1, :cond_9

    .line 219
    .line 220
    check-cast p1, Lf0/v;

    .line 221
    .line 222
    invoke-virtual {p1, p0, v3}, Lf0/v;->s(Lz0/f;I)V

    .line 223
    .line 224
    .line 225
    :cond_9
    return-void

    .line 226
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 227
    .line 228
    const-string v0, "Unable to create BottomSheet, missing params"

    .line 229
    .line 230
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lz0/f;->dismiss()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz0/f;->a:Lz0/f$a;

    .line 5
    .line 6
    iget-boolean v0, v0, Lz0/f$a;->g:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
