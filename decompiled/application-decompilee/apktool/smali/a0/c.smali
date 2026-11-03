.class public abstract La0/c;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lv0/a$c;


# instance fields
.field public a:Landroid/widget/ProgressBar;

.field public b:Landroid/view/ActionMode;

.field public final c:Lv0/a;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lv0/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lv0/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, La0/c;->c:Lv0/a;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-byte v0, p0, La0/c;->e:B

    .line 13
    .line 14
    return-void
.end method

.method public static r(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x2f

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "/"

    .line 11
    .line 12
    if-ltz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-le v2, v3, :cond_2

    .line 20
    .line 21
    add-int/lit8 v2, v0, 0x1

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-lez v0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    move-object p1, v2

    .line 35
    :cond_2
    const v0, 0x7f07008a

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    .line 53
    .line 54
    const v2, 0x800005

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    const v0, 0x7f07008b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    return-void
.end method


# virtual methods
.method public final finishAndRemoveTask()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, La0/c;->finishAndRemoveTask()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-object v0, p0, La0/c;->b:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, La0/c;->b:Landroid/view/ActionMode;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final k(Landroid/content/res/Configuration;)I
    .locals 4

    .line 1
    invoke-static {p0}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const p1, 0x7f08001a

    .line 8
    .line 9
    .line 10
    return p1

    .line 11
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0xf

    .line 14
    .line 15
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 16
    .line 17
    const v1, 0x7f080016

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    const/4 v3, 0x2

    .line 22
    if-ne p1, v3, :cond_3

    .line 23
    .line 24
    invoke-static {p0}, Ly0/e;->a(Landroid/app/Activity;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    invoke-static {v3}, Ls0/b;->l(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    if-lt v0, v2, :cond_2

    .line 38
    .line 39
    const p1, 0x7f080018

    .line 40
    .line 41
    .line 42
    return p1

    .line 43
    :cond_2
    const p1, 0x7f080017

    .line 44
    .line 45
    .line 46
    return p1

    .line 47
    :cond_3
    if-lt v0, v2, :cond_4

    .line 48
    .line 49
    const p1, 0x7f080019

    .line 50
    .line 51
    .line 52
    return p1

    .line 53
    :cond_4
    return v1
.end method

.method public final l(ILandroid/view/Menu;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "integer"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "max_action_buttons"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 35
    .line 36
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 37
    .line 38
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 39
    .line 40
    const/16 v3, 0x258

    .line 41
    .line 42
    if-gt v0, v3, :cond_6

    .line 43
    .line 44
    const/16 v0, 0x2d0

    .line 45
    .line 46
    const/16 v3, 0x3c0

    .line 47
    .line 48
    if-le v1, v3, :cond_1

    .line 49
    .line 50
    if-gt v2, v0, :cond_6

    .line 51
    .line 52
    :cond_1
    if-le v1, v0, :cond_2

    .line 53
    .line 54
    if-le v2, v3, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/16 v0, 0x1f4

    .line 58
    .line 59
    if-ge v1, v0, :cond_5

    .line 60
    .line 61
    const/16 v0, 0x1e0

    .line 62
    .line 63
    if-le v1, v0, :cond_3

    .line 64
    .line 65
    const/16 v0, 0x280

    .line 66
    .line 67
    if-le v2, v0, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/16 v0, 0x168

    .line 71
    .line 72
    if-lt v1, v0, :cond_4

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    const/4 v0, 0x2

    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_0
    const/4 v0, 0x4

    .line 79
    goto :goto_2

    .line 80
    :cond_6
    :goto_1
    const/4 v0, 0x5

    .line 81
    :goto_2
    const/4 v1, 0x1

    .line 82
    add-int/2addr p1, v1

    .line 83
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-le v0, v1, :cond_a

    .line 88
    .line 89
    if-lt v2, v0, :cond_a

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    move v3, v1

    .line 93
    :goto_3
    if-ge v3, v2, :cond_8

    .line 94
    .line 95
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-nez v4, :cond_7

    .line 110
    .line 111
    add-int/lit8 p1, p1, 0x1

    .line 112
    .line 113
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_8
    move v3, v1

    .line 117
    :goto_4
    if-ge v3, v2, :cond_a

    .line 118
    .line 119
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-eqz v5, :cond_9

    .line 128
    .line 129
    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v5, :cond_9

    .line 134
    .line 135
    add-int/lit8 p1, p1, 0x1

    .line 136
    .line 137
    if-le p1, v0, :cond_9

    .line 138
    .line 139
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catch_0
    :cond_a
    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const p1, 0x7f03003f

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Ly0/c;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/high16 v0, 0x1040000

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, La0/c;->d:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    const v0, 0x104000a

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p0}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    const v0, 0x7f070007

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iget-object v1, p0, La0/c;->d:Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, La0/c;->d:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0, p1, v0}, Ly0/e;->e(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, La0/c;->d:Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    iput-object p1, p0, La0/c;->d:Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    :cond_3
    :goto_1
    return-void
.end method

.method public final n(B)V
    .locals 9

    .line 1
    iget-byte v0, p0, La0/c;->e:B

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x2

    .line 7
    if-eq p1, v1, :cond_1

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 19
    .line 20
    .line 21
    :cond_2
    iput-byte p1, p0, La0/c;->e:B

    .line 22
    .line 23
    const v0, 0x7f030008

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq p1, v2, :cond_3

    .line 28
    .line 29
    if-eq p1, v1, :cond_3

    .line 30
    .line 31
    const/high16 p1, 0x7f030000

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    move p1, v0

    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_4
    const/16 v4, 0x400

    .line 44
    .line 45
    if-ne p1, v0, :cond_5

    .line 46
    .line 47
    invoke-static {v4}, Ls0/b;->k(I)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_5

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const v6, 0x7f040001

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    goto :goto_1

    .line 65
    :cond_5
    invoke-static {p0, p1}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    :goto_1
    sget v6, Ls0/b;->h:I

    .line 70
    .line 71
    and-int/lit16 v6, v6, 0xff

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    if-le v6, v2, :cond_6

    .line 75
    .line 76
    move v6, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_6
    move v6, v7

    .line 79
    :goto_2
    if-eqz v6, :cond_7

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v8, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 86
    .line 87
    .line 88
    :cond_7
    if-ne p1, v0, :cond_b

    .line 89
    .line 90
    if-nez v6, :cond_b

    .line 91
    .line 92
    invoke-static {v4}, Ls0/b;->k(I)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_8

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    new-array p1, v2, [I

    .line 100
    .line 101
    const v0, 0x10102ce

    .line 102
    .line 103
    .line 104
    aput v0, p1, v7

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1, v7, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_a

    .line 115
    .line 116
    const v0, 0x7f030015

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v0}, Ly0/c;->b(Landroid/content/Context;I)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_9

    .line 124
    .line 125
    const v0, 0x10301a7

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    const v0, 0x1030173

    .line 130
    .line 131
    .line 132
    :cond_a
    :goto_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    .line 134
    .line 135
    new-array p1, v1, [I

    .line 136
    .line 137
    fill-array-data p1, :array_0

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_b
    :goto_4
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 163
    .line 164
    invoke-direct {p1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, p1}, Landroid/app/ActionBar;->setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    :goto_5
    return-void

    .line 174
    nop

    .line 175
    :array_0
    .array-data 4
        0x10100d4
        0x101038b
    .end array-data
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    .line 1
    const v0, 0x7f0700df

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f0700e0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    const p1, 0x7f0700d0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    const p1, 0x7f0700d1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    const p1, 0x7f070091

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/ProgressBar;

    .line 65
    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    const-wide/16 p2, 0x0

    .line 69
    .line 70
    cmp-long p4, p5, p2

    .line 71
    .line 72
    if-ltz p4, :cond_5

    .line 73
    .line 74
    cmp-long p2, p7, p2

    .line 75
    .line 76
    if-ltz p2, :cond_5

    .line 77
    .line 78
    const-wide/32 p2, 0x7fffffff

    .line 79
    .line 80
    .line 81
    cmp-long p2, p7, p2

    .line 82
    .line 83
    if-lez p2, :cond_4

    .line 84
    .line 85
    const/16 p2, 0xa

    .line 86
    .line 87
    shr-long p3, p7, p2

    .line 88
    .line 89
    long-to-int p3, p3

    .line 90
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 91
    .line 92
    .line 93
    shr-long p2, p5, p2

    .line 94
    .line 95
    long-to-int p2, p2

    .line 96
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    long-to-int p2, p7

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 102
    .line 103
    .line 104
    long-to-int p2, p5

    .line 105
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    const/4 p2, 0x0

    .line 110
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    .line 115
    .line 116
    :cond_6
    :goto_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ly0/e;->k(Landroid/view/Menu;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La0/c;->c:Lv0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lv0/a;->d(Lv0/a$c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La0/c;->c:Lv0/a;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p0}, Lv0/a;->a(Lv0/a$c;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, La0/c;->t()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p(Ljava/lang/String;JJ)V
    .locals 3

    .line 1
    const v0, 0x7f0700e0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const p1, 0x7f070091

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/ProgressBar;

    .line 23
    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    const-wide/16 v0, 0x0

    .line 27
    .line 28
    cmp-long v2, p2, v0

    .line 29
    .line 30
    if-ltz v2, :cond_2

    .line 31
    .line 32
    cmp-long v0, p4, v0

    .line 33
    .line 34
    if-ltz v0, :cond_2

    .line 35
    .line 36
    const-wide/32 v0, 0x7fffffff

    .line 37
    .line 38
    .line 39
    cmp-long v0, p4, v0

    .line 40
    .line 41
    if-lez v0, :cond_1

    .line 42
    .line 43
    const/16 v0, 0xa

    .line 44
    .line 45
    shr-long/2addr p4, v0

    .line 46
    long-to-int p4, p4

    .line 47
    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 48
    .line 49
    .line 50
    shr-long/2addr p2, v0

    .line 51
    long-to-int p2, p2

    .line 52
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    long-to-int p4, p4

    .line 57
    invoke-virtual {p1, p4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 58
    .line 59
    .line 60
    long-to-int p2, p2

    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 p2, 0x0

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    .line 71
    .line 72
    :cond_3
    :goto_0
    return-void
.end method

.method public final q(Landroid/app/ActionBar;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const p1, 0x7f070007

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, La0/c$a;

    .line 14
    .line 15
    invoke-direct {v0, p0}, La0/c$a;-><init>(La0/c;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    const p1, 0x7f070023

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, La0/c$b;

    .line 29
    .line 30
    invoke-direct {v0, p0}, La0/c$b;-><init>(La0/c;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final recreate()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x10000

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->recreate()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 7

    .line 1
    iget-object v0, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "dimen"

    .line 11
    .line 12
    const-string v3, "android"

    .line 13
    .line 14
    const-string v4, "status_bar_height"

    .line 15
    .line 16
    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    const/16 v3, 0x14

    .line 35
    .line 36
    const/4 v4, -0x1

    .line 37
    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Landroid/widget/ProgressBar;

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const v6, 0x1010078

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, p0, v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 55
    .line 56
    const/16 v3, 0x2710

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 62
    .line 63
    const v3, 0x7f030015

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v3}, Ly0/c;->b(Landroid/content/Context;I)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_1

    .line 71
    .line 72
    const/high16 v4, -0x1000000

    .line 73
    .line 74
    :cond_1
    invoke-static {p0, v2, v4}, Ly0/e;->l(Landroid/content/Context;Landroid/widget/ProgressBar;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/view/ViewGroup;

    .line 86
    .line 87
    iget-object v3, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 93
    .line 94
    int-to-float v0, v0

    .line 95
    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-gez p1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 101
    .line 102
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 108
    .line 109
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iget-object p1, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 113
    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public final startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, La0/c;->b:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Ly0/e;->c(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ly0/a;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Ly0/a;-><init>(La0/c;Landroid/view/ActionMode$Callback;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, La0/c;->b:Landroid/view/ActionMode;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, La0/c;->b:Landroid/view/ActionMode;

    .line 27
    .line 28
    :goto_0
    iget-object p1, p0, La0/c;->b:Landroid/view/ActionMode;

    .line 29
    .line 30
    return-object p1
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, La0/c;->a:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
