.class public final Ld1/b;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnTouchListener;
.implements Ld1/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public final g:Ld1/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ld1/b$a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Ld1/b$a;-><init>(Ld1/b;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ld1/b;->g:Ld1/b$a;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Ld1/b;->a:I

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Ld1/b;->c:I

    .line 26
    .line 27
    iput p1, p0, Ld1/b;->b:I

    .line 28
    .line 29
    const/16 p1, 0x8

    .line 30
    .line 31
    iput p1, p0, Ld1/b;->f:I

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getClickRawX()I
    .locals 1

    iget v0, p0, Ld1/b;->b:I

    return v0
.end method

.method public getClickRawY()I
    .locals 1

    iget v0, p0, Ld1/b;->c:I

    return v0
.end method

.method public getMaxVisibleItemCount()I
    .locals 1

    iget v0, p0, Ld1/b;->f:I

    return v0
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ld1/b;->b:I

    .line 3
    .line 4
    iput v0, p0, Ld1/b;->c:I

    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    sget p2, Ls0/b;->k:I

    .line 9
    .line 10
    div-int/2addr p1, p2

    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    iput p1, p0, Ld1/b;->f:I

    .line 14
    .line 15
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Ld1/b;->e:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Ld1/b;->g:Ld1/b$a;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v1, 0x5dc

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget v1, p0, Ld1/b;->d:I

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    if-lt p1, v1, :cond_2

    .line 30
    .line 31
    move v1, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v1, v2

    .line 34
    :goto_1
    if-eq p2, v0, :cond_3

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    if-eq p2, v3, :cond_3

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iput p1, p0, Ld1/b;->d:I

    .line 42
    .line 43
    :goto_2
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lc0/h;

    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lc0/h;->k(ZZ)V

    .line 52
    .line 53
    .line 54
    :cond_4
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    iput v0, p0, Ld1/b;->b:I

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    float-to-int v0, v0

    .line 13
    iput v0, p0, Ld1/b;->c:I

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Ld1/b;->a:I

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Ld1/b;->a:I

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne v0, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    sub-long/2addr v0, v4

    .line 49
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    int-to-long v4, v4

    .line 54
    cmp-long v0, v0, v4

    .line 55
    .line 56
    if-gez v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    float-to-int v0, v0

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    float-to-int p2, p2

    .line 68
    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 73
    .line 74
    .line 75
    if-ltz v7, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const/4 v5, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const-wide/16 v8, -0x7

    .line 90
    .line 91
    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    iput v2, p0, Ld1/b;->a:I

    .line 95
    .line 96
    return v3

    .line 97
    :cond_2
    iget v0, p0, Ld1/b;->a:I

    .line 98
    .line 99
    const/4 v1, 0x4

    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-ne v0, v3, :cond_4

    .line 107
    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    float-to-int v0, v0

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    float-to-int p2, p2

    .line 118
    invoke-virtual {p0, v0, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 123
    .line 124
    .line 125
    if-ltz v7, :cond_3

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    const/4 v5, 0x0

    .line 138
    const/4 v6, 0x0

    .line 139
    const-wide/16 v8, -0x8

    .line 140
    .line 141
    invoke-interface/range {v4 .. v9}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 142
    .line 143
    .line 144
    :cond_3
    iput v2, p0, Ld1/b;->a:I

    .line 145
    .line 146
    return v3

    .line 147
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-ne p1, v1, :cond_5

    .line 152
    .line 153
    return v3

    .line 154
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    iget p2, p0, Ld1/b;->a:I

    .line 159
    .line 160
    if-ne p1, p2, :cond_6

    .line 161
    .line 162
    if-eqz p2, :cond_6

    .line 163
    .line 164
    if-eq p2, v3, :cond_6

    .line 165
    .line 166
    return v3

    .line 167
    :cond_6
    return v2
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Ld1/b;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Ld1/b;->e:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ld1/b;->g:Ld1/b$a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Ld1/b;->e:Z

    .line 5
    .line 6
    xor-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
