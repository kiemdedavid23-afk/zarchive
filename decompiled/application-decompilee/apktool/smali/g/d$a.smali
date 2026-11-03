.class public final Lg/d$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/d;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg/d$a;->b:Lg/d;

    iput-object p2, p0, Lg/d$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lg/d$a;->b:Lg/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lg/d;->r:Z

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-boolean v1, v0, Lg/d;->d0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lg/d$a;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lg/d;->a(Lg/d;Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, v0, Lg/d;->s:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Landroid/graphics/PointF;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lg/d;->R:Landroid/graphics/PointF;

    .line 40
    .line 41
    new-instance v1, Landroid/graphics/PointF;

    .line 42
    .line 43
    iget-object v4, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 44
    .line 45
    iget v5, v4, Landroid/graphics/PointF;->x:F

    .line 46
    .line 47
    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 48
    .line 49
    invoke-direct {v1, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 50
    .line 51
    .line 52
    iput-object v1, v0, Lg/d;->z:Landroid/graphics/PointF;

    .line 53
    .line 54
    iget v1, v0, Lg/d;->w:F

    .line 55
    .line 56
    iput v1, v0, Lg/d;->x:F

    .line 57
    .line 58
    iput-boolean v3, v0, Lg/d;->J:Z

    .line 59
    .line 60
    iput-boolean v3, v0, Lg/d;->H:Z

    .line 61
    .line 62
    const/high16 v1, -0x40800000    # -1.0f

    .line 63
    .line 64
    iput v1, v0, Lg/d;->U:F

    .line 65
    .line 66
    iget-object v1, v0, Lg/d;->R:Landroid/graphics/PointF;

    .line 67
    .line 68
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 69
    .line 70
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 71
    .line 72
    new-instance v4, Landroid/graphics/PointF;

    .line 73
    .line 74
    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v5, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 78
    .line 79
    if-nez v5, :cond_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget v2, v5, Landroid/graphics/PointF;->x:F

    .line 83
    .line 84
    sub-float/2addr v3, v2

    .line 85
    iget v2, v0, Lg/d;->w:F

    .line 86
    .line 87
    div-float/2addr v3, v2

    .line 88
    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 89
    .line 90
    sub-float/2addr v1, v5

    .line 91
    div-float/2addr v1, v2

    .line 92
    invoke-virtual {v4, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 93
    .line 94
    .line 95
    move-object v2, v4

    .line 96
    :goto_0
    iput-object v2, v0, Lg/d;->a0:Landroid/graphics/PointF;

    .line 97
    .line 98
    new-instance v1, Landroid/graphics/PointF;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 109
    .line 110
    .line 111
    iput-object v1, v0, Lg/d;->b0:Landroid/graphics/PointF;

    .line 112
    .line 113
    new-instance p1, Landroid/graphics/PointF;

    .line 114
    .line 115
    iget-object v1, v0, Lg/d;->a0:Landroid/graphics/PointF;

    .line 116
    .line 117
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 118
    .line 119
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 120
    .line 121
    invoke-direct {p1, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 122
    .line 123
    .line 124
    iput-object p1, v0, Lg/d;->W:Landroid/graphics/PointF;

    .line 125
    .line 126
    const/4 p1, 0x0

    .line 127
    iput-boolean p1, v0, Lg/d;->V:Z

    .line 128
    .line 129
    return p1

    .line 130
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 141
    .line 142
    .line 143
    iget v4, v1, Landroid/graphics/PointF;->x:F

    .line 144
    .line 145
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 146
    .line 147
    new-instance v5, Landroid/graphics/PointF;

    .line 148
    .line 149
    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object v6, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 153
    .line 154
    if-nez v6, :cond_2

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_2
    iget v2, v6, Landroid/graphics/PointF;->x:F

    .line 158
    .line 159
    sub-float/2addr v4, v2

    .line 160
    iget v2, v0, Lg/d;->w:F

    .line 161
    .line 162
    div-float/2addr v4, v2

    .line 163
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 164
    .line 165
    sub-float/2addr v1, v6

    .line 166
    div-float/2addr v1, v2

    .line 167
    invoke-virtual {v5, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 168
    .line 169
    .line 170
    move-object v2, v5

    .line 171
    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    invoke-direct {v1, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v2, v1}, Lg/d;->i(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 185
    .line 186
    .line 187
    return v3

    .line 188
    :cond_3
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lg/d$a;->b:Lg/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lg/d;->q:Z

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-boolean v1, v0, Lg/d;->d0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    iget-object v1, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-float/2addr v1, v2

    .line 28
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/high16 v2, 0x42480000    # 50.0f

    .line 33
    .line 34
    cmpl-float v1, v1, v2

    .line 35
    .line 36
    if-gtz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    sub-float/2addr v1, v3

    .line 47
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    cmpl-float v1, v1, v2

    .line 52
    .line 53
    if-lez v1, :cond_3

    .line 54
    .line 55
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 60
    .line 61
    cmpl-float v1, v1, v2

    .line 62
    .line 63
    if-gtz v1, :cond_1

    .line 64
    .line 65
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    cmpl-float v1, v1, v2

    .line 70
    .line 71
    if-lez v1, :cond_3

    .line 72
    .line 73
    :cond_1
    iget-boolean v1, v0, Lg/d;->H:Z

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    new-instance p1, Landroid/graphics/PointF;

    .line 78
    .line 79
    iget-object p2, v0, Lg/d;->y:Landroid/graphics/PointF;

    .line 80
    .line 81
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 82
    .line 83
    const/high16 v2, 0x3e800000    # 0.25f

    .line 84
    .line 85
    mul-float/2addr p3, v2

    .line 86
    add-float/2addr p3, v1

    .line 87
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 88
    .line 89
    mul-float/2addr p4, v2

    .line 90
    add-float/2addr p4, p2

    .line 91
    invoke-direct {p1, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    div-int/lit8 p2, p2, 0x2

    .line 99
    .line 100
    int-to-float p2, p2

    .line 101
    iget p3, p1, Landroid/graphics/PointF;->x:F

    .line 102
    .line 103
    sub-float/2addr p2, p3

    .line 104
    iget p3, v0, Lg/d;->w:F

    .line 105
    .line 106
    div-float/2addr p2, p3

    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    div-int/lit8 p3, p3, 0x2

    .line 112
    .line 113
    int-to-float p3, p3

    .line 114
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 115
    .line 116
    sub-float/2addr p3, p1

    .line 117
    iget p1, v0, Lg/d;->w:F

    .line 118
    .line 119
    div-float/2addr p3, p1

    .line 120
    new-instance p1, Lg/d$d;

    .line 121
    .line 122
    new-instance p4, Landroid/graphics/PointF;

    .line 123
    .line 124
    invoke-direct {p4, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 125
    .line 126
    .line 127
    invoke-direct {p1, v0, p4}, Lg/d$d;-><init>(Lg/d;Landroid/graphics/PointF;)V

    .line 128
    .line 129
    .line 130
    sget-object p2, Lg/d;->s0:Ljava/util/List;

    .line 131
    .line 132
    const/4 p3, 0x1

    .line 133
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_2

    .line 142
    .line 143
    iput p3, p1, Lg/d$d;->e:I

    .line 144
    .line 145
    const/4 p2, 0x0

    .line 146
    iput-boolean p2, p1, Lg/d$d;->h:Z

    .line 147
    .line 148
    const/4 p2, 0x3

    .line 149
    iput p2, p1, Lg/d$d;->f:I

    .line 150
    .line 151
    invoke-virtual {p1}, Lg/d$d;->a()V

    .line 152
    .line 153
    .line 154
    return p3

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 156
    .line 157
    const-string p2, "Unknown easing type: 1"

    .line 158
    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    return p1
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lg/d$a;->b:Lg/d;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method
