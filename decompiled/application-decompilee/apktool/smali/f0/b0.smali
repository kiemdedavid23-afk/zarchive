.class public final Lf0/b0;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;)V
    .locals 3

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
    const v0, 0x7f0c0194

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f080020

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p2, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    const p2, 0x7f0c0029

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    const p2, 0x7f0c0025

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lf0/b0;->g:Landroid/app/AlertDialog;

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lf0/i;->a()V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/b0;->g:Landroid/app/AlertDialog;

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
    iput-object v0, p0, Lf0/b0;->g:Landroid/app/AlertDialog;

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

    const/16 v0, 0xf

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, -0x2

    .line 12
    if-ne p2, p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lf0/i;->a:Lf0/i$b;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1, p0}, Lf0/i$b;->a(Lf0/i;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object p1, p0, Lf0/b0;->g:Landroid/app/AlertDialog;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const p2, 0x7f07004c

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/CheckBox;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget-object p1, p0, Lf0/b0;->g:Landroid/app/AlertDialog;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/16 p2, 0x20

    .line 49
    .line 50
    invoke-static {p1, p2}, Ls0/b;->o(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Lf0/b0;->d()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
