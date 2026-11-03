.class public final Lf0/y;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public g:Landroid/app/Dialog;

.field public h:Landroid/widget/ProgressBar;

.field public final i:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 3
    iput-object p4, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 4
    iput p1, p0, Lf0/y;->i:I

    const/4 p4, 0x1

    and-int/2addr p1, p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1, p4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 7
    invoke-virtual {p1, p4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    const p2, 0x7f0c01a4

    .line 10
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 11
    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 13
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    iput-object p1, p0, Lf0/y;->g:Landroid/app/Dialog;

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f08000b

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f070094

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lf0/y;->h:Landroid/widget/ProgressBar;

    const v2, 0x7f0700b6

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 19
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance p3, Lz0/f$a;

    invoke-direct {p3}, Lz0/f$a;-><init>()V

    .line 21
    iput-object p1, p3, Lz0/f$a;->a:Landroid/view/View;

    .line 22
    iput-boolean v0, p3, Lz0/f$a;->b:Z

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f050005

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 24
    iput p1, p3, Lz0/f$a;->d:I

    .line 25
    iput v0, p3, Lz0/f$a;->e:I

    .line 26
    invoke-static {p2, p4, v1}, Ly0/e;->b(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    move-result p1

    .line 27
    iput-boolean p1, p3, Lz0/f$a;->f:Z

    .line 28
    iput-boolean v0, p3, Lz0/f$a;->g:Z

    .line 29
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1, p1, p4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 31
    new-instance p4, Lz0/f;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p4, p2, p1, p3}, Lz0/f;-><init>(Landroid/content/Context;ILz0/f$a;)V

    .line 32
    iput-object p4, p0, Lf0/y;->g:Landroid/app/Dialog;

    .line 33
    invoke-virtual {p4, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, p2, p3, p1}, Lf0/y;-><init>(ILandroid/content/Context;Ljava/lang/String;Lru/zdevs/zarchiver/d;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/y;->g:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lf0/y;->g:Landroid/app/Dialog;

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

    const/4 v0, 0x1

    return v0
.end method

.method public final m(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    iget v0, p0, Lf0/y;->i:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lf0/y;->g:Landroid/app/Dialog;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v2, p0, Lf0/y;->g:Landroid/app/Dialog;

    .line 18
    .line 19
    const v3, 0x7f0700ae

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1, v1, p2}, Ly0/e;->b(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    const/4 v1, 0x0

    .line 31
    const/high16 v3, 0x8000000

    .line 32
    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "dimen"

    .line 43
    .line 44
    const-string v3, "android"

    .line 45
    .line 46
    const-string v4, "navigation_bar_height"

    .line 47
    .line 48
    invoke-virtual {p2, v4, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-lez p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    move p1, v1

    .line 64
    :goto_0
    invoke-virtual {v2, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v0, v1, v3}, Landroid/view/Window;->setFlags(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    :goto_1
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
    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p2, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 p3, 0x1

    .line 13
    if-ne p2, p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lf0/y;->onCancel(Landroid/content/DialogInterface;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/y;->g:Landroid/app/Dialog;

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
