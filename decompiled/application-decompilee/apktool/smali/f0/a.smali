.class public final Lf0/a;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public final h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public final j:Lg0/h;

.field public k:I


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;ILjava/lang/String;Lg0/h;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    invoke-static {p4}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const p1, 0x7f0c001e

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lf0/a;->h:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-object p4, p0, Lf0/a;->h:Ljava/lang/String;

    .line 23
    .line 24
    :goto_0
    iput-object p4, p0, Lf0/a;->i:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p5, p0, Lf0/a;->j:Lg0/h;

    .line 27
    .line 28
    iput p3, p0, Lf0/a;->k:I

    .line 29
    .line 30
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object p3, p0, Lf0/a;->h:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const p4, 0x7f080006

    .line 45
    .line 46
    .line 47
    const/4 p5, 0x0

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 54
    .line 55
    .line 56
    new-instance p4, Lb0/f;

    .line 57
    .line 58
    invoke-direct {p4, p2}, Lb0/f;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object p5

    .line 65
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    sget v0, Ls0/b;->i:I

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 77
    .line 78
    .line 79
    const/4 v0, -0x2

    .line 80
    move v1, v0

    .line 81
    :goto_1
    const/16 v2, 0xd

    .line 82
    .line 83
    if-gt v1, v2, :cond_2

    .line 84
    .line 85
    new-instance v2, Lb0/h;

    .line 86
    .line 87
    invoke-static {}, Ls0/b;->d()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v3, v1}, Ly0/b;->b(II)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/16 v5, 0x1000

    .line 96
    .line 97
    if-eq v3, v5, :cond_1

    .line 98
    .line 99
    invoke-static {p5, p2, v4}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    invoke-virtual {p5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :goto_2
    invoke-direct {v2, v3}, Lb0/h;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p4, Lb0/f;->b:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    iget p2, p0, Lf0/a;->k:I

    .line 120
    .line 121
    add-int/lit8 p5, p2, 0x2

    .line 122
    .line 123
    if-ltz p5, :cond_3

    .line 124
    .line 125
    sub-int/2addr p2, v0

    .line 126
    if-le p2, v2, :cond_4

    .line 127
    .line 128
    :cond_3
    iput v2, p0, Lf0/a;->k:I

    .line 129
    .line 130
    :cond_4
    const p2, 0x7f0700f7

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 140
    .line 141
    .line 142
    move-result-object p5

    .line 143
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p5

    .line 147
    iget-object v1, p0, Lf0/a;->j:Lg0/h;

    .line 148
    .line 149
    invoke-virtual {v1}, Lg0/h;->t()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const-string v2, "%1"

    .line 154
    .line 155
    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p5

    .line 159
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    const p2, 0x7f070065

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    check-cast p2, Landroid/widget/EditText;

    .line 170
    .line 171
    iget-object p5, p0, Lf0/a;->i:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    const p2, 0x7f0700a9

    .line 177
    .line 178
    .line 179
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    check-cast p2, Landroid/widget/Spinner;

    .line 184
    .line 185
    invoke-virtual {p2, p4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 186
    .line 187
    .line 188
    iget p3, p0, Lf0/a;->k:I

    .line 189
    .line 190
    sub-int/2addr p3, v0

    .line 191
    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 192
    .line 193
    .line 194
    const p2, 0x7f0c0029

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    .line 199
    .line 200
    const p2, 0x7f0c0025

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lf0/a;->g:Landroid/app/AlertDialog;

    .line 214
    .line 215
    invoke-virtual {p0}, Lf0/i;->a()V

    .line 216
    .line 217
    .line 218
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf0/a;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf0/a;->g:Landroid/app/AlertDialog;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lf0/a;->g:Landroid/app/AlertDialog;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final k()I
    .locals 1

    const/16 v0, 0xb

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
    invoke-virtual {p0}, Lf0/a;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf0/a;->r()V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 p1, -0x2

    .line 15
    if-ne p2, p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Lf0/a;->d()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/a;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, 0x7f070065

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/EditText;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lf0/a;->i:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, p0, Lf0/a;->g:Landroid/app/AlertDialog;

    .line 26
    .line 27
    const v1, 0x7f0700a9

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/widget/Spinner;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/lit8 v0, v0, -0x2

    .line 41
    .line 42
    iput v0, p0, Lf0/a;->k:I

    .line 43
    .line 44
    return-void
.end method
