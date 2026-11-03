.class public final Lf0/k;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:Ly0/d;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lf0/k;->h:Ly0/d;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lf0/k;->i:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    const v1, 0x7f0c0191

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v2, 0x7f080010

    .line 29
    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    const v2, 0x7f070065

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lru/zdevs/zarchiver/ui/text/EditPassword;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    new-array v4, v2, [Landroid/text/InputFilter;

    .line 50
    .line 51
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    .line 52
    .line 53
    const/16 v6, 0x400

    .line 54
    .line 55
    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 56
    .line 57
    .line 58
    aput-object v5, v4, v3

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const-string v5, "input_method"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 80
    .line 81
    invoke-virtual {v4, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_0

    .line 86
    .line 87
    move v4, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move v4, v3

    .line 90
    :goto_0
    xor-int/2addr v2, v4

    .line 91
    iput-boolean v2, v1, Lru/zdevs/zarchiver/ui/text/ExEditText;->a:Z

    .line 92
    .line 93
    const v1, 0x7f0c0029

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    .line 98
    .line 99
    const v1, 0x7f0c0025

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    .line 104
    .line 105
    const-string v1, "help"

    .line 106
    .line 107
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 118
    .line 119
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 123
    .line 124
    new-instance v0, Lf0/j;

    .line 125
    .line 126
    invoke-direct {v0, p0, p2}, Lf0/j;-><init>(Lf0/k;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lf0/i;->a()V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const v1, 0x7f070065

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/EditText;

    .line 13
    .line 14
    if-eqz v0, :cond_0

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
    iput-object v0, p0, Lf0/k;->i:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final k()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf0/k;->h:Ly0/d;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ly0/d;->a()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lf0/k;->h:Ly0/d;

    .line 10
    .line 11
    :cond_0
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
    invoke-virtual {p0}, Lf0/k;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/k;->g:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    const v0, 0x7f070065

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf0/k;->i:Ljava/lang/String;

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 6
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lf0/k;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
