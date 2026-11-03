.class public final Ly0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    iget p0, p2, Landroid/content/res/Configuration;->screenLayout:I

    .line 12
    .line 13
    and-int/lit8 p0, p0, 0xf

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-ge p0, v0, :cond_1

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget p1, p2, Landroid/content/res/Configuration;->orientation:I

    .line 22
    .line 23
    if-ne p1, p0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p0, 0x0

    .line 27
    :cond_2
    :goto_0
    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "uimode"

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/app/UiModeManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v1, 0x4

    .line 18
    if-ne p0, v1, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_1
    return v0
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_0
    new-array v0, v0, [I

    .line 10
    .line 11
    const v1, 0x10102eb

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput v1, v0, v2

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    .line 27
    .line 28
    if-gtz v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "action_bar"

    .line 36
    .line 37
    const-string v3, "id"

    .line 38
    .line 39
    const-string v4, "android"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    .line 65
    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    return-void
.end method

.method public static e(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "id"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "action_mode_close_button"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 v0, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    :try_start_0
    instance-of v1, p0, Landroid/widget/ImageView;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    check-cast p0, Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of v1, p0, Landroid/widget/LinearLayout;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    check-cast p0, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-lez v1, :cond_3

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    if-eqz p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v1, 0x1

    .line 74
    if-le p1, v1, :cond_3

    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    check-cast p0, Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-class v0, Landroid/view/ViewConfiguration;

    .line 13
    .line 14
    const-string v1, "sHasPermanentMenuKey"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lb/d;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :cond_1
    return-void
.end method

.method public static g(Landroid/app/AlertDialog$Builder;IILandroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/view/Menu;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/high16 v3, 0x7f080000

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 18
    .line 19
    .line 20
    const/high16 p0, 0x7f070000

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 29
    .line 30
    .line 31
    const p0, 0x7f0700b7

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    new-instance p1, Landroid/widget/PopupMenu;

    .line 39
    .line 40
    const v1, 0x800035

    .line 41
    .line 42
    .line 43
    invoke-direct {p1, v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Ly0/e$a;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Ly0/e$a;-><init>(Landroid/widget/PopupMenu;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static h(Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, -0x3

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0600f4

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Ly0/c;->d(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 33
    .line 34
    invoke-virtual {v1, p0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    invoke-virtual {v0, v1, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    const-string p0, ""

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-ge v0, v1, :cond_3

    .line 6
    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    invoke-static {p1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/16 v0, 0x5f

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Ljava/util/Locale;

    .line 43
    .line 44
    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    new-instance v0, Ljava/util/Locale;

    .line 49
    .line 50
    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public static j(Landroid/widget/AbsListView;)V
    .locals 6

    .line 1
    const/16 v0, 0x600

    .line 2
    .line 3
    invoke-static {v0}, Ls0/b;->k(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v3, 0x17

    .line 13
    .line 14
    if-le v2, v3, :cond_1

    .line 15
    .line 16
    :cond_0
    instance-of v2, p0, Landroid/widget/ListView;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    move-object v2, p0

    .line 21
    check-cast v2, Landroid/widget/ListView;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v3, v2, [I

    .line 39
    .line 40
    const v4, 0x10100a7

    .line 41
    .line 42
    .line 43
    aput v4, v3, v1

    .line 44
    .line 45
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 46
    .line 47
    const/high16 v5, -0x1000000

    .line 48
    .line 49
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 53
    .line 54
    .line 55
    new-array v2, v2, [I

    .line 56
    .line 57
    const v3, 0x101009c

    .line 58
    .line 59
    .line 60
    aput v3, v2, v1

    .line 61
    .line 62
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 63
    .line 64
    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public static k(Landroid/view/Menu;)V
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v3, "flyme"

    .line 12
    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v3, "MenuBuilder"

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v3, "setOptionalIconsVisible"

    .line 46
    .line 47
    new-array v4, v2, [Ljava/lang/Class;

    .line 48
    .line 49
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    aput-object v5, v4, v1

    .line 52
    .line 53
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 58
    .line 59
    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 63
    .line 64
    aput-object v3, v2, v1

    .line 65
    .line 66
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    :catch_0
    :cond_2
    return-void
.end method

.method public static l(Landroid/content/Context;Landroid/widget/ProgressBar;I)V
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    if-ne p2, v0, :cond_0

    .line 3
    .line 4
    const p2, 0x7f030008

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p2}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    :cond_0
    invoke-static {}, Lu0/b;->f()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 27
    .line 28
    .line 29
    const/high16 p0, 0x20000000

    .line 30
    .line 31
    add-int/2addr p0, p2

    .line 32
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 57
    .line 58
    invoke-virtual {p0, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 66
    .line 67
    invoke-virtual {p0, p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public static m(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Ly0/e;->b(Landroid/content/Context;ZLandroid/content/res/Configuration;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/high16 v0, 0x8000000

    .line 16
    .line 17
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ls0/b;->c()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 25
    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v1, 0x1f

    .line 30
    .line 31
    if-lt v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getSplashScreen()Landroid/window/SplashScreen;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, p1}, Landroid/window/SplashScreen;->setSplashScreenTheme(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public static n(Landroid/view/Menu;[IZ)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method
