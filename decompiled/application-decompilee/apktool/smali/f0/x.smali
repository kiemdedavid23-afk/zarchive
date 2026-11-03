.class public final Lf0/x;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/x$c;
    }
.end annotation


# static fields
.field public static final m:[I

.field public static final n:[I

.field public static final o:[I

.field public static final p:[[I


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public final h:[Lg0/h;

.field public final i:[Ljava/lang/String;

.field public j:Z

.field public k:Lf0/x$c;

.field public l:Lf0/x$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lf0/x;->m:[I

    .line 8
    .line 9
    new-array v2, v0, [I

    .line 10
    .line 11
    fill-array-data v2, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v2, Lf0/x;->n:[I

    .line 15
    .line 16
    new-array v3, v0, [I

    .line 17
    .line 18
    fill-array-data v3, :array_2

    .line 19
    .line 20
    .line 21
    sput-object v3, Lf0/x;->o:[I

    .line 22
    .line 23
    new-array v0, v0, [[I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-object v1, v0, v4

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    aput-object v2, v0, v1

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    aput-object v3, v0, v1

    .line 33
    .line 34
    sput-object v0, Lf0/x;->p:[[I

    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 4
        0x7f070057
        0x7f070056
        0x7f070055
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    :array_1
    .array-data 4
        0x7f07004f
        0x7f07004e
        0x7f07004d
    .end array-data

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_2
    .array-data 4
        0x7f070054
        0x7f070053
        0x7f070052
    .end array-data
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Lg0/h;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    const/4 p1, 0x1

    new-array p1, p1, [Lg0/h;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 3
    iput-object p1, p0, Lf0/x;->h:[Lg0/h;

    .line 4
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lf0/x;->i:[Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lf0/x;->u()V

    .line 6
    invoke-virtual {p0, p2}, Lf0/x;->s(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;[Lg0/h;[Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 9
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 10
    invoke-virtual {p3}, [Lg0/h;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg0/h;

    iput-object p1, p0, Lf0/x;->h:[Lg0/h;

    .line 11
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lf0/x;->i:[Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lf0/x;->u()V

    .line 13
    invoke-virtual {p0, p2}, Lf0/x;->s(Landroid/content/Context;)V

    .line 14
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public static r(Lf0/x;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-boolean v0, p0, Lf0/x;->j:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lf0/x;->j:Z

    .line 13
    .line 14
    sget-object v1, Lf0/x;->m:[I

    .line 15
    .line 16
    move v2, v0

    .line 17
    :goto_0
    const/4 v3, 0x3

    .line 18
    if-ge v2, v3, :cond_1

    .line 19
    .line 20
    aget v3, v1, v2

    .line 21
    .line 22
    iget-object v4, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/widget/CheckBox;

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object v1, Lf0/x;->n:[I

    .line 37
    .line 38
    move v2, v0

    .line 39
    :goto_1
    if-ge v2, v3, :cond_2

    .line 40
    .line 41
    aget v4, v1, v2

    .line 42
    .line 43
    iget-object v5, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/CheckBox;

    .line 50
    .line 51
    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object v1, Lf0/x;->o:[I

    .line 58
    .line 59
    move v2, v0

    .line 60
    :goto_2
    if-ge v2, v3, :cond_3

    .line 61
    .line 62
    aget v4, v1, v2

    .line 63
    .line 64
    iget-object v5, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/widget/CheckBox;

    .line 71
    .line 72
    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v2, v2, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    iget-object v1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 79
    .line 80
    const v2, 0x7f070068

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroid/widget/EditText;

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v4, "8"

    .line 98
    .line 99
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-nez v4, :cond_4

    .line 104
    .line 105
    const-string v4, "9"

    .line 106
    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    const/16 v5, 0x38

    .line 118
    .line 119
    const/16 v6, 0x37

    .line 120
    .line 121
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const/16 v5, 0x39

    .line 126
    .line 127
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v4, v4}, Landroid/widget/EditText;->setSelection(II)V

    .line 135
    .line 136
    .line 137
    :cond_5
    const/4 v1, 0x1

    .line 138
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    move v4, v0

    .line 143
    :goto_3
    if-ge v4, v3, :cond_8

    .line 144
    .line 145
    rem-int/lit8 v5, v2, 0xa

    .line 146
    .line 147
    div-int/lit8 v2, v2, 0xa

    .line 148
    .line 149
    move v7, v0

    .line 150
    move v6, v1

    .line 151
    :goto_4
    const/4 v8, 0x4

    .line 152
    if-gt v6, v8, :cond_7

    .line 153
    .line 154
    and-int v8, v5, v6

    .line 155
    .line 156
    if-ne v8, v6, :cond_6

    .line 157
    .line 158
    iget-object v8, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 159
    .line 160
    sget-object v9, Lf0/x;->p:[[I

    .line 161
    .line 162
    rsub-int/lit8 v10, v4, 0x2

    .line 163
    .line 164
    aget-object v9, v9, v10

    .line 165
    .line 166
    aget v9, v9, v7

    .line 167
    .line 168
    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Landroid/widget/CheckBox;

    .line 173
    .line 174
    invoke-virtual {v8, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 175
    .line 176
    .line 177
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 178
    .line 179
    shl-int/lit8 v6, v6, 0x1

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_8
    invoke-virtual {p0}, Lf0/x;->v()V

    .line 186
    .line 187
    .line 188
    iput-boolean v1, p0, Lf0/x;->j:Z

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :catch_0
    iput-boolean v1, p0, Lf0/x;->j:Z

    .line 192
    .line 193
    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    iget-boolean p1, p0, Lf0/x;->j:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lf0/x;->j:Z

    .line 12
    .line 13
    move p2, p1

    .line 14
    move v0, p2

    .line 15
    :goto_0
    const/4 v1, 0x3

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ge p2, v1, :cond_4

    .line 18
    .line 19
    move v1, p1

    .line 20
    :goto_1
    const/4 v3, 0x4

    .line 21
    if-gt v2, v3, :cond_2

    .line 22
    .line 23
    iget-object v3, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 24
    .line 25
    sget-object v4, Lf0/x;->p:[[I

    .line 26
    .line 27
    aget-object v4, v4, p2

    .line 28
    .line 29
    aget v4, v4, v1

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/CheckBox;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    add-int/2addr v0, v2

    .line 44
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    shl-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v1, 0x2

    .line 50
    if-eq p2, v1, :cond_3

    .line 51
    .line 52
    mul-int/lit8 v0, v0, 0xa

    .line 53
    .line 54
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object p2, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 58
    .line 59
    const v1, 0x7f070068

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/widget/EditText;

    .line 67
    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-array v3, v2, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    aput-object v0, v3, p1

    .line 79
    .line 80
    const-string p1, "%1$03d"

    .line 81
    .line 82
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lf0/x;->v()V

    .line 90
    .line 91
    .line 92
    iput-boolean v2, p0, Lf0/x;->j:Z

    .line 93
    .line 94
    :cond_5
    :goto_2
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const v0, 0x7f070068

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/EditText;

    .line 14
    .line 15
    iget-object v0, p0, Lf0/x;->k:Lf0/x$c;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, v0, Lf0/x$c;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    :catch_0
    :try_start_1
    iget-object p1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 32
    .line 33
    const v0, 0x7f07006a

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/widget/EditText;

    .line 41
    .line 42
    iget-object v0, p0, Lf0/x;->k:Lf0/x$c;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, v0, Lf0/x$c;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    .line 58
    :catch_1
    :try_start_2
    iget-object p1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 59
    .line 60
    const v0, 0x7f070067

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/EditText;

    .line 68
    .line 69
    iget-object v0, p0, Lf0/x;->k:Lf0/x$c;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, v0, Lf0/x$c;->d:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    .line 85
    :catch_2
    :goto_0
    const/4 p1, -0x1

    .line 86
    if-ne p2, p1, :cond_1

    .line 87
    .line 88
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 93
    .line 94
    .line 95
    :cond_1
    const/4 p1, -0x2

    .line 96
    if-ne p2, p1, :cond_2

    .line 97
    .line 98
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 99
    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {p0}, Lf0/x;->d()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final s(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0c01a1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f08001e

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    .line 28
    sget-object v2, Lf0/x;->m:[I

    .line 29
    .line 30
    move v3, v4

    .line 31
    :goto_0
    const/4 v5, 0x3

    .line 32
    if-ge v3, v5, :cond_0

    .line 33
    .line 34
    aget v5, v2, v3

    .line 35
    .line 36
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/widget/CheckBox;

    .line 41
    .line 42
    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object v2, Lf0/x;->n:[I

    .line 49
    .line 50
    move v3, v4

    .line 51
    :goto_1
    if-ge v3, v5, :cond_1

    .line 52
    .line 53
    aget v6, v2, v3

    .line 54
    .line 55
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Landroid/widget/CheckBox;

    .line 60
    .line 61
    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    sget-object v2, Lf0/x;->o:[I

    .line 68
    .line 69
    move v3, v4

    .line 70
    :goto_2
    if-ge v3, v5, :cond_2

    .line 71
    .line 72
    aget v6, v2, v3

    .line 73
    .line 74
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Landroid/widget/CheckBox;

    .line 79
    .line 80
    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const v2, 0x7f070068

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/widget/EditText;

    .line 94
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const/4 v5, 0x1

    .line 100
    new-array v6, v5, [Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v7, p0, Lf0/x;->k:Lf0/x$c;

    .line 103
    .line 104
    iget v7, v7, Lf0/x$c;->b:I

    .line 105
    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    aput-object v7, v6, v4

    .line 111
    .line 112
    const-string v7, "%1$03d"

    .line 113
    .line 114
    invoke-static {v3, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Lf0/x$a;

    .line 122
    .line 123
    invoke-direct {v3, p0}, Lf0/x$a;-><init>(Lf0/x;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    .line 128
    .line 129
    const v2, 0x7f07006a

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Landroid/widget/EditText;

    .line 137
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-array v6, v5, [Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v7, p0, Lf0/x;->k:Lf0/x$c;

    .line 145
    .line 146
    iget v7, v7, Lf0/x$c;->c:I

    .line 147
    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    aput-object v7, v6, v4

    .line 153
    .line 154
    const-string v7, "%1$d"

    .line 155
    .line 156
    invoke-static {v3, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    const v2, 0x7f070067

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Landroid/widget/EditText;

    .line 171
    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    new-array v6, v5, [Ljava/lang/Object;

    .line 177
    .line 178
    iget-object v8, p0, Lf0/x;->k:Lf0/x$c;

    .line 179
    .line 180
    iget v8, v8, Lf0/x$c;->d:I

    .line 181
    .line 182
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    aput-object v8, v6, v4

    .line 187
    .line 188
    invoke-static {v3, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    const v2, 0x7f0700cd

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    check-cast v1, Landroid/widget/TextView;

    .line 203
    .line 204
    iget-object v2, p0, Lf0/x;->i:[Ljava/lang/String;

    .line 205
    .line 206
    array-length v3, v2

    .line 207
    if-ne v3, v5, :cond_3

    .line 208
    .line 209
    aget-object p1, v2, v4

    .line 210
    .line 211
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    array-length v3, v2

    .line 220
    new-array v5, v5, [Ljava/lang/Object;

    .line 221
    .line 222
    array-length v2, v2

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    aput-object v2, v5, v4

    .line 228
    .line 229
    const/high16 v2, 0x7f0b0000

    .line 230
    .line 231
    invoke-virtual {p1, v2, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .line 237
    .line 238
    :goto_3
    const p1, 0x7f0c0029

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    .line 243
    .line 244
    const p1, 0x7f0c0025

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iput-object p1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 258
    .line 259
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 263
    .line 264
    new-instance v0, Lf0/x$b;

    .line 265
    .line 266
    invoke-direct {v0, p0}, Lf0/x$b;-><init>(Lf0/x;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method

.method public final t()Lf0/x$c;
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/x;->k:Lf0/x$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lf0/x$c;->a:I

    .line 5
    .line 6
    iget v2, v0, Lf0/x$c;->b:I

    .line 7
    .line 8
    iget-object v3, p0, Lf0/x;->l:Lf0/x$c;

    .line 9
    .line 10
    iget v4, v3, Lf0/x$c;->b:I

    .line 11
    .line 12
    if-eq v2, v4, :cond_0

    .line 13
    .line 14
    or-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    iput v1, v0, Lf0/x$c;->a:I

    .line 17
    .line 18
    :cond_0
    iget v1, v0, Lf0/x$c;->d:I

    .line 19
    .line 20
    iget v2, v3, Lf0/x$c;->d:I

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    iget v1, v0, Lf0/x$c;->c:I

    .line 25
    .line 26
    iget v2, v3, Lf0/x$c;->c:I

    .line 27
    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    :cond_1
    iget v1, v0, Lf0/x$c;->a:I

    .line 31
    .line 32
    or-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    iput v1, v0, Lf0/x$c;->a:I

    .line 35
    .line 36
    :cond_2
    return-object v0
.end method

.method public final u()V
    .locals 10

    .line 1
    new-instance v0, Lf0/x$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lf0/x$c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lf0/x;->k:Lf0/x$c;

    .line 7
    .line 8
    new-instance v0, Lf0/x$c;

    .line 9
    .line 10
    invoke-direct {v0}, Lf0/x$c;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lf0/x;->l:Lf0/x$c;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    move v2, v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    iget-object v4, p0, Lf0/x;->i:[Ljava/lang/String;

    .line 20
    .line 21
    array-length v5, v4

    .line 22
    if-ge v2, v5, :cond_8

    .line 23
    .line 24
    iget-object v5, p0, Lf0/x;->h:[Lg0/h;

    .line 25
    .line 26
    array-length v6, v5

    .line 27
    const/4 v7, 0x1

    .line 28
    if-le v6, v7, :cond_0

    .line 29
    .line 30
    new-instance v6, Lg0/h;

    .line 31
    .line 32
    aget-object v5, v5, v2

    .line 33
    .line 34
    aget-object v4, v4, v2

    .line 35
    .line 36
    invoke-direct {v6, v4, v5}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    new-instance v6, Lg0/h;

    .line 41
    .line 42
    aget-object v5, v5, v1

    .line 43
    .line 44
    aget-object v4, v4, v2

    .line 45
    .line 46
    invoke-direct {v6, v4, v5}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v6}, Lg0/h;->toFile()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v0, v4}, Li0/c;->l(Ln0/a;Ljava/io/File;)Lg0/e$b;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    iget-object v4, v6, Lg0/h;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_7

    .line 67
    .line 68
    sget v0, Ls0/b;->m:I

    .line 69
    .line 70
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v6}, Lg0/h;->toFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v0, v4}, Li0/c;->l(Ln0/a;Ljava/io/File;)Lg0/e$b;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :goto_2
    if-eqz v4, :cond_7

    .line 83
    .line 84
    iget-object v5, v4, Lg0/e$b;->h:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v6, -0x1

    .line 87
    invoke-static {v6, v5}, Lb/d;->i0(ILjava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    iget-object v8, p0, Lf0/x;->k:Lf0/x$c;

    .line 92
    .line 93
    iget v9, v8, Lf0/x$c;->c:I

    .line 94
    .line 95
    if-eq v9, v6, :cond_2

    .line 96
    .line 97
    if-le v9, v5, :cond_3

    .line 98
    .line 99
    :cond_2
    iput v5, v8, Lf0/x$c;->c:I

    .line 100
    .line 101
    :cond_3
    iget-object v5, v4, Lg0/e$b;->g:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v6, v5}, Lb/d;->i0(ILjava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    iget-object v8, p0, Lf0/x;->k:Lf0/x$c;

    .line 108
    .line 109
    iget v9, v8, Lf0/x$c;->d:I

    .line 110
    .line 111
    if-eq v9, v6, :cond_4

    .line 112
    .line 113
    if-le v9, v5, :cond_5

    .line 114
    .line 115
    :cond_4
    iput v5, v8, Lf0/x$c;->d:I

    .line 116
    .line 117
    :cond_5
    const/16 v5, 0xa

    .line 118
    .line 119
    move v6, v1

    .line 120
    :goto_3
    const/4 v8, 0x3

    .line 121
    if-ge v6, v8, :cond_7

    .line 122
    .line 123
    rem-int v8, v3, v5

    .line 124
    .line 125
    div-int/2addr v8, v7

    .line 126
    iget v9, v4, Lg0/e$b;->i:I

    .line 127
    .line 128
    rem-int/2addr v9, v5

    .line 129
    div-int/2addr v9, v7

    .line 130
    if-ge v8, v9, :cond_6

    .line 131
    .line 132
    mul-int/2addr v8, v7

    .line 133
    sub-int/2addr v3, v8

    .line 134
    mul-int/2addr v9, v7

    .line 135
    add-int/2addr v3, v9

    .line 136
    :cond_6
    mul-int/lit8 v7, v7, 0xa

    .line 137
    .line 138
    mul-int/lit8 v5, v5, 0xa

    .line 139
    .line 140
    add-int/lit8 v6, v6, 0x1

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    iget-object v1, p0, Lf0/x;->k:Lf0/x$c;

    .line 147
    .line 148
    iput v3, v1, Lf0/x$c;->b:I

    .line 149
    .line 150
    iget-object v2, p0, Lf0/x;->l:Lf0/x$c;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iget v3, v1, Lf0/x$c;->b:I

    .line 156
    .line 157
    iput v3, v2, Lf0/x$c;->b:I

    .line 158
    .line 159
    iget v3, v1, Lf0/x$c;->c:I

    .line 160
    .line 161
    iput v3, v2, Lf0/x$c;->c:I

    .line 162
    .line 163
    iget v1, v1, Lf0/x$c;->d:I

    .line 164
    .line 165
    iput v1, v2, Lf0/x$c;->d:I

    .line 166
    .line 167
    if-eqz v0, :cond_9

    .line 168
    .line 169
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 170
    .line 171
    .line 172
    :cond_9
    return-void
.end method

.method public final v()V
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, 0x7f070068

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/widget/EditText;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move v0, v2

    .line 30
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    move v3, v2

    .line 36
    :goto_1
    const/4 v4, 0x3

    .line 37
    if-ge v3, v4, :cond_4

    .line 38
    .line 39
    rem-int/lit8 v4, v0, 0xa

    .line 40
    .line 41
    div-int/lit8 v0, v0, 0xa

    .line 42
    .line 43
    and-int/lit8 v5, v4, 0x1

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    const/16 v7, 0x2d

    .line 47
    .line 48
    if-ne v5, v6, :cond_1

    .line 49
    .line 50
    const/16 v5, 0x78

    .line 51
    .line 52
    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v1, v2, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    :goto_2
    and-int/lit8 v5, v4, 0x2

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    if-ne v5, v6, :cond_2

    .line 63
    .line 64
    const/16 v5, 0x77

    .line 65
    .line 66
    invoke-virtual {v1, v2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    invoke-virtual {v1, v2, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    :goto_3
    and-int/lit8 v4, v4, 0x4

    .line 74
    .line 75
    const/4 v5, 0x4

    .line 76
    if-ne v4, v5, :cond_3

    .line 77
    .line 78
    const/16 v4, 0x72

    .line 79
    .line 80
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :cond_3
    invoke-virtual {v1, v2, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    :goto_4
    const/16 v4, 0x20

    .line 88
    .line 89
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object v0, p0, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 96
    .line 97
    const v2, 0x7f0700da

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/TextView;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    :cond_5
    return-void
.end method
