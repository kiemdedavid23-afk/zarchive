.class public final Lf0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lf0/s;


# direct methods
.method public constructor <init>(Lf0/s;)V
    .locals 0

    iput-object p1, p0, Lf0/q;->a:Lf0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/q;->a:Lf0/s;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lw0/g;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const v2, 0x7f070020

    .line 18
    .line 19
    .line 20
    if-ne p1, v2, :cond_1

    .line 21
    .line 22
    iget p1, v0, Lf0/s;->h:I

    .line 23
    .line 24
    iput p1, v0, Lf0/s;->i:I

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-static {v1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    invoke-virtual {v0, p1, v1}, Lf0/s;->onClick(Landroid/content/DialogInterface;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object p1, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "\nOS SECURITY_PATCH:"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sget-object v1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-static {p1, v1, v0}, Lu0/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 73
    return p1
.end method
