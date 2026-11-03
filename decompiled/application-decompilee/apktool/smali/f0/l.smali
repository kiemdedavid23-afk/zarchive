.class public final Lf0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lf0/m;


# direct methods
.method public constructor <init>(Lf0/m;)V
    .locals 0

    iput-object p1, p0, Lf0/l;->a:Lf0/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/l;->a:Lf0/m;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/m;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    check-cast p1, Landroid/app/AlertDialog;

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
