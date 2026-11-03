.class public final Lf0/p;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Lru/zdevs/zarchiver/ui/FSSelect$c;
.implements Lc0/h$a;
.implements Lru/zdevs/zarchiver/ui/FSSelect$b;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:I

.field public i:Landroid/widget/FrameLayout;

.field public j:Landroid/widget/ListPopupWindow;

.field public final k:I

.field public final l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public final n:Z

.field public final o:I

.field public p:Z


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 10
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    const/16 p1, 0xe

    .line 11
    iput p1, p0, Lf0/p;->k:I

    const p1, 0x7f0c0020

    .line 12
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf0/p;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lf0/p;->n:Z

    .line 14
    iput p1, p0, Lf0/p;->o:I

    const/4 v0, 0x1

    const v1, 0x7f0c0040

    .line 15
    invoke-virtual {p0, p2, v1, v0, p1}, Lf0/p;->s(Landroid/content/Context;IZZ)V

    .line 16
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;IIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 3
    iput p4, p0, Lf0/p;->k:I

    const p1, 0x7f0c0020

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf0/p;->l:Ljava/lang/String;

    .line 5
    iput-boolean p5, p0, Lf0/p;->n:Z

    .line 6
    iput p6, p0, Lf0/p;->o:I

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p2, p3, p1, p5}, Lf0/p;->s(Landroid/content/Context;IZZ)V

    .line 8
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method


# virtual methods
.method public final c(IIZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    const p3, 0x7f0700ee

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object p3, p0, Lf0/p;->l:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "%1"

    .line 33
    .line 34
    invoke-virtual {p3, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const v2, 0x7f07006e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 32
    .line 33
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->d()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    :cond_2
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    if-ne p2, v0, :cond_1

    .line 10
    .line 11
    const p2, 0x7f080023

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const p2, 0x7f080022

    .line 16
    .line 17
    .line 18
    :goto_0
    iget v0, p0, Lf0/p;->h:I

    .line 19
    .line 20
    if-eq v0, p2, :cond_4

    .line 21
    .line 22
    iput p2, p0, Lf0/p;->h:I

    .line 23
    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p2, p0, Lf0/p;->h:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 37
    .line 38
    invoke-static {p2, p1}, Lf0/i;->l(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const v0, 0x7f07006e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 51
    .line 52
    invoke-virtual {p2}, Lru/zdevs/zarchiver/ui/FSSelect;->d()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 60
    .line 61
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->c()V

    .line 62
    .line 63
    .line 64
    iget-object v2, p2, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 65
    .line 66
    iget v3, v2, Lru/zdevs/zarchiver/b;->g:I

    .line 67
    .line 68
    iget-object v4, v0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 69
    .line 70
    iput v3, v4, Lru/zdevs/zarchiver/b;->g:I

    .line 71
    .line 72
    iget-boolean v3, v2, Lru/zdevs/zarchiver/b;->i:Z

    .line 73
    .line 74
    iput-boolean v3, v4, Lru/zdevs/zarchiver/b;->i:Z

    .line 75
    .line 76
    iget v2, v2, Lru/zdevs/zarchiver/b;->h:I

    .line 77
    .line 78
    iput v2, v4, Lru/zdevs/zarchiver/b;->h:I

    .line 79
    .line 80
    invoke-virtual {p2}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lg0/h;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-virtual {v0, p2}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lg0/h;)V

    .line 85
    .line 86
    .line 87
    const p2, 0x7f070059

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/widget/CheckBox;

    .line 95
    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    .line 98
    .line 99
    const v0, 0x7f07005a

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/widget/CheckBox;

    .line 107
    .line 108
    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    .line 110
    .line 111
    const v2, 0x7f0700b2

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    if-eqz v2, :cond_2

    .line 119
    .line 120
    iget-object v3, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 121
    .line 122
    invoke-virtual {v3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-nez p2, :cond_2

    .line 131
    .line 132
    iget-object p2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-nez p2, :cond_2

    .line 143
    .line 144
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    :cond_2
    const p2, 0x7f070099

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 155
    .line 156
    iget-object v1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 157
    .line 158
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    const p2, 0x7f0700aa

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/widget/Spinner;

    .line 177
    .line 178
    iget-object v1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 179
    .line 180
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 192
    .line 193
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 197
    .line 198
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lf0/p;->r()V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 205
    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_4

    .line 211
    .line 212
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 213
    .line 214
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 215
    .line 216
    .line 217
    iget-object p2, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 228
    .line 229
    .line 230
    if-eqz v2, :cond_3

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-nez p2, :cond_3

    .line 237
    .line 238
    const/4 p2, -0x1

    .line 239
    goto :goto_1

    .line 240
    :cond_3
    const/4 p2, -0x2

    .line 241
    :goto_1
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 242
    .line 243
    iget-object p2, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 244
    .line 245
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    :cond_4
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
    invoke-virtual {p0}, Lf0/p;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f070059

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    const v0, 0x7f070099

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v2, v3

    .line 28
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const v0, 0x7f07005a

    .line 37
    .line 38
    .line 39
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    iget-object p1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    const v0, 0x7f0700aa

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/Spinner;

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    move v2, v3

    .line 56
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_2
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lf0/p;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07007c

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 9
    iget-object v1, v0, Lru/zdevs/zarchiver/ui/FSSelect;->d:Lru/zdevs/zarchiver/b;

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 11
    new-instance v8, Le1/a;

    iget v4, v1, Lru/zdevs/zarchiver/b;->g:I

    iget-boolean v5, v1, Lru/zdevs/zarchiver/b;->i:Z

    iget v6, v1, Lru/zdevs/zarchiver/b;->h:I

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le1/a;-><init>(Landroid/content/Context;IZII)V

    .line 12
    iget-object v2, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v8, v2, p1}, Le1/b;->a(Landroid/view/Window;Landroid/view/View;)V

    .line 13
    new-instance p1, Lf0/p$a;

    invoke-direct {p1, v1, v0}, Lf0/p$a;-><init>(Lru/zdevs/zarchiver/b;Lru/zdevs/zarchiver/ui/FSSelect;)V

    .line 14
    iput-object p1, v8, Le1/a;->g:Le1/a$e;

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 16
    new-instance v1, Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 18
    iget-object v1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    new-instance v2, Lb0/d;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lb0/d;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    iget-object p1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 20
    iget-object p1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    new-instance v0, Lf0/p$b;

    invoke-direct {v0, p0}, Lf0/p$b;-><init>(Lf0/p;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 21
    iget-object p1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    new-instance v0, Lf0/p$c;

    invoke-direct {v0, p0}, Lf0/p$c;-><init>(Lf0/p;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 22
    iget-object p1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 23
    iget-object p1, p0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method public final onFileSelect(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget p1, p0, Lf0/p;->k:I

    .line 2
    .line 3
    and-int/lit8 p3, p1, 0x2

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 p3, 0x8

    .line 9
    .line 10
    and-int/2addr p1, p3

    .line 11
    if-ne p1, p3, :cond_5

    .line 12
    .line 13
    invoke-static {p2}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p3, "gz"

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    if-nez p3, :cond_2

    .line 24
    .line 25
    const-string p3, "bz2"

    .line 26
    .line 27
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-nez p3, :cond_2

    .line 32
    .line 33
    const-string p3, "xz"

    .line 34
    .line 35
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-nez p3, :cond_2

    .line 40
    .line 41
    const-string p3, "lz4"

    .line 42
    .line 43
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-nez p3, :cond_2

    .line 48
    .line 49
    const-string p3, "zstd"

    .line 50
    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const-string p3, "apk"

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-nez p3, :cond_3

    .line 65
    .line 66
    const-string p3, "zip"

    .line 67
    .line 68
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-nez p3, :cond_3

    .line 73
    .line 74
    const-string p3, "7z"

    .line 75
    .line 76
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-nez p3, :cond_3

    .line 81
    .line 82
    const-string p3, "tar"

    .line 83
    .line 84
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    if-nez p3, :cond_3

    .line 89
    .line 90
    const-string p3, "jar"

    .line 91
    .line 92
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    if-nez p3, :cond_3

    .line 97
    .line 98
    const-string p3, "wim"

    .line 99
    .line 100
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    :goto_0
    const-string p1, ".tar."

    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    add-int/lit8 p3, p3, -0xa

    .line 118
    .line 119
    if-le p1, p3, :cond_4

    .line 120
    .line 121
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const/4 p1, 0x0

    .line 124
    :goto_2
    if-nez p1, :cond_5

    .line 125
    .line 126
    return-void

    .line 127
    :cond_5
    iput-object p2, p0, Lf0/p;->m:Ljava/lang/String;

    .line 128
    .line 129
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 134
    .line 135
    .line 136
    :cond_6
    invoke-virtual {p0}, Lf0/p;->d()V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final onPathChange(Lg0/h;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lf0/p;->w()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const v1, 0x7f07006e

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 11
    .line 12
    iget v1, p0, Lf0/p;->k:I

    .line 13
    .line 14
    and-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    move v2, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/FSSelect;->setMultiSelect(Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FSSelect;->setOnPathChangeListener(Lru/zdevs/zarchiver/ui/FSSelect$c;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FSSelect;->setOnItemSelectChanged(Lc0/h$a;)V

    .line 29
    .line 30
    .line 31
    and-int/lit8 v2, v1, 0x1

    .line 32
    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    and-int/lit8 v2, v1, 0x2

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Lru/zdevs/zarchiver/ui/FSSelect;->setOnFileClickListener(Lru/zdevs/zarchiver/ui/FSSelect$b;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lg0/h;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0, v2}, Lf0/p;->onPathChange(Lg0/h;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    const v4, 0x7f070096

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 65
    .line 66
    const v4, 0x7f07007c

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 77
    .line 78
    const v4, 0x7f0700ea

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ui/FSSelect;->setEmptyText(Landroid/widget/TextView;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 91
    .line 92
    const v2, 0x7f0700ee

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/TextView;

    .line 100
    .line 101
    and-int/2addr v1, v3

    .line 102
    if-nez v1, :cond_2

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 109
    .line 110
    .line 111
    :cond_2
    return-void
.end method

.method public final s(Landroid/content/Context;IZZ)V
    .locals 8

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne p2, v1, :cond_0

    .line 21
    .line 22
    const p2, 0x7f080023

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const p2, 0x7f080022

    .line 27
    .line 28
    .line 29
    :goto_0
    iput p2, p0, Lf0/p;->h:I

    .line 30
    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget v2, p0, Lf0/p;->h:I

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {p2, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    new-instance v2, Landroid/widget/FrameLayout;

    .line 44
    .line 45
    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 49
    .line 50
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    const v3, 0x7f07006e

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 68
    .line 69
    new-instance v3, Lg0/h;

    .line 70
    .line 71
    sget-object v5, Ls0/b;->b:[Ljava/lang/String;

    .line 72
    .line 73
    aget-object v5, v5, v4

    .line 74
    .line 75
    invoke-direct {v3, v5}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lg0/h;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lf0/p;->r()V

    .line 82
    .line 83
    .line 84
    const v2, 0x7f0700b2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput-boolean v4, p0, Lf0/p;->p:Z

    .line 92
    .line 93
    const/16 v3, 0x8

    .line 94
    .line 95
    if-eqz p4, :cond_4

    .line 96
    .line 97
    const/4 p4, 0x1

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    iput-boolean p4, p0, Lf0/p;->p:Z

    .line 104
    .line 105
    :cond_1
    const v2, 0x7f070059

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Landroid/widget/CheckBox;

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    .line 119
    .line 120
    iget v2, p0, Lf0/p;->o:I

    .line 121
    .line 122
    if-ne v2, p4, :cond_2

    .line 123
    .line 124
    const p1, 0x7f0700a7

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/Spinner;

    .line 132
    .line 133
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const p1, 0x7f0700eb

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/widget/TextView;

    .line 144
    .line 145
    if-eqz p1, :cond_5

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    if-ne v2, v1, :cond_5

    .line 152
    .line 153
    const v2, 0x7f07005a

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Landroid/widget/CheckBox;

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 166
    .line 167
    .line 168
    new-instance v2, Lb0/j;

    .line 169
    .line 170
    invoke-direct {v2, p1}, Lb0/j;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const v3, 0x7f020005

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    array-length v3, p1

    .line 185
    move v5, v4

    .line 186
    :goto_1
    if-ge v5, v3, :cond_3

    .line 187
    .line 188
    aget-object v6, p1, v5

    .line 189
    .line 190
    iget-object v7, v2, Lb0/j;->b:Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    iget-object v6, v2, Lb0/j;->c:Ljava/util/ArrayList;

    .line 196
    .line 197
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    add-int/lit8 v5, v5, 0x1

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_3
    const p1, 0x7f0700aa

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    check-cast p1, Landroid/widget/Spinner;

    .line 213
    .line 214
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 215
    .line 216
    .line 217
    sget p2, Ls0/b;->f:I

    .line 218
    .line 219
    const/high16 v3, 0xf0000

    .line 220
    .line 221
    and-int/2addr p2, v3

    .line 222
    shr-int/lit8 p2, p2, 0x10

    .line 223
    .line 224
    add-int/2addr p2, p4

    .line 225
    div-int/2addr p2, v1

    .line 226
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 227
    .line 228
    .line 229
    move-result p4

    .line 230
    if-ge p2, p4, :cond_5

    .line 231
    .line 232
    invoke-virtual {v2, p2}, Lb0/j;->isEnabled(I)Z

    .line 233
    .line 234
    .line 235
    move-result p4

    .line 236
    if-eqz p4, :cond_5

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_4
    if-eqz v2, :cond_5

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    :cond_5
    :goto_2
    if-eqz p3, :cond_6

    .line 248
    .line 249
    const p1, 0x7f0c0029

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_6
    const p1, 0x7f0c0023

    .line 254
    .line 255
    .line 256
    :goto_3
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    .line 258
    .line 259
    const p1, 0x7f0c0025

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    iput-object p1, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 273
    .line 274
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v4, v4, v4}, Lf0/p;->c(IIZ)V

    .line 278
    .line 279
    .line 280
    return-void
.end method

.method public final t()I
    .locals 3

    .line 1
    iget v0, p0, Lf0/p;->o:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const v1, 0x7f0700aa

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/Spinner;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lez v0, :cond_2

    .line 35
    .line 36
    mul-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    add-int/2addr v0, v2

    .line 39
    :cond_2
    return v0

    .line 40
    :cond_3
    :goto_0
    return v2
.end method

.method public final u(Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf0/p;->n:Z

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const v2, 0x7f070059

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/CheckBox;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    const v1, 0x7f070063

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lru/zdevs/zarchiver/ui/text/EditPassword;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "\\"

    .line 52
    .line 53
    const-string v1, "\\\\"

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    :goto_0
    return-object p1

    .line 69
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final v()Lg0/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    const v1, 0x7f07006e

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 17
    .line 18
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lg0/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final w()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    const v1, 0x7f07006e

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 11
    .line 12
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lg0/h;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lg0/h;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, ""

    .line 30
    .line 31
    :goto_0
    const/16 v1, 0x2f

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "/"

    .line 38
    .line 39
    if-ltz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/lit8 v4, v1, 0x1

    .line 46
    .line 47
    if-le v3, v4, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-lez v1, :cond_1

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_1
    move-object v0, v3

    .line 61
    :cond_2
    iget-object v1, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 62
    .line 63
    const v3, 0x7f07008b

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object v3, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    const v4, 0x7f07008a

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/widget/TextView;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    const/4 v4, 0x0

    .line 90
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 91
    .line 92
    .line 93
    const v4, 0x800005

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lf0/i;->q(Landroid/app/Dialog;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p0, Lf0/p;->p:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lf0/p;->g:Landroid/app/AlertDialog;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Lf0/i;->o(Landroid/app/Dialog;Z)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    const v1, 0x7f07006e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 32
    .line 33
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ui/FSSelect;->c()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
