.class public final Lf0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lf0/s;


# direct methods
.method public constructor <init>(Lf0/s;)V
    .locals 0

    iput-object p1, p0, Lf0/r;->a:Lf0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/r;->a:Lf0/s;

    .line 2
    .line 3
    iget-object v0, v0, Lf0/s;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    check-cast p1, Landroid/app/AlertDialog;

    .line 6
    .line 7
    new-instance v0, Lf0/r$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lf0/r$a;-><init>(Lf0/r;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Ly0/e;->h(Landroid/app/AlertDialog;Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
