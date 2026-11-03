.class public final Lf0/b;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lv0/a$c;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/b$b;,
        Lf0/b$c;,
        Lf0/b$a;
    }
.end annotation


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:Landroid/app/AlertDialog;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Lv0/a;

.field public m:Lf0/b$b;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

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
    iput-object v0, p0, Lf0/b;->l:Lv0/a;

    .line 10
    .line 11
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    iput-object p1, p0, Lf0/b;->i:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lf0/b;->j:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p3, p0, Lf0/b;->k:Ljava/lang/String;

    .line 20
    .line 21
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 22
    .line 23
    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    const p3, 0x7f0c010e

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    const p3, 0x7f080007

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 46
    .line 47
    .line 48
    const p3, 0x7f0c0029

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    .line 54
    const p3, 0x7f0c0025

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    .line 62
    .line 63
    const p3, 0x7f070065

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    check-cast p3, Lru/zdevs/zarchiver/ui/text/ExEditText;

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lf0/b;->i:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    const p3, 0x7f070048

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Landroid/widget/Button;

    .line 88
    .line 89
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lf0/i;->a()V

    .line 102
    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object p3, p0, Lf0/b;->m:Lf0/b$b;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p3, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 13
    .line 14
    if-eqz p3, :cond_3

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance p4, Lf0/b$b;

    .line 20
    .line 21
    invoke-direct {p4, p3, p1}, Lf0/b$b;-><init>(Landroid/app/Dialog;Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    iput-object p4, p0, Lf0/b;->m:Lf0/b$b;

    .line 25
    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 p3, 0x1d

    .line 29
    .line 30
    if-lt p1, p3, :cond_2

    .line 31
    .line 32
    const-wide/16 v0, 0xfa0

    .line 33
    .line 34
    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const-wide/16 v0, 0x7d0

    .line 39
    .line 40
    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/b;->l:Lv0/a;

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
    iget-object v0, p0, Lf0/b;->h:Landroid/app/AlertDialog;

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
    iput-object v1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const v2, 0x7f070065

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/EditText;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lf0/b;->i:Ljava/lang/String;

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final g(Lv0/a$b;)V
    .locals 5

    .line 1
    check-cast p1, Lf0/b$a;

    .line 2
    .line 3
    iget-object v0, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const v1, 0x7f070084

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ListView;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v1, p1, Lf0/b$a;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 24
    .line 25
    const v2, 0x7f070092

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 37
    .line 38
    const v2, 0x7f070066

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lru/zdevs/zarchiver/ui/text/ExEditText;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lb0/a;

    .line 52
    .line 53
    iget-object v4, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object p1, p1, Lf0/b$a;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {v3, v4, p1}, Lb0/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v3, "input_method"

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    move v2, v0

    .line 93
    :cond_1
    xor-int/lit8 p1, v2, 0x1

    .line 94
    .line 95
    iput-boolean p1, v1, Lru/zdevs/zarchiver/ui/text/ExEditText;->a:Z

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_2
    iget-object p1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final k()I
    .locals 1

    const/16 v0, 0x11

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
    invoke-virtual {p0}, Lf0/b;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/b;->g:Landroid/app/AlertDialog;

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

    iput-object p1, p0, Lf0/b;->i:Ljava/lang/String;

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 4
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

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
    invoke-virtual {p0}, Lf0/b;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7f070066

    if-ne v0, v3, :cond_1

    .line 10
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    move-result-object v0

    .line 11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lf0/b;->m:Lf0/b$b;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    iget-object v3, p0, Lf0/b;->m:Lf0/b$b;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iget-object v3, p0, Lf0/b;->m:Lf0/b$b;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    iput-object v1, p0, Lf0/b;->m:Lf0/b$b;
    :try_end_0
    .catch Ljava/io/InvalidObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :catch_0
    :cond_0
    check-cast p1, Lru/zdevs/zarchiver/ui/text/ExEditText;

    .line 16
    iput-boolean v2, p1, Lru/zdevs/zarchiver/ui/text/ExEditText;->a:Z

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 19
    :cond_1
    iget-object p1, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    if-nez p1, :cond_2

    return-void

    .line 20
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 21
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c010e

    .line 22
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v4, 0x7f080008

    invoke-virtual {p1, v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f070084

    .line 25
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    const/4 v5, 0x1

    .line 26
    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 27
    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 28
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lru/zdevs/zarchiver/ui/text/ExEditText;

    .line 29
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setRawInputType(I)V

    const/4 v3, 0x3

    .line 30
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 31
    iput-object p0, p1, Lru/zdevs/zarchiver/ui/text/ExEditText;->b:Landroid/view/View$OnClickListener;

    .line 32
    invoke-virtual {p1, p1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 33
    iput v2, p1, Lru/zdevs/zarchiver/ui/text/ExEditText;->c:I

    const p1, 0x7f0c0025

    .line 34
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 36
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    iget-object p1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 38
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 39
    new-instance p1, Lf0/b$c;

    invoke-direct {p1}, Lf0/b$c;-><init>()V

    iget-object v0, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lf0/b;->l:Lv0/a;

    invoke-virtual {p1, v0, v1}, Lv0/c;->g(Landroid/content/Context;Lv0/a;)V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-ltz p3, :cond_2

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-lt p3, p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lb0/a$a;

    .line 17
    .line 18
    iget-object p1, p1, Lb0/a$a;->a:Landroid/content/pm/PackageInfo;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lf0/b;->i:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p0, Lf0/b;->g:Landroid/app/AlertDialog;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const p2, 0x7f070065

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/EditText;

    .line 36
    .line 37
    iget-object p2, p0, Lf0/b;->i:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p0, Lf0/b;->h:Landroid/app/AlertDialog;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
