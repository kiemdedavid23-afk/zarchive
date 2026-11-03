.class public final Lf0/n;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;[Ld0/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 3
    new-instance p1, Lb0/c;

    invoke-direct {p1, p2, p3}, Lb0/c;-><init>(Landroid/content/Context;[Ld0/a$b;)V

    const p3, 0x7f0c00e7

    .line 4
    invoke-virtual {p0, p2, p3, p1}, Lf0/n;->r(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V

    .line 5
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method

.method public constructor <init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;[Ld0/i;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lf0/i;-><init>()V

    .line 7
    iput-object p1, p0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 8
    new-instance p1, Lb0/k;

    invoke-direct {p1, p2, p3}, Lb0/k;-><init>(Lru/zdevs/zarchiver/ZArchiver;[Ld0/i;)V

    .line 9
    array-length p3, p3

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    const p3, 0x7f0c0106

    goto :goto_0

    :cond_0
    const p3, 0x7f0c0105

    :goto_0
    invoke-virtual {p0, p2, p3, p1}, Lf0/n;->r(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V

    .line 10
    invoke-virtual {p0}, Lf0/i;->a()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/n;->g:Landroid/app/AlertDialog;

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
    iput-object v0, p0, Lf0/n;->g:Landroid/app/AlertDialog;

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

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lf0/i;->b:Lf0/i$c;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0}, Lf0/i$c;->b(Lf0/i;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf0/n;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 4
    iget-object p1, p0, Lf0/n;->g:Landroid/app/AlertDialog;

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lf0/n;->g:Landroid/app/AlertDialog;

    const v1, 0x7f070082

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 7
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 10
    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "ZA Errors"

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v1, ""

    :goto_1
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-ge p1, v0, :cond_4

    const p1, 0x7f0c00df

    .line 14
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "SecurityException"

    .line 15
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final r(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V
    .locals 3

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
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const p2, 0x7f080012

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    const p2, 0x7f070082

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ListView;

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Ly0/e;->j(Landroid/widget/AbsListView;)V

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0c0029

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    .line 46
    const p1, 0x7f0c0026

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    instance-of p1, p3, Lb0/c;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    check-cast p3, Lb0/c;

    .line 57
    .line 58
    iget-boolean p1, p3, Lb0/c;->c:Z

    .line 59
    .line 60
    if-eqz p1, :cond_0

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move p1, v2

    .line 65
    :goto_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    const-string p1, "help"

    .line 68
    .line 69
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lf0/n;->g:Landroid/app/AlertDialog;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lf0/n;->g:Landroid/app/AlertDialog;

    .line 82
    .line 83
    new-instance p2, Lf0/n$a;

    .line 84
    .line 85
    invoke-direct {p2, p0}, Lf0/n$a;-><init>(Lf0/n;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
