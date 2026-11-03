.class public Lf/b;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/b$e;,
        Lf/b$g;,
        Lf/b$i;,
        Lf/b$f;,
        Lf/b$h;,
        Lf/b$j;,
        Lf/b$d;
    }
.end annotation


# static fields
.field public static final S:[I

.field public static final T:Lf/b$a;

.field public static final U:Lf/b$b;


# instance fields
.field public A:I

.field public B:F

.field public C:F

.field public D:F

.field public E:F

.field public F:I

.field public G:Landroid/view/VelocityTracker;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Landroid/widget/EdgeEffect;

.field public M:Landroid/widget/EdgeEffect;

.field public N:Z

.field public O:Z

.field public P:I

.field public final Q:Lf/b$c;

.field public R:I

.field public a:I

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lf/b$e;

.field public final d:Landroid/graphics/Rect;

.field public e:Lf/a;

.field public f:I

.field public g:I

.field public h:Landroid/os/Parcelable;

.field public i:Landroid/widget/Scroller;

.field public j:Z

.field public k:Lf/b$i;

.field public l:I

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:I

.field public o:I

.field public p:F

.field public q:F

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:Z

.field public x:Z

.field public y:I

.field public z:I


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
    const v2, 0x10100b3

    .line 6
    .line 7
    .line 8
    aput v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Lf/b;->S:[I

    .line 11
    .line 12
    new-instance v0, Lf/b$a;

    .line 13
    .line 14
    invoke-direct {v0}, Lf/b$a;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lf/b;->T:Lf/b$a;

    .line 18
    .line 19
    new-instance v0, Lf/b$b;

    .line 20
    .line 21
    invoke-direct {v0}, Lf/b$b;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lf/b;->U:Lf/b$b;

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance p1, Lf/b$e;

    .line 12
    .line 13
    invoke-direct {p1}, Lf/b$e;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lf/b;->c:Lf/b$e;

    .line 17
    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lf/b;->d:Landroid/graphics/Rect;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lf/b;->g:I

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lf/b;->h:Landroid/os/Parcelable;

    .line 30
    .line 31
    const v0, -0x800001

    .line 32
    .line 33
    .line 34
    iput v0, p0, Lf/b;->p:F

    .line 35
    .line 36
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 37
    .line 38
    .line 39
    iput v0, p0, Lf/b;->q:F

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lf/b;->v:I

    .line 43
    .line 44
    iput p1, p0, Lf/b;->F:I

    .line 45
    .line 46
    iput-boolean v0, p0, Lf/b;->N:Z

    .line 47
    .line 48
    new-instance p1, Lf/b$c;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lf/b$c;-><init>(Lf/b;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lf/b;->Q:Lf/b$c;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lf/b;->R:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 59
    .line 60
    .line 61
    const/high16 p1, 0x40000

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v1, Landroid/widget/Scroller;

    .line 74
    .line 75
    sget-object v2, Lf/b;->U:Lf/b$b;

    .line 76
    .line 77
    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iput v3, p0, Lf/b;->A:I

    .line 101
    .line 102
    const/high16 v3, 0x43c80000    # 400.0f

    .line 103
    .line 104
    mul-float/2addr v3, v2

    .line 105
    float-to-int v3, v3

    .line 106
    iput v3, p0, Lf/b;->H:I

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iput v1, p0, Lf/b;->I:I

    .line 113
    .line 114
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 115
    .line 116
    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 120
    .line 121
    new-instance v1, Landroid/widget/EdgeEffect;

    .line 122
    .line 123
    invoke-direct {v1, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 124
    .line 125
    .line 126
    iput-object v1, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 127
    .line 128
    const/high16 p1, 0x41c80000    # 25.0f

    .line 129
    .line 130
    mul-float/2addr p1, v2

    .line 131
    float-to-int p1, p1

    .line 132
    iput p1, p0, Lf/b;->J:I

    .line 133
    .line 134
    const/high16 p1, 0x40000000    # 2.0f

    .line 135
    .line 136
    mul-float/2addr p1, v2

    .line 137
    float-to-int p1, p1

    .line 138
    iput p1, p0, Lf/b;->K:I

    .line 139
    .line 140
    const/high16 p1, 0x41800000    # 16.0f

    .line 141
    .line 142
    mul-float/2addr v2, p1

    .line 143
    float-to-int p1, v2

    .line 144
    iput p1, p0, Lf/b;->y:I

    .line 145
    .line 146
    new-instance p1, Lf/b$g;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Lf/b$g;-><init>(Lf/b;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    if-nez p1, :cond_0

    .line 159
    .line 160
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 161
    .line 162
    .line 163
    :cond_0
    new-instance p1, Lf/c;

    .line 164
    .line 165
    invoke-direct {p1, p0}, Lf/c;-><init>(Lf/b;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public static c(Landroid/view/View;ZIII)Z
    .locals 9

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    sub-int/2addr v4, v1

    .line 22
    :goto_0
    if-ltz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    add-int v6, p3, v2

    .line 29
    .line 30
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    if-lt v6, v7, :cond_0

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-ge v6, v7, :cond_0

    .line 41
    .line 42
    add-int v7, p4, v3

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-lt v7, v8, :cond_0

    .line 49
    .line 50
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-ge v7, v8, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    sub-int/2addr v6, v8

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    sub-int/2addr v7, v8

    .line 66
    invoke-static {v5, v1, p2, v6, v7}, Lf/b;->c(Landroid/view/View;ZIII)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_0

    .line 71
    .line 72
    return v1

    .line 73
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    .line 77
    .line 78
    neg-int p1, p2

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v1, 0x0

    .line 87
    :goto_1
    return v1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/b;->t:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lf/b;->t:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Lf/b$e;
    .locals 8

    .line 1
    new-instance v0, Lf/b$e;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/b$e;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lf/b$e;->b:I

    .line 7
    .line 8
    iget-object v1, p0, Lf/b;->e:Lf/a;

    .line 9
    .line 10
    check-cast v1, Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v2, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iget-object v3, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->a:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroid/widget/ProgressBar;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-direct {v4, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    const/4 v7, -0x2

    .line 43
    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 44
    .line 45
    .line 46
    const/16 v7, 0x11

    .line 47
    .line 48
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 55
    .line 56
    .line 57
    new-instance v6, Lg/d;

    .line 58
    .line 59
    invoke-direct {v6, v3}, Lg/d;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->d:Lru/zdevs/zarchiver/ZImageViewer;

    .line 71
    .line 72
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v3}, Lg/d;->setOnImageEventListener(Lg/d$g;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v5}, Lg/d;->setOrientation(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lg0/c;

    .line 85
    .line 86
    invoke-interface {v3}, Lg0/c;->c()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_0

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Lru/zdevs/zarchiver/ZImageViewer$e;->e(I)Lg/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-virtual {v6, p1, v1}, Lg/d;->w(Lg/a;Z)V

    .line 98
    .line 99
    .line 100
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    .line 108
    .line 109
    iput-object v2, v0, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 110
    .line 111
    iget-object p1, p0, Lf/b;->e:Lf/a;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    const/high16 p1, 0x3f800000    # 1.0f

    .line 117
    .line 118
    iput p1, v0, Lf/b$e;->d:F

    .line 119
    .line 120
    iget-object p1, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 121
    .line 122
    if-ltz p2, :cond_2

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-lt p2, v1, :cond_1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_1
    return-object v0
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/high16 v2, 0x60000

    .line 10
    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget v4, v4, Lf/b$e;->b:I

    .line 37
    .line 38
    iget v5, p0, Lf/b;->f:I

    .line 39
    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/high16 p2, 0x40000

    .line 49
    .line 50
    if-ne v1, p2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne v0, p2, :cond_5

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    const/4 p2, 0x1

    .line 66
    and-int/2addr p3, p2

    .line 67
    if-ne p3, p2, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_5
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget v2, v2, Lf/b$e;->b:I

    .line 25
    .line 26
    iget v3, p0, Lf/b;->f:I

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lf/b;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p3, Lf/b$f;

    .line 8
    .line 9
    invoke-direct {p3}, Lf/b$f;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v0, p3

    .line 13
    check-cast v0, Lf/b$f;

    .line 14
    .line 15
    iget-boolean v1, v0, Lf/b$f;->a:Z

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-class v3, Lf/b$d;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x0

    .line 33
    :goto_0
    or-int/2addr v1, v2

    .line 34
    iput-boolean v1, v0, Lf/b$f;->a:Z

    .line 35
    .line 36
    iget-boolean v2, p0, Lf/b;->s:Z

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    iput-boolean v3, v0, Lf/b$f;->d:Z

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "Cannot add pager decor view during layout"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method public final b(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, p0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    if-eqz v0, :cond_4

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    if-ne v3, p0, :cond_1

    .line 21
    .line 22
    move v3, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    move v3, v2

    .line 30
    :goto_1
    if-nez v3, :cond_4

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_2
    instance-of v4, v0, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    const-string v4, " => "

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    .line 80
    .line 81
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v3, "ViewPager"

    .line 96
    .line 97
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :goto_3
    const/4 v0, 0x0

    .line 101
    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/16 v4, 0x42

    .line 110
    .line 111
    const/16 v5, 0x11

    .line 112
    .line 113
    if-eqz v3, :cond_8

    .line 114
    .line 115
    if-eq v3, v0, :cond_8

    .line 116
    .line 117
    iget-object v6, p0, Lf/b;->d:Landroid/graphics/Rect;

    .line 118
    .line 119
    if-ne p1, v5, :cond_6

    .line 120
    .line 121
    invoke-virtual {p0, v6, v3}, Lf/b;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 126
    .line 127
    invoke-virtual {p0, v6, v0}, Lf/b;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    if-lt v4, v5, :cond_5

    .line 136
    .line 137
    iget v0, p0, Lf/b;->f:I

    .line 138
    .line 139
    if-lez v0, :cond_c

    .line 140
    .line 141
    sub-int/2addr v0, v1

    .line 142
    iput-boolean v2, p0, Lf/b;->u:Z

    .line 143
    .line 144
    invoke-virtual {p0, v0, v2, v1, v2}, Lf/b;->t(IIZZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    :goto_4
    move v2, v0

    .line 153
    goto :goto_7

    .line 154
    :cond_6
    if-ne p1, v4, :cond_d

    .line 155
    .line 156
    invoke-virtual {p0, v6, v3}, Lf/b;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    invoke-virtual {p0, v6, v0}, Lf/b;->f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 167
    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    if-gt v1, v2, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0}, Lf/b;->l()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    goto :goto_4

    .line 177
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    if-eq p1, v5, :cond_b

    .line 183
    .line 184
    if-ne p1, v1, :cond_9

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_9
    if-eq p1, v4, :cond_a

    .line 188
    .line 189
    const/4 v0, 0x2

    .line 190
    if-ne p1, v0, :cond_d

    .line 191
    .line 192
    :cond_a
    invoke-virtual {p0}, Lf/b;->l()Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    goto :goto_7

    .line 197
    :cond_b
    :goto_5
    iget v0, p0, Lf/b;->f:I

    .line 198
    .line 199
    if-lez v0, :cond_c

    .line 200
    .line 201
    sub-int/2addr v0, v1

    .line 202
    iput-boolean v2, p0, Lf/b;->u:Z

    .line 203
    .line 204
    invoke-virtual {p0, v0, v2, v1, v2}, Lf/b;->t(IIZZ)V

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_c
    move v1, v2

    .line 209
    :goto_6
    move v2, v1

    .line 210
    :cond_d
    :goto_7
    if-eqz v2, :cond_e

    .line 211
    .line 212
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    .line 217
    .line 218
    .line 219
    :cond_e
    return v2
.end method

.method public final canScrollHorizontally(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/b;->e:Lf/a;

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
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-gez p1, :cond_2

    .line 17
    .line 18
    int-to-float p1, v0

    .line 19
    iget v0, p0, Lf/b;->p:F

    .line 20
    .line 21
    mul-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    if-le v2, p1, :cond_1

    .line 24
    .line 25
    move v1, v3

    .line 26
    :cond_1
    return v1

    .line 27
    :cond_2
    if-lez p1, :cond_3

    .line 28
    .line 29
    int-to-float p1, v0

    .line 30
    iget v0, p0, Lf/b;->q:F

    .line 31
    .line 32
    mul-float/2addr p1, v0

    .line 33
    float-to-int p1, p1

    .line 34
    if-ge v2, p1, :cond_3

    .line 35
    .line 36
    move v1, v3

    .line 37
    :cond_3
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lf/b$f;

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
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/b;->j:Z

    .line 3
    .line 4
    iget-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v2, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget-object v3, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    if-eq v1, v3, :cond_1

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v2}, Lf/b;->m(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0, v0}, Lf/b;->d(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final d(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lf/b;->R:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    xor-int/2addr v1, v2

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget-object v5, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v6, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-ne v1, v5, :cond_1

    .line 51
    .line 52
    if-eq v4, v6, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroid/view/View;->scrollTo(II)V

    .line 55
    .line 56
    .line 57
    if-eq v5, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v5}, Lf/b;->m(I)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    iput-boolean v3, p0, Lf/b;->u:Z

    .line 63
    .line 64
    move v1, v3

    .line 65
    :goto_1
    iget-object v4, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-ge v1, v5, :cond_4

    .line 72
    .line 73
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lf/b$e;

    .line 78
    .line 79
    iget-boolean v5, v4, Lf/b$e;->c:Z

    .line 80
    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    iput-boolean v3, v4, Lf/b$e;->c:Z

    .line 84
    .line 85
    move v0, v2

    .line 86
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lf/b;->Q:Lf/b$c;

    .line 92
    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {v0}, Lf/b$c;->run()V

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_2
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x16

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x3d

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lf/b;->b(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lf/b;->b(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lf/b;->l()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/16 p1, 0x42

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lf/b;->b(I)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    iget p1, p0, Lf/b;->f:I

    .line 80
    .line 81
    if-lez p1, :cond_6

    .line 82
    .line 83
    sub-int/2addr p1, v1

    .line 84
    iput-boolean v2, p0, Lf/b;->u:Z

    .line 85
    .line 86
    invoke-virtual {p0, p1, v2, v1, v2}, Lf/b;->t(IIZZ)V

    .line 87
    .line 88
    .line 89
    move p1, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    const/16 p1, 0x11

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lf/b;->b(I)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    goto :goto_1

    .line 98
    :cond_6
    :goto_0
    move p1, v2

    .line 99
    :goto_1
    if-eqz p1, :cond_7

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_7
    move v1, v2

    .line 103
    :cond_8
    :goto_2
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    iget v4, v4, Lf/b$e;->b:I

    .line 39
    .line 40
    iget v5, p0, Lf/b;->f:I

    .line 41
    .line 42
    if-ne v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1

    .line 52
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lf/a;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-le v0, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    sub-int/2addr v2, v3

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    sub-int/2addr v2, v3

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/high16 v4, 0x43870000    # 270.0f

    .line 68
    .line 69
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 70
    .line 71
    .line 72
    neg-int v4, v2

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    add-int/2addr v5, v4

    .line 78
    int-to-float v4, v5

    .line 79
    iget v5, p0, Lf/b;->p:F

    .line 80
    .line 81
    int-to-float v6, v3

    .line 82
    mul-float/2addr v5, v6

    .line 83
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    or-int/2addr v1, v2

    .line 98
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 99
    .line 100
    .line 101
    :cond_2
    iget-object v0, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    sub-int/2addr v3, v4

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    sub-int/2addr v3, v4

    .line 131
    const/high16 v4, 0x42b40000    # 90.0f

    .line 132
    .line 133
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    neg-int v4, v4

    .line 141
    int-to-float v4, v4

    .line 142
    iget v5, p0, Lf/b;->q:F

    .line 143
    .line 144
    const/high16 v6, 0x3f800000    # 1.0f

    .line 145
    .line 146
    add-float/2addr v5, v6

    .line 147
    neg-float v5, v5

    .line 148
    int-to-float v6, v2

    .line 149
    mul-float/2addr v5, v6

    .line 150
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 154
    .line 155
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 159
    .line 160
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    or-int/2addr v1, v2

    .line 165
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 169
    .line 170
    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 171
    .line 172
    .line 173
    :cond_4
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf/b;->m:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf/a;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lf/b;->a:I

    .line 8
    .line 9
    iget-object v1, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Lf/b;->v:I

    .line 16
    .line 17
    mul-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    add-int/2addr v3, v4

    .line 21
    const/4 v5, 0x0

    .line 22
    if-ge v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ge v2, v0, :cond_0

    .line 29
    .line 30
    move v0, v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v0, v5

    .line 33
    :goto_0
    iget v2, p0, Lf/b;->f:I

    .line 34
    .line 35
    move v3, v5

    .line 36
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-ge v3, v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    check-cast v6, Lf/b$e;

    .line 47
    .line 48
    iget-object v7, p0, Lf/b;->e:Lf/a;

    .line 49
    .line 50
    iget-object v6, v6, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v3, Lf/b;->T:Lf/b$a;

    .line 59
    .line 60
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    move v1, v5

    .line 70
    :goto_2
    if-ge v1, v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lf/b$f;

    .line 81
    .line 82
    iget-boolean v6, v3, Lf/b$f;->a:Z

    .line 83
    .line 84
    if-nez v6, :cond_2

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    iput v6, v3, Lf/b$f;->c:F

    .line 88
    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {p0, v2, v5, v5, v4}, Lf/b;->t(IIZZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final f(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p2, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    if-eq p2, p0, :cond_2

    .line 48
    .line 49
    check-cast p2, Landroid/view/ViewGroup;

    .line 50
    .line 51
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    add-int/2addr v1, v0

    .line 58
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 59
    .line 60
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v1, v0

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 68
    .line 69
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    add-int/2addr v1, v0

    .line 76
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 77
    .line 78
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v1, v0

    .line 85
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-object p1
.end method

.method public final g(Landroid/view/View;)Lf/b$e;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_2

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lf/b$e;

    .line 16
    .line 17
    iget-object v3, p0, Lf/b;->e:Lf/a;

    .line 18
    .line 19
    iget-object v4, v2, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 20
    .line 21
    check-cast v3, Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    if-ne p1, v4, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v3, v0

    .line 31
    :goto_1
    if-eqz v3, :cond_1

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    return-object p1
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lf/b$f;

    invoke-direct {v0}, Lf/b$f;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 2
    new-instance v0, Lf/b$f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lf/b$f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p1, Lf/b$f;

    invoke-direct {p1}, Lf/b$f;-><init>()V

    return-object p1
.end method

.method public getAdapter()Lf/a;
    .locals 1

    iget-object v0, p0, Lf/b;->e:Lf/a;

    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lf/b;->f:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Lf/b;->v:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Lf/b;->l:I

    return v0
.end method

.method public final h()Lf/b$e;
    .locals 14

    .line 1
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    int-to-float v2, v2

    .line 13
    int-to-float v3, v0

    .line 14
    div-float/2addr v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v1

    .line 17
    :goto_0
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget v3, p0, Lf/b;->l:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    int-to-float v0, v0

    .line 23
    div-float/2addr v3, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v1

    .line 26
    :goto_1
    const/4 v0, 0x0

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x1

    .line 29
    const/4 v6, 0x0

    .line 30
    move v8, v0

    .line 31
    move v9, v5

    .line 32
    move-object v7, v6

    .line 33
    move v6, v4

    .line 34
    move v4, v1

    .line 35
    :goto_2
    iget-object v10, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-ge v8, v11, :cond_7

    .line 42
    .line 43
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    check-cast v11, Lf/b$e;

    .line 48
    .line 49
    if-nez v9, :cond_2

    .line 50
    .line 51
    iget v12, v11, Lf/b$e;->b:I

    .line 52
    .line 53
    add-int/2addr v6, v5

    .line 54
    if-eq v12, v6, :cond_2

    .line 55
    .line 56
    add-float/2addr v1, v4

    .line 57
    add-float/2addr v1, v3

    .line 58
    iget-object v4, p0, Lf/b;->c:Lf/b$e;

    .line 59
    .line 60
    iput v1, v4, Lf/b$e;->e:F

    .line 61
    .line 62
    iput v6, v4, Lf/b$e;->b:I

    .line 63
    .line 64
    iget-object v1, p0, Lf/b;->e:Lf/a;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    .line 71
    iput v1, v4, Lf/b$e;->d:F

    .line 72
    .line 73
    add-int/lit8 v8, v8, -0x1

    .line 74
    .line 75
    move-object v6, v4

    .line 76
    goto :goto_3

    .line 77
    :cond_2
    move-object v6, v11

    .line 78
    :goto_3
    iget v1, v6, Lf/b$e;->e:F

    .line 79
    .line 80
    iget v4, v6, Lf/b$e;->d:F

    .line 81
    .line 82
    add-float/2addr v4, v1

    .line 83
    add-float/2addr v4, v3

    .line 84
    if-nez v9, :cond_4

    .line 85
    .line 86
    cmpl-float v9, v2, v1

    .line 87
    .line 88
    if-ltz v9, :cond_3

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_3
    return-object v7

    .line 92
    :cond_4
    :goto_4
    cmpg-float v4, v2, v4

    .line 93
    .line 94
    if-ltz v4, :cond_6

    .line 95
    .line 96
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    sub-int/2addr v4, v5

    .line 101
    if-ne v8, v4, :cond_5

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_5
    iget v4, v6, Lf/b$e;->b:I

    .line 105
    .line 106
    iget v7, v6, Lf/b$e;->d:F

    .line 107
    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 109
    .line 110
    move v9, v0

    .line 111
    move-object v13, v6

    .line 112
    move v6, v4

    .line 113
    move v4, v7

    .line 114
    move-object v7, v13

    .line 115
    goto :goto_2

    .line 116
    :cond_6
    :goto_5
    return-object v6

    .line 117
    :cond_7
    return-object v7
.end method

.method public final i(I)Lf/b$e;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lf/b$e;

    .line 15
    .line 16
    iget v2, v1, Lf/b$e;->b:I

    .line 17
    .line 18
    if-ne v2, p1, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public final j(IFI)V
    .locals 8

    .line 1
    iget p1, p0, Lf/b;->P:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-lez p1, :cond_5

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    if-ge v3, v2, :cond_5

    .line 28
    .line 29
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lf/b$f;

    .line 38
    .line 39
    iget-boolean v6, v5, Lf/b$f;->a:Z

    .line 40
    .line 41
    if-nez v6, :cond_0

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_0
    iget v5, v5, Lf/b$f;->b:I

    .line 45
    .line 46
    and-int/lit8 v5, v5, 0x7

    .line 47
    .line 48
    if-eq v5, p2, :cond_3

    .line 49
    .line 50
    const/4 v6, 0x3

    .line 51
    if-eq v5, v6, :cond_2

    .line 52
    .line 53
    const/4 v6, 0x5

    .line 54
    if-eq v5, v6, :cond_1

    .line 55
    .line 56
    move v5, p3

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    sub-int v5, v1, v0

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    sub-int/2addr v5, v6

    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    add-int/2addr v0, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    add-int/2addr v5, p3

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    sub-int v5, v1, v5

    .line 82
    .line 83
    div-int/lit8 v5, v5, 0x2

    .line 84
    .line 85
    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    :goto_1
    move v7, v5

    .line 90
    move v5, p3

    .line 91
    move p3, v7

    .line 92
    :goto_2
    add-int/2addr p3, p1

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    sub-int/2addr p3, v6

    .line 98
    if-eqz p3, :cond_4

    .line 99
    .line 100
    invoke-virtual {v4, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    move p3, v5

    .line 104
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_5
    iput-boolean p2, p0, Lf/b;->O:Z

    .line 108
    .line 109
    return-void
.end method

.method public final k(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lf/b;->F:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lf/b;->B:F

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lf/b;->F:I

    .line 29
    .line 30
    iget-object p1, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final l()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v2, p0, Lf/b;->f:I

    .line 7
    .line 8
    invoke-virtual {v0}, Lf/a;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v3, 0x1

    .line 13
    sub-int/2addr v0, v3

    .line 14
    if-ge v2, v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lf/b;->f:I

    .line 17
    .line 18
    add-int/2addr v0, v3

    .line 19
    iput-boolean v1, p0, Lf/b;->u:Z

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1, v3, v1}, Lf/b;->t(IIZZ)V

    .line 22
    .line 23
    .line 24
    return v3

    .line 25
    :cond_0
    return v1
.end method

.method public final m(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "onPageScrolled did not call superclass implementation"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-boolean p1, p0, Lf/b;->N:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    iput-boolean v2, p0, Lf/b;->O:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, v2, p1, v2}, Lf/b;->j(IFI)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lf/b;->O:Z

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lf/b;->h()Lf/b$e;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget v4, p0, Lf/b;->l:I

    .line 43
    .line 44
    add-int v5, v3, v4

    .line 45
    .line 46
    int-to-float v4, v4

    .line 47
    int-to-float v3, v3

    .line 48
    div-float/2addr v4, v3

    .line 49
    iget v6, v0, Lf/b$e;->b:I

    .line 50
    .line 51
    int-to-float p1, p1

    .line 52
    div-float/2addr p1, v3

    .line 53
    iget v3, v0, Lf/b$e;->e:F

    .line 54
    .line 55
    sub-float/2addr p1, v3

    .line 56
    iget v0, v0, Lf/b$e;->d:F

    .line 57
    .line 58
    add-float/2addr v0, v4

    .line 59
    div-float/2addr p1, v0

    .line 60
    int-to-float v0, v5

    .line 61
    mul-float/2addr v0, p1

    .line 62
    float-to-int v0, v0

    .line 63
    iput-boolean v2, p0, Lf/b;->O:Z

    .line 64
    .line 65
    invoke-virtual {p0, v6, p1, v0}, Lf/b;->j(IFI)V

    .line 66
    .line 67
    .line 68
    iget-boolean p1, p0, Lf/b;->O:Z

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    const/4 p1, 0x1

    .line 73
    return p1

    .line 74
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final n(F)Z
    .locals 9

    .line 1
    iget v0, p0, Lf/b;->B:F

    .line 2
    .line 3
    sub-float/2addr v0, p1

    .line 4
    iput p1, p0, Lf/b;->B:F

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    int-to-float p1, p1

    .line 11
    add-float/2addr p1, v0

    .line 12
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    iget v1, p0, Lf/b;->p:F

    .line 18
    .line 19
    mul-float/2addr v1, v0

    .line 20
    iget v2, p0, Lf/b;->q:F

    .line 21
    .line 22
    mul-float/2addr v2, v0

    .line 23
    iget-object v3, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lf/b$e;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    const/4 v7, 0x1

    .line 37
    sub-int/2addr v6, v7

    .line 38
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lf/b$e;

    .line 43
    .line 44
    iget v6, v5, Lf/b$e;->b:I

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    iget v1, v5, Lf/b$e;->e:F

    .line 49
    .line 50
    mul-float/2addr v1, v0

    .line 51
    move v5, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v5, v7

    .line 54
    :goto_0
    iget v6, v3, Lf/b$e;->b:I

    .line 55
    .line 56
    iget-object v8, p0, Lf/b;->e:Lf/a;

    .line 57
    .line 58
    invoke-virtual {v8}, Lf/a;->b()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    sub-int/2addr v8, v7

    .line 63
    if-eq v6, v8, :cond_1

    .line 64
    .line 65
    iget v2, v3, Lf/b$e;->e:F

    .line 66
    .line 67
    mul-float/2addr v2, v0

    .line 68
    move v3, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v3, v7

    .line 71
    :goto_1
    cmpg-float v6, p1, v1

    .line 72
    .line 73
    if-gez v6, :cond_3

    .line 74
    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    sub-float p1, v1, p1

    .line 78
    .line 79
    iget-object v2, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 80
    .line 81
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    div-float/2addr p1, v0

    .line 86
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 87
    .line 88
    .line 89
    move v4, v7

    .line 90
    :cond_2
    move p1, v1

    .line 91
    goto :goto_2

    .line 92
    :cond_3
    cmpl-float v1, p1, v2

    .line 93
    .line 94
    if-lez v1, :cond_5

    .line 95
    .line 96
    if-eqz v3, :cond_4

    .line 97
    .line 98
    sub-float/2addr p1, v2

    .line 99
    iget-object v1, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    div-float/2addr p1, v0

    .line 106
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 107
    .line 108
    .line 109
    move v4, v7

    .line 110
    :cond_4
    move p1, v2

    .line 111
    :cond_5
    :goto_2
    iget v0, p0, Lf/b;->B:F

    .line 112
    .line 113
    float-to-int v1, p1

    .line 114
    int-to-float v2, v1

    .line 115
    sub-float/2addr p1, v2

    .line 116
    add-float/2addr p1, v0

    .line 117
    iput p1, p0, Lf/b;->B:F

    .line 118
    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v1}, Lf/b;->m(I)Z

    .line 127
    .line 128
    .line 129
    return v4
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Lf/b;->f:I

    invoke-virtual {p0, v0}, Lf/b;->p(I)V

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
    iput-boolean v0, p0, Lf/b;->N:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/b;->Q:Lf/b$c;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Lf/b;->l:I

    .line 7
    .line 8
    if-lez v1, :cond_4

    .line 9
    .line 10
    iget-object v1, v0, Lf/b;->m:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    iget-object v1, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_4

    .line 21
    .line 22
    iget-object v2, v0, Lf/b;->e:Lf/a;

    .line 23
    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    iget v4, v0, Lf/b;->l:I

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    int-to-float v5, v3

    .line 38
    div-float/2addr v4, v5

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    check-cast v7, Lf/b$e;

    .line 45
    .line 46
    iget v8, v7, Lf/b$e;->e:F

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    iget v10, v7, Lf/b$e;->b:I

    .line 53
    .line 54
    add-int/lit8 v11, v9, -0x1

    .line 55
    .line 56
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    check-cast v11, Lf/b$e;

    .line 61
    .line 62
    iget v11, v11, Lf/b$e;->b:I

    .line 63
    .line 64
    :goto_0
    if-ge v10, v11, :cond_4

    .line 65
    .line 66
    :goto_1
    iget v12, v7, Lf/b$e;->b:I

    .line 67
    .line 68
    if-le v10, v12, :cond_0

    .line 69
    .line 70
    if-ge v6, v9, :cond_0

    .line 71
    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Lf/b$e;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v10, v12, :cond_1

    .line 82
    .line 83
    iget v8, v7, Lf/b$e;->e:F

    .line 84
    .line 85
    iget v12, v7, Lf/b$e;->d:F

    .line 86
    .line 87
    add-float v13, v8, v12

    .line 88
    .line 89
    mul-float/2addr v13, v5

    .line 90
    add-float/2addr v8, v12

    .line 91
    add-float/2addr v8, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_1
    iget-object v12, v0, Lf/b;->e:Lf/a;

    .line 94
    .line 95
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    const/high16 v12, 0x3f800000    # 1.0f

    .line 99
    .line 100
    add-float v13, v8, v12

    .line 101
    .line 102
    mul-float/2addr v13, v5

    .line 103
    add-float/2addr v12, v4

    .line 104
    add-float/2addr v12, v8

    .line 105
    move v8, v12

    .line 106
    :goto_2
    iget v12, v0, Lf/b;->l:I

    .line 107
    .line 108
    int-to-float v12, v12

    .line 109
    add-float/2addr v12, v13

    .line 110
    int-to-float v14, v2

    .line 111
    cmpl-float v12, v12, v14

    .line 112
    .line 113
    if-lez v12, :cond_2

    .line 114
    .line 115
    iget-object v12, v0, Lf/b;->m:Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    iget v15, v0, Lf/b;->n:I

    .line 122
    .line 123
    move-object/from16 v16, v1

    .line 124
    .line 125
    iget v1, v0, Lf/b;->l:I

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    add-float/2addr v1, v13

    .line 129
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    move/from16 v17, v4

    .line 134
    .line 135
    iget v4, v0, Lf/b;->o:I

    .line 136
    .line 137
    invoke-virtual {v12, v14, v15, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lf/b;->m:Landroid/graphics/drawable/Drawable;

    .line 141
    .line 142
    move-object/from16 v4, p1

    .line 143
    .line 144
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_2
    move-object/from16 v16, v1

    .line 149
    .line 150
    move/from16 v17, v4

    .line 151
    .line 152
    move-object/from16 v4, p1

    .line 153
    .line 154
    :goto_3
    add-int v1, v2, v3

    .line 155
    .line 156
    int-to-float v1, v1

    .line 157
    cmpl-float v1, v13, v1

    .line 158
    .line 159
    if-lez v1, :cond_3

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    move-object/from16 v1, v16

    .line 165
    .line 166
    move/from16 v4, v17

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_4
    :goto_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_13

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean v3, p0, Lf/b;->w:Z

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-boolean v3, p0, Lf/b;->x:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    const/4 v3, 0x2

    .line 29
    if-eqz v0, :cond_e

    .line 30
    .line 31
    if-eq v0, v3, :cond_4

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    if-eq v0, v1, :cond_3

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_3
    invoke-virtual {p0, p1}, Lf/b;->k(Landroid/view/MotionEvent;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_4
    iget v0, p0, Lf/b;->F:I

    .line 44
    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v0, v3, :cond_5

    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    iget v4, p0, Lf/b;->B:F

    .line 59
    .line 60
    sub-float v4, v3, v4

    .line 61
    .line 62
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget v6, p0, Lf/b;->E:F

    .line 71
    .line 72
    sub-float v6, v0, v6

    .line 73
    .line 74
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/4 v7, 0x0

    .line 79
    cmpl-float v8, v4, v7

    .line 80
    .line 81
    if-eqz v8, :cond_9

    .line 82
    .line 83
    iget v9, p0, Lf/b;->B:F

    .line 84
    .line 85
    iget v10, p0, Lf/b;->z:I

    .line 86
    .line 87
    int-to-float v10, v10

    .line 88
    cmpg-float v10, v9, v10

    .line 89
    .line 90
    if-gez v10, :cond_6

    .line 91
    .line 92
    if-gtz v8, :cond_7

    .line 93
    .line 94
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    iget v11, p0, Lf/b;->z:I

    .line 99
    .line 100
    sub-int/2addr v10, v11

    .line 101
    int-to-float v10, v10

    .line 102
    cmpl-float v9, v9, v10

    .line 103
    .line 104
    if-lez v9, :cond_8

    .line 105
    .line 106
    cmpg-float v7, v4, v7

    .line 107
    .line 108
    if-gez v7, :cond_8

    .line 109
    .line 110
    :cond_7
    move v7, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_8
    move v7, v2

    .line 113
    :goto_0
    if-nez v7, :cond_9

    .line 114
    .line 115
    float-to-int v4, v4

    .line 116
    float-to-int v7, v3

    .line 117
    float-to-int v9, v0

    .line 118
    invoke-static {p0, v2, v4, v7, v9}, Lf/b;->c(Landroid/view/View;ZIII)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_9

    .line 123
    .line 124
    iput v3, p0, Lf/b;->B:F

    .line 125
    .line 126
    iput v0, p0, Lf/b;->C:F

    .line 127
    .line 128
    iput-boolean v1, p0, Lf/b;->x:Z

    .line 129
    .line 130
    return v2

    .line 131
    :cond_9
    iget v2, p0, Lf/b;->A:I

    .line 132
    .line 133
    int-to-float v2, v2

    .line 134
    cmpl-float v4, v5, v2

    .line 135
    .line 136
    if-lez v4, :cond_c

    .line 137
    .line 138
    const/high16 v4, 0x3f000000    # 0.5f

    .line 139
    .line 140
    mul-float/2addr v5, v4

    .line 141
    cmpl-float v4, v5, v6

    .line 142
    .line 143
    if-lez v4, :cond_c

    .line 144
    .line 145
    iput-boolean v1, p0, Lf/b;->w:Z

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_a

    .line 152
    .line 153
    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 154
    .line 155
    .line 156
    :cond_a
    invoke-virtual {p0, v1}, Lf/b;->setScrollState(I)V

    .line 157
    .line 158
    .line 159
    if-lez v8, :cond_b

    .line 160
    .line 161
    iget v2, p0, Lf/b;->D:F

    .line 162
    .line 163
    iget v4, p0, Lf/b;->A:I

    .line 164
    .line 165
    int-to-float v4, v4

    .line 166
    add-float/2addr v2, v4

    .line 167
    goto :goto_1

    .line 168
    :cond_b
    iget v2, p0, Lf/b;->D:F

    .line 169
    .line 170
    iget v4, p0, Lf/b;->A:I

    .line 171
    .line 172
    int-to-float v4, v4

    .line 173
    sub-float/2addr v2, v4

    .line 174
    :goto_1
    iput v2, p0, Lf/b;->B:F

    .line 175
    .line 176
    iput v0, p0, Lf/b;->C:F

    .line 177
    .line 178
    invoke-direct {p0, v1}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_c
    cmpl-float v0, v6, v2

    .line 183
    .line 184
    if-lez v0, :cond_d

    .line 185
    .line 186
    iput-boolean v1, p0, Lf/b;->x:Z

    .line 187
    .line 188
    :cond_d
    :goto_2
    iget-boolean v0, p0, Lf/b;->w:Z

    .line 189
    .line 190
    if-eqz v0, :cond_11

    .line 191
    .line 192
    invoke-virtual {p0, v3}, Lf/b;->n(F)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_11

    .line 197
    .line 198
    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    iput v0, p0, Lf/b;->D:F

    .line 207
    .line 208
    iput v0, p0, Lf/b;->B:F

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lf/b;->E:F

    .line 215
    .line 216
    iput v0, p0, Lf/b;->C:F

    .line 217
    .line 218
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iput v0, p0, Lf/b;->F:I

    .line 223
    .line 224
    iput-boolean v2, p0, Lf/b;->x:Z

    .line 225
    .line 226
    iput-boolean v1, p0, Lf/b;->j:Z

    .line 227
    .line 228
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 229
    .line 230
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 231
    .line 232
    .line 233
    iget v0, p0, Lf/b;->R:I

    .line 234
    .line 235
    if-ne v0, v3, :cond_10

    .line 236
    .line 237
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    iget-object v3, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    sub-int/2addr v0, v3

    .line 250
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    iget v3, p0, Lf/b;->K:I

    .line 255
    .line 256
    if-le v0, v3, :cond_10

    .line 257
    .line 258
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 259
    .line 260
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 261
    .line 262
    .line 263
    iput-boolean v2, p0, Lf/b;->u:Z

    .line 264
    .line 265
    invoke-virtual {p0}, Lf/b;->o()V

    .line 266
    .line 267
    .line 268
    iput-boolean v1, p0, Lf/b;->w:Z

    .line 269
    .line 270
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_f

    .line 275
    .line 276
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 277
    .line 278
    .line 279
    :cond_f
    invoke-virtual {p0, v1}, Lf/b;->setScrollState(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_10
    invoke-virtual {p0, v2}, Lf/b;->d(Z)V

    .line 284
    .line 285
    .line 286
    iput-boolean v2, p0, Lf/b;->w:Z

    .line 287
    .line 288
    :cond_11
    :goto_3
    iget-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 289
    .line 290
    if-nez v0, :cond_12

    .line 291
    .line 292
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iput-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 297
    .line 298
    :cond_12
    iget-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 299
    .line 300
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 301
    .line 302
    .line 303
    iget-boolean p1, p0, Lf/b;->w:Z

    .line 304
    .line 305
    return p1

    .line 306
    :cond_13
    :goto_4
    invoke-virtual {p0}, Lf/b;->r()Z

    .line 307
    .line 308
    .line 309
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x0

    .line 33
    :goto_0
    const/16 v12, 0x8

    .line 34
    .line 35
    if-ge v10, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v14

    .line 45
    if-eq v14, v12, :cond_6

    .line 46
    .line 47
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lf/b$f;

    .line 52
    .line 53
    iget-boolean v14, v12, Lf/b$f;->a:Z

    .line 54
    .line 55
    if-eqz v14, :cond_6

    .line 56
    .line 57
    iget v12, v12, Lf/b$f;->b:I

    .line 58
    .line 59
    and-int/lit8 v14, v12, 0x7

    .line 60
    .line 61
    and-int/lit8 v12, v12, 0x70

    .line 62
    .line 63
    const/4 v15, 0x1

    .line 64
    if-eq v14, v15, :cond_2

    .line 65
    .line 66
    const/4 v15, 0x3

    .line 67
    if-eq v14, v15, :cond_1

    .line 68
    .line 69
    const/4 v15, 0x5

    .line 70
    if-eq v14, v15, :cond_0

    .line 71
    .line 72
    move v14, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v14, v2, v6

    .line 75
    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int/2addr v14, v15

    .line 81
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    add-int/2addr v6, v15

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    add-int/2addr v14, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    sub-int v14, v2, v14

    .line 98
    .line 99
    div-int/lit8 v14, v14, 0x2

    .line 100
    .line 101
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    :goto_1
    move/from16 v17, v14

    .line 106
    .line 107
    move v14, v4

    .line 108
    move/from16 v4, v17

    .line 109
    .line 110
    :goto_2
    const/16 v15, 0x10

    .line 111
    .line 112
    if-eq v12, v15, :cond_5

    .line 113
    .line 114
    const/16 v15, 0x30

    .line 115
    .line 116
    if-eq v12, v15, :cond_4

    .line 117
    .line 118
    const/16 v15, 0x50

    .line 119
    .line 120
    if-eq v12, v15, :cond_3

    .line 121
    .line 122
    move v12, v5

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    sub-int v12, v3, v7

    .line 125
    .line 126
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    sub-int/2addr v12, v15

    .line 131
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    add-int/2addr v7, v15

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    add-int/2addr v12, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    sub-int v12, v3, v12

    .line 148
    .line 149
    div-int/lit8 v12, v12, 0x2

    .line 150
    .line 151
    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    :goto_3
    move/from16 v17, v12

    .line 156
    .line 157
    move v12, v5

    .line 158
    move/from16 v5, v17

    .line 159
    .line 160
    :goto_4
    add-int/2addr v4, v8

    .line 161
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result v15

    .line 165
    add-int/2addr v15, v4

    .line 166
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    .line 168
    .line 169
    move-result v16

    .line 170
    add-int v9, v16, v5

    .line 171
    .line 172
    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 173
    .line 174
    .line 175
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    move v5, v12

    .line 178
    move v4, v14

    .line 179
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_7
    sub-int/2addr v2, v4

    .line 184
    sub-int/2addr v2, v6

    .line 185
    const/4 v6, 0x0

    .line 186
    :goto_5
    if-ge v6, v1, :cond_a

    .line 187
    .line 188
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eq v9, v12, :cond_9

    .line 197
    .line 198
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    check-cast v9, Lf/b$f;

    .line 203
    .line 204
    iget-boolean v10, v9, Lf/b$f;->a:Z

    .line 205
    .line 206
    if-nez v10, :cond_9

    .line 207
    .line 208
    invoke-virtual {v0, v8}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    if-eqz v10, :cond_9

    .line 213
    .line 214
    int-to-float v13, v2

    .line 215
    iget v10, v10, Lf/b$e;->e:F

    .line 216
    .line 217
    mul-float/2addr v10, v13

    .line 218
    float-to-int v10, v10

    .line 219
    add-int/2addr v10, v4

    .line 220
    iget-boolean v14, v9, Lf/b$f;->d:Z

    .line 221
    .line 222
    if-eqz v14, :cond_8

    .line 223
    .line 224
    const/4 v14, 0x0

    .line 225
    iput-boolean v14, v9, Lf/b$f;->d:Z

    .line 226
    .line 227
    iget v9, v9, Lf/b$f;->c:F

    .line 228
    .line 229
    mul-float/2addr v13, v9

    .line 230
    float-to-int v9, v13

    .line 231
    const/high16 v13, 0x40000000    # 2.0f

    .line 232
    .line 233
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    sub-int v14, v3, v5

    .line 238
    .line 239
    sub-int/2addr v14, v7

    .line 240
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 241
    .line 242
    .line 243
    move-result v13

    .line 244
    invoke-virtual {v8, v9, v13}, Landroid/view/View;->measure(II)V

    .line 245
    .line 246
    .line 247
    :cond_8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 248
    .line 249
    .line 250
    move-result v9

    .line 251
    add-int/2addr v9, v10

    .line 252
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 253
    .line 254
    .line 255
    move-result v13

    .line 256
    add-int/2addr v13, v5

    .line 257
    invoke-virtual {v8, v10, v5, v9, v13}, Landroid/view/View;->layout(IIII)V

    .line 258
    .line 259
    .line 260
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_a
    iput v5, v0, Lf/b;->n:I

    .line 264
    .line 265
    sub-int/2addr v3, v7

    .line 266
    iput v3, v0, Lf/b;->o:I

    .line 267
    .line 268
    iput v11, v0, Lf/b;->P:I

    .line 269
    .line 270
    iget-boolean v1, v0, Lf/b;->N:Z

    .line 271
    .line 272
    if-eqz v1, :cond_b

    .line 273
    .line 274
    iget v1, v0, Lf/b;->f:I

    .line 275
    .line 276
    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v1, v2, v2, v2}, Lf/b;->s(IIZZ)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_b
    const/4 v2, 0x0

    .line 282
    :goto_6
    iput-boolean v2, v0, Lf/b;->N:Z

    .line 283
    .line 284
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    div-int/lit8 p2, p1, 0xa

    .line 18
    .line 19
    iget v1, p0, Lf/b;->y:I

    .line 20
    .line 21
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p0, Lf/b;->z:I

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    sub-int/2addr p1, p2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    sub-int/2addr p1, p2

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr p2, v1

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    sub-int/2addr p2, v1

    .line 51
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    move v2, v0

    .line 56
    :goto_0
    const/16 v3, 0x8

    .line 57
    .line 58
    const/4 v4, 0x1

    .line 59
    const/high16 v5, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-ge v2, v1, :cond_c

    .line 62
    .line 63
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eq v7, v3, :cond_b

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lf/b$f;

    .line 78
    .line 79
    if-eqz v3, :cond_b

    .line 80
    .line 81
    iget-boolean v7, v3, Lf/b$f;->a:Z

    .line 82
    .line 83
    if-eqz v7, :cond_b

    .line 84
    .line 85
    iget v7, v3, Lf/b$f;->b:I

    .line 86
    .line 87
    and-int/lit8 v8, v7, 0x7

    .line 88
    .line 89
    and-int/lit8 v7, v7, 0x70

    .line 90
    .line 91
    const/16 v9, 0x30

    .line 92
    .line 93
    if-eq v7, v9, :cond_1

    .line 94
    .line 95
    const/16 v9, 0x50

    .line 96
    .line 97
    if-ne v7, v9, :cond_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move v7, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    :goto_1
    move v7, v4

    .line 103
    :goto_2
    const/4 v9, 0x3

    .line 104
    if-eq v8, v9, :cond_3

    .line 105
    .line 106
    const/4 v9, 0x5

    .line 107
    if-ne v8, v9, :cond_2

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_2
    move v4, v0

    .line 111
    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    .line 112
    .line 113
    if-eqz v7, :cond_4

    .line 114
    .line 115
    move v9, v8

    .line 116
    move v8, v5

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    if-eqz v4, :cond_5

    .line 119
    .line 120
    move v9, v5

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move v9, v8

    .line 123
    :goto_4
    iget v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    .line 125
    const/4 v11, -0x1

    .line 126
    const/4 v12, -0x2

    .line 127
    if-eq v10, v12, :cond_7

    .line 128
    .line 129
    if-eq v10, v11, :cond_6

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :cond_6
    move v10, p1

    .line 133
    :goto_5
    move v8, v5

    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move v10, p1

    .line 136
    :goto_6
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    .line 138
    if-eq v3, v12, :cond_9

    .line 139
    .line 140
    if-eq v3, v11, :cond_8

    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_8
    move v3, p2

    .line 144
    goto :goto_7

    .line 145
    :cond_9
    move v3, p2

    .line 146
    move v5, v9

    .line 147
    :goto_7
    invoke-static {v10, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v6, v8, v3}, Landroid/view/View;->measure(II)V

    .line 156
    .line 157
    .line 158
    if-eqz v7, :cond_a

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sub-int/2addr p2, v3

    .line 165
    goto :goto_8

    .line 166
    :cond_a
    if-eqz v4, :cond_b

    .line 167
    .line 168
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    sub-int/2addr p1, v3

    .line 173
    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 177
    .line 178
    .line 179
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    iput p2, p0, Lf/b;->r:I

    .line 184
    .line 185
    iput-boolean v4, p0, Lf/b;->s:Z

    .line 186
    .line 187
    invoke-virtual {p0}, Lf/b;->o()V

    .line 188
    .line 189
    .line 190
    iput-boolean v0, p0, Lf/b;->s:Z

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    :goto_9
    if-ge v0, p2, :cond_f

    .line 197
    .line 198
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eq v2, v3, :cond_e

    .line 207
    .line 208
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Lf/b$f;

    .line 213
    .line 214
    if-eqz v2, :cond_d

    .line 215
    .line 216
    iget-boolean v4, v2, Lf/b$f;->a:Z

    .line 217
    .line 218
    if-nez v4, :cond_e

    .line 219
    .line 220
    :cond_d
    int-to-float v4, p1

    .line 221
    iget v2, v2, Lf/b$f;->c:F

    .line 222
    .line 223
    mul-float/2addr v4, v2

    .line 224
    float-to-int v2, v4

    .line 225
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    iget v4, p0, Lf/b;->r:I

    .line 230
    .line 231
    invoke-virtual {v1, v2, v4}, Landroid/view/View;->measure(II)V

    .line 232
    .line 233
    .line 234
    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_9

    .line 237
    :cond_f
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, p1, 0x2

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    move v1, v0

    .line 12
    move v0, v2

    .line 13
    move v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    move v4, v1

    .line 19
    :goto_0
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v5}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    iget v6, v6, Lf/b$e;->b:I

    .line 38
    .line 39
    iget v7, p0, Lf/b;->f:I

    .line 40
    .line 41
    if-ne v6, v7, :cond_1

    .line 42
    .line 43
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    add-int/2addr v0, v4

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v2
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lf/b$j;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, Lf/b$j;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget p1, p1, Lf/b$j;->a:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, p1, v0, v0, v1}, Lf/b;->t(IIZZ)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v0, p1, Lf/b$j;->a:I

    .line 31
    .line 32
    iput v0, p0, Lf/b;->g:I

    .line 33
    .line 34
    iget-object p1, p1, Lf/b$j;->b:Landroid/os/Parcelable;

    .line 35
    .line 36
    iput-object p1, p0, Lf/b;->h:Landroid/os/Parcelable;

    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lf/b$j;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lf/b$j;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lf/b;->f:I

    .line 11
    .line 12
    iput v0, v1, Lf/b$j;->a:I

    .line 13
    .line 14
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, v1, Lf/b$j;->b:Landroid/os/Parcelable;

    .line 23
    .line 24
    :cond_0
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    if-eq p1, p3, :cond_0

    .line 5
    .line 6
    iget p2, p0, Lf/b;->l:I

    .line 7
    .line 8
    invoke-virtual {p0, p1, p3, p2, p2}, Lf/b;->q(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 16
    .line 17
    if-eqz v0, :cond_13

    .line 18
    .line 19
    invoke-virtual {v0}, Lf/a;->b()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    if-eqz v0, :cond_10

    .line 50
    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v0, v2, :cond_b

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    if-eq v0, v4, :cond_6

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    if-eq v0, v3, :cond_5

    .line 59
    .line 60
    const/4 v3, 0x5

    .line 61
    if-eq v0, v3, :cond_4

    .line 62
    .line 63
    const/4 v3, 0x6

    .line 64
    if-eq v0, v3, :cond_3

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Lf/b;->k(Landroid/view/MotionEvent;)V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lf/b;->F:I

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput p1, p0, Lf/b;->B:F

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iput v3, p0, Lf/b;->B:F

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Lf/b;->F:I

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    iget-boolean p1, p0, Lf/b;->w:Z

    .line 104
    .line 105
    if-eqz p1, :cond_11

    .line 106
    .line 107
    iget p1, p0, Lf/b;->f:I

    .line 108
    .line 109
    invoke-virtual {p0, p1, v1, v2, v1}, Lf/b;->s(IIZZ)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lf/b;->r()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_6
    iget-boolean v0, p0, Lf/b;->w:Z

    .line 119
    .line 120
    if-nez v0, :cond_a

    .line 121
    .line 122
    iget v0, p0, Lf/b;->F:I

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-ne v0, v3, :cond_7

    .line 129
    .line 130
    invoke-virtual {p0}, Lf/b;->r()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iget v4, p0, Lf/b;->B:F

    .line 141
    .line 142
    sub-float v4, v3, v4

    .line 143
    .line 144
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iget v5, p0, Lf/b;->C:F

    .line 153
    .line 154
    sub-float v5, v0, v5

    .line 155
    .line 156
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    iget v6, p0, Lf/b;->A:I

    .line 161
    .line 162
    int-to-float v6, v6

    .line 163
    cmpl-float v6, v4, v6

    .line 164
    .line 165
    if-lez v6, :cond_a

    .line 166
    .line 167
    cmpl-float v4, v4, v5

    .line 168
    .line 169
    if-lez v4, :cond_a

    .line 170
    .line 171
    iput-boolean v2, p0, Lf/b;->w:Z

    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    if-eqz v4, :cond_8

    .line 178
    .line 179
    invoke-interface {v4, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 180
    .line 181
    .line 182
    :cond_8
    iget v4, p0, Lf/b;->D:F

    .line 183
    .line 184
    sub-float/2addr v3, v4

    .line 185
    const/4 v5, 0x0

    .line 186
    cmpl-float v3, v3, v5

    .line 187
    .line 188
    if-lez v3, :cond_9

    .line 189
    .line 190
    iget v3, p0, Lf/b;->A:I

    .line 191
    .line 192
    int-to-float v3, v3

    .line 193
    add-float/2addr v4, v3

    .line 194
    goto :goto_0

    .line 195
    :cond_9
    iget v3, p0, Lf/b;->A:I

    .line 196
    .line 197
    int-to-float v3, v3

    .line 198
    sub-float/2addr v4, v3

    .line 199
    :goto_0
    iput v4, p0, Lf/b;->B:F

    .line 200
    .line 201
    iput v0, p0, Lf/b;->C:F

    .line 202
    .line 203
    invoke-virtual {p0, v2}, Lf/b;->setScrollState(I)V

    .line 204
    .line 205
    .line 206
    invoke-direct {p0, v2}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 216
    .line 217
    .line 218
    :cond_a
    iget-boolean v0, p0, Lf/b;->w:Z

    .line 219
    .line 220
    if-eqz v0, :cond_11

    .line 221
    .line 222
    iget v0, p0, Lf/b;->F:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Lf/b;->n(F)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    or-int/2addr v1, p1

    .line 237
    goto/16 :goto_3

    .line 238
    .line 239
    :cond_b
    iget-boolean v0, p0, Lf/b;->w:Z

    .line 240
    .line 241
    if-eqz v0, :cond_11

    .line 242
    .line 243
    iget-object v0, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 244
    .line 245
    iget v4, p0, Lf/b;->I:I

    .line 246
    .line 247
    int-to-float v4, v4

    .line 248
    const/16 v5, 0x3e8

    .line 249
    .line 250
    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 251
    .line 252
    .line 253
    iget v4, p0, Lf/b;->F:I

    .line 254
    .line 255
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    float-to-int v0, v0

    .line 260
    iput-boolean v2, p0, Lf/b;->u:Z

    .line 261
    .line 262
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    invoke-virtual {p0}, Lf/b;->h()Lf/b$e;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    iget v7, p0, Lf/b;->l:I

    .line 275
    .line 276
    int-to-float v7, v7

    .line 277
    int-to-float v4, v4

    .line 278
    div-float/2addr v7, v4

    .line 279
    iget v8, v6, Lf/b$e;->b:I

    .line 280
    .line 281
    int-to-float v5, v5

    .line 282
    div-float/2addr v5, v4

    .line 283
    iget v4, v6, Lf/b$e;->e:F

    .line 284
    .line 285
    sub-float/2addr v5, v4

    .line 286
    iget v4, v6, Lf/b$e;->d:F

    .line 287
    .line 288
    add-float/2addr v4, v7

    .line 289
    div-float/2addr v5, v4

    .line 290
    iget v4, p0, Lf/b;->F:I

    .line 291
    .line 292
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    iget v4, p0, Lf/b;->D:F

    .line 301
    .line 302
    sub-float/2addr p1, v4

    .line 303
    float-to-int p1, p1

    .line 304
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    iget v4, p0, Lf/b;->J:I

    .line 309
    .line 310
    if-le p1, v4, :cond_d

    .line 311
    .line 312
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    iget v4, p0, Lf/b;->H:I

    .line 317
    .line 318
    if-le p1, v4, :cond_d

    .line 319
    .line 320
    if-lez v0, :cond_c

    .line 321
    .line 322
    goto :goto_2

    .line 323
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_d
    iget p1, p0, Lf/b;->f:I

    .line 327
    .line 328
    if-lt v8, p1, :cond_e

    .line 329
    .line 330
    const p1, 0x3ecccccd    # 0.4f

    .line 331
    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_e
    const p1, 0x3f19999a    # 0.6f

    .line 335
    .line 336
    .line 337
    :goto_1
    add-float/2addr v5, p1

    .line 338
    float-to-int p1, v5

    .line 339
    add-int/2addr v8, p1

    .line 340
    :goto_2
    iget-object p1, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 343
    .line 344
    .line 345
    move-result v4

    .line 346
    if-lez v4, :cond_f

    .line 347
    .line 348
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Lf/b$e;

    .line 353
    .line 354
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v4

    .line 358
    add-int/2addr v4, v3

    .line 359
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    check-cast p1, Lf/b$e;

    .line 364
    .line 365
    iget v1, v1, Lf/b$e;->b:I

    .line 366
    .line 367
    iget p1, p1, Lf/b$e;->b:I

    .line 368
    .line 369
    invoke-static {v8, p1}, Ljava/lang/Math;->min(II)I

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    :cond_f
    invoke-virtual {p0, v8, v0, v2, v2}, Lf/b;->t(IIZZ)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Lf/b;->r()Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    goto :goto_3

    .line 385
    :cond_10
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 388
    .line 389
    .line 390
    iput-boolean v1, p0, Lf/b;->u:Z

    .line 391
    .line 392
    invoke-virtual {p0}, Lf/b;->o()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    iput v0, p0, Lf/b;->D:F

    .line 400
    .line 401
    iput v0, p0, Lf/b;->B:F

    .line 402
    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    iput v0, p0, Lf/b;->E:F

    .line 408
    .line 409
    iput v0, p0, Lf/b;->C:F

    .line 410
    .line 411
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    iput p1, p0, Lf/b;->F:I

    .line 416
    .line 417
    :cond_11
    :goto_3
    if-eqz v1, :cond_12

    .line 418
    .line 419
    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 420
    .line 421
    .line 422
    :cond_12
    return v2

    .line 423
    :cond_13
    :goto_4
    return v1
.end method

.method public final p(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lf/b;->f:I

    .line 6
    .line 7
    if-eq v2, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v2}, Lf/b;->i(I)Lf/b$e;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput v1, v0, Lf/b;->f:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v1, v0, Lf/b;->e:Lf/a;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-boolean v1, v0, Lf/b;->u:Z

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-object v1, v0, Lf/b;->e:Lf/a;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget v1, v0, Lf/b;->v:I

    .line 40
    .line 41
    iget v3, v0, Lf/b;->f:I

    .line 42
    .line 43
    sub-int/2addr v3, v1

    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v5, v0, Lf/b;->e:Lf/a;

    .line 50
    .line 51
    invoke-virtual {v5}, Lf/a;->b()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    add-int/lit8 v6, v5, -0x1

    .line 56
    .line 57
    iget v7, v0, Lf/b;->f:I

    .line 58
    .line 59
    add-int/2addr v7, v1

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iget v6, v0, Lf/b;->a:I

    .line 65
    .line 66
    if-ne v5, v6, :cond_36

    .line 67
    .line 68
    move v6, v4

    .line 69
    :goto_1
    iget-object v7, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ge v6, v7, :cond_5

    .line 76
    .line 77
    iget-object v7, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Lf/b$e;

    .line 84
    .line 85
    iget v8, v7, Lf/b$e;->b:I

    .line 86
    .line 87
    iget v9, v0, Lf/b;->f:I

    .line 88
    .line 89
    if-lt v8, v9, :cond_4

    .line 90
    .line 91
    if-ne v8, v9, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 v7, 0x0

    .line 98
    :goto_2
    if-nez v7, :cond_6

    .line 99
    .line 100
    if-lez v5, :cond_6

    .line 101
    .line 102
    iget v7, v0, Lf/b;->f:I

    .line 103
    .line 104
    invoke-virtual {v0, v7, v6}, Lf/b;->a(II)Lf/b$e;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    :cond_6
    if-eqz v7, :cond_2d

    .line 109
    .line 110
    add-int/lit8 v8, v6, -0x1

    .line 111
    .line 112
    if-ltz v8, :cond_7

    .line 113
    .line 114
    iget-object v9, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Lf/b$e;

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_7
    const/4 v9, 0x0

    .line 124
    :goto_3
    invoke-direct/range {p0 .. p0}, Lf/b;->getClientWidth()I

    .line 125
    .line 126
    .line 127
    move-result v10

    .line 128
    const/high16 v11, 0x40000000    # 2.0f

    .line 129
    .line 130
    if-gtz v10, :cond_8

    .line 131
    .line 132
    const/4 v12, 0x0

    .line 133
    goto :goto_4

    .line 134
    :cond_8
    iget v12, v7, Lf/b$e;->d:F

    .line 135
    .line 136
    sub-float v12, v11, v12

    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    int-to-float v13, v13

    .line 143
    int-to-float v14, v10

    .line 144
    div-float/2addr v13, v14

    .line 145
    add-float/2addr v12, v13

    .line 146
    :goto_4
    iget v13, v0, Lf/b;->f:I

    .line 147
    .line 148
    const/4 v14, 0x1

    .line 149
    sub-int/2addr v13, v14

    .line 150
    const/4 v15, 0x0

    .line 151
    :goto_5
    if-ltz v13, :cond_e

    .line 152
    .line 153
    cmpl-float v16, v15, v12

    .line 154
    .line 155
    if-ltz v16, :cond_a

    .line 156
    .line 157
    if-ge v13, v3, :cond_a

    .line 158
    .line 159
    if-nez v9, :cond_9

    .line 160
    .line 161
    goto :goto_7

    .line 162
    :cond_9
    iget v4, v9, Lf/b$e;->b:I

    .line 163
    .line 164
    if-ne v13, v4, :cond_d

    .line 165
    .line 166
    iget-boolean v4, v9, Lf/b$e;->c:Z

    .line 167
    .line 168
    if-nez v4, :cond_d

    .line 169
    .line 170
    iget-object v4, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    iget-object v4, v0, Lf/b;->e:Lf/a;

    .line 176
    .line 177
    iget-object v9, v9, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 178
    .line 179
    invoke-virtual {v4, v0, v9}, Lf/a;->a(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v8, v8, -0x1

    .line 183
    .line 184
    add-int/lit8 v6, v6, -0x1

    .line 185
    .line 186
    if-ltz v8, :cond_c

    .line 187
    .line 188
    iget-object v4, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    check-cast v4, Lf/b$e;

    .line 195
    .line 196
    goto :goto_6

    .line 197
    :cond_a
    if-eqz v9, :cond_b

    .line 198
    .line 199
    iget v4, v9, Lf/b$e;->b:I

    .line 200
    .line 201
    if-ne v13, v4, :cond_b

    .line 202
    .line 203
    iget v4, v9, Lf/b$e;->d:F

    .line 204
    .line 205
    add-float/2addr v15, v4

    .line 206
    add-int/lit8 v8, v8, -0x1

    .line 207
    .line 208
    if-ltz v8, :cond_c

    .line 209
    .line 210
    iget-object v4, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Lf/b$e;

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_b
    add-int/lit8 v4, v8, 0x1

    .line 220
    .line 221
    invoke-virtual {v0, v13, v4}, Lf/b;->a(II)Lf/b$e;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    iget v4, v4, Lf/b$e;->d:F

    .line 226
    .line 227
    add-float/2addr v15, v4

    .line 228
    add-int/lit8 v6, v6, 0x1

    .line 229
    .line 230
    if-ltz v8, :cond_c

    .line 231
    .line 232
    iget-object v4, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    check-cast v4, Lf/b$e;

    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_c
    const/4 v4, 0x0

    .line 242
    :goto_6
    move-object v9, v4

    .line 243
    :cond_d
    add-int/lit8 v13, v13, -0x1

    .line 244
    .line 245
    const/4 v4, 0x0

    .line 246
    goto :goto_5

    .line 247
    :cond_e
    :goto_7
    iget v3, v7, Lf/b$e;->d:F

    .line 248
    .line 249
    add-int/lit8 v4, v6, 0x1

    .line 250
    .line 251
    cmpg-float v8, v3, v11

    .line 252
    .line 253
    if-gez v8, :cond_16

    .line 254
    .line 255
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    if-ge v4, v8, :cond_f

    .line 262
    .line 263
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    check-cast v8, Lf/b$e;

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_f
    const/4 v8, 0x0

    .line 273
    :goto_8
    if-gtz v10, :cond_10

    .line 274
    .line 275
    const/4 v9, 0x0

    .line 276
    goto :goto_9

    .line 277
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    int-to-float v9, v9

    .line 282
    int-to-float v10, v10

    .line 283
    div-float/2addr v9, v10

    .line 284
    add-float/2addr v9, v11

    .line 285
    :goto_9
    iget v10, v0, Lf/b;->f:I

    .line 286
    .line 287
    add-int/2addr v10, v14

    .line 288
    move v11, v4

    .line 289
    :goto_a
    if-ge v10, v5, :cond_16

    .line 290
    .line 291
    cmpl-float v12, v3, v9

    .line 292
    .line 293
    if-ltz v12, :cond_12

    .line 294
    .line 295
    if-le v10, v1, :cond_12

    .line 296
    .line 297
    if-nez v8, :cond_11

    .line 298
    .line 299
    goto :goto_c

    .line 300
    :cond_11
    iget v12, v8, Lf/b$e;->b:I

    .line 301
    .line 302
    if-ne v10, v12, :cond_15

    .line 303
    .line 304
    iget-boolean v12, v8, Lf/b$e;->c:Z

    .line 305
    .line 306
    if-nez v12, :cond_15

    .line 307
    .line 308
    iget-object v12, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    iget-object v12, v0, Lf/b;->e:Lf/a;

    .line 314
    .line 315
    iget-object v8, v8, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 316
    .line 317
    invoke-virtual {v12, v0, v8}, Lf/a;->a(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V

    .line 318
    .line 319
    .line 320
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    if-ge v11, v8, :cond_14

    .line 327
    .line 328
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 329
    .line 330
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v8

    .line 334
    check-cast v8, Lf/b$e;

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_12
    if-eqz v8, :cond_13

    .line 338
    .line 339
    iget v12, v8, Lf/b$e;->b:I

    .line 340
    .line 341
    if-ne v10, v12, :cond_13

    .line 342
    .line 343
    iget v8, v8, Lf/b$e;->d:F

    .line 344
    .line 345
    add-float/2addr v3, v8

    .line 346
    add-int/lit8 v11, v11, 0x1

    .line 347
    .line 348
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 349
    .line 350
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 351
    .line 352
    .line 353
    move-result v8

    .line 354
    if-ge v11, v8, :cond_14

    .line 355
    .line 356
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 357
    .line 358
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    check-cast v8, Lf/b$e;

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_13
    invoke-virtual {v0, v10, v11}, Lf/b;->a(II)Lf/b$e;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    add-int/lit8 v11, v11, 0x1

    .line 370
    .line 371
    iget v8, v8, Lf/b$e;->d:F

    .line 372
    .line 373
    add-float/2addr v3, v8

    .line 374
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-ge v11, v8, :cond_14

    .line 381
    .line 382
    iget-object v8, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object v8

    .line 388
    check-cast v8, Lf/b$e;

    .line 389
    .line 390
    goto :goto_b

    .line 391
    :cond_14
    const/4 v8, 0x0

    .line 392
    :cond_15
    :goto_b
    add-int/lit8 v10, v10, 0x1

    .line 393
    .line 394
    goto :goto_a

    .line 395
    :cond_16
    :goto_c
    iget-object v1, v0, Lf/b;->e:Lf/a;

    .line 396
    .line 397
    invoke-virtual {v1}, Lf/a;->b()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-direct/range {p0 .. p0}, Lf/b;->getClientWidth()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-lez v3, :cond_17

    .line 406
    .line 407
    iget v5, v0, Lf/b;->l:I

    .line 408
    .line 409
    int-to-float v5, v5

    .line 410
    int-to-float v3, v3

    .line 411
    div-float/2addr v5, v3

    .line 412
    goto :goto_d

    .line 413
    :cond_17
    const/4 v5, 0x0

    .line 414
    :goto_d
    iget-object v3, v0, Lf/b;->b:Ljava/util/ArrayList;

    .line 415
    .line 416
    const/4 v8, -0x1

    .line 417
    const/high16 v9, 0x3f800000    # 1.0f

    .line 418
    .line 419
    if-eqz v2, :cond_1d

    .line 420
    .line 421
    iget v10, v2, Lf/b$e;->b:I

    .line 422
    .line 423
    iget v11, v7, Lf/b$e;->b:I

    .line 424
    .line 425
    if-ge v10, v11, :cond_1a

    .line 426
    .line 427
    iget v11, v2, Lf/b$e;->e:F

    .line 428
    .line 429
    iget v2, v2, Lf/b$e;->d:F

    .line 430
    .line 431
    add-float/2addr v11, v2

    .line 432
    add-float/2addr v11, v5

    .line 433
    add-int/2addr v10, v14

    .line 434
    const/4 v2, 0x0

    .line 435
    :goto_e
    iget v12, v7, Lf/b$e;->b:I

    .line 436
    .line 437
    if-gt v10, v12, :cond_1d

    .line 438
    .line 439
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 440
    .line 441
    .line 442
    move-result v12

    .line 443
    if-ge v2, v12, :cond_1d

    .line 444
    .line 445
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v12

    .line 449
    check-cast v12, Lf/b$e;

    .line 450
    .line 451
    :goto_f
    iget v13, v12, Lf/b$e;->b:I

    .line 452
    .line 453
    if-le v10, v13, :cond_18

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 456
    .line 457
    .line 458
    move-result v13

    .line 459
    add-int/2addr v13, v8

    .line 460
    if-ge v2, v13, :cond_18

    .line 461
    .line 462
    add-int/lit8 v2, v2, 0x1

    .line 463
    .line 464
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v12

    .line 468
    check-cast v12, Lf/b$e;

    .line 469
    .line 470
    goto :goto_f

    .line 471
    :cond_18
    :goto_10
    iget v13, v12, Lf/b$e;->b:I

    .line 472
    .line 473
    if-ge v10, v13, :cond_19

    .line 474
    .line 475
    iget-object v13, v0, Lf/b;->e:Lf/a;

    .line 476
    .line 477
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    .line 479
    .line 480
    add-float v13, v9, v5

    .line 481
    .line 482
    add-float/2addr v11, v13

    .line 483
    add-int/lit8 v10, v10, 0x1

    .line 484
    .line 485
    goto :goto_10

    .line 486
    :cond_19
    iput v11, v12, Lf/b$e;->e:F

    .line 487
    .line 488
    iget v12, v12, Lf/b$e;->d:F

    .line 489
    .line 490
    add-float/2addr v12, v5

    .line 491
    add-float/2addr v11, v12

    .line 492
    add-int/lit8 v10, v10, 0x1

    .line 493
    .line 494
    goto :goto_e

    .line 495
    :cond_1a
    if-le v10, v11, :cond_1d

    .line 496
    .line 497
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 498
    .line 499
    .line 500
    move-result v11

    .line 501
    add-int/2addr v11, v8

    .line 502
    iget v2, v2, Lf/b$e;->e:F

    .line 503
    .line 504
    add-int/2addr v10, v8

    .line 505
    :goto_11
    iget v12, v7, Lf/b$e;->b:I

    .line 506
    .line 507
    if-lt v10, v12, :cond_1d

    .line 508
    .line 509
    if-ltz v11, :cond_1d

    .line 510
    .line 511
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v12

    .line 515
    check-cast v12, Lf/b$e;

    .line 516
    .line 517
    :goto_12
    iget v13, v12, Lf/b$e;->b:I

    .line 518
    .line 519
    if-ge v10, v13, :cond_1b

    .line 520
    .line 521
    if-lez v11, :cond_1b

    .line 522
    .line 523
    add-int/lit8 v11, v11, -0x1

    .line 524
    .line 525
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v12

    .line 529
    check-cast v12, Lf/b$e;

    .line 530
    .line 531
    goto :goto_12

    .line 532
    :cond_1b
    :goto_13
    iget v13, v12, Lf/b$e;->b:I

    .line 533
    .line 534
    if-le v10, v13, :cond_1c

    .line 535
    .line 536
    iget-object v13, v0, Lf/b;->e:Lf/a;

    .line 537
    .line 538
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 539
    .line 540
    .line 541
    add-float v13, v9, v5

    .line 542
    .line 543
    sub-float/2addr v2, v13

    .line 544
    add-int/lit8 v10, v10, -0x1

    .line 545
    .line 546
    goto :goto_13

    .line 547
    :cond_1c
    iget v13, v12, Lf/b$e;->d:F

    .line 548
    .line 549
    add-float/2addr v13, v5

    .line 550
    sub-float/2addr v2, v13

    .line 551
    iput v2, v12, Lf/b$e;->e:F

    .line 552
    .line 553
    add-int/lit8 v10, v10, -0x1

    .line 554
    .line 555
    goto :goto_11

    .line 556
    :cond_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 557
    .line 558
    .line 559
    move-result v2

    .line 560
    iget v10, v7, Lf/b$e;->e:F

    .line 561
    .line 562
    iget v11, v7, Lf/b$e;->b:I

    .line 563
    .line 564
    add-int/lit8 v12, v11, -0x1

    .line 565
    .line 566
    if-nez v11, :cond_1e

    .line 567
    .line 568
    move v13, v10

    .line 569
    goto :goto_14

    .line 570
    :cond_1e
    const v13, -0x800001

    .line 571
    .line 572
    .line 573
    :goto_14
    iput v13, v0, Lf/b;->p:F

    .line 574
    .line 575
    add-int/2addr v1, v8

    .line 576
    if-ne v11, v1, :cond_1f

    .line 577
    .line 578
    iget v11, v7, Lf/b$e;->d:F

    .line 579
    .line 580
    add-float/2addr v11, v10

    .line 581
    sub-float/2addr v11, v9

    .line 582
    goto :goto_15

    .line 583
    :cond_1f
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 584
    .line 585
    .line 586
    :goto_15
    iput v11, v0, Lf/b;->q:F

    .line 587
    .line 588
    add-int/2addr v6, v8

    .line 589
    :goto_16
    if-ltz v6, :cond_22

    .line 590
    .line 591
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v11

    .line 595
    check-cast v11, Lf/b$e;

    .line 596
    .line 597
    :goto_17
    iget v13, v11, Lf/b$e;->b:I

    .line 598
    .line 599
    if-le v12, v13, :cond_20

    .line 600
    .line 601
    iget-object v13, v0, Lf/b;->e:Lf/a;

    .line 602
    .line 603
    add-int/lit8 v12, v12, -0x1

    .line 604
    .line 605
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    add-float v13, v9, v5

    .line 609
    .line 610
    sub-float/2addr v10, v13

    .line 611
    goto :goto_17

    .line 612
    :cond_20
    iget v15, v11, Lf/b$e;->d:F

    .line 613
    .line 614
    add-float/2addr v15, v5

    .line 615
    sub-float/2addr v10, v15

    .line 616
    iput v10, v11, Lf/b$e;->e:F

    .line 617
    .line 618
    if-nez v13, :cond_21

    .line 619
    .line 620
    iput v10, v0, Lf/b;->p:F

    .line 621
    .line 622
    :cond_21
    add-int/lit8 v6, v6, -0x1

    .line 623
    .line 624
    add-int/lit8 v12, v12, -0x1

    .line 625
    .line 626
    goto :goto_16

    .line 627
    :cond_22
    iget v6, v7, Lf/b$e;->e:F

    .line 628
    .line 629
    iget v10, v7, Lf/b$e;->d:F

    .line 630
    .line 631
    add-float/2addr v6, v10

    .line 632
    add-float/2addr v6, v5

    .line 633
    iget v10, v7, Lf/b$e;->b:I

    .line 634
    .line 635
    add-int/2addr v10, v14

    .line 636
    :goto_18
    if-ge v4, v2, :cond_25

    .line 637
    .line 638
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v11

    .line 642
    check-cast v11, Lf/b$e;

    .line 643
    .line 644
    :goto_19
    iget v12, v11, Lf/b$e;->b:I

    .line 645
    .line 646
    if-ge v10, v12, :cond_23

    .line 647
    .line 648
    iget-object v12, v0, Lf/b;->e:Lf/a;

    .line 649
    .line 650
    add-int/lit8 v10, v10, 0x1

    .line 651
    .line 652
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 653
    .line 654
    .line 655
    add-float v12, v9, v5

    .line 656
    .line 657
    add-float/2addr v6, v12

    .line 658
    goto :goto_19

    .line 659
    :cond_23
    if-ne v12, v1, :cond_24

    .line 660
    .line 661
    iget v12, v11, Lf/b$e;->d:F

    .line 662
    .line 663
    add-float/2addr v12, v6

    .line 664
    sub-float/2addr v12, v9

    .line 665
    iput v12, v0, Lf/b;->q:F

    .line 666
    .line 667
    :cond_24
    iput v6, v11, Lf/b$e;->e:F

    .line 668
    .line 669
    iget v11, v11, Lf/b$e;->d:F

    .line 670
    .line 671
    add-float/2addr v11, v5

    .line 672
    add-float/2addr v6, v11

    .line 673
    add-int/lit8 v4, v4, 0x1

    .line 674
    .line 675
    add-int/lit8 v10, v10, 0x1

    .line 676
    .line 677
    goto :goto_18

    .line 678
    :cond_25
    iget-object v1, v0, Lf/b;->e:Lf/a;

    .line 679
    .line 680
    iget v2, v0, Lf/b;->f:I

    .line 681
    .line 682
    iget-object v3, v7, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 683
    .line 684
    check-cast v1, Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 685
    .line 686
    iget v4, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 687
    .line 688
    if-eq v4, v2, :cond_2d

    .line 689
    .line 690
    if-ne v4, v8, :cond_26

    .line 691
    .line 692
    iget-object v4, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lg0/c;

    .line 693
    .line 694
    invoke-interface {v4}, Lg0/c;->a()I

    .line 695
    .line 696
    .line 697
    move-result v4

    .line 698
    if-eq v2, v4, :cond_26

    .line 699
    .line 700
    goto :goto_1f

    .line 701
    :cond_26
    iput v2, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 702
    .line 703
    iget-object v4, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->d:Lru/zdevs/zarchiver/ZImageViewer;

    .line 704
    .line 705
    iget-object v5, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lg0/c;

    .line 706
    .line 707
    invoke-interface {v5, v2}, Lg0/c;->getName(I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v5

    .line 711
    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 712
    .line 713
    .line 714
    iget-object v4, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lg0/c;

    .line 715
    .line 716
    invoke-interface {v4}, Lg0/c;->c()Z

    .line 717
    .line 718
    .line 719
    move-result v4

    .line 720
    if-nez v4, :cond_2d

    .line 721
    .line 722
    const/4 v4, 0x0

    .line 723
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 724
    .line 725
    .line 726
    move-result-object v3

    .line 727
    instance-of v4, v3, Lg/d;

    .line 728
    .line 729
    if-eqz v4, :cond_2d

    .line 730
    .line 731
    check-cast v3, Lg/d;

    .line 732
    .line 733
    iget-object v4, v3, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 734
    .line 735
    if-nez v4, :cond_2a

    .line 736
    .line 737
    iget-object v4, v3, Lg/d;->d:Lg/a;

    .line 738
    .line 739
    if-eqz v4, :cond_29

    .line 740
    .line 741
    iget-object v4, v4, Lg/a;->c:Landroid/os/ParcelFileDescriptor;

    .line 742
    .line 743
    instance-of v5, v4, Ld0/g;

    .line 744
    .line 745
    if-eqz v5, :cond_28

    .line 746
    .line 747
    check-cast v4, Ld0/g;

    .line 748
    .line 749
    iget-boolean v5, v4, Ld0/g;->c:Z

    .line 750
    .line 751
    if-nez v5, :cond_27

    .line 752
    .line 753
    iget-object v4, v4, Ld0/g;->b:Ld0/d;

    .line 754
    .line 755
    invoke-interface {v4}, Ld0/d;->isOpen()Z

    .line 756
    .line 757
    .line 758
    move-result v4

    .line 759
    if-eqz v4, :cond_27

    .line 760
    .line 761
    goto :goto_1a

    .line 762
    :cond_27
    const/4 v4, 0x0

    .line 763
    goto :goto_1b

    .line 764
    :cond_28
    :goto_1a
    move v4, v14

    .line 765
    :goto_1b
    if-eqz v4, :cond_29

    .line 766
    .line 767
    goto :goto_1c

    .line 768
    :cond_29
    const/4 v4, 0x0

    .line 769
    goto :goto_1d

    .line 770
    :cond_2a
    :goto_1c
    move v4, v14

    .line 771
    :goto_1d
    if-nez v4, :cond_2d

    .line 772
    .line 773
    const/4 v4, 0x0

    .line 774
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ZImageViewer$e;->e(I)Lg/a;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    iget-object v2, v3, Lg/d;->d:Lg/a;

    .line 782
    .line 783
    if-nez v2, :cond_2c

    .line 784
    .line 785
    iget-object v2, v3, Lg/d;->a:Landroid/graphics/Bitmap;

    .line 786
    .line 787
    if-eqz v2, :cond_2b

    .line 788
    .line 789
    goto :goto_1e

    .line 790
    :cond_2b
    move v14, v4

    .line 791
    :cond_2c
    :goto_1e
    invoke-virtual {v3, v1, v14}, Lg/d;->w(Lg/a;Z)V

    .line 792
    .line 793
    .line 794
    goto :goto_20

    .line 795
    :cond_2d
    :goto_1f
    const/4 v4, 0x0

    .line 796
    :goto_20
    iget-object v1, v0, Lf/b;->e:Lf/a;

    .line 797
    .line 798
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 799
    .line 800
    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 802
    .line 803
    .line 804
    move-result v1

    .line 805
    move v2, v4

    .line 806
    :goto_21
    if-ge v2, v1, :cond_2f

    .line 807
    .line 808
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 813
    .line 814
    .line 815
    move-result-object v5

    .line 816
    check-cast v5, Lf/b$f;

    .line 817
    .line 818
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    iget-boolean v6, v5, Lf/b$f;->a:Z

    .line 822
    .line 823
    if-nez v6, :cond_2e

    .line 824
    .line 825
    iget v6, v5, Lf/b$f;->c:F

    .line 826
    .line 827
    const/4 v7, 0x0

    .line 828
    cmpl-float v6, v6, v7

    .line 829
    .line 830
    if-nez v6, :cond_2e

    .line 831
    .line 832
    invoke-virtual {v0, v3}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    if-eqz v3, :cond_2e

    .line 837
    .line 838
    iget v6, v3, Lf/b$e;->d:F

    .line 839
    .line 840
    iput v6, v5, Lf/b$f;->c:F

    .line 841
    .line 842
    iget v3, v3, Lf/b$e;->b:I

    .line 843
    .line 844
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 845
    .line 846
    .line 847
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 848
    .line 849
    goto :goto_21

    .line 850
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    .line 851
    .line 852
    .line 853
    move-result v1

    .line 854
    if-eqz v1, :cond_35

    .line 855
    .line 856
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    if-eqz v1, :cond_32

    .line 861
    .line 862
    :goto_22
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 863
    .line 864
    .line 865
    move-result-object v2

    .line 866
    if-eq v2, v0, :cond_31

    .line 867
    .line 868
    instance-of v1, v2, Landroid/view/View;

    .line 869
    .line 870
    if-nez v1, :cond_30

    .line 871
    .line 872
    goto :goto_23

    .line 873
    :cond_30
    move-object v1, v2

    .line 874
    check-cast v1, Landroid/view/View;

    .line 875
    .line 876
    goto :goto_22

    .line 877
    :cond_31
    invoke-virtual {v0, v1}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    goto :goto_24

    .line 882
    :cond_32
    :goto_23
    const/4 v1, 0x0

    .line 883
    :goto_24
    if-eqz v1, :cond_33

    .line 884
    .line 885
    iget v1, v1, Lf/b$e;->b:I

    .line 886
    .line 887
    iget v2, v0, Lf/b;->f:I

    .line 888
    .line 889
    if-eq v1, v2, :cond_35

    .line 890
    .line 891
    :cond_33
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 892
    .line 893
    .line 894
    move-result v1

    .line 895
    if-ge v4, v1, :cond_35

    .line 896
    .line 897
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-virtual {v0, v1}, Lf/b;->g(Landroid/view/View;)Lf/b$e;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    if-eqz v2, :cond_34

    .line 906
    .line 907
    iget v2, v2, Lf/b$e;->b:I

    .line 908
    .line 909
    iget v3, v0, Lf/b;->f:I

    .line 910
    .line 911
    if-ne v2, v3, :cond_34

    .line 912
    .line 913
    const/4 v2, 0x2

    .line 914
    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    if-eqz v1, :cond_34

    .line 919
    .line 920
    goto :goto_26

    .line 921
    :cond_34
    add-int/lit8 v4, v4, 0x1

    .line 922
    .line 923
    goto :goto_25

    .line 924
    :cond_35
    :goto_26
    return-void

    .line 925
    :cond_36
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 934
    .line 935
    .line 936
    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    goto :goto_27

    .line 938
    :catch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 943
    .line 944
    .line 945
    move-result-object v1

    .line 946
    :goto_27
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 947
    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    .line 949
    .line 950
    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    .line 951
    .line 952
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 953
    .line 954
    .line 955
    iget v4, v0, Lf/b;->a:I

    .line 956
    .line 957
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 958
    .line 959
    .line 960
    const-string v4, ", found: "

    .line 961
    .line 962
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 966
    .line 967
    .line 968
    const-string v4, " Pager id: "

    .line 969
    .line 970
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    const-string v1, " Pager class: "

    .line 977
    .line 978
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    const-string v1, " Problematic adapter: "

    .line 989
    .line 990
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    .line 992
    .line 993
    iget-object v1, v0, Lf/b;->e:Lf/a;

    .line 994
    .line 995
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1000
    .line 1001
    .line 1002
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v1

    .line 1006
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1007
    .line 1008
    .line 1009
    throw v2
.end method

.method public final postInvalidateOnAnimation()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void
.end method

.method public final postOnAnimation(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(IIII)V
    .locals 1

    .line 1
    if-lez p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 20
    .line 21
    invoke-virtual {p0}, Lf/b;->getCurrentItem()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    mul-int/2addr p2, p3

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr p1, v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sub-int/2addr p1, v0

    .line 44
    add-int/2addr p1, p3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    sub-int/2addr p2, p3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    sub-int/2addr p2, p3

    .line 55
    add-int/2addr p2, p4

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    int-to-float p3, p3

    .line 61
    int-to-float p2, p2

    .line 62
    div-float/2addr p3, p2

    .line 63
    int-to-float p1, p1

    .line 64
    mul-float/2addr p3, p1

    .line 65
    float-to-int p1, p3

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget p2, p0, Lf/b;->f:I

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Lf/b;->i(I)Lf/b$e;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget p2, p2, Lf/b$e;->e:F

    .line 83
    .line 84
    iget p3, p0, Lf/b;->q:F

    .line 85
    .line 86
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const/4 p2, 0x0

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    sub-int/2addr p1, p3

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    sub-int/2addr p1, p3

    .line 102
    int-to-float p1, p1

    .line 103
    mul-float/2addr p2, p1

    .line 104
    float-to-int p1, p2

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eq p1, p2, :cond_3

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    invoke-virtual {p0, p2}, Lf/b;->d(Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_1
    return-void
.end method

.method public final r()Z
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/b;->F:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf/b;->w:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lf/b;->x:Z

    .line 8
    .line 9
    iget-object v1, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lf/b;->G:Landroid/view/VelocityTracker;

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lf/b;->L:Landroid/widget/EdgeEffect;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lf/b;->M:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    :cond_1
    const/4 v0, 0x1

    .line 46
    :cond_2
    return v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/b;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :goto_0
    return-void
.end method

.method public final s(IIZZ)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lf/b;->i(I)Lf/b$e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    iget v2, p0, Lf/b;->p:F

    .line 14
    .line 15
    iget p1, p1, Lf/b$e;->e:F

    .line 16
    .line 17
    iget v3, p0, Lf/b;->q:F

    .line 18
    .line 19
    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    mul-float/2addr p1, v1

    .line 28
    float-to-int p1, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v0

    .line 31
    :goto_0
    if-eqz p3, :cond_7

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_1

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_5

    .line 43
    .line 44
    :cond_1
    iget-object p3, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 45
    .line 46
    const/4 p4, 0x1

    .line 47
    if-eqz p3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p3}, Landroid/widget/Scroller;->isFinished()Z

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    if-nez p3, :cond_2

    .line 54
    .line 55
    move p3, p4

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move p3, v0

    .line 58
    :goto_1
    if-eqz p3, :cond_4

    .line 59
    .line 60
    iget-boolean p3, p0, Lf/b;->j:Z

    .line 61
    .line 62
    if-eqz p3, :cond_3

    .line 63
    .line 64
    iget-object p3, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 65
    .line 66
    invoke-virtual {p3}, Landroid/widget/Scroller;->getCurrX()I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    iget-object p3, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/widget/Scroller;->getStartX()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    :goto_2
    iget-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    :goto_3
    move v2, p3

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    sub-int v4, p1, v2

    .line 96
    .line 97
    rsub-int/lit8 v5, v3, 0x0

    .line 98
    .line 99
    if-nez v4, :cond_5

    .line 100
    .line 101
    if-nez v5, :cond_5

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lf/b;->d(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lf/b;->o()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lf/b;->setScrollState(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    invoke-direct {p0, p4}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 114
    .line 115
    .line 116
    const/4 p1, 0x2

    .line 117
    invoke-virtual {p0, p1}, Lf/b;->setScrollState(I)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0}, Lf/b;->getClientWidth()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    div-int/lit8 p3, p1, 0x2

    .line 125
    .line 126
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 127
    .line 128
    .line 129
    move-result p4

    .line 130
    int-to-float p4, p4

    .line 131
    const/high16 v1, 0x3f800000    # 1.0f

    .line 132
    .line 133
    mul-float/2addr p4, v1

    .line 134
    int-to-float p1, p1

    .line 135
    div-float/2addr p4, p1

    .line 136
    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    .line 137
    .line 138
    .line 139
    move-result p4

    .line 140
    int-to-float p3, p3

    .line 141
    const/high16 v6, 0x3f000000    # 0.5f

    .line 142
    .line 143
    sub-float/2addr p4, v6

    .line 144
    const v6, 0x3ef1463b

    .line 145
    .line 146
    .line 147
    mul-float/2addr p4, v6

    .line 148
    float-to-double v6, p4

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    double-to-float p4, v6

    .line 154
    mul-float/2addr p4, p3

    .line 155
    add-float/2addr p4, p3

    .line 156
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    if-lez p2, :cond_6

    .line 161
    .line 162
    int-to-float p1, p2

    .line 163
    div-float/2addr p4, p1

    .line 164
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 169
    .line 170
    mul-float/2addr p1, p2

    .line 171
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    mul-int/lit8 p1, p1, 0x4

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    iget-object p2, p0, Lf/b;->e:Lf/a;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    mul-float/2addr p1, v1

    .line 184
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    int-to-float p2, p2

    .line 189
    iget p3, p0, Lf/b;->l:I

    .line 190
    .line 191
    int-to-float p3, p3

    .line 192
    add-float/2addr p1, p3

    .line 193
    div-float/2addr p2, p1

    .line 194
    add-float/2addr p2, v1

    .line 195
    const/high16 p1, 0x42c80000    # 100.0f

    .line 196
    .line 197
    mul-float/2addr p2, p1

    .line 198
    float-to-int p1, p2

    .line 199
    :goto_4
    const/16 p2, 0x258

    .line 200
    .line 201
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    iput-boolean v0, p0, Lf/b;->j:Z

    .line 206
    .line 207
    iget-object v1, p0, Lf/b;->i:Landroid/widget/Scroller;

    .line 208
    .line 209
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 210
    .line 211
    .line 212
    invoke-super {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_7
    invoke-virtual {p0, v0}, Lf/b;->d(Z)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Lf/b;->m(I)Z

    .line 223
    .line 224
    .line 225
    :goto_5
    return-void
.end method

.method public setAdapter(Lf/a;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move v0, v2

    .line 15
    :goto_0
    iget-object v3, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-ge v0, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lf/b$e;

    .line 28
    .line 29
    iget-object v4, p0, Lf/b;->e:Lf/a;

    .line 30
    .line 31
    iget v5, v3, Lf/b$e;->b:I

    .line 32
    .line 33
    iget-object v3, v3, Lf/b$e;->a:Landroid/widget/FrameLayout;

    .line 34
    .line 35
    invoke-virtual {v4, p0, v3}, Lf/a;->a(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    move v0, v2

    .line 50
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-ge v0, v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lf/b$f;

    .line 65
    .line 66
    iget-boolean v3, v3, Lf/b$f;->a:Z

    .line 67
    .line 68
    if-nez v3, :cond_1

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    :cond_1
    add-int/2addr v0, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iput v2, p0, Lf/b;->f:I

    .line 78
    .line 79
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p1

    .line 86
    :cond_3
    :goto_2
    iput-object p1, p0, Lf/b;->e:Lf/a;

    .line 87
    .line 88
    iput v2, p0, Lf/b;->a:I

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    iget-object p1, p0, Lf/b;->k:Lf/b$i;

    .line 93
    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    new-instance p1, Lf/b$i;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Lf/b$i;-><init>(Lf/b;)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lf/b;->k:Lf/b$i;

    .line 102
    .line 103
    :cond_4
    iget-object p1, p0, Lf/b;->e:Lf/a;

    .line 104
    .line 105
    invoke-virtual {p1}, Lf/a;->c()V

    .line 106
    .line 107
    .line 108
    iput-boolean v2, p0, Lf/b;->u:Z

    .line 109
    .line 110
    iget-boolean p1, p0, Lf/b;->N:Z

    .line 111
    .line 112
    iput-boolean v1, p0, Lf/b;->N:Z

    .line 113
    .line 114
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 115
    .line 116
    invoke-virtual {v0}, Lf/a;->b()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    iput v0, p0, Lf/b;->a:I

    .line 121
    .line 122
    iget v0, p0, Lf/b;->g:I

    .line 123
    .line 124
    if-ltz v0, :cond_5

    .line 125
    .line 126
    iget-object p1, p0, Lf/b;->e:Lf/a;

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget p1, p0, Lf/b;->g:I

    .line 132
    .line 133
    invoke-virtual {p0, p1, v2, v2, v1}, Lf/b;->t(IIZZ)V

    .line 134
    .line 135
    .line 136
    const/4 p1, -0x1

    .line 137
    iput p1, p0, Lf/b;->g:I

    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lf/b;->h:Landroid/os/Parcelable;

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    if-nez p1, :cond_6

    .line 144
    .line 145
    invoke-virtual {p0}, Lf/b;->o()V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 150
    .line 151
    .line 152
    :cond_7
    :goto_3
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/b;->u:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lf/b;->N:Z

    .line 5
    .line 6
    xor-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1, v0}, Lf/b;->t(IIZZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v2, "Requested offscreen page limit "

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, " too small; defaulting to 1"

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v1, "ViewPager"

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move p1, v0

    .line 29
    :cond_0
    iget v0, p0, Lf/b;->v:I

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    iput p1, p0, Lf/b;->v:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lf/b;->o()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lf/b$h;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .line 1
    iget v0, p0, Lf/b;->l:I

    .line 2
    .line 3
    iput p1, p0, Lf/b;->l:I

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v1, p1, v0}, Lf/b;->q(IIII)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/b;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6
    .line 7
    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lf/b;->R:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lf/b;->R:I

    .line 7
    .line 8
    return-void
.end method

.method public final t(IIZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/b;->e:Lf/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-virtual {v0}, Lf/a;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    iget-object v0, p0, Lf/b;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    iget p4, p0, Lf/b;->f:I

    .line 18
    .line 19
    if-ne p4, p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result p4

    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, v1}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/4 p4, 0x1

    .line 32
    if-gez p1, :cond_2

    .line 33
    .line 34
    move p1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v2, p0, Lf/b;->e:Lf/a;

    .line 37
    .line 38
    invoke-virtual {v2}, Lf/a;->b()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lt p1, v2, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lf/b;->e:Lf/a;

    .line 45
    .line 46
    invoke-virtual {p1}, Lf/a;->b()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    sub-int/2addr p1, p4

    .line 51
    :cond_3
    :goto_0
    iget v2, p0, Lf/b;->v:I

    .line 52
    .line 53
    iget v3, p0, Lf/b;->f:I

    .line 54
    .line 55
    add-int v4, v3, v2

    .line 56
    .line 57
    if-gt p1, v4, :cond_4

    .line 58
    .line 59
    sub-int/2addr v3, v2

    .line 60
    if-ge p1, v3, :cond_5

    .line 61
    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-ge v2, v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lf/b$e;

    .line 74
    .line 75
    iput-boolean p4, v3, Lf/b$e;->c:Z

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    iget v0, p0, Lf/b;->f:I

    .line 81
    .line 82
    if-eq v0, p1, :cond_6

    .line 83
    .line 84
    move v1, p4

    .line 85
    :cond_6
    iget-boolean p4, p0, Lf/b;->N:Z

    .line 86
    .line 87
    if-eqz p4, :cond_7

    .line 88
    .line 89
    iput p1, p0, Lf/b;->f:I

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_7
    invoke-virtual {p0, p1}, Lf/b;->p(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p3, v1}, Lf/b;->s(IIZZ)V

    .line 99
    .line 100
    .line 101
    :goto_2
    return-void

    .line 102
    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lf/b;->setScrollingCacheEnabled(Z)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/b;->m:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
