.class public final Lru/zdevs/zarchiver/ui/editor/EditableView$b;
.super Landroid/view/ActionMode$Callback2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/EditableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;

.field public final synthetic c:Lru/zdevs/zarchiver/ui/editor/EditableView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ui/editor/EditableView;ILjava/lang/Object;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    move p2, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p2, 0x0

    .line 12
    :goto_0
    iput-boolean p2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Z

    .line 13
    .line 14
    iput-object p3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p3, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    :cond_1
    invoke-virtual {p3, v0}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;Landroid/app/RemoteAction;II)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x1020041

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p1, v1, v2, p3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 p4, 0x1c

    .line 28
    .line 29
    if-lt p3, p4, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_0

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iget-object p3, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x1020041

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_4

    .line 9
    .line 10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v1, 0x1a

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-lt p1, v1, :cond_3

    .line 16
    .line 17
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->b:Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/view/textclassifier/TextClassification;

    .line 23
    .line 24
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ne v3, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, 0x1c

    .line 45
    .line 46
    if-lt p1, v0, :cond_2

    .line 47
    .line 48
    :try_start_0
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x14

    .line 57
    .line 58
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Landroid/app/RemoteAction;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    :cond_2
    :goto_0
    move p1, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 74
    :goto_2
    if-eqz p1, :cond_4

    .line 75
    .line 76
    return v2

    .line 77
    :cond_4
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->onMenuItemClick(Landroid/view/MenuItem;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 10
    .line 11
    .line 12
    sget p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->y:I

    .line 13
    .line 14
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->d(Landroid/view/Menu;)V

    .line 17
    .line 18
    .line 19
    const v1, 0x102001f

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 38
    .line 39
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 40
    .line 41
    if-eq v2, p1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move p1, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    move p1, v0

    .line 47
    :goto_1
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 48
    .line 49
    .line 50
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v1, 0x1a

    .line 53
    .line 54
    if-lt p1, v1, :cond_7

    .line 55
    .line 56
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->b:Ljava/lang/Object;

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_2
    check-cast v1, Landroid/view/textclassifier/TextClassification;

    .line 63
    .line 64
    const/4 v2, 0x2

    .line 65
    const/16 v4, 0x1c

    .line 66
    .line 67
    if-lt p1, v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_3

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/app/RemoteAction;

    .line 88
    .line 89
    const/16 v6, 0x14

    .line 90
    .line 91
    invoke-virtual {p0, p2, v5, v6, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a(Landroid/view/Menu;Landroid/app/RemoteAction;II)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    if-nez v5, :cond_4

    .line 100
    .line 101
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_6

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-nez v5, :cond_5

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    if-eqz v5, :cond_6

    .line 122
    .line 123
    :cond_5
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    const v6, 0x1020041

    .line 128
    .line 129
    .line 130
    const/16 v7, 0xa

    .line 131
    .line 132
    invoke-interface {p2, v6, v6, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 153
    .line 154
    .line 155
    :cond_6
    :goto_2
    if-lt p1, v4, :cond_7

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    move v2, v0

    .line 166
    :goto_3
    if-ge v2, p1, :cond_7

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    check-cast v4, Landroid/app/RemoteAction;

    .line 177
    .line 178
    add-int/lit8 v5, v2, 0x14

    .line 179
    .line 180
    invoke-virtual {p0, p2, v4, v5, v3}, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a(Landroid/view/Menu;Landroid/app/RemoteAction;II)V

    .line 181
    .line 182
    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    :goto_4
    return v0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    iget-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->f:Lru/zdevs/zarchiver/ui/editor/c;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ui/editor/c;->g(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->m:Landroid/view/ActionMode;

    .line 11
    .line 12
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->postInvalidate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 2
    .line 3
    iget-object p2, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 4
    .line 5
    iget-object p2, p2, Lru/zdevs/zarchiver/ui/editor/b;->g:[I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget p2, p2, v0

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p2, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->k:Lb1/e;

    .line 15
    .line 16
    invoke-virtual {p2}, Lb1/e;->b()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v2, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 21
    .line 22
    aget v3, v2, v0

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    const/4 v5, 0x1

    .line 26
    const/4 v6, 0x2

    .line 27
    if-eq v3, v1, :cond_1

    .line 28
    .line 29
    aget v7, v2, v5

    .line 30
    .line 31
    if-eq v7, v1, :cond_1

    .line 32
    .line 33
    sub-int/2addr v7, p2

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    aget v3, v2, v6

    .line 36
    .line 37
    if-eq v3, v1, :cond_2

    .line 38
    .line 39
    aget v2, v2, v4

    .line 40
    .line 41
    if-eq v2, v1, :cond_2

    .line 42
    .line 43
    sub-int v7, v2, p2

    .line 44
    .line 45
    move v0, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    div-int/lit8 v3, v2, 0x2

    .line 52
    .line 53
    neg-int v7, p2

    .line 54
    :goto_0
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->a:Z

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->d:[I

    .line 61
    .line 62
    aget v0, p1, v6

    .line 63
    .line 64
    if-eq v0, v1, :cond_3

    .line 65
    .line 66
    aget p1, p1, v4

    .line 67
    .line 68
    if-eq p1, v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    add-int/lit8 v0, v3, 0x1

    .line 72
    .line 73
    add-int p1, v7, p2

    .line 74
    .line 75
    :goto_1
    invoke-virtual {p3, v3, v7, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    sget p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->y:I

    .line 2
    .line 3
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/EditableView$b;->c:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const v0, 0x102001f

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionStart()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getSelectionEnd()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object p1, p1, Lru/zdevs/zarchiver/ui/editor/EditableView;->e:Lru/zdevs/zarchiver/ui/editor/b;

    .line 27
    .line 28
    iget p1, p1, Lru/zdevs/zarchiver/ui/editor/b;->c:I

    .line 29
    .line 30
    if-eq v0, p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move p1, v1

    .line 36
    :goto_1
    invoke-interface {p2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 37
    .line 38
    .line 39
    return v1
.end method
