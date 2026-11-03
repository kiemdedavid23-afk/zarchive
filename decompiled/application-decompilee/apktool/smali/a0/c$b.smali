.class public final La0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/c;->q(Landroid/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La0/c;


# direct methods
.method public constructor <init>(La0/c;)V
    .locals 0

    iput-object p1, p0, La0/c$b;->a:La0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, La0/c$b;->a:La0/c;

    .line 2
    .line 3
    iget-object v1, v0, La0/c;->b:Landroid/view/ActionMode;

    .line 4
    .line 5
    instance-of v2, v1, Ly0/a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    check-cast v1, Ly0/a;

    .line 10
    .line 11
    iget-object p1, v1, Ly0/a;->c:Landroid/widget/PopupMenu;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    .line 15
    .line 16
    invoke-direct {v1, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-object p1, v1

    .line 27
    :goto_0
    new-instance v0, La0/c$b$a;

    .line 28
    .line 29
    invoke-direct {v0, p0}, La0/c$b$a;-><init>(La0/c$b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
