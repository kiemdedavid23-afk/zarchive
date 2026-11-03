.class public final Lf0/v;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Lz0/g;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/v$a;
    }
.end annotation


# static fields
.field public static m:I


# instance fields
.field public g:Landroid/app/Dialog;

.field public h:Landroid/widget/PopupWindow;

.field public final i:I

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 3
    iput p4, p0, Lf0/v;->i:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf0/v;->j:I

    .line 5
    iput v0, p0, Lf0/v;->k:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 6
    invoke-virtual/range {v1 .. v6}, Lf0/v;->r(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/graphics/Point;)V

    .line 7
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/graphics/Point;)V
    .locals 6

    .line 8
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 9
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 10
    iput p5, p0, Lf0/v;->i:I

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lf0/v;->j:I

    .line 12
    iput p1, p0, Lf0/v;->k:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 13
    invoke-virtual/range {v0 .. v5}, Lf0/v;->r(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/graphics/Point;)V

    .line 14
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    .line 18
    .line 19
    :catch_1
    iput-object v1, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final k()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget v1, p0, Lf0/v;->k:I

    .line 6
    .line 7
    if-gez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lf0/v;->d()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 27
    .line 28
    const/16 v2, 0x50

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    iget v1, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 34
    .line 35
    const/4 v4, 0x3

    .line 36
    if-ge v1, v4, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget v1, p0, Lf0/v;->k:I

    .line 40
    .line 41
    or-int/2addr v1, v2

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    iget v1, p0, Lf0/v;->i:I

    .line 50
    .line 51
    invoke-static {v1, v3}, Lb/d;->K(II)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_5

    .line 56
    .line 57
    return-void

    .line 58
    :cond_5
    iget-object v1, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 59
    .line 60
    const v2, 0x7f0700af

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    if-eqz v2, :cond_6

    .line 74
    .line 75
    invoke-static {p1}, Lz0/f;->a(Landroid/content/Context;)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 80
    .line 81
    :cond_6
    invoke-static {p1}, Lu0/b;->c(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_9

    .line 86
    .line 87
    iget-object v2, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 88
    .line 89
    const v4, 0x7f0700ae

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p1, v3, p2}, Ly0/e;->b(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    const/4 v3, 0x0

    .line 101
    const/high16 v4, 0x8000000

    .line 102
    .line 103
    if-eqz p2, :cond_8

    .line 104
    .line 105
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const-string v0, "dimen"

    .line 113
    .line 114
    const-string v4, "android"

    .line 115
    .line 116
    const-string v5, "navigation_bar_height"

    .line 117
    .line 118
    invoke-virtual {p2, v5, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-lez p2, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    move p1, v3

    .line 134
    :goto_2
    invoke-virtual {v2, v3, v3, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_8
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    :catch_0
    :cond_9
    :goto_3
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lf0/v;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    long-to-int p1, p4

    .line 5
    iput p1, p0, Lf0/v;->j:I

    .line 6
    .line 7
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 12
    .line 13
    .line 14
    :cond_1
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 16
    .line 17
    invoke-virtual {p0}, Lf0/v;->d()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final r(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ILandroid/graphics/Point;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p4, v0}, Lb/d;->K(II)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_13

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-static {p4, v1}, Lb/d;->K(II)Z

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    const/16 v4, 0x600

    .line 16
    .line 17
    const-string v5, "window"

    .line 18
    .line 19
    if-eqz p4, :cond_6

    .line 20
    .line 21
    if-eqz p5, :cond_6

    .line 22
    .line 23
    new-instance p3, Landroid/widget/ListView;

    .line 24
    .line 25
    invoke-direct {p3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    const/4 v2, -0x2

    .line 32
    invoke-direct {p4, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    new-instance p4, Lf0/v$a;

    .line 39
    .line 40
    invoke-direct {p4, p0, p1, p2}, Lf0/v$a;-><init>(Lf0/v;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {p3}, Ly0/e;->j(Landroid/widget/AbsListView;)V

    .line 53
    .line 54
    .line 55
    new-instance p2, Landroid/widget/PopupWindow;

    .line 56
    .line 57
    const/16 p4, 0x120

    .line 58
    .line 59
    invoke-static {p4}, Ly0/c;->a(I)I

    .line 60
    .line 61
    .line 62
    move-result p4

    .line 63
    invoke-direct {p2, p3, p4, v2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 72
    .line 73
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 77
    .line 78
    const p3, 0x7f060007

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v4}, Ls0/b;->k(I)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_0

    .line 93
    .line 94
    iget-object p2, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 95
    .line 96
    const/high16 p3, 0x41000000    # 8.0f

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object p2, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 102
    .line 103
    const/16 p3, 0x3ea

    .line 104
    .line 105
    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 109
    .line 110
    new-instance p3, Lf0/t;

    .line 111
    .line 112
    invoke-direct {p3, p0}, Lf0/t;-><init>(Lf0/v;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 116
    .line 117
    .line 118
    iput-object p5, p0, Lf0/v;->l:Landroid/graphics/Point;

    .line 119
    .line 120
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Landroid/view/WindowManager;

    .line 125
    .line 126
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    instance-of p3, p1, Landroid/app/Activity;

    .line 131
    .line 132
    if-eqz p3, :cond_1

    .line 133
    .line 134
    check-cast p1, Landroid/app/Activity;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    move p1, v3

    .line 154
    :goto_0
    if-gtz v3, :cond_2

    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/view/Display;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    :cond_2
    if-gtz p1, :cond_3

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    :cond_3
    div-int/lit8 p2, v3, 0x2

    .line 167
    .line 168
    iget-object p3, p0, Lf0/v;->l:Landroid/graphics/Point;

    .line 169
    .line 170
    iget p4, p3, Landroid/graphics/Point;->y:I

    .line 171
    .line 172
    if-ge p2, p4, :cond_4

    .line 173
    .line 174
    const/16 p2, 0x50

    .line 175
    .line 176
    iput p2, p0, Lf0/v;->k:I

    .line 177
    .line 178
    sub-int/2addr v3, p4

    .line 179
    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_4
    const/16 p2, 0x30

    .line 183
    .line 184
    iput p2, p0, Lf0/v;->k:I

    .line 185
    .line 186
    :goto_1
    div-int/lit8 p2, p1, 0x2

    .line 187
    .line 188
    iget p4, p3, Landroid/graphics/Point;->x:I

    .line 189
    .line 190
    if-ge p2, p4, :cond_5

    .line 191
    .line 192
    iget p2, p0, Lf0/v;->k:I

    .line 193
    .line 194
    const p5, 0x800005

    .line 195
    .line 196
    .line 197
    or-int/2addr p2, p5

    .line 198
    iput p2, p0, Lf0/v;->k:I

    .line 199
    .line 200
    sub-int/2addr p1, p4

    .line 201
    iput p1, p3, Landroid/graphics/Point;->x:I

    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :cond_5
    iget p1, p0, Lf0/v;->k:I

    .line 206
    .line 207
    const p2, 0x800003

    .line 208
    .line 209
    .line 210
    or-int/2addr p1, p2

    .line 211
    iput p1, p0, Lf0/v;->k:I

    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :cond_6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 216
    .line 217
    .line 218
    move-result-object p4

    .line 219
    const v6, 0x7f08001b

    .line 220
    .line 221
    .line 222
    invoke-virtual {p4, v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p4

    .line 226
    const v6, 0x7f0700b6

    .line 227
    .line 228
    .line 229
    invoke-virtual {p4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    check-cast v6, Landroid/widget/TextView;

    .line 234
    .line 235
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    const p3, 0x102000a

    .line 239
    .line 240
    .line 241
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    check-cast p3, Landroid/widget/ListView;

    .line 246
    .line 247
    new-instance v6, Lf0/v$a;

    .line 248
    .line 249
    invoke-direct {v6, p0, p1, p2}, Lf0/v$a;-><init>(Lf0/v;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 259
    .line 260
    .line 261
    invoke-static {p3}, Ly0/e;->j(Landroid/widget/AbsListView;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    check-cast p2, Landroid/view/WindowManager;

    .line 269
    .line 270
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 271
    .line 272
    .line 273
    move-result-object p2

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object p3

    .line 278
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 279
    .line 280
    .line 281
    move-result-object p3

    .line 282
    instance-of v5, p1, Landroid/app/Activity;

    .line 283
    .line 284
    if-eqz v5, :cond_7

    .line 285
    .line 286
    move-object v5, p1

    .line 287
    check-cast v5, Landroid/app/Activity;

    .line 288
    .line 289
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    goto :goto_2

    .line 302
    :cond_7
    move v5, v3

    .line 303
    :goto_2
    if-gtz v5, :cond_8

    .line 304
    .line 305
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    :cond_8
    const/4 v6, 0x3

    .line 310
    if-eqz p5, :cond_b

    .line 311
    .line 312
    iget p5, p5, Landroid/graphics/Point;->x:I

    .line 313
    .line 314
    if-lez p5, :cond_b

    .line 315
    .line 316
    div-int/lit8 v7, v5, 0x4

    .line 317
    .line 318
    if-ge p5, v7, :cond_9

    .line 319
    .line 320
    iput v6, p0, Lf0/v;->k:I

    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_9
    mul-int/2addr v5, v6

    .line 324
    div-int/2addr v5, v1

    .line 325
    if-le p5, v5, :cond_a

    .line 326
    .line 327
    const/4 p5, 0x5

    .line 328
    iput p5, p0, Lf0/v;->k:I

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_a
    iput v0, p0, Lf0/v;->k:I

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_b
    iput v0, p0, Lf0/v;->k:I

    .line 335
    .line 336
    :goto_3
    invoke-static {v4}, Ls0/b;->k(I)Z

    .line 337
    .line 338
    .line 339
    move-result p5

    .line 340
    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    .line 341
    .line 342
    if-eq v1, v0, :cond_c

    .line 343
    .line 344
    iget p3, p3, Landroid/content/res/Configuration;->screenLayout:I

    .line 345
    .line 346
    if-ge p3, v6, :cond_12

    .line 347
    .line 348
    :cond_c
    if-nez p5, :cond_12

    .line 349
    .line 350
    sget p3, Lf0/v;->m:I

    .line 351
    .line 352
    if-gtz p3, :cond_e

    .line 353
    .line 354
    new-instance p3, Landroid/util/DisplayMetrics;

    .line 355
    .line 356
    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 360
    .line 361
    .line 362
    iget p2, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 363
    .line 364
    int-to-float p2, p2

    .line 365
    const v1, 0x404ccccd    # 3.2f

    .line 366
    .line 367
    .line 368
    mul-float/2addr p2, v1

    .line 369
    float-to-int p2, p2

    .line 370
    sput p2, Lf0/v;->m:I

    .line 371
    .line 372
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 373
    .line 374
    int-to-float p3, p3

    .line 375
    const v1, 0x3f666666    # 0.9f

    .line 376
    .line 377
    .line 378
    mul-float/2addr v1, p3

    .line 379
    int-to-float p2, p2

    .line 380
    cmpg-float p2, v1, p2

    .line 381
    .line 382
    if-gez p2, :cond_d

    .line 383
    .line 384
    float-to-int p2, v1

    .line 385
    sput p2, Lf0/v;->m:I

    .line 386
    .line 387
    :cond_d
    const p2, 0x3dcccccd    # 0.1f

    .line 388
    .line 389
    .line 390
    mul-float/2addr p2, p3

    .line 391
    sget v1, Lf0/v;->m:I

    .line 392
    .line 393
    int-to-float v1, v1

    .line 394
    cmpl-float p2, p2, v1

    .line 395
    .line 396
    if-lez p2, :cond_e

    .line 397
    .line 398
    const p2, 0x3f19999a    # 0.6f

    .line 399
    .line 400
    .line 401
    mul-float/2addr p3, p2

    .line 402
    float-to-int p2, p3

    .line 403
    sput p2, Lf0/v;->m:I

    .line 404
    .line 405
    :cond_e
    sget p2, Lf0/v;->m:I

    .line 406
    .line 407
    if-lez p2, :cond_11

    .line 408
    .line 409
    :try_start_0
    new-array p2, v0, [I

    .line 410
    .line 411
    const p3, 0x1010387

    .line 412
    .line 413
    .line 414
    aput p3, p2, v3

    .line 415
    .line 416
    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 417
    .line 418
    .line 419
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    :try_start_1
    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 421
    .line 422
    .line 423
    move-result p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 425
    .line 426
    .line 427
    goto :goto_5

    .line 428
    :catchall_0
    move-exception p1

    .line 429
    move-object v2, p2

    .line 430
    goto :goto_4

    .line 431
    :catchall_1
    move-exception p1

    .line 432
    :goto_4
    if-eqz v2, :cond_f

    .line 433
    .line 434
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 435
    .line 436
    .line 437
    :cond_f
    throw p1

    .line 438
    :catch_0
    move-object p2, v2

    .line 439
    :catch_1
    if-eqz p2, :cond_10

    .line 440
    .line 441
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 442
    .line 443
    .line 444
    :cond_10
    move p3, v3

    .line 445
    :goto_5
    if-lez p3, :cond_11

    .line 446
    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 448
    .line 449
    .line 450
    move-result-object p2

    .line 451
    const v1, 0x7f050006

    .line 452
    .line 453
    .line 454
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 455
    .line 456
    .line 457
    move-result p2

    .line 458
    sget v1, Lf0/v;->m:I

    .line 459
    .line 460
    sub-int/2addr v1, p2

    .line 461
    div-int v4, v1, p3

    .line 462
    .line 463
    mul-int/2addr v4, p3

    .line 464
    add-int/2addr v4, p2

    .line 465
    sput v4, Lf0/v;->m:I

    .line 466
    .line 467
    rem-int/2addr v1, p3

    .line 468
    div-int/lit8 p2, p3, 0x2

    .line 469
    .line 470
    if-le v1, p2, :cond_11

    .line 471
    .line 472
    add-int/2addr v4, p3

    .line 473
    sput v4, Lf0/v;->m:I

    .line 474
    .line 475
    :cond_11
    sget p2, Lf0/v;->m:I

    .line 476
    .line 477
    move p3, v0

    .line 478
    goto :goto_6

    .line 479
    :cond_12
    iget p2, p0, Lf0/v;->k:I

    .line 480
    .line 481
    move p3, p2

    .line 482
    move p2, v3

    .line 483
    :goto_6
    new-instance v1, Lz0/f$a;

    .line 484
    .line 485
    invoke-direct {v1}, Lz0/f$a;-><init>()V

    .line 486
    .line 487
    .line 488
    iput-object p4, v1, Lz0/f$a;->a:Landroid/view/View;

    .line 489
    .line 490
    iput p2, v1, Lz0/f$a;->c:I

    .line 491
    .line 492
    iput v3, v1, Lz0/f$a;->d:I

    .line 493
    .line 494
    iput p3, v1, Lz0/f$a;->e:I

    .line 495
    .line 496
    invoke-static {p1, v0, v2}, Ly0/e;->b(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    .line 497
    .line 498
    .line 499
    move-result p2

    .line 500
    iput-boolean p2, v1, Lz0/f$a;->f:Z

    .line 501
    .line 502
    xor-int/lit8 p2, p5, 0x1

    .line 503
    .line 504
    iput-boolean p2, v1, Lz0/f$a;->g:Z

    .line 505
    .line 506
    iput-object p0, v1, Lz0/f$a;->h:Lz0/g;

    .line 507
    .line 508
    new-instance p2, Landroid/util/TypedValue;

    .line 509
    .line 510
    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 514
    .line 515
    .line 516
    move-result-object p3

    .line 517
    const p4, 0x7f030004

    .line 518
    .line 519
    .line 520
    invoke-virtual {p3, p4, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 521
    .line 522
    .line 523
    new-instance p3, Lz0/f;

    .line 524
    .line 525
    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 526
    .line 527
    invoke-direct {p3, p1, p2, v1}, Lz0/f;-><init>(Landroid/content/Context;ILz0/f$a;)V

    .line 528
    .line 529
    .line 530
    iput-object p3, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :cond_13
    new-instance p4, Landroid/app/AlertDialog$Builder;

    .line 534
    .line 535
    invoke-direct {p4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 539
    .line 540
    .line 541
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 542
    .line 543
    .line 544
    move-result-object p3

    .line 545
    const p5, 0x7f08001c

    .line 546
    .line 547
    .line 548
    invoke-virtual {p3, p5, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 549
    .line 550
    .line 551
    move-result-object p3

    .line 552
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 553
    .line 554
    .line 555
    const p5, 0x7f070084

    .line 556
    .line 557
    .line 558
    invoke-virtual {p3, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 559
    .line 560
    .line 561
    move-result-object p5

    .line 562
    check-cast p5, Landroid/widget/ListView;

    .line 563
    .line 564
    new-instance v1, Lf0/v$a;

    .line 565
    .line 566
    invoke-direct {v1, p0, p1, p2}, Lf0/v$a;-><init>(Lf0/v;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {p5, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {p4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 579
    .line 580
    .line 581
    iget p1, p0, Lf0/v;->i:I

    .line 582
    .line 583
    const/16 p2, 0x8

    .line 584
    .line 585
    invoke-static {p1, p2}, Lb/d;->K(II)Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    if-eqz p1, :cond_14

    .line 590
    .line 591
    new-instance p1, Lf0/u;

    .line 592
    .line 593
    invoke-direct {p1, p0}, Lf0/u;-><init>(Lf0/v;)V

    .line 594
    .line 595
    .line 596
    const p2, 0x7f0c0025

    .line 597
    .line 598
    .line 599
    invoke-virtual {p4, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    .line 601
    .line 602
    :cond_14
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    iput-object p1, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 607
    .line 608
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 609
    .line 610
    .line 611
    :goto_7
    return-void
.end method

.method public final s(Lz0/f;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x3

    .line 16
    const v2, 0x102000a

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-ne p2, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    instance-of p2, p1, Landroid/widget/ListView;

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v3, v3}, Landroid/view/View;->scrollTo(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x2

    .line 38
    if-ne p2, v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    instance-of p2, p1, Landroid/widget/ListView;

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/v;->g:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lf0/i;->q(Landroid/app/Dialog;)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lru/zdevs/zarchiver/ZArchiver;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lf0/v;->h:Landroid/widget/PopupWindow;

    .line 26
    .line 27
    check-cast v0, Lru/zdevs/zarchiver/ZArchiver;

    .line 28
    .line 29
    const v2, 0x7f070097

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v2, p0, Lf0/v;->k:I

    .line 37
    .line 38
    iget-object v3, p0, Lf0/v;->l:Landroid/graphics/Point;

    .line 39
    .line 40
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 41
    .line 42
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 43
    .line 44
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method
