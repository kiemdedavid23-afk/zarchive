.class public Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;,
        Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;
    }
.end annotation


# static fields
.field public static final C:[I


# instance fields
.field public A:I

.field public B:Landroid/graphics/Paint;

.field public a:I

.field public final b:Landroid/graphics/Paint;

.field public c:I

.field public d:Z

.field public e:Landroid/view/View;

.field public f:I

.field public g:Landroid/view/View;

.field public final h:Lb/d;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public l:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public m:F

.field public n:I

.field public o:F

.field public p:I

.field public q:Z

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:Z

.field public w:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;

.field public final x:Lz0/h;

.field public y:Z

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const v2, 0x10100af

    .line 6
    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:[I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    const/high16 v1, -0x67000000

    .line 6
    .line 7
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:I

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/Paint;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Landroid/graphics/Paint;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 18
    .line 19
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:I

    .line 20
    .line 21
    new-instance v3, Lb/d;

    .line 22
    .line 23
    invoke-direct {v3}, Lb/d;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Lb/d;

    .line 27
    .line 28
    sget-object v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 29
    .line 30
    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 31
    .line 32
    iput-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 33
    .line 34
    const/high16 v3, 0x3f800000    # 1.0f

    .line 35
    .line 36
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 37
    .line 38
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    iput-boolean v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 44
    .line 45
    new-instance v4, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Landroid/graphics/Rect;

    .line 51
    .line 52
    iput v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:I

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_0

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/16 v4, 0x190

    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    sget-object v5, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->C:[I

    .line 69
    .line 70
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {p0, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setGravity(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    .line 85
    .line 86
    :cond_1
    sget-object v5, Lb/d;->l:[I

    .line 87
    .line 88
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-eqz p2, :cond_2

    .line 93
    .line 94
    const/4 v5, 0x4

    .line 95
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    iput v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 100
    .line 101
    const/4 v5, 0x3

    .line 102
    invoke-virtual {p2, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const/4 v5, 0x2

    .line 107
    invoke-virtual {p2, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:I

    .line 112
    .line 113
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:I

    .line 118
    .line 119
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 124
    .line 125
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 137
    .line 138
    iget p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 139
    .line 140
    if-ne p2, v2, :cond_3

    .line 141
    .line 142
    const/high16 p2, 0x42880000    # 68.0f

    .line 143
    .line 144
    mul-float/2addr p2, p1

    .line 145
    const/high16 v1, 0x3f000000    # 0.5f

    .line 146
    .line 147
    add-float/2addr p2, v1

    .line 148
    float-to-int p2, p2

    .line 149
    iput p2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 150
    .line 151
    :cond_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 152
    .line 153
    .line 154
    new-instance p2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 155
    .line 156
    invoke-direct {p2, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lz0/h;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-direct {v0, v1, p0, p2}, Lz0/h;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;)V

    .line 166
    .line 167
    .line 168
    iget p2, v0, Lz0/h;->b:I

    .line 169
    .line 170
    int-to-float p2, p2

    .line 171
    const v1, 0x40555555

    .line 172
    .line 173
    .line 174
    mul-float/2addr p2, v1

    .line 175
    float-to-int p2, p2

    .line 176
    iput p2, v0, Lz0/h;->b:I

    .line 177
    .line 178
    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 179
    .line 180
    int-to-float p2, v4

    .line 181
    mul-float/2addr p2, p1

    .line 182
    iput p2, v0, Lz0/h;->m:F

    .line 183
    .line 184
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    return-void
.end method

.method public static b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 2
    .line 3
    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(I)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 17
    .line 18
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;->a()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-int/2addr v1, v2

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sub-int/2addr v1, v2

    .line 47
    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 48
    .line 49
    sub-int/2addr v1, v2

    .line 50
    iget v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    cmpg-float v2, v2, v3

    .line 54
    .line 55
    const/4 v3, -0x1

    .line 56
    if-gtz v2, :cond_4

    .line 57
    .line 58
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    sub-int/2addr p1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    sub-int/2addr v2, v4

    .line 77
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    sub-int/2addr v2, v4

    .line 84
    sub-int p1, v2, p1

    .line 85
    .line 86
    :goto_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 87
    .line 88
    if-ne p1, v1, :cond_3

    .line 89
    .line 90
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 91
    .line 92
    :cond_3
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 99
    .line 100
    if-eq p1, v3, :cond_5

    .line 101
    .line 102
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 103
    .line 104
    iget-object p0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_1
    return-void
.end method

.method private setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/16 p1, 0x20

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c(F)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 12
    .line 13
    int-to-float v1, v1

    .line 14
    mul-float/2addr p1, v1

    .line 15
    float-to-int p1, p1

    .line 16
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    sub-int/2addr v0, v1

    .line 29
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 30
    .line 31
    sub-int/2addr v0, v1

    .line 32
    sub-int/2addr v0, p1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    sub-int/2addr v1, v0

    .line 39
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 40
    .line 41
    add-int/2addr v1, v0

    .line 42
    add-int v0, v1, p1

    .line 43
    .line 44
    :goto_1
    return v0
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeScroll()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget v1, v0, Lz0/h;->a:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    if-ne v1, v3, :cond_5

    .line 10
    .line 11
    iget-object v1, v0, Lz0/h;->o:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    iget-object v7, v0, Lz0/h;->q:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    sub-int v7, v5, v7

    .line 32
    .line 33
    iget-object v8, v0, Lz0/h;->q:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    sub-int v8, v6, v8

    .line 40
    .line 41
    if-eqz v7, :cond_0

    .line 42
    .line 43
    iget-object v9, v0, Lz0/h;->q:Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v9, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    if-eqz v8, :cond_1

    .line 49
    .line 50
    iget-object v9, v0, Lz0/h;->q:Landroid/view/View;

    .line 51
    .line 52
    invoke-virtual {v9, v8}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-nez v7, :cond_2

    .line 56
    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-object v7, v0, Lz0/h;->p:Lz0/h$c;

    .line 60
    .line 61
    check-cast v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 62
    .line 63
    iget-object v7, v7, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 64
    .line 65
    invoke-static {v7, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/view/View;->invalidate()V

    .line 69
    .line 70
    .line 71
    :cond_3
    if-eqz v4, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ne v5, v7, :cond_4

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-ne v6, v5, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 86
    .line 87
    .line 88
    move v4, v2

    .line 89
    :cond_4
    if-nez v4, :cond_5

    .line 90
    .line 91
    iget-object v1, v0, Lz0/h;->t:Lz0/h$b;

    .line 92
    .line 93
    iget-object v4, v0, Lz0/h;->s:Landroid/view/ViewGroup;

    .line 94
    .line 95
    invoke-virtual {v4, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 96
    .line 97
    .line 98
    :cond_5
    iget v1, v0, Lz0/h;->a:I

    .line 99
    .line 100
    if-ne v1, v3, :cond_6

    .line 101
    .line 102
    const/4 v2, 0x1

    .line 103
    :cond_6
    if-eqz v2, :cond_8

    .line 104
    .line 105
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_7

    .line 110
    .line 111
    invoke-virtual {v0}, Lz0/h;->a()V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 116
    .line 117
    .line 118
    :cond_8
    return-void
.end method

.method public final d(I)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sub-int/2addr v0, p1

    .line 11
    int-to-float p1, v0

    .line 12
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sub-int/2addr p1, v0

    .line 16
    int-to-float p1, p1

    .line 17
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 18
    .line 19
    :goto_0
    int-to-float v0, v0

    .line 20
    div-float/2addr p1, v0

    .line 21
    return p1
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:Landroid/graphics/Paint;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    int-to-float v3, v0

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    int-to-float v4, v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v5, v0

    .line 27
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:Landroid/graphics/Paint;

    .line 28
    .line 29
    move-object v1, p1

    .line 30
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 10
    .line 11
    if-eqz v1, :cond_14

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_14

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iput-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 39
    .line 40
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:F

    .line 41
    .line 42
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:F

    .line 43
    .line 44
    goto/16 :goto_5

    .line 45
    .line 46
    :cond_1
    const/4 v5, 0x2

    .line 47
    const/4 v6, 0x1

    .line 48
    if-ne v0, v5, :cond_12

    .line 49
    .line 50
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:F

    .line 51
    .line 52
    sub-float v0, v1, v0

    .line 53
    .line 54
    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:F

    .line 55
    .line 56
    sub-float v5, v3, v5

    .line 57
    .line 58
    iput v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->r:F

    .line 59
    .line 60
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->s:F

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    cmpl-float v0, v0, v1

    .line 71
    .line 72
    if-lez v0, :cond_2

    .line 73
    .line 74
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/view/View;

    .line 80
    .line 81
    iget v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:F

    .line 82
    .line 83
    float-to-int v1, v1

    .line 84
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    .line 85
    .line 86
    float-to-int v3, v3

    .line 87
    invoke-virtual {p0, v0, v1, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f(Landroid/view/View;II)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_3

    .line 92
    .line 93
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    return p1

    .line 98
    :cond_3
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 99
    .line 100
    const/4 v1, -0x1

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    move v3, v6

    .line 104
    goto :goto_0

    .line 105
    :cond_4
    move v3, v1

    .line 106
    :goto_0
    int-to-float v3, v3

    .line 107
    mul-float/2addr v3, v5

    .line 108
    const/4 v7, 0x0

    .line 109
    cmpl-float v3, v3, v7

    .line 110
    .line 111
    if-lez v3, :cond_d

    .line 112
    .line 113
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/view/View;

    .line 114
    .line 115
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h:Lb/d;

    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    if-nez v2, :cond_5

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :cond_5
    instance-of v3, v2, Landroid/widget/ScrollView;

    .line 125
    .line 126
    if-eqz v3, :cond_7

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    goto :goto_3

    .line 135
    :cond_6
    check-cast v2, Landroid/widget/ScrollView;

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    add-int/2addr v2, v1

    .line 154
    goto :goto_1

    .line 155
    :cond_7
    instance-of v3, v2, Landroid/widget/ListView;

    .line 156
    .line 157
    if-eqz v3, :cond_a

    .line 158
    .line 159
    check-cast v2, Landroid/widget/ListView;

    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-lez v3, :cond_a

    .line 166
    .line 167
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    if-nez v3, :cond_8

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_8
    if-eqz v0, :cond_9

    .line 175
    .line 176
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    mul-int/2addr v2, v1

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    sub-int v0, v2, v0

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    add-int/2addr v0, v1

    .line 201
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    sub-int/2addr v3, v5

    .line 218
    add-int/2addr v3, v1

    .line 219
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    mul-int/2addr v1, v3

    .line 224
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    add-int/2addr v0, v1

    .line 229
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    :goto_1
    sub-int/2addr v0, v2

    .line 234
    goto :goto_3

    .line 235
    :cond_a
    :goto_2
    move v0, v4

    .line 236
    :goto_3
    if-lez v0, :cond_b

    .line 237
    .line 238
    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 239
    .line 240
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    return p1

    .line 245
    :cond_b
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 246
    .line 247
    if-eqz v0, :cond_c

    .line 248
    .line 249
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const/4 v1, 0x3

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 255
    .line 256
    .line 257
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 264
    .line 265
    .line 266
    :cond_c
    iput-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 267
    .line 268
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    return p1

    .line 273
    :cond_d
    if-eqz v0, :cond_e

    .line 274
    .line 275
    move v1, v6

    .line 276
    :cond_e
    int-to-float v0, v1

    .line 277
    mul-float/2addr v5, v0

    .line 278
    cmpg-float v0, v5, v7

    .line 279
    .line 280
    if-gez v0, :cond_13

    .line 281
    .line 282
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 283
    .line 284
    const/high16 v1, 0x3f800000    # 1.0f

    .line 285
    .line 286
    cmpg-float v0, v0, v1

    .line 287
    .line 288
    if-gez v0, :cond_f

    .line 289
    .line 290
    iput-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 291
    .line 292
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    return p1

    .line 297
    :cond_f
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 298
    .line 299
    if-nez v0, :cond_11

    .line 300
    .line 301
    iget v0, v2, Lz0/h;->a:I

    .line 302
    .line 303
    if-ne v0, v6, :cond_10

    .line 304
    .line 305
    move v0, v6

    .line 306
    goto :goto_4

    .line 307
    :cond_10
    move v0, v4

    .line 308
    :goto_4
    if-eqz v0, :cond_11

    .line 309
    .line 310
    invoke-virtual {v2}, Lz0/h;->b()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 314
    .line 315
    .line 316
    :cond_11
    iput-boolean v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 317
    .line 318
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    return p1

    .line 323
    :cond_12
    if-ne v0, v6, :cond_13

    .line 324
    .line 325
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 326
    .line 327
    if-eqz v0, :cond_13

    .line 328
    .line 329
    invoke-virtual {v2, v4}, Lz0/h;->o(I)V

    .line 330
    .line 331
    .line 332
    :cond_13
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 333
    .line 334
    .line 335
    move-result p1

    .line 336
    return p1

    .line 337
    :cond_14
    :goto_6
    invoke-virtual {v2}, Lz0/h;->a()V

    .line 338
    .line 339
    .line 340
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    return p1
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eq v1, p2, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->z:Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 21
    .line 22
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 50
    .line 51
    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget p3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:I

    .line 57
    .line 58
    if-eqz p3, :cond_2

    .line 59
    .line 60
    iget p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 61
    .line 62
    const/4 v2, 0x0

    .line 63
    cmpl-float v2, p4, v2

    .line 64
    .line 65
    if-lez v2, :cond_2

    .line 66
    .line 67
    const/high16 v2, -0x1000000

    .line 68
    .line 69
    and-int/2addr v2, p3

    .line 70
    ushr-int/lit8 v2, v2, 0x18

    .line 71
    .line 72
    int-to-float v2, v2

    .line 73
    mul-float/2addr v2, p4

    .line 74
    float-to-int p4, v2

    .line 75
    shl-int/lit8 p4, p4, 0x18

    .line 76
    .line 77
    const v2, 0xffffff

    .line 78
    .line 79
    .line 80
    and-int/2addr p3, v2

    .line 81
    or-int/2addr p3, p4

    .line 82
    iget-object p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b:Landroid/graphics/Paint;

    .line 83
    .line 84
    invoke-virtual {p4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v1, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    .line 97
    .line 98
    return p2
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    sget-object v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final f(Landroid/view/View;II)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    .line 10
    .line 11
    new-array v1, v1, [I

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    .line 15
    .line 16
    aget v3, v1, v0

    .line 17
    .line 18
    add-int/2addr v3, p2

    .line 19
    const/4 p2, 0x1

    .line 20
    aget v1, v1, p2

    .line 21
    .line 22
    add-int/2addr v1, p3

    .line 23
    aget p3, v2, v0

    .line 24
    .line 25
    if-lt v3, p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    add-int/2addr v4, p3

    .line 32
    if-ge v3, v4, :cond_1

    .line 33
    .line 34
    aget p3, v2, p2

    .line 35
    .line 36
    if-lt v1, p3, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    add-int/2addr p1, p3

    .line 43
    if-ge v1, p1, :cond_1

    .line 44
    .line 45
    move v0, p2

    .line 46
    :cond_1
    return v0
.end method

.method public final g(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->A:I

    .line 2
    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:Landroid/graphics/Paint;

    .line 11
    .line 12
    const/high16 v0, 0x66000000

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->B:Landroid/graphics/Paint;

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    invoke-direct {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 4
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    invoke-direct {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getPanelHeight()I
    .locals 1

    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    return v0
.end method

.method public getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;
    .locals 1

    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    return-object v0
.end method

.method public final h(F)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 23
    .line 24
    iput-object v0, v2, Lz0/h;->q:Landroid/view/View;

    .line 25
    .line 26
    const/4 v0, -0x1

    .line 27
    iput v0, v2, Lz0/h;->c:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {v2, v1, p1, v0, v0}, Lz0/h;->i(IIII)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget v1, v2, Lz0/h;->a:I

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-object v1, v2, Lz0/h;->q:Landroid/view/View;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-object v1, v2, Lz0/h;->q:Landroid/view/View;

    .line 46
    .line 47
    :cond_1
    if-eqz p1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    move v1, v0

    .line 54
    :goto_0
    if-ge v1, p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x4

    .line 65
    if-ne v3, v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 74
    .line 75
    .line 76
    :cond_4
    :goto_1
    return-void
.end method

.method public final i()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sub-int/2addr v3, v4

    .line 34
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    const/4 v6, -0x1

    .line 50
    if-ne v4, v6, :cond_1

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v4, v5

    .line 55
    :goto_0
    if-eqz v4, :cond_2

    .line 56
    .line 57
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    iget-object v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget-object v7, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    iget-object v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    .line 78
    .line 79
    .line 80
    move-result v8

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v4, v5

    .line 83
    move v6, v4

    .line 84
    move v7, v6

    .line 85
    move v8, v7

    .line 86
    :goto_1
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 99
    .line 100
    .line 101
    move-result v10

    .line 102
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-lt v0, v4, :cond_3

    .line 123
    .line 124
    if-lt v2, v7, :cond_3

    .line 125
    .line 126
    if-gt v1, v6, :cond_3

    .line 127
    .line 128
    if-gt v3, v8, :cond_3

    .line 129
    .line 130
    const/4 v5, 0x4

    .line 131
    :cond_3
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->v:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 5
    .line 6
    if-nez v0, :cond_16

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget v5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:F

    .line 29
    .line 30
    sub-float v5, v3, v5

    .line 31
    .line 32
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    iget v6, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    .line 37
    .line 38
    sub-float v6, v4, v6

    .line 39
    .line 40
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    iget v7, v2, Lz0/h;->b:I

    .line 45
    .line 46
    const/4 v8, 0x1

    .line 47
    const/4 v9, 0x3

    .line 48
    const/4 v10, 0x2

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    if-eq v0, v8, :cond_2

    .line 52
    .line 53
    if-eq v0, v10, :cond_1

    .line 54
    .line 55
    if-eq v0, v9, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    int-to-float v0, v7

    .line 59
    cmpl-float v0, v6, v0

    .line 60
    .line 61
    if-lez v0, :cond_5

    .line 62
    .line 63
    cmpl-float v0, v5, v6

    .line 64
    .line 65
    if-lez v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {v2}, Lz0/h;->b()V

    .line 68
    .line 69
    .line 70
    iput-boolean v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget v0, v2, Lz0/h;->a:I

    .line 74
    .line 75
    if-ne v0, v8, :cond_3

    .line 76
    .line 77
    move v0, v8

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v0, v1

    .line 80
    :goto_0
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v2, p1}, Lz0/h;->j(Landroid/view/MotionEvent;)V

    .line 83
    .line 84
    .line 85
    return v8

    .line 86
    :cond_4
    iput-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    .line 87
    .line 88
    iput v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->t:F

    .line 89
    .line 90
    iput v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->u:F

    .line 91
    .line 92
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    .line 93
    .line 94
    float-to-int v3, v3

    .line 95
    float-to-int v4, v4

    .line 96
    invoke-virtual {p0, v0, v3, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f(Landroid/view/View;II)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v2}, Lz0/h;->b()V

    .line 103
    .line 104
    .line 105
    iput-boolean v8, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->q:Z

    .line 106
    .line 107
    return v1

    .line 108
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    invoke-virtual {v2}, Lz0/h;->b()V

    .line 119
    .line 120
    .line 121
    :cond_6
    iget-object v4, v2, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 122
    .line 123
    if-nez v4, :cond_7

    .line 124
    .line 125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    iput-object v4, v2, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 130
    .line 131
    :cond_7
    iget-object v4, v2, Lz0/h;->k:Landroid/view/VelocityTracker;

    .line 132
    .line 133
    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 134
    .line 135
    .line 136
    iget-object v4, v2, Lz0/h;->p:Lz0/h$c;

    .line 137
    .line 138
    if-eqz v0, :cond_12

    .line 139
    .line 140
    if-eq v0, v8, :cond_11

    .line 141
    .line 142
    if-eq v0, v10, :cond_b

    .line 143
    .line 144
    if-eq v0, v9, :cond_11

    .line 145
    .line 146
    const/4 v5, 0x5

    .line 147
    if-eq v0, v5, :cond_9

    .line 148
    .line 149
    const/4 v4, 0x6

    .line 150
    if-eq v0, v4, :cond_8

    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    invoke-virtual {v2, p1}, Lz0/h;->e(I)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_4

    .line 162
    .line 163
    :cond_9
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {v2, v5, p1, v0}, Lz0/h;->m(FFI)V

    .line 176
    .line 177
    .line 178
    iget v3, v2, Lz0/h;->a:I

    .line 179
    .line 180
    if-nez v3, :cond_a

    .line 181
    .line 182
    iget-object p1, v2, Lz0/h;->h:[I

    .line 183
    .line 184
    aget p1, p1, v0

    .line 185
    .line 186
    and-int/2addr p1, v1

    .line 187
    if-eqz p1, :cond_14

    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    goto/16 :goto_4

    .line 193
    .line 194
    :cond_a
    if-ne v3, v10, :cond_14

    .line 195
    .line 196
    float-to-int v3, v5

    .line 197
    float-to-int p1, p1

    .line 198
    invoke-virtual {v2, v3, p1}, Lz0/h;->h(II)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iget-object v3, v2, Lz0/h;->q:Landroid/view/View;

    .line 203
    .line 204
    if-ne p1, v3, :cond_14

    .line 205
    .line 206
    invoke-virtual {v2, p1, v0}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 207
    .line 208
    .line 209
    goto/16 :goto_4

    .line 210
    .line 211
    :cond_b
    iget-object v0, v2, Lz0/h;->d:[F

    .line 212
    .line 213
    if-eqz v0, :cond_14

    .line 214
    .line 215
    iget-object v0, v2, Lz0/h;->e:[F

    .line 216
    .line 217
    if-nez v0, :cond_c

    .line 218
    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    move v3, v1

    .line 226
    :goto_2
    if-ge v3, v0, :cond_10

    .line 227
    .line 228
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    iget-object v9, v2, Lz0/h;->d:[F

    .line 241
    .line 242
    aget v9, v9, v5

    .line 243
    .line 244
    sub-float v9, v6, v9

    .line 245
    .line 246
    iget-object v10, v2, Lz0/h;->e:[F

    .line 247
    .line 248
    aget v10, v10, v5

    .line 249
    .line 250
    sub-float v10, v7, v10

    .line 251
    .line 252
    float-to-int v6, v6

    .line 253
    float-to-int v7, v7

    .line 254
    invoke-virtual {v2, v6, v7}, Lz0/h;->h(II)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v2, v6, v10}, Lz0/h;->d(Landroid/view/View;F)Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-eqz v7, :cond_d

    .line 263
    .line 264
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 271
    .line 272
    .line 273
    move-result v11

    .line 274
    float-to-int v12, v10

    .line 275
    add-int/2addr v12, v11

    .line 276
    invoke-virtual {v4, v12}, Lz0/h$c;->a(I)I

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    move-object v13, v4

    .line 281
    check-cast v13, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;

    .line 282
    .line 283
    iget-object v13, v13, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$b;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    .line 284
    .line 285
    iget v13, v13, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 286
    .line 287
    if-eqz v13, :cond_10

    .line 288
    .line 289
    if-lez v13, :cond_d

    .line 290
    .line 291
    if-ne v12, v11, :cond_d

    .line 292
    .line 293
    goto :goto_3

    .line 294
    :cond_d
    invoke-virtual {v2, v9, v10, v5}, Lz0/h;->l(FFI)V

    .line 295
    .line 296
    .line 297
    iget v9, v2, Lz0/h;->a:I

    .line 298
    .line 299
    if-ne v9, v8, :cond_e

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_e
    if-eqz v7, :cond_f

    .line 303
    .line 304
    invoke-virtual {v2, v6, v5}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    if-eqz v5, :cond_f

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :cond_10
    :goto_3
    invoke-virtual {v2, p1}, Lz0/h;->n(Landroid/view/MotionEvent;)V

    .line 315
    .line 316
    .line 317
    goto :goto_4

    .line 318
    :cond_11
    invoke-virtual {v2}, Lz0/h;->b()V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    invoke-virtual {v2, v0, v3, p1}, Lz0/h;->m(FFI)V

    .line 335
    .line 336
    .line 337
    float-to-int v0, v0

    .line 338
    float-to-int v3, v3

    .line 339
    invoke-virtual {v2, v0, v3}, Lz0/h;->h(II)Landroid/view/View;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-object v3, v2, Lz0/h;->q:Landroid/view/View;

    .line 344
    .line 345
    if-ne v0, v3, :cond_13

    .line 346
    .line 347
    iget v3, v2, Lz0/h;->a:I

    .line 348
    .line 349
    if-ne v3, v10, :cond_13

    .line 350
    .line 351
    invoke-virtual {v2, v0, p1}, Lz0/h;->p(Landroid/view/View;I)Z

    .line 352
    .line 353
    .line 354
    :cond_13
    iget-object v0, v2, Lz0/h;->h:[I

    .line 355
    .line 356
    aget p1, v0, p1

    .line 357
    .line 358
    and-int/2addr p1, v1

    .line 359
    if-eqz p1, :cond_14

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    :cond_14
    :goto_4
    iget p1, v2, Lz0/h;->a:I

    .line 365
    .line 366
    if-ne p1, v8, :cond_15

    .line 367
    .line 368
    move v1, v8

    .line 369
    :cond_15
    return v1

    .line 370
    :cond_16
    :goto_5
    invoke-virtual {v2}, Lz0/h;->a()V

    .line 371
    .line 372
    .line 373
    return v1
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    iget-boolean p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 14
    .line 15
    if-eqz p4, :cond_4

    .line 16
    .line 17
    iget-object p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 18
    .line 19
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-eqz p4, :cond_3

    .line 24
    .line 25
    const/4 p5, 0x2

    .line 26
    if-eq p4, p5, :cond_2

    .line 27
    .line 28
    const/4 p5, 0x3

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eq p4, p5, :cond_0

    .line 31
    .line 32
    iput v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    iget-boolean p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 40
    .line 41
    if-eqz p5, :cond_1

    .line 42
    .line 43
    iget p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget p5, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 47
    .line 48
    neg-int p5, p5

    .line 49
    :goto_0
    add-int/2addr p4, p5

    .line 50
    invoke-virtual {p0, p4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(I)F

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    iput p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 58
    .line 59
    iput p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/high16 p4, 0x3f800000    # 1.0f

    .line 63
    .line 64
    iput p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 65
    .line 66
    :cond_4
    :goto_1
    const/4 p4, 0x0

    .line 67
    move p5, p4

    .line 68
    :goto_2
    if-ge p5, p3, :cond_9

    .line 69
    .line 70
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    const/16 v3, 0x8

    .line 85
    .line 86
    if-ne v2, v3, :cond_5

    .line 87
    .line 88
    if-eqz p5, :cond_8

    .line 89
    .line 90
    iget-boolean v2, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 100
    .line 101
    if-ne v0, v3, :cond_6

    .line 102
    .line 103
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move v3, p2

    .line 111
    :goto_3
    iget-boolean v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 112
    .line 113
    if-nez v4, :cond_7

    .line 114
    .line 115
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:Landroid/view/View;

    .line 116
    .line 117
    if-ne v0, v4, :cond_7

    .line 118
    .line 119
    iget v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 120
    .line 121
    invoke-virtual {p0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    iget-object v4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    add-int/2addr v3, v4

    .line 132
    :cond_7
    add-int/2addr v2, v3

    .line 133
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 134
    .line 135
    add-int/2addr v1, p1

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    add-int/2addr v4, v1

    .line 141
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 142
    .line 143
    .line 144
    :cond_8
    :goto_4
    add-int/lit8 p5, p5, 0x1

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_9
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 148
    .line 149
    if-eqz p1, :cond_a

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i()V

    .line 152
    .line 153
    .line 154
    :cond_a
    iput-boolean p4, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 155
    .line 156
    return-void
.end method

.method public final onMeasure(II)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/high16 v5, -0x80000000

    .line 20
    .line 21
    const/high16 v6, 0x40000000    # 2.0f

    .line 22
    .line 23
    if-eq v1, v6, :cond_1

    .line 24
    .line 25
    if-ne v1, v5, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v2, "Width must have an exact value or MATCH_PARENT"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_1
    :goto_0
    if-eq v3, v6, :cond_3

    .line 37
    .line 38
    if-ne v3, v5, :cond_2

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v2, "Height must have an exact value or MATCH_PARENT"

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v3, 0x2

    .line 54
    if-ne v1, v3, :cond_16

    .line 55
    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    iput-object v7, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:Landroid/view/View;

    .line 62
    .line 63
    const/4 v7, 0x1

    .line 64
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    iput-object v7, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 69
    .line 70
    iget-object v8, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    .line 71
    .line 72
    if-nez v8, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0, v7}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v7, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 78
    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    sget-object v8, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 84
    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    iput-object v8, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 88
    .line 89
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    sub-int v7, v4, v7

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    sub-int/2addr v7, v9

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    sub-int v9, v2, v9

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    sub-int/2addr v9, v10

    .line 111
    move v10, v3

    .line 112
    :goto_2
    if-ge v10, v1, :cond_10

    .line 113
    .line 114
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v12

    .line 118
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    check-cast v13, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;

    .line 123
    .line 124
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    const/16 v15, 0x8

    .line 129
    .line 130
    if-ne v14, v15, :cond_6

    .line 131
    .line 132
    if-nez v10, :cond_6

    .line 133
    .line 134
    goto/16 :goto_9

    .line 135
    .line 136
    :cond_6
    iget-object v14, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->j:Landroid/view/View;

    .line 137
    .line 138
    if-ne v12, v14, :cond_8

    .line 139
    .line 140
    iget-object v14, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 141
    .line 142
    if-eq v14, v8, :cond_7

    .line 143
    .line 144
    iget v14, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 145
    .line 146
    sub-int v14, v7, v14

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move v14, v7

    .line 150
    :goto_3
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 151
    .line 152
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 153
    .line 154
    add-int/2addr v15, v3

    .line 155
    sub-int v3, v9, v15

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_8
    iget-object v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 159
    .line 160
    if-ne v12, v3, :cond_9

    .line 161
    .line 162
    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 163
    .line 164
    sub-int v14, v7, v3

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move v14, v7

    .line 168
    :goto_4
    move v3, v9

    .line 169
    :goto_5
    iget v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 170
    .line 171
    const/4 v11, -0x1

    .line 172
    const/4 v6, -0x2

    .line 173
    if-ne v15, v6, :cond_a

    .line 174
    .line 175
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    goto :goto_6

    .line 180
    :cond_a
    if-ne v15, v11, :cond_b

    .line 181
    .line 182
    const/high16 v11, 0x40000000    # 2.0f

    .line 183
    .line 184
    invoke-static {v3, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    goto :goto_6

    .line 189
    :cond_b
    const/high16 v11, 0x40000000    # 2.0f

    .line 190
    .line 191
    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    :goto_6
    iget v11, v13, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 196
    .line 197
    if-ne v11, v6, :cond_c

    .line 198
    .line 199
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    move v11, v6

    .line 204
    const/high16 v6, 0x40000000    # 2.0f

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_c
    const/4 v6, 0x0

    .line 208
    iget v13, v13, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$c;->a:F

    .line 209
    .line 210
    cmpl-float v6, v13, v6

    .line 211
    .line 212
    if-lez v6, :cond_d

    .line 213
    .line 214
    const/high16 v6, 0x3f800000    # 1.0f

    .line 215
    .line 216
    cmpg-float v6, v13, v6

    .line 217
    .line 218
    if-gez v6, :cond_d

    .line 219
    .line 220
    int-to-float v6, v14

    .line 221
    mul-float/2addr v6, v13

    .line 222
    float-to-int v14, v6

    .line 223
    goto :goto_7

    .line 224
    :cond_d
    const/4 v6, -0x1

    .line 225
    if-eq v11, v6, :cond_e

    .line 226
    .line 227
    move v14, v11

    .line 228
    :cond_e
    :goto_7
    const/high16 v6, 0x40000000    # 2.0f

    .line 229
    .line 230
    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    :goto_8
    invoke-virtual {v12, v3, v11}, Landroid/view/View;->measure(II)V

    .line 235
    .line 236
    .line 237
    iget-object v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 238
    .line 239
    if-ne v12, v3, :cond_f

    .line 240
    .line 241
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    iget v11, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 246
    .line 247
    sub-int/2addr v3, v11

    .line 248
    iput v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->n:I

    .line 249
    .line 250
    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 251
    .line 252
    const/4 v3, 0x0

    .line 253
    goto/16 :goto_2

    .line 254
    .line 255
    :cond_10
    iget v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 256
    .line 257
    sget-object v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 258
    .line 259
    sget-object v5, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 260
    .line 261
    if-lez v1, :cond_14

    .line 262
    .line 263
    int-to-float v1, v1

    .line 264
    const/high16 v6, 0x3f800000    # 1.0f

    .line 265
    .line 266
    mul-float/2addr v1, v6

    .line 267
    iget-object v7, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 270
    .line 271
    .line 272
    move-result v7

    .line 273
    int-to-float v7, v7

    .line 274
    div-float/2addr v1, v7

    .line 275
    iput v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 276
    .line 277
    cmpl-float v1, v1, v6

    .line 278
    .line 279
    if-lez v1, :cond_11

    .line 280
    .line 281
    iput v6, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 282
    .line 283
    :cond_11
    iget-object v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 284
    .line 285
    if-ne v1, v5, :cond_13

    .line 286
    .line 287
    iget v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 288
    .line 289
    cmpg-float v5, v1, v6

    .line 290
    .line 291
    if-gez v5, :cond_12

    .line 292
    .line 293
    sget-object v3, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 294
    .line 295
    iput-object v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 296
    .line 297
    iput v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_12
    iput-object v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 301
    .line 302
    iput v6, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->m:F

    .line 303
    .line 304
    :cond_13
    :goto_a
    const/4 v6, 0x0

    .line 305
    iput v6, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 306
    .line 307
    goto :goto_b

    .line 308
    :cond_14
    const/4 v6, 0x0

    .line 309
    if-gez v1, :cond_15

    .line 310
    .line 311
    iget-object v1, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 312
    .line 313
    if-ne v1, v5, :cond_15

    .line 314
    .line 315
    iput-object v3, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 316
    .line 317
    iput v6, v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 318
    .line 319
    :cond_15
    :goto_b
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    const-string v2, "Sliding up panel layout must have exactly 2 children!"

    .line 326
    .line 327
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "sliding_state"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 20
    .line 21
    :cond_0
    iput-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 22
    .line 23
    const-string v0, "superState"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "superState"

    .line 7
    .line 8
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 16
    .line 17
    sget-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->l:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 23
    .line 24
    :goto_0
    const-string v2, "sliding_state"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p2, p4, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lz0/h;->j(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :catch_0
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public setAnchorOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->p:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a:I

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDragView(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->f:I

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setDragView(Landroid/view/View;)V

    return-void
.end method

.method public setDragView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 7
    iget-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->e:Landroid/view/View;

    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$a;

    invoke-direct {v0, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$a;-><init>(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .line 1
    const/16 v0, 0x30

    .line 2
    .line 3
    const/16 v1, 0x50

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "gravity must be set to either top or bottom"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    const/4 p1, 0x0

    .line 23
    :goto_1
    iput-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 30
    .line 31
    .line 32
    :cond_3
    return-void
.end method

.method public setPanelHeight(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public setPanelSlideListener(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->w:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$d;

    return-void
.end method

.method public setPanelState(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->x:Lz0/h;

    .line 2
    .line 3
    iget v1, v0, Lz0/h;->a:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    const-string v1, "SlidingUpPanelLayout"

    .line 9
    .line 10
    const-string v3, "View is settling. Aborting animation."

    .line 11
    .line 12
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lz0/h;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    if-eqz p1, :cond_b

    .line 19
    .line 20
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 21
    .line 22
    if-eq p1, v0, :cond_b

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_a

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->y:Z

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v3, :cond_a

    .line 37
    .line 38
    :cond_1
    iget-object v3, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->k:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 39
    .line 40
    if-eq p1, v3, :cond_a

    .line 41
    .line 42
    if-ne v3, v0, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-eqz v1, :cond_3

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelStateInternal(Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 52
    .line 53
    if-ne v3, v0, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->i:Landroid/view/View;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    .line 63
    .line 64
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_9

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    const/4 v1, 0x0

    .line 72
    if-eq p1, v0, :cond_8

    .line 73
    .line 74
    if-eq p1, v2, :cond_7

    .line 75
    .line 76
    const/4 v0, 0x3

    .line 77
    if-eq p1, v0, :cond_5

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c(F)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iget-boolean v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d:Z

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    iget v0, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->c:I

    .line 92
    .line 93
    neg-int v0, v0

    .line 94
    :goto_0
    add-int/2addr p1, v0

    .line 95
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->d(I)F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(F)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    iget p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->o:F

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(F)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(F)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->h(F)V

    .line 116
    .line 117
    .line 118
    :cond_a
    :goto_1
    return-void

    .line 119
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 120
    .line 121
    const-string v0, "Panel state cannot be null or DRAGGING."

    .line 122
    .line 123
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method public setScrollableView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->g:Landroid/view/View;

    return-void
.end method
