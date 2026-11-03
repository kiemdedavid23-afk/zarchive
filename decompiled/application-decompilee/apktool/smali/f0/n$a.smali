.class public final Lf0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/n;->r(Landroid/content/Context;ILandroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/n;


# direct methods
.method public constructor <init>(Lf0/n;)V
    .locals 0

    iput-object p1, p0, Lf0/n$a;->a:Lf0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/n$a;->a:Lf0/n;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/n;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    check-cast p1, Landroid/app/AlertDialog;

    .line 6
    .line 7
    const/4 v1, -0x2

    .line 8
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v0, Lf0/n$a$a;

    .line 18
    .line 19
    invoke-direct {v0}, Lf0/n$a$a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Ly0/e;->h(Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
