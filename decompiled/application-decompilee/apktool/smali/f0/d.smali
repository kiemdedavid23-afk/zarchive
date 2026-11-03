.class public final Lf0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lf0/h;


# direct methods
.method public constructor <init>(Lf0/h;)V
    .locals 0

    iput-object p1, p0, Lf0/d;->a:Lf0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x7f07003b

    .line 10
    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lf0/d;->a:Lf0/h;

    .line 15
    .line 16
    iget-boolean v2, v1, Lf0/h;->s:Z

    .line 17
    .line 18
    xor-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    iput-boolean v2, v1, Lf0/h;->s:Z

    .line 21
    .line 22
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 23
    .line 24
    .line 25
    :cond_1
    return v0
.end method
