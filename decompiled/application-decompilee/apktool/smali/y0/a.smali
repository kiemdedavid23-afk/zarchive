.class public final Ly0/a;
.super Landroid/view/ActionMode;
.source "SourceFile"


# instance fields
.field public final a:La0/c;

.field public final b:Landroid/view/ActionMode$Callback;

.field public final c:Landroid/widget/PopupMenu;

.field public final d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(La0/c;Landroid/view/ActionMode$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly0/a;->a:La0/c;

    .line 5
    .line 6
    iput-object p2, p0, Ly0/a;->b:Landroid/view/ActionMode$Callback;

    .line 7
    .line 8
    new-instance v0, Landroid/widget/PopupMenu;

    .line 9
    .line 10
    const v1, 0x7f070023

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ly0/a;->c:Landroid/widget/PopupMenu;

    .line 21
    .line 22
    const v1, 0x7f03000b

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v1}, Ly0/c;->c(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const v2, 0x7f070098

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, p0, Ly0/a;->d:Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .line 43
    .line 44
    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p2, p0, p1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 3

    .line 1
    const v0, 0x7f070098

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Ly0/a;->a:La0/c;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Ly0/a;->d:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {v1, v0}, La0/c;->m(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Ly0/a;->b:Landroid/view/ActionMode$Callback;

    .line 22
    .line 23
    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Ly0/a;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final invalidate()V
    .locals 0

    return-void
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 0

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
