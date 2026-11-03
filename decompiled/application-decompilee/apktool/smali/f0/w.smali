.class public final Lf0/w;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    new-instance p4, Landroid/app/AlertDialog$Builder;

    .line 7
    .line 8
    invoke-direct {p4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const p2, 0x7f0c01a4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 20
    .line 21
    .line 22
    :cond_0
    const p2, 0x7f0c0029

    .line 23
    .line 24
    .line 25
    const p3, 0x7f0c002e

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0c0025

    .line 29
    .line 30
    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    const p1, 0x7f0c0024

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p4, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p4, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    invoke-virtual {p4, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p4, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :pswitch_4
    invoke-virtual {p4, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    const p2, 0x7f0c0028

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, p2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x6

    .line 73
    if-ne p1, p2, :cond_1

    .line 74
    .line 75
    invoke-virtual {p4, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    .line 78
    :cond_1
    :goto_0
    invoke-virtual {p4, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lf0/w;->g:Landroid/app/AlertDialog;

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lf0/i;->a()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/w;->g:Landroid/app/AlertDialog;

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
    iput-object v0, p0, Lf0/w;->g:Landroid/app/AlertDialog;

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

    const/4 v0, 0x4

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
    invoke-virtual {p0}, Lf0/w;->d()V

    .line 9
    .line 10
    .line 11
    return-void
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
    invoke-virtual {p0}, Lf0/w;->d()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/w;->g:Landroid/app/AlertDialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lf0/i;->q(Landroid/app/Dialog;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
