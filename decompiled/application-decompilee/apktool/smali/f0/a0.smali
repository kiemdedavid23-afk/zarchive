.class public final Lf0/a0;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:Landroid/widget/ProgressBar;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f08001f

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    const v1, 0x7f0700db

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    const p2, 0x7f070093

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Landroid/widget/ProgressBar;

    .line 57
    .line 58
    iput-object p2, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    const p2, 0x7f0700de

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p2, p0, Lf0/a0;->i:Landroid/widget/TextView;

    .line 70
    .line 71
    const p2, 0x7f0700dd

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p2, p0, Lf0/a0;->j:Landroid/widget/TextView;

    .line 81
    .line 82
    const p2, 0x7f0700dc

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object p2, p0, Lf0/a0;->k:Landroid/widget/TextView;

    .line 92
    .line 93
    const/16 p3, 0x8

    .line 94
    .line 95
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lf0/a0;->i:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-static {p2}, Ly0/f;->d(Landroid/widget/TextView;)V

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lf0/a0;->j:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-static {p2}, Ly0/f;->d(Landroid/widget/TextView;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lf0/a0;->k:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-static {p2}, Ly0/f;->d(Landroid/widget/TextView;)V

    .line 111
    .line 112
    .line 113
    const p2, 0x7f0c0027

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    .line 118
    .line 119
    const p2, 0x7f0c0025

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lf0/a0;->g:Landroid/app/AlertDialog;

    .line 133
    .line 134
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 138
    .line 139
    const/4 p2, 0x1

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 141
    .line 142
    .line 143
    const p1, 0x7f070050

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p1, Landroid/widget/CheckBox;

    .line 151
    .line 152
    new-instance p2, Lf0/z;

    .line 153
    .line 154
    invoke-direct {p2, p0, p1}, Lf0/z;-><init>(Lf0/a0;Landroid/widget/CheckBox;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lf0/i;->a()V

    .line 161
    .line 162
    .line 163
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/a0;->g:Landroid/app/AlertDialog;

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
    iput-object v1, p0, Lf0/a0;->g:Landroid/app/AlertDialog;

    .line 10
    .line 11
    :cond_0
    iput-object v1, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    iput-object v1, p0, Lf0/a0;->i:Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v1, p0, Lf0/a0;->j:Landroid/widget/TextView;

    .line 16
    .line 17
    iput-object v1, p0, Lf0/a0;->k:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x2

    return v0
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
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-ge v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v5, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    if-nez v5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v5, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-eqz v4, :cond_4

    .line 4
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 6
    :cond_3
    invoke-virtual {p0}, Lf0/a0;->d()V

    goto :goto_1

    :cond_4
    if-lt v0, v3, :cond_5

    .line 7
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 8
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_5
    :goto_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_6

    .line 9
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    if-eqz p1, :cond_6

    .line 10
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    :cond_6
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lf0/a0;->g:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lf0/a0;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public final r(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lf0/a0;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-lez p1, :cond_4

    .line 7
    .line 8
    iget-object v1, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-ltz p2, :cond_3

    .line 15
    .line 16
    const v2, 0x19000

    .line 17
    .line 18
    .line 19
    if-le p2, v2, :cond_0

    .line 20
    .line 21
    int-to-float v2, p2

    .line 22
    const/high16 v3, 0x47c80000    # 102400.0f

    .line 23
    .line 24
    div-float/2addr v2, v3

    .line 25
    sget-object v3, Lu0/h;->e:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    int-to-float v2, p2

    .line 29
    const/high16 v3, 0x42c80000    # 100.0f

    .line 30
    .line 31
    div-float/2addr v2, v3

    .line 32
    sget-object v3, Lu0/h;->f:Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    const/16 v4, 0xa

    .line 35
    .line 36
    if-ge p2, v4, :cond_1

    .line 37
    .line 38
    const-string p2, "%d%%\n%.2f%s"

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v4, 0x64

    .line 42
    .line 43
    if-ge p2, v4, :cond_2

    .line 44
    .line 45
    const-string p2, "%d%%\n%.1f%s"

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string p2, "%d%%\n%.0f%s"

    .line 49
    .line 50
    :goto_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 51
    .line 52
    const/4 v5, 0x3

    .line 53
    new-array v5, v5, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v5, v0

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    aput-object v0, v5, v1

    .line 66
    .line 67
    const/4 v0, 0x2

    .line 68
    aput-object v3, v5, v0

    .line 69
    .line 70
    invoke-static {v4, p2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 76
    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    aput-object v2, v1, v0

    .line 84
    .line 85
    const-string v0, "%d%%"

    .line 86
    .line 87
    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    :goto_2
    iget-object v0, p0, Lf0/a0;->i:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    iget-object p2, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lf0/a0;->i:Landroid/widget/TextView;

    .line 103
    .line 104
    const-string v0, ""

    .line 105
    .line 106
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    iget-object p2, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lf0/a0;->h:Landroid/widget/ProgressBar;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->postInvalidate()V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lf0/a0;->i:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-void
.end method
