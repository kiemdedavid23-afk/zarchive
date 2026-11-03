.class public final Lf0/s;
.super Lf0/i;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public g:Landroid/app/AlertDialog;

.field public final h:I

.field public i:I

.field public final j:Lw0/c$a;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public m:Landroid/os/storage/StorageVolume;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILw0/c$a;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    .line 1
    invoke-direct/range {p0 .. p0}, Lf0/i;-><init>()V

    move-object/from16 v5, p1

    .line 2
    iput-object v5, v0, Lf0/i;->f:Lru/zdevs/zarchiver/d;

    .line 3
    iput v3, v0, Lf0/s;->i:I

    iput v3, v0, Lf0/s;->h:I

    .line 4
    iput-object v2, v0, Lf0/s;->j:Lw0/c$a;

    .line 5
    iput-object v4, v0, Lf0/s;->k:Ljava/lang/String;

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    const/16 v5, 0x69

    goto :goto_0

    :cond_0
    const/16 v5, 0x6a

    goto :goto_0

    :cond_1
    move/from16 v5, p3

    .line 6
    :goto_0
    iput v5, v0, Lf0/s;->l:I

    const/4 v5, 0x0

    .line 7
    iput-object v5, v0, Lf0/s;->m:Landroid/os/storage/StorageVolume;

    .line 8
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f080013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 10
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f07004c

    .line 11
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v10, 0x7f0700b4

    .line 12
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0c0029

    .line 13
    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    const/16 v9, 0x1e

    const/4 v11, 0x3

    const/16 v12, 0x8

    const v14, 0x7f0c01a4

    const-string v13, "%1"

    const/4 v15, 0x1

    if-eq v3, v15, :cond_8

    if-eq v3, v5, :cond_8

    if-ne v3, v11, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_3

    .line 15
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c007d

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_3
    if-nez v3, :cond_f

    .line 18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const v8, 0x7f0c0025

    .line 19
    invoke-virtual {v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0c0084

    .line 20
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lf0/s;->d()V

    goto/16 :goto_a

    :cond_4
    const/16 v8, 0x18

    if-lt v4, v8, :cond_5

    .line 22
    iget-object v8, v2, Lw0/c$a;->e:Ljava/lang/Object;

    instance-of v12, v8, Landroid/os/storage/StorageVolume;

    if-eqz v12, :cond_5

    .line 23
    check-cast v8, Landroid/os/storage/StorageVolume;

    iput-object v8, v0, Lf0/s;->m:Landroid/os/storage/StorageVolume;

    .line 24
    :cond_5
    iget-object v8, v2, Lw0/c$a;->a:Ljava/lang/String;

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lw0/c$a;->a:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string v2, ""

    .line 25
    :goto_1
    iget-object v8, v0, Lf0/s;->m:Landroid/os/storage/StorageVolume;

    if-eqz v8, :cond_7

    const/16 v8, 0x1d

    if-ge v4, v8, :cond_7

    const v4, 0x7f0c007f

    .line 26
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_7
    const v4, 0x7f0c0083

    .line 27
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v13, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_8
    :goto_2
    const v9, 0x7f0c0025

    .line 28
    invoke-virtual {v6, v9, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    invoke-virtual {v6, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    if-ne v3, v15, :cond_9

    const v2, 0x7f0c007e

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 31
    :cond_9
    invoke-static/range {p2 .. p2}, Lw0/g;->c(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_b

    if-eqz v2, :cond_a

    .line 32
    iget v2, v2, Lw0/c$a;->f:I

    invoke-static {v2, v5}, Lb/d;->K(II)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SD/"

    goto :goto_3

    :cond_a
    const-string v2, "PHONE/"

    :goto_3
    const v9, 0x7f0c0083

    .line 33
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    if-ne v9, v5, :cond_c

    move v2, v15

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    .line 34
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f0c007c

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_d

    const v9, 0x7f0c0082

    goto :goto_5

    :cond_d
    const v9, 0x7f0c0085

    .line 35
    :goto_5
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_e

    const/4 v1, 0x5

    goto :goto_6

    :cond_e
    const/4 v1, 0x6

    .line 37
    :goto_6
    iput v1, v0, Lf0/s;->i:I

    .line 38
    :goto_7
    iget v1, v0, Lf0/s;->i:I

    if-eq v1, v11, :cond_f

    .line 39
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_f
    :goto_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_13

    if-eq v3, v5, :cond_10

    if-ne v3, v11, :cond_13

    .line 41
    :cond_10
    new-instance v1, Lf0/q;

    invoke-direct {v1, v0}, Lf0/q;-><init>(Lf0/s;)V

    const v2, 0x7f090005

    const v3, 0x7f0c0084

    invoke-static {v6, v3, v2, v1}, Ly0/e;->g(Landroid/app/AlertDialog$Builder;IILandroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f070020

    .line 42
    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, v0, Lf0/s;->i:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_12

    const/4 v3, 0x5

    if-ne v2, v3, :cond_11

    goto :goto_9

    :cond_11
    const/4 v15, 0x0

    :cond_12
    :goto_9
    invoke-interface {v1, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 43
    :cond_13
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "help"

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v6, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 47
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 48
    iget-object v1, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    new-instance v2, Lf0/r;

    invoke-direct {v2, v0}, Lf0/r;-><init>(Lf0/s;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 49
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lf0/i;->a()V

    return-void
.end method

.method public static r(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILw0/c$a;ILjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p5, v0, :cond_2

    .line 3
    .line 4
    const/16 v0, 0x100

    .line 5
    .line 6
    invoke-static {v0}, Ls0/b;->h(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-static {p1}, Lw0/g;->c(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    if-nez p3, :cond_0

    .line 27
    .line 28
    const/16 p2, 0x69

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/16 p2, 0x6a

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-static {v0, p4, p6, p2}, Lw0/g;->h(Lru/zdevs/zarchiver/ZArchiver;Lw0/c$a;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    new-instance v0, Lf0/s;

    .line 38
    .line 39
    move-object v1, v0

    .line 40
    move-object v2, p0

    .line 41
    move-object v3, p1

    .line 42
    move v4, p2

    .line 43
    move v5, p3

    .line 44
    move-object v6, p4

    .line 45
    move v7, p5

    .line 46
    move-object v8, p6

    .line 47
    invoke-direct/range {v1 .. v8}, Lf0/s;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;IILw0/c$a;ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 51
    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    invoke-static {p0}, Lf0/i;->q(Landroid/app/Dialog;)Z

    .line 55
    .line 56
    .line 57
    :cond_3
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/s;->g:Landroid/app/AlertDialog;

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
    iput-object v0, p0, Lf0/s;->g:Landroid/app/AlertDialog;

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
    .locals 7

    .line 1
    const/4 p1, -0x1

    .line 2
    const/4 v0, 0x3

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p2, p1, :cond_a

    .line 6
    .line 7
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    iget p2, p0, Lf0/s;->i:I

    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    const-string v4, "ru.zdevs.zarchiver"

    .line 19
    .line 20
    const-string v5, "package"

    .line 21
    .line 22
    if-eq p2, v3, :cond_1

    .line 23
    .line 24
    if-eq p2, v1, :cond_1

    .line 25
    .line 26
    if-ne p2, v0, :cond_3

    .line 27
    .line 28
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 29
    .line 30
    const/16 v6, 0x1a

    .line 31
    .line 32
    if-lt v3, v6, :cond_3

    .line 33
    .line 34
    if-ne p2, v1, :cond_2

    .line 35
    .line 36
    invoke-static {v5, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v1, Landroid/content/Intent;

    .line 41
    .line 42
    const-string v3, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 43
    .line 44
    invoke-direct {v1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lg1/g;

    .line 48
    .line 49
    const/16 v3, 0x6f

    .line 50
    .line 51
    invoke-direct {p2, p1, v1, v3, v2}, Lg1/g;-><init>(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object p2, p0, Lf0/s;->j:Lw0/c$a;

    .line 60
    .line 61
    iget-object v1, p0, Lf0/s;->k:Ljava/lang/String;

    .line 62
    .line 63
    iget v3, p0, Lf0/s;->l:I

    .line 64
    .line 65
    invoke-static {p1, p2, v1, v3}, Lw0/g;->h(Lru/zdevs/zarchiver/ZArchiver;Lw0/c$a;Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v3, 0x1e

    .line 73
    .line 74
    if-lt v1, v3, :cond_4

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    if-ne p2, v3, :cond_4

    .line 78
    .line 79
    :try_start_0
    invoke-static {v5, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    new-instance v1, Landroid/content/Intent;

    .line 84
    .line 85
    const-string v3, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 86
    .line 87
    invoke-direct {v1, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    .line 89
    .line 90
    const/16 p2, 0x6b

    .line 91
    .line 92
    invoke-virtual {p1, v1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :catch_0
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    .line 98
    .line 99
    const-string v1, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    .line 100
    .line 101
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :catch_1
    const-string p1, "Failed to request the ACTION_MANAGE_ALL_FILES_ACCESS_PERMISSION"

    .line 110
    .line 111
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    const/4 v3, 0x5

    .line 116
    if-ne p2, v3, :cond_5

    .line 117
    .line 118
    invoke-static {p1}, Lw0/g;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    if-eqz p2, :cond_9

    .line 123
    .line 124
    new-instance v1, Landroid/content/Intent;

    .line 125
    .line 126
    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 127
    .line 128
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v4, "package:"

    .line 134
    .line 135
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    const/16 p2, 0x71

    .line 155
    .line 156
    invoke-static {p1, v1, p2}, Lw0/g;->j(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    const/4 v3, 0x6

    .line 161
    if-ne p2, v3, :cond_6

    .line 162
    .line 163
    new-instance p2, Landroid/content/Intent;

    .line 164
    .line 165
    const-class v1, Lru/zdevs/zarchiver/activity/SettingsDlg;

    .line 166
    .line 167
    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .line 169
    .line 170
    const-string v1, "settings"

    .line 171
    .line 172
    const-string v3, "root"

    .line 173
    .line 174
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    .line 176
    .line 177
    const v1, 0x7f0c0176

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    const-string v3, "title"

    .line 185
    .line 186
    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    .line 188
    .line 189
    invoke-static {p1, p2}, Lg1/h;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_6
    iget-object p2, p0, Lf0/s;->m:Landroid/os/storage/StorageVolume;

    .line 194
    .line 195
    if-eqz p2, :cond_8

    .line 196
    .line 197
    const/16 v3, 0x1d

    .line 198
    .line 199
    if-ge v1, v3, :cond_7

    .line 200
    .line 201
    iget v1, p0, Lf0/s;->l:I

    .line 202
    .line 203
    invoke-static {p1, p2, v1}, Lw0/g;->e(Lru/zdevs/zarchiver/ZArchiver;Landroid/os/storage/StorageVolume;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_7
    iget v1, p0, Lf0/s;->l:I

    .line 208
    .line 209
    invoke-static {p1, p2, v1}, Lw0/g;->i(Lru/zdevs/zarchiver/ZArchiver;Landroid/os/storage/StorageVolume;I)V

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_8
    iget-object p2, p0, Lf0/s;->j:Lw0/c$a;

    .line 214
    .line 215
    iget v1, p0, Lf0/s;->l:I

    .line 216
    .line 217
    invoke-static {p1, p2, v2, v1}, Lw0/g;->h(Lru/zdevs/zarchiver/ZArchiver;Lw0/c$a;Ljava/lang/String;I)V

    .line 218
    .line 219
    .line 220
    :cond_9
    :goto_0
    const/4 v1, 0x0

    .line 221
    :cond_a
    iget-object p1, p0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 222
    .line 223
    if-eqz p1, :cond_e

    .line 224
    .line 225
    const p2, 0x7f07004c

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Landroid/widget/CheckBox;

    .line 233
    .line 234
    if-eqz p1, :cond_e

    .line 235
    .line 236
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_e

    .line 241
    .line 242
    iget p1, p0, Lf0/s;->h:I

    .line 243
    .line 244
    if-ne p1, v0, :cond_b

    .line 245
    .line 246
    if-nez v1, :cond_b

    .line 247
    .line 248
    iget-object p1, p0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    const/16 p2, 0x100

    .line 255
    .line 256
    invoke-static {p1, p2}, Ls0/b;->o(Landroid/content/Context;I)V

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_b
    iget-object p1, p0, Lf0/s;->j:Lw0/c$a;

    .line 261
    .line 262
    if-eqz p1, :cond_e

    .line 263
    .line 264
    if-eqz v1, :cond_e

    .line 265
    .line 266
    sget-object p2, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 267
    .line 268
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    const-string v0, "sNonRequestPermission"

    .line 273
    .line 274
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v2, "~!@"

    .line 279
    .line 280
    if-eqz v1, :cond_c

    .line 281
    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1}, Lw0/c$a;->a()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-nez v3, :cond_e

    .line 306
    .line 307
    :cond_c
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    if-nez v1, :cond_d

    .line 317
    .line 318
    move-object v1, v2

    .line 319
    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1}, Lw0/c$a;->a()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    .line 338
    .line 339
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    .line 341
    .line 342
    :cond_e
    :goto_1
    invoke-virtual {p0}, Lf0/s;->d()V

    .line 343
    .line 344
    .line 345
    return-void
.end method
