.class public final Lf0/m;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public h:Ljava/lang/String;

.field public i:Z


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V
    .locals 6

    const/4 v5, 0x6

    .line 31
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lf0/m;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6

    .line 30
    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lf0/m;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lf0/m;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lf0/m;->i:Z

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f080011

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p3, 0x7f0700b4

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 10
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0c0029

    .line 11
    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p3, 0x2

    .line 12
    invoke-static {p5, p3}, Lb/d;->K(II)Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0c0025

    .line 13
    invoke-virtual {v0, p3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 14
    :cond_0
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const p3, 0x7f070065

    .line 15
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/zdevs/zarchiver/ui/text/ExEditText;

    const/4 p3, 0x1

    .line 16
    invoke-static {p5, p3}, Lb/d;->K(II)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 17
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_1
    const/4 p4, 0x4

    .line 18
    invoke-static {p5, p4}, Lb/d;->K(II)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setRawInputType(I)V

    const p4, 0x4000006

    .line 20
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 21
    :cond_2
    iget-object p4, p0, Lf0/m;->h:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string p5, "input_method"

    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/inputmethod/InputMethodManager;

    .line 24
    invoke-virtual {p4, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_3

    move p4, p3

    goto :goto_0

    :cond_3
    move p4, p1

    :goto_0
    xor-int/2addr p3, p4

    .line 25
    iput-boolean p3, p2, Lru/zdevs/zarchiver/ui/text/ExEditText;->a:Z

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    .line 27
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 28
    iget-object p1, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    new-instance p2, Lf0/l;

    invoke-direct {p2, p0}, Lf0/l;-><init>(Lf0/m;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 29
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    invoke-virtual {p0, v0}, Lf0/m;->r(Landroid/widget/EditText;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lf0/i;->f()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x3

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
    invoke-virtual {p0}, Lf0/m;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    const v0, 0x7f070065

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lf0/m;->r(Landroid/widget/EditText;)V

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    :cond_1
    const/4 p1, -0x2

    if-ne p2, p1, :cond_2

    .line 5
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lf0/m;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 8
    iget-object p1, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    const v0, 0x7f070065

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lf0/m;->r(Landroid/widget/EditText;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lf0/m;->d()V

    :cond_2
    return-void
.end method

.method public final r(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lf0/m;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iput-object p1, p0, Lf0/m;->h:Ljava/lang/String;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lf0/m;->i:Z

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf0/m;->h:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lf0/m;->i:Z

    .line 5
    .line 6
    iget-object v0, p0, Lf0/m;->g:Landroid/app/AlertDialog;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const v1, 0x7f070065

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/EditText;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
