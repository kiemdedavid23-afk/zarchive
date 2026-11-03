.class public final Lf0/o;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lv0/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/o$n;,
        Lf0/o$i;,
        Lf0/o$k;,
        Lf0/o$g;,
        Lf0/o$j;,
        Lf0/o$l;,
        Lf0/o$f;,
        Lf0/o$h;,
        Lf0/o$c;,
        Lf0/o$d;,
        Lf0/o$e;,
        Lf0/o$m;
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:[I

.field public static final r:[I


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:I

.field public i:Landroid/widget/ScrollView;

.field public final j:Lv0/a;

.field public final k:[Lg0/h;

.field public final l:[Ljava/lang/String;

.field public final m:Z

.field public n:I

.field public o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lf0/o;->p:[I

    .line 8
    .line 9
    new-array v1, v0, [I

    .line 10
    .line 11
    fill-array-data v1, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v1, Lf0/o;->q:[I

    .line 15
    .line 16
    new-array v0, v0, [I

    .line 17
    .line 18
    fill-array-data v0, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v0, Lf0/o;->r:[I

    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 4
        0x7f0700bf
        0x7f0700c0
        0x7f0700c1
        0x7f0700c2
        0x7f0700c3
    .end array-data

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 4
        0x7f0700e1
        0x7f0700e2
        0x7f0700e3
        0x7f0700e4
        0x7f0700e5
    .end array-data

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    :array_2
    .array-data 4
        0x7f0700d3
        0x7f0700d4
        0x7f0700d5
        0x7f0700d6
        0x7f0700d7
    .end array-data
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Lg0/h;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    iput-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 3
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    const/4 p1, 0x1

    new-array v0, p1, [Lg0/h;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 4
    iput-object v0, p0, Lf0/o;->k:[Lg0/h;

    new-array p1, p1, [Ljava/lang/String;

    aput-object p4, p1, v1

    .line 5
    iput-object p1, p0, Lf0/o;->l:[Ljava/lang/String;

    .line 6
    iput-boolean p5, p0, Lf0/o;->m:Z

    .line 7
    iput v1, p0, Lf0/o;->o:I

    iput v1, p0, Lf0/o;->n:I

    .line 8
    invoke-virtual {p0, p2}, Lf0/o;->s(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Lg0/h;[Ljava/lang/String;Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 11
    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    iput-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 12
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    const/4 p1, 0x1

    new-array p1, p1, [Lg0/h;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 13
    iput-object p1, p0, Lf0/o;->k:[Lg0/h;

    .line 14
    iput-object p4, p0, Lf0/o;->l:[Ljava/lang/String;

    .line 15
    iput-boolean p5, p0, Lf0/o;->m:Z

    .line 16
    iput v0, p0, Lf0/o;->o:I

    iput v0, p0, Lf0/o;->n:I

    .line 17
    invoke-virtual {p0, p2}, Lf0/o;->s(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;[Lg0/h;[Ljava/lang/String;Z)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 20
    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    iput-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 21
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 22
    iput-object p3, p0, Lf0/o;->k:[Lg0/h;

    .line 23
    iput-object p4, p0, Lf0/o;->l:[Ljava/lang/String;

    .line 24
    iput-boolean p5, p0, Lf0/o;->m:Z

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lf0/o;->o:I

    iput p1, p0, Lf0/o;->n:I

    .line 26
    invoke-virtual {p0, p2}, Lf0/o;->s(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public static r(Landroid/app/Dialog;I)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    invoke-static {v0}, Ls0/b;->l(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    :try_start_0
    sget-object v1, Lf0/o;->p:[I

    .line 16
    .line 17
    aget v1, v1, v0

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lv0/a;->d(Lv0/a$c;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const v2, 0x7fffffff

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {v0, v2, v3, v1}, Lv0/a;->f(III)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 23
    .line 24
    :cond_0
    iput-object v1, p0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 25
    .line 26
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final g(Lv0/a$b;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lv0/a$b;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/16 v4, 0x20

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v1, :cond_11

    .line 16
    .line 17
    if-eq v1, v8, :cond_a

    .line 18
    .line 19
    if-eq v1, v7, :cond_6

    .line 20
    .line 21
    const v4, 0x7f070051

    .line 22
    .line 23
    .line 24
    if-eq v1, v3, :cond_4

    .line 25
    .line 26
    if-eq v1, v5, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    goto/16 :goto_15

    .line 32
    .line 33
    :cond_0
    iget-object v1, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 34
    .line 35
    if-eqz v1, :cond_3c

    .line 36
    .line 37
    const v2, 0x7f0700c8

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 45
    .line 46
    move-object/from16 v2, p1

    .line 47
    .line 48
    check-cast v2, Lf0/o$e;

    .line 49
    .line 50
    iget-object v2, v2, Lf0/o$e;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_15

    .line 56
    .line 57
    :cond_1
    iget-object v1, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 58
    .line 59
    if-eqz v1, :cond_3c

    .line 60
    .line 61
    move-object/from16 v3, p1

    .line 62
    .line 63
    check-cast v3, Lf0/o$e;

    .line 64
    .line 65
    iget v3, v3, Lf0/o$e;->b:I

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/CheckBox;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 74
    .line 75
    .line 76
    if-ne v3, v8, :cond_2

    .line 77
    .line 78
    move v2, v8

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v2, v6

    .line 81
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    .line 83
    .line 84
    if-eq v3, v7, :cond_3

    .line 85
    .line 86
    move v6, v8

    .line 87
    :cond_3
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_15

    .line 94
    .line 95
    :cond_4
    move-object/from16 v1, p1

    .line 96
    .line 97
    check-cast v1, Lf0/o$e;

    .line 98
    .line 99
    iget v1, v1, Lf0/o$e;->b:I

    .line 100
    .line 101
    iput v1, v0, Lf0/o;->o:I

    .line 102
    .line 103
    if-nez v1, :cond_3c

    .line 104
    .line 105
    iget-object v1, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 106
    .line 107
    if-eqz v1, :cond_3c

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Landroid/widget/CheckBox;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    xor-int/2addr v2, v8

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 127
    .line 128
    .line 129
    :cond_5
    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_15

    .line 133
    .line 134
    :cond_6
    move-object/from16 v1, p1

    .line 135
    .line 136
    check-cast v1, Lf0/o$c;

    .line 137
    .line 138
    iget-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 139
    .line 140
    if-nez v2, :cond_7

    .line 141
    .line 142
    goto/16 :goto_15

    .line 143
    .line 144
    :cond_7
    invoke-static {v4}, Ls0/b;->l(I)Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    move v3, v6

    .line 149
    :goto_1
    iget-object v4, v1, Lf0/o$c;->b:[I

    .line 150
    .line 151
    array-length v5, v4

    .line 152
    if-ge v3, v5, :cond_3c

    .line 153
    .line 154
    iget-object v5, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 155
    .line 156
    aget v4, v4, v3

    .line 157
    .line 158
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Landroid/widget/TextView;

    .line 163
    .line 164
    if-eqz v4, :cond_9

    .line 165
    .line 166
    iget-object v5, v1, Lf0/o$c;->c:[Ljava/lang/String;

    .line 167
    .line 168
    aget-object v5, v5, v3

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    .line 172
    .line 173
    if-eqz v2, :cond_8

    .line 174
    .line 175
    invoke-static {v4}, Ly0/f;->b(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_a
    move-object/from16 v1, p1

    .line 186
    .line 187
    check-cast v1, Lf0/o$c;

    .line 188
    .line 189
    iget-object v2, v1, Lf0/o$c;->b:[I

    .line 190
    .line 191
    iget-object v3, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 192
    .line 193
    if-nez v3, :cond_b

    .line 194
    .line 195
    goto/16 :goto_15

    .line 196
    .line 197
    :cond_b
    move v3, v6

    .line 198
    move v5, v3

    .line 199
    :goto_3
    iget-object v7, v1, Lf0/o$c;->c:[Ljava/lang/String;

    .line 200
    .line 201
    :try_start_0
    array-length v8, v2

    .line 202
    if-ge v3, v8, :cond_f

    .line 203
    .line 204
    aget-object v8, v7, v3

    .line 205
    .line 206
    if-eqz v8, :cond_e

    .line 207
    .line 208
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_e

    .line 213
    .line 214
    iget-object v8, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 215
    .line 216
    sget-object v9, Lf0/o;->q:[I

    .line 217
    .line 218
    aget v9, v9, v5

    .line 219
    .line 220
    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    check-cast v8, Landroid/widget/TextView;

    .line 225
    .line 226
    if-eqz v8, :cond_c

    .line 227
    .line 228
    iget-object v9, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 229
    .line 230
    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    aget v10, v2, v3

    .line 235
    .line 236
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    iget-object v8, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 244
    .line 245
    sget-object v9, Lf0/o;->r:[I

    .line 246
    .line 247
    aget v9, v9, v5

    .line 248
    .line 249
    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v8

    .line 253
    check-cast v8, Landroid/widget/TextView;

    .line 254
    .line 255
    if-eqz v8, :cond_d

    .line 256
    .line 257
    aget-object v7, v7, v3

    .line 258
    .line 259
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    :cond_d
    add-int/lit8 v5, v5, 0x1

    .line 263
    .line 264
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_f
    move v1, v6

    .line 268
    :goto_4
    if-ge v1, v5, :cond_3c

    .line 269
    .line 270
    iget-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 271
    .line 272
    sget-object v3, Lf0/o;->p:[I

    .line 273
    .line 274
    aget v3, v3, v1

    .line 275
    .line 276
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-static {v4}, Ls0/b;->l(I)Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_10

    .line 285
    .line 286
    invoke-static {v2}, Ly0/f;->b(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_10
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    .line 293
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_11
    move-object/from16 v1, p1

    .line 297
    .line 298
    check-cast v1, Lf0/o$d;

    .line 299
    .line 300
    iget-object v9, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 301
    .line 302
    if-nez v9, :cond_12

    .line 303
    .line 304
    goto/16 :goto_15

    .line 305
    .line 306
    :cond_12
    const v10, 0x7f0700cf

    .line 307
    .line 308
    .line 309
    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 310
    .line 311
    .line 312
    move-result-object v9

    .line 313
    check-cast v9, Landroid/widget/TextView;

    .line 314
    .line 315
    iget-object v10, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 316
    .line 317
    const v11, 0x7f0700ce

    .line 318
    .line 319
    .line 320
    invoke-virtual {v10, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 321
    .line 322
    .line 323
    move-result-object v10

    .line 324
    check-cast v10, Landroid/widget/TextView;

    .line 325
    .line 326
    iget-object v11, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 327
    .line 328
    const v12, 0x7f0700cb

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    check-cast v11, Landroid/widget/TextView;

    .line 336
    .line 337
    iget-object v12, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 338
    .line 339
    const v13, 0x7f0700cc

    .line 340
    .line 341
    .line 342
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v12

    .line 346
    check-cast v12, Landroid/widget/TextView;

    .line 347
    .line 348
    iget-object v13, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 349
    .line 350
    const v14, 0x7f0700be

    .line 351
    .line 352
    .line 353
    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    if-eqz v9, :cond_3c

    .line 358
    .line 359
    if-eqz v10, :cond_3c

    .line 360
    .line 361
    if-eqz v11, :cond_3c

    .line 362
    .line 363
    if-eqz v12, :cond_3c

    .line 364
    .line 365
    if-nez v13, :cond_13

    .line 366
    .line 367
    goto/16 :goto_15

    .line 368
    .line 369
    :cond_13
    iget-object v14, v1, Lf0/o$d;->b:Lg0/e$b;

    .line 370
    .line 371
    const v15, 0x7f0c0077

    .line 372
    .line 373
    .line 374
    const-string v4, "-"

    .line 375
    .line 376
    if-nez v14, :cond_15

    .line 377
    .line 378
    iget-boolean v1, v0, Lf0/o;->m:Z

    .line 379
    .line 380
    if-eqz v1, :cond_14

    .line 381
    .line 382
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(I)V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_14
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    :goto_6
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    .line 394
    .line 395
    goto/16 :goto_15

    .line 396
    .line 397
    :cond_15
    iget-boolean v5, v14, Lg0/e$b;->a:Z

    .line 398
    .line 399
    const-string v3, "..."

    .line 400
    .line 401
    iget-object v8, v0, Lf0/o;->j:Lv0/a;

    .line 402
    .line 403
    if-eqz v5, :cond_2a

    .line 404
    .line 405
    iget-boolean v5, v14, Lg0/e$b;->e:Z

    .line 406
    .line 407
    if-nez v5, :cond_2a

    .line 408
    .line 409
    iget-object v1, v1, Lf0/o$d;->a:Lg0/h;

    .line 410
    .line 411
    invoke-virtual {v1}, Lg0/h;->e()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-static {v4}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-static {v5}, Lb/d;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v13

    .line 423
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    move-object/from16 p1, v4

    .line 427
    .line 428
    move-object v15, v5

    .line 429
    iget-wide v4, v14, Lg0/e$b;->c:J

    .line 430
    .line 431
    invoke-static {v4, v5, v7, v2}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v4

    .line 435
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    if-eqz v4, :cond_16

    .line 443
    .line 444
    invoke-virtual {v1}, Lg0/h;->l()Z

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    if-nez v4, :cond_16

    .line 449
    .line 450
    const/4 v4, 0x1

    .line 451
    goto :goto_7

    .line 452
    :cond_16
    move v4, v6

    .line 453
    :goto_7
    if-nez v4, :cond_17

    .line 454
    .line 455
    invoke-virtual {v1}, Lg0/h;->g()Z

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    if-nez v5, :cond_17

    .line 460
    .line 461
    invoke-virtual {v1}, Lg0/h;->m()Z

    .line 462
    .line 463
    .line 464
    move-result v5

    .line 465
    if-eqz v5, :cond_32

    .line 466
    .line 467
    :cond_17
    if-eqz v4, :cond_18

    .line 468
    .line 469
    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    new-instance v3, Lf0/o$j;

    .line 473
    .line 474
    invoke-virtual {v1}, Lg0/h;->r()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    invoke-direct {v3, v5}, Lf0/o$j;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 482
    .line 483
    .line 484
    :cond_18
    const-string v3, "apk"

    .line 485
    .line 486
    move-object v5, v15

    .line 487
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    const v12, 0x7f0c0055

    .line 492
    .line 493
    .line 494
    const v15, 0x7f0c0059

    .line 495
    .line 496
    .line 497
    const v7, 0x7f0c007a

    .line 498
    .line 499
    .line 500
    const v9, 0x7f0c0067

    .line 501
    .line 502
    .line 503
    const v10, 0x7f0c004e

    .line 504
    .line 505
    .line 506
    if-eqz v3, :cond_19

    .line 507
    .line 508
    move v3, v10

    .line 509
    goto/16 :goto_a

    .line 510
    .line 511
    :cond_19
    const-string v3, "image/"

    .line 512
    .line 513
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    if-eqz v3, :cond_1a

    .line 518
    .line 519
    move v3, v9

    .line 520
    goto/16 :goto_a

    .line 521
    .line 522
    :cond_1a
    const-string v3, "fb2"

    .line 523
    .line 524
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-nez v3, :cond_21

    .line 529
    .line 530
    const-string v3, "epub"

    .line 531
    .line 532
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    if-eqz v3, :cond_1b

    .line 537
    .line 538
    goto :goto_9

    .line 539
    :cond_1b
    const-string v3, "docx"

    .line 540
    .line 541
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result v3

    .line 545
    if-nez v3, :cond_20

    .line 546
    .line 547
    const-string v3, "odt"

    .line 548
    .line 549
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    if-nez v3, :cond_20

    .line 554
    .line 555
    const-string v3, "xlsx"

    .line 556
    .line 557
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    if-nez v3, :cond_20

    .line 562
    .line 563
    const-string v3, "ods"

    .line 564
    .line 565
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v3

    .line 569
    if-eqz v3, :cond_1c

    .line 570
    .line 571
    goto :goto_8

    .line 572
    :cond_1c
    if-eqz v4, :cond_1f

    .line 573
    .line 574
    const-string v3, "video/"

    .line 575
    .line 576
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    if-eqz v3, :cond_1d

    .line 581
    .line 582
    move v3, v7

    .line 583
    goto :goto_a

    .line 584
    :cond_1d
    const-string v3, "audio/"

    .line 585
    .line 586
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    if-eqz v3, :cond_1e

    .line 591
    .line 592
    move v3, v15

    .line 593
    goto :goto_a

    .line 594
    :cond_1e
    invoke-static/range {p1 .. p1}, Lb/d;->E(Ljava/lang/String;)B

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    invoke-static {v3}, Lb/d;->H(B)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    if-eqz v3, :cond_1f

    .line 603
    .line 604
    move v3, v12

    .line 605
    goto :goto_a

    .line 606
    :cond_1f
    move v3, v6

    .line 607
    goto :goto_a

    .line 608
    :cond_20
    :goto_8
    const v3, 0x7f0c005f

    .line 609
    .line 610
    .line 611
    goto :goto_a

    .line 612
    :cond_21
    :goto_9
    const v3, 0x7f0c005b

    .line 613
    .line 614
    .line 615
    :goto_a
    if-eqz v3, :cond_23

    .line 616
    .line 617
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 618
    .line 619
    const v13, 0x7f0700ba

    .line 620
    .line 621
    .line 622
    invoke-virtual {v4, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Landroid/widget/TableLayout;

    .line 627
    .line 628
    if-eqz v4, :cond_22

    .line 629
    .line 630
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 631
    .line 632
    .line 633
    :cond_22
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 634
    .line 635
    const v13, 0x7f0700d8

    .line 636
    .line 637
    .line 638
    invoke-virtual {v4, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 639
    .line 640
    .line 641
    move-result-object v4

    .line 642
    check-cast v4, Landroid/widget/TextView;

    .line 643
    .line 644
    if-eqz v4, :cond_23

    .line 645
    .line 646
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(I)V

    .line 647
    .line 648
    .line 649
    :cond_23
    iput v3, v0, Lf0/o;->n:I

    .line 650
    .line 651
    if-ne v3, v10, :cond_24

    .line 652
    .line 653
    new-instance v3, Lf0/o$l;

    .line 654
    .line 655
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 656
    .line 657
    iget-wide v9, v14, Lg0/e$b;->c:J

    .line 658
    .line 659
    const/16 v21, 0x6

    .line 660
    .line 661
    move-object/from16 v16, v3

    .line 662
    .line 663
    move-object/from16 v17, v4

    .line 664
    .line 665
    move-object/from16 v18, v1

    .line 666
    .line 667
    move-wide/from16 v19, v9

    .line 668
    .line 669
    invoke-direct/range {v16 .. v21}, Lf0/o$l;-><init>(Landroid/app/Dialog;Lg0/h;JI)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_d

    .line 676
    .line 677
    :cond_24
    if-ne v3, v7, :cond_25

    .line 678
    .line 679
    new-instance v3, Lf0/o$l;

    .line 680
    .line 681
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 682
    .line 683
    iget-wide v9, v14, Lg0/e$b;->c:J

    .line 684
    .line 685
    const/16 v21, 0xe

    .line 686
    .line 687
    move-object/from16 v16, v3

    .line 688
    .line 689
    move-object/from16 v17, v4

    .line 690
    .line 691
    move-object/from16 v18, v1

    .line 692
    .line 693
    move-wide/from16 v19, v9

    .line 694
    .line 695
    invoke-direct/range {v16 .. v21}, Lf0/o$l;-><init>(Landroid/app/Dialog;Lg0/h;JI)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 699
    .line 700
    .line 701
    goto/16 :goto_d

    .line 702
    .line 703
    :cond_25
    if-ne v3, v15, :cond_26

    .line 704
    .line 705
    new-instance v3, Lf0/o$l;

    .line 706
    .line 707
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 708
    .line 709
    iget-wide v9, v14, Lg0/e$b;->c:J

    .line 710
    .line 711
    const/16 v21, 0x7

    .line 712
    .line 713
    move-object/from16 v16, v3

    .line 714
    .line 715
    move-object/from16 v17, v4

    .line 716
    .line 717
    move-object/from16 v18, v1

    .line 718
    .line 719
    move-wide/from16 v19, v9

    .line 720
    .line 721
    invoke-direct/range {v16 .. v21}, Lf0/o$l;-><init>(Landroid/app/Dialog;Lg0/h;JI)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_d

    .line 728
    .line 729
    :cond_26
    if-ne v3, v9, :cond_27

    .line 730
    .line 731
    new-instance v3, Lf0/o$l;

    .line 732
    .line 733
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 734
    .line 735
    iget-wide v9, v14, Lg0/e$b;->c:J

    .line 736
    .line 737
    const/16 v21, 0x9

    .line 738
    .line 739
    move-object/from16 v16, v3

    .line 740
    .line 741
    move-object/from16 v17, v4

    .line 742
    .line 743
    move-object/from16 v18, v1

    .line 744
    .line 745
    move-wide/from16 v19, v9

    .line 746
    .line 747
    invoke-direct/range {v16 .. v21}, Lf0/o$l;-><init>(Landroid/app/Dialog;Lg0/h;JI)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_d

    .line 754
    .line 755
    :cond_27
    if-ne v3, v12, :cond_28

    .line 756
    .line 757
    new-instance v3, Lf0/o$f;

    .line 758
    .line 759
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 760
    .line 761
    invoke-virtual {v1}, Lg0/h;->r()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    invoke-direct {v3, v4, v1}, Lf0/o$f;-><init>(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 769
    .line 770
    .line 771
    goto/16 :goto_d

    .line 772
    .line 773
    :cond_28
    const v4, 0x7f0c005b

    .line 774
    .line 775
    .line 776
    if-eq v3, v4, :cond_29

    .line 777
    .line 778
    const v4, 0x7f0c005f

    .line 779
    .line 780
    .line 781
    if-ne v3, v4, :cond_32

    .line 782
    .line 783
    :cond_29
    new-instance v4, Lf0/o$h;

    .line 784
    .line 785
    iget-object v7, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 786
    .line 787
    invoke-direct {v4, v7, v1, v3, v5}, Lf0/o$h;-><init>(Landroid/app/Dialog;Lg0/h;ILjava/lang/String;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v4, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_d

    .line 794
    .line 795
    :cond_2a
    iget-boolean v1, v14, Lg0/e$b;->e:Z

    .line 796
    .line 797
    if-eqz v1, :cond_2c

    .line 798
    .line 799
    iget-object v1, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 800
    .line 801
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    const v5, 0x7f0c0078

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    .line 814
    .line 815
    iget-object v1, v14, Lg0/e$b;->f:Ljava/lang/String;

    .line 816
    .line 817
    if-eqz v1, :cond_2d

    .line 818
    .line 819
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    if-nez v1, :cond_2d

    .line 824
    .line 825
    iget-object v1, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 826
    .line 827
    const v5, 0x7f0700bd

    .line 828
    .line 829
    .line 830
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    if-eqz v1, :cond_2b

    .line 835
    .line 836
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 837
    .line 838
    .line 839
    :cond_2b
    iget-object v1, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 840
    .line 841
    const v5, 0x7f0700d2

    .line 842
    .line 843
    .line 844
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    check-cast v1, Landroid/widget/TextView;

    .line 849
    .line 850
    if-eqz v1, :cond_2d

    .line 851
    .line 852
    iget-object v5, v14, Lg0/e$b;->f:Ljava/lang/String;

    .line 853
    .line 854
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    .line 856
    .line 857
    goto :goto_b

    .line 858
    :cond_2c
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(I)V

    .line 859
    .line 860
    .line 861
    :cond_2d
    :goto_b
    iget-wide v6, v14, Lg0/e$b;->c:J

    .line 862
    .line 863
    const-wide/16 v16, 0x0

    .line 864
    .line 865
    cmp-long v5, v6, v16

    .line 866
    .line 867
    const v9, 0x7f0700bc

    .line 868
    .line 869
    .line 870
    if-lez v5, :cond_2e

    .line 871
    .line 872
    const/4 v5, 0x2

    .line 873
    invoke-static {v6, v7, v5, v2}, Lu0/h;->b(JILjava/lang/String;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    .line 879
    .line 880
    goto :goto_c

    .line 881
    :cond_2e
    iget-boolean v5, v14, Lg0/e$b;->e:Z

    .line 882
    .line 883
    if-nez v5, :cond_30

    .line 884
    .line 885
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    .line 887
    .line 888
    iget-object v3, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 889
    .line 890
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    if-eqz v3, :cond_2f

    .line 895
    .line 896
    const/4 v1, 0x0

    .line 897
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 898
    .line 899
    .line 900
    :cond_2f
    new-instance v3, Lf0/o$g;

    .line 901
    .line 902
    iget-object v4, v0, Lf0/o;->k:[Lg0/h;

    .line 903
    .line 904
    iget-object v5, v0, Lf0/o;->l:[Ljava/lang/String;

    .line 905
    .line 906
    invoke-direct {v3, v4, v5}, Lf0/o$g;-><init>([Lg0/h;[Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    invoke-virtual {v3, v2, v8}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 910
    .line 911
    .line 912
    goto :goto_c

    .line 913
    :cond_30
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 914
    .line 915
    .line 916
    :goto_c
    iget v2, v14, Lg0/e$b;->d:I

    .line 917
    .line 918
    if-lez v2, :cond_31

    .line 919
    .line 920
    iget-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 921
    .line 922
    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    iget-object v3, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 927
    .line 928
    const v4, 0x7f0700ca

    .line 929
    .line 930
    .line 931
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 932
    .line 933
    .line 934
    move-result-object v3

    .line 935
    check-cast v3, Landroid/widget/TextView;

    .line 936
    .line 937
    if-eqz v3, :cond_31

    .line 938
    .line 939
    if-eqz v2, :cond_31

    .line 940
    .line 941
    const/4 v1, 0x0

    .line 942
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 943
    .line 944
    .line 945
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 946
    .line 947
    const/4 v4, 0x1

    .line 948
    new-array v5, v4, [Ljava/lang/Object;

    .line 949
    .line 950
    iget v4, v14, Lg0/e$b;->d:I

    .line 951
    .line 952
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    aput-object v4, v5, v1

    .line 957
    .line 958
    const-string v4, "%d"

    .line 959
    .line 960
    invoke-static {v2, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v2

    .line 964
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    .line 966
    .line 967
    :cond_31
    const/16 v2, 0x8

    .line 968
    .line 969
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    .line 971
    .line 972
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 973
    .line 974
    .line 975
    :cond_32
    :goto_d
    iget-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 976
    .line 977
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    .line 982
    .line 983
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 984
    .line 985
    .line 986
    const/4 v4, 0x3

    .line 987
    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    .line 988
    .line 989
    .line 990
    move-result-object v5

    .line 991
    iget-wide v6, v14, Lg0/e$b;->b:J

    .line 992
    .line 993
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 994
    .line 995
    .line 996
    move-result-object v4

    .line 997
    invoke-virtual {v5, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v4

    .line 1001
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    const-string v4, " "

    .line 1005
    .line 1006
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .line 1008
    .line 1009
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v4

    .line 1013
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v4

    .line 1017
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v2

    .line 1021
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v2

    .line 1025
    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1026
    .line 1027
    const/16 v5, 0xf0

    .line 1028
    .line 1029
    if-ge v4, v5, :cond_35

    .line 1030
    .line 1031
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1032
    .line 1033
    const/4 v5, 0x2

    .line 1034
    if-eq v4, v5, :cond_34

    .line 1035
    .line 1036
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1037
    .line 1038
    and-int/lit8 v2, v2, 0xf

    .line 1039
    .line 1040
    const/4 v4, 0x3

    .line 1041
    if-lt v2, v4, :cond_33

    .line 1042
    .line 1043
    goto :goto_e

    .line 1044
    :cond_33
    invoke-static {v4}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v2

    .line 1048
    iget-wide v4, v14, Lg0/e$b;->b:J

    .line 1049
    .line 1050
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v4

    .line 1054
    invoke-virtual {v2, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v2

    .line 1058
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    .line 1061
    goto :goto_10

    .line 1062
    :cond_34
    move v2, v5

    .line 1063
    goto :goto_f

    .line 1064
    :cond_35
    :goto_e
    const/4 v2, 0x2

    .line 1065
    :goto_f
    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v4

    .line 1069
    iget-wide v5, v14, Lg0/e$b;->b:J

    .line 1070
    .line 1071
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v2

    .line 1075
    invoke-virtual {v4, v2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v2

    .line 1079
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    .line 1082
    :goto_10
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v2

    .line 1086
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    .line 1088
    .line 1089
    iget-object v2, v14, Lg0/e$b;->g:Ljava/lang/String;

    .line 1090
    .line 1091
    if-eqz v2, :cond_36

    .line 1092
    .line 1093
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1094
    .line 1095
    .line 1096
    move-result v2

    .line 1097
    if-nez v2, :cond_36

    .line 1098
    .line 1099
    iget-object v2, v14, Lg0/e$b;->h:Ljava/lang/String;

    .line 1100
    .line 1101
    if-eqz v2, :cond_36

    .line 1102
    .line 1103
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1104
    .line 1105
    .line 1106
    move-result v2

    .line 1107
    if-nez v2, :cond_36

    .line 1108
    .line 1109
    iget-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 1110
    .line 1111
    const v3, 0x7f0700c5

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    iget-object v3, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 1119
    .line 1120
    const v4, 0x7f0700e6

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v3

    .line 1127
    check-cast v3, Landroid/widget/TextView;

    .line 1128
    .line 1129
    if-eqz v2, :cond_36

    .line 1130
    .line 1131
    if-eqz v3, :cond_36

    .line 1132
    .line 1133
    const/4 v1, 0x0

    .line 1134
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    .line 1136
    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1140
    .line 1141
    .line 1142
    iget-object v4, v14, Lg0/e$b;->h:Ljava/lang/String;

    .line 1143
    .line 1144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    const-string v4, "/"

    .line 1148
    .line 1149
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    iget-object v4, v14, Lg0/e$b;->g:Ljava/lang/String;

    .line 1153
    .line 1154
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    .line 1163
    .line 1164
    :cond_36
    iget v2, v14, Lg0/e$b;->i:I

    .line 1165
    .line 1166
    if-ltz v2, :cond_3c

    .line 1167
    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1171
    .line 1172
    .line 1173
    move v4, v2

    .line 1174
    const/4 v2, 0x0

    .line 1175
    const/4 v5, 0x3

    .line 1176
    :goto_11
    if-ge v2, v5, :cond_3b

    .line 1177
    .line 1178
    rem-int/lit8 v6, v4, 0xa

    .line 1179
    .line 1180
    div-int/lit8 v4, v4, 0xa

    .line 1181
    .line 1182
    and-int/lit8 v7, v6, 0x1

    .line 1183
    .line 1184
    const/16 v8, 0x2d

    .line 1185
    .line 1186
    const/4 v9, 0x1

    .line 1187
    if-ne v7, v9, :cond_37

    .line 1188
    .line 1189
    const/16 v7, 0x78

    .line 1190
    .line 1191
    const/4 v1, 0x0

    .line 1192
    invoke-virtual {v3, v1, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    goto :goto_12

    .line 1196
    :cond_37
    const/4 v1, 0x0

    .line 1197
    invoke-virtual {v3, v1, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1198
    .line 1199
    .line 1200
    :goto_12
    and-int/lit8 v7, v6, 0x2

    .line 1201
    .line 1202
    const/4 v10, 0x2

    .line 1203
    if-ne v7, v10, :cond_38

    .line 1204
    .line 1205
    const/16 v7, 0x77

    .line 1206
    .line 1207
    invoke-virtual {v3, v1, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    goto :goto_13

    .line 1211
    :cond_38
    invoke-virtual {v3, v1, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1212
    .line 1213
    .line 1214
    :goto_13
    and-int/lit8 v6, v6, 0x4

    .line 1215
    .line 1216
    const/4 v7, 0x4

    .line 1217
    if-ne v6, v7, :cond_39

    .line 1218
    .line 1219
    const/16 v6, 0x72

    .line 1220
    .line 1221
    invoke-virtual {v3, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    goto :goto_14

    .line 1225
    :cond_39
    invoke-virtual {v3, v1, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    :goto_14
    const/4 v6, 0x2

    .line 1229
    const/16 v8, 0x20

    .line 1230
    .line 1231
    if-eq v2, v6, :cond_3a

    .line 1232
    .line 1233
    invoke-virtual {v3, v1, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1234
    .line 1235
    .line 1236
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 1237
    .line 1238
    goto :goto_11

    .line 1239
    :cond_3b
    const-string v2, " ("

    .line 1240
    .line 1241
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    .line 1244
    iget v2, v14, Lg0/e$b;->i:I

    .line 1245
    .line 1246
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    const/16 v2, 0x29

    .line 1250
    .line 1251
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    iget-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 1255
    .line 1256
    const v4, 0x7f0700c4

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v2

    .line 1263
    iget-object v4, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 1264
    .line 1265
    const v5, 0x7f0700d9

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v4

    .line 1272
    check-cast v4, Landroid/widget/TextView;

    .line 1273
    .line 1274
    if-eqz v2, :cond_3c

    .line 1275
    .line 1276
    if-eqz v4, :cond_3c

    .line 1277
    .line 1278
    const/4 v1, 0x0

    .line 1279
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    .line 1281
    .line 1282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v1

    .line 1286
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    .line 1288
    .line 1289
    :catch_0
    :cond_3c
    :goto_15
    return-void
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    iget v0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0xf

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const v0, 0x7f080014

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    const v0, 0x7f080015

    .line 24
    .line 25
    .line 26
    :goto_1
    iget v1, p0, Lf0/o;->h:I

    .line 27
    .line 28
    if-ne v1, v0, :cond_3

    .line 29
    .line 30
    return-void

    .line 31
    :cond_3
    iput v0, p0, Lf0/o;->h:I

    .line 32
    .line 33
    iget-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lv0/a;->d(Lv0/a$c;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget v1, p0, Lf0/o;->h:I

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 51
    .line 52
    invoke-static {v1, p1}, Lf0/i;->l(Landroid/widget/FrameLayout;Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0700be

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    iget-object v4, p0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    const v1, 0x7f070051

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/CheckBox;

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 93
    .line 94
    invoke-virtual {v1, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p2}, Lf0/o;->t(Landroid/content/res/Configuration;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0, v2}, Lv0/a;->a(Lv0/a$c;Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

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
    iget-object p1, p0, Lf0/o;->j:Lv0/a;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lv0/a;->d(Lv0/a$c;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    const v1, 0x7fffffff

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1, v1, v2, v0}, Lv0/a;->f(III)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 23
    .line 24
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f070051

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Lf0/o;->k:[Lg0/h;

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aget-object v1, p1, v0

    .line 18
    .line 19
    if-eqz v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v1, p0, Lf0/o;->l:[Ljava/lang/String;

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    aget-object v2, v1, v0

    .line 34
    .line 35
    invoke-static {v2}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance v2, Lg0/h;

    .line 43
    .line 44
    aget-object p1, p1, v0

    .line 45
    .line 46
    aget-object v0, v1, v0

    .line 47
    .line 48
    invoke-direct {v2, v0, p1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    aget-object v2, p1, v0

    .line 53
    .line 54
    :goto_1
    new-instance p1, Lf0/o$m;

    .line 55
    .line 56
    invoke-direct {p1, v2, p2}, Lf0/o$m;-><init>(Lg0/h;Z)V

    .line 57
    .line 58
    .line 59
    const/4 p2, 0x0

    .line 60
    iget-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 22
    iget p1, p0, Lf0/o;->o:I

    if-eqz p1, :cond_7

    .line 23
    iget-object p1, p0, Lf0/o;->l:[Ljava/lang/String;

    array-length v0, p1

    iget-object v1, p0, Lf0/o;->k:[Lg0/h;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    aget-object v0, p1, v2

    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lg0/h;

    aget-object v1, v1, v2

    aget-object p1, p1, v2

    invoke-direct {v0, p1, v1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    aget-object v0, v1, v2

    :goto_1
    if-eqz v0, :cond_7

    .line 26
    iget p1, p0, Lf0/o;->o:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    move v2, v1

    .line 27
    :cond_2
    invoke-static {v0}, Lp0/f;->b(Lg0/h;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 28
    :cond_3
    :try_start_0
    iget-object p1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_4

    .line 30
    invoke-static {p1}, Lu0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz v2, :cond_5

    .line 31
    new-instance v0, Lp0/f$b;

    invoke-direct {v0, p1}, Lp0/f$b;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 33
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-ge v0, v1, :cond_6

    .line 34
    new-instance p1, Lp0/f$a;

    invoke-direct {p1, v2}, Lp0/f$a;-><init>(Ljava/io/File;)V

    goto :goto_2

    .line 35
    :cond_6
    new-instance p1, Lp0/f$d;

    invoke-direct {p1, v2}, Lp0/f$d;-><init>(Ljava/io/File;)V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_7
    :goto_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_8

    .line 37
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_8

    .line 38
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    :cond_8
    const/4 p1, -0x2

    if-ne p2, p1, :cond_9

    .line 39
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    if-eqz p1, :cond_9

    .line 40
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 41
    :cond_9
    invoke-virtual {p0}, Lf0/o;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_1
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    const v2, 0x7f0700bc

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    const v3, 0x7f0700ca

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x20

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f0c0054

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    const v2, 0x7f0700ce

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 10
    iget-object v2, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c0073

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    const v2, 0x7f0700cc

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 13
    iget-object v2, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c006b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    iget v0, p0, Lf0/o;->n:I

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_8

    .line 15
    iget-object v2, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    sget-object v4, Lf0/o;->p:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 17
    :cond_5
    iget-object v2, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    sget-object v4, Lf0/o;->q:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 18
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :cond_6
    iget-object v2, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    sget-object v4, Lf0/o;->r:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_8
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ZA File"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lu0/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v3, 0x7f0c0074

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget v4, v3, Landroid/content/res/Configuration;->orientation:I

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    if-eq v4, v5, :cond_1

    .line 28
    .line 29
    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0xf

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-lt v3, v4, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const v3, 0x7f080014

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const v3, 0x7f080015

    .line 42
    .line 43
    .line 44
    :goto_1
    iput v3, v0, Lf0/o;->h:I

    .line 45
    .line 46
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget v4, v0, Lf0/o;->h:I

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    invoke-virtual {v3, v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Landroid/widget/ScrollView;

    .line 59
    .line 60
    invoke-direct {v4, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object v4, v0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 64
    .line 65
    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iget-object v4, v0, Lf0/o;->i:Landroid/widget/ScrollView;

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 71
    .line 72
    .line 73
    const v4, 0x7f0c0029

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    const v4, 0x7f0c0026

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iput-object v2, v0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 93
    .line 94
    new-instance v4, Lf0/o$a;

    .line 95
    .line 96
    invoke-direct {v4, v0}, Lf0/o$a;-><init>(Lf0/o;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 100
    .line 101
    .line 102
    const v2, 0x7f0700cd

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Landroid/widget/TextView;

    .line 110
    .line 111
    const v4, 0x7f0700cf

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Landroid/widget/TextView;

    .line 119
    .line 120
    const v8, 0x7f0700cb

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Landroid/widget/TextView;

    .line 128
    .line 129
    const v9, 0x7f0700c7

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Landroid/widget/TextView;

    .line 137
    .line 138
    const v10, 0x7f0700c8

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v10

    .line 145
    check-cast v10, Landroid/widget/TextView;

    .line 146
    .line 147
    const v11, 0x7f0700cc

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    check-cast v11, Landroid/widget/TextView;

    .line 155
    .line 156
    const v12, 0x7f0700be

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    iget-object v13, v0, Lf0/o;->l:[Ljava/lang/String;

    .line 164
    .line 165
    array-length v14, v13

    .line 166
    const/4 v15, 0x1

    .line 167
    iget-object v6, v0, Lf0/o;->j:Lv0/a;

    .line 168
    .line 169
    const-string v5, "-"

    .line 170
    .line 171
    move-object/from16 v17, v8

    .line 172
    .line 173
    iget-object v8, v0, Lf0/o;->k:[Lg0/h;

    .line 174
    .line 175
    if-ne v14, v15, :cond_a

    .line 176
    .line 177
    aget-object v1, v13, v7

    .line 178
    .line 179
    invoke-static {v1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_2

    .line 184
    .line 185
    aget-object v1, v8, v7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_2
    new-instance v1, Lg0/h;

    .line 189
    .line 190
    aget-object v4, v8, v7

    .line 191
    .line 192
    aget-object v13, v13, v7

    .line 193
    .line 194
    invoke-direct {v1, v13, v4}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 195
    .line 196
    .line 197
    :goto_2
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-eqz v4, :cond_6

    .line 208
    .line 209
    aget-object v4, v8, v7

    .line 210
    .line 211
    invoke-virtual {v4}, Lg0/h;->r()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    aget-object v5, v8, v7

    .line 216
    .line 217
    invoke-static {v5}, Lw0/f;->b(Lg0/h;)B

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    const/4 v8, 0x2

    .line 222
    if-ne v5, v8, :cond_3

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_3
    move v15, v7

    .line 226
    :goto_3
    invoke-static {v4, v7}, Lw0/a;->b(Ljava/lang/String;Z)Lw0/a$a;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    if-eqz v5, :cond_4

    .line 231
    .line 232
    iget-object v8, v5, Lw0/a$a;->b:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    iget-object v5, v5, Lw0/a$a;->c:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    :cond_4
    iget-boolean v5, v0, Lf0/o;->m:Z

    .line 243
    .line 244
    if-eqz v5, :cond_5

    .line 245
    .line 246
    if-nez v15, :cond_5

    .line 247
    .line 248
    const-string v5, "/storage"

    .line 249
    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-eqz v4, :cond_5

    .line 255
    .line 256
    const v4, 0x7f070051

    .line 257
    .line 258
    .line 259
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    check-cast v3, Landroid/widget/CheckBox;

    .line 264
    .line 265
    invoke-virtual {v3, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    .line 273
    .line 274
    new-instance v3, Lf0/o$n;

    .line 275
    .line 276
    invoke-direct {v3, v1}, Lf0/o$n;-><init>(Lg0/h;)V

    .line 277
    .line 278
    .line 279
    const/4 v4, 0x0

    .line 280
    invoke-virtual {v3, v4, v6}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 281
    .line 282
    .line 283
    :cond_5
    move v7, v15

    .line 284
    goto :goto_5

    .line 285
    :cond_6
    invoke-virtual {v1}, Lg0/h;->g()Z

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    if-eqz v3, :cond_7

    .line 290
    .line 291
    iget-object v3, v1, Lg0/h;->c:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_7
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    :goto_4
    new-instance v3, Lf0/o$i;

    .line 301
    .line 302
    invoke-direct {v3, v1}, Lf0/o$i;-><init>(Lg0/h;)V

    .line 303
    .line 304
    .line 305
    const/4 v4, 0x0

    .line 306
    invoke-virtual {v3, v4, v6}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    :goto_5
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    if-eqz v3, :cond_8

    .line 317
    .line 318
    invoke-virtual {v1}, Lg0/h;->l()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_9

    .line 323
    .line 324
    :cond_8
    const/16 v3, 0x8

    .line 325
    .line 326
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    :cond_9
    invoke-virtual {v1}, Lg0/h;->e()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    new-instance v3, Lf0/o$k;

    .line 340
    .line 341
    invoke-direct {v3, v1, v7}, Lf0/o$k;-><init>(Lg0/h;Z)V

    .line 342
    .line 343
    .line 344
    const/4 v1, 0x0

    .line 345
    invoke-virtual {v3, v1, v6}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_a

    .line 349
    .line 350
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v14

    .line 354
    array-length v7, v13

    .line 355
    new-array v0, v15, [Ljava/lang/Object;

    .line 356
    .line 357
    array-length v15, v13

    .line 358
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v15

    .line 362
    const/16 v16, 0x0

    .line 363
    .line 364
    aput-object v15, v0, v16

    .line 365
    .line 366
    const/high16 v15, 0x7f0b0000

    .line 367
    .line 368
    invoke-virtual {v14, v15, v7, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    const v0, 0x7f0c0076

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    move-object/from16 v0, v17

    .line 386
    .line 387
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    .line 395
    .line 396
    const/4 v0, 0x1

    .line 397
    :goto_6
    array-length v1, v8

    .line 398
    if-ge v0, v1, :cond_c

    .line 399
    .line 400
    const/4 v1, 0x0

    .line 401
    aget-object v4, v8, v1

    .line 402
    .line 403
    aget-object v7, v8, v0

    .line 404
    .line 405
    invoke-virtual {v4, v7}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-nez v4, :cond_b

    .line 410
    .line 411
    move v15, v1

    .line 412
    goto :goto_7

    .line 413
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_c
    const/4 v1, 0x0

    .line 417
    const/4 v15, 0x1

    .line 418
    :goto_7
    if-eqz v15, :cond_10

    .line 419
    .line 420
    aget-object v0, v8, v1

    .line 421
    .line 422
    invoke-virtual {v0}, Lg0/h;->j()Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_d

    .line 427
    .line 428
    aget-object v0, v8, v1

    .line 429
    .line 430
    invoke-virtual {v0}, Lg0/h;->r()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-static {v0, v1}, Lw0/a;->b(Ljava/lang/String;Z)Lw0/a$a;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_10

    .line 439
    .line 440
    iget-object v4, v0, Lw0/a$a;->b:Ljava/lang/String;

    .line 441
    .line 442
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, v0, Lw0/a$a;->c:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :cond_d
    aget-object v0, v8, v1

    .line 452
    .line 453
    invoke-virtual {v0}, Lg0/h;->g()Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-eqz v0, :cond_e

    .line 458
    .line 459
    aget-object v0, v8, v1

    .line 460
    .line 461
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 462
    .line 463
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :cond_e
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    :goto_8
    aget-object v0, v8, v1

    .line 471
    .line 472
    invoke-static {v0}, Lg0/e;->d(Lg0/h;)Lg0/e$a;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    if-eqz v0, :cond_f

    .line 477
    .line 478
    iget-object v0, v0, Lg0/e$a;->c:Ljava/lang/String;

    .line 479
    .line 480
    if-eqz v0, :cond_f

    .line 481
    .line 482
    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    .line 484
    .line 485
    goto :goto_9

    .line 486
    :cond_f
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    :cond_10
    :goto_9
    const/16 v0, 0x8

    .line 490
    .line 491
    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 495
    .line 496
    .line 497
    const v0, 0x7f0700bc

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    .line 507
    .line 508
    new-instance v0, Lf0/o$g;

    .line 509
    .line 510
    invoke-direct {v0, v8, v13}, Lf0/o$g;-><init>([Lg0/h;[Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const/4 v1, 0x0

    .line 514
    invoke-virtual {v0, v1, v6}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    .line 515
    .line 516
    .line 517
    :goto_a
    new-instance v0, Lf0/o$b;

    .line 518
    .line 519
    move-object/from16 v1, p0

    .line 520
    .line 521
    invoke-direct {v0, v1}, Lf0/o$b;-><init>(Lf0/o;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 525
    .line 526
    .line 527
    return-void
.end method

.method public final t(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0xf

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 35
    .line 36
    .line 37
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-ne p1, v1, :cond_1

    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p1, -0x2

    .line 45
    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    .line 47
    iget-object p1, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lf0/i;->q(Landroid/app/Dialog;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lf0/o;->j:Lv0/a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p0, v1}, Lv0/a;->a(Lv0/a$c;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
