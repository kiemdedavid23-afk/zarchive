.class public final La0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/AboutDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/AboutDlg;)V
    .locals 0

    iput-object p1, p0, La0/a;->a:Lru/zdevs/zarchiver/activity/AboutDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v0, p0, La0/a;->a:Lru/zdevs/zarchiver/activity/AboutDlg;

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0c0018

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f0c0029

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "a. You expressly understand and agree that your use of the application is at your sole discretion and risk and that the application is provided as is and as available without warranty of any kind.\nb. You are solely responsible for any damage to your mobile device, or other device, or loss of data that results from such use.\nc. The author further expressly disclaims all warranties and conditions of any kind, whether express or implied, including, but not limited to the implied warranties and conditions of fitness for a particular purpose."

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 29
    .line 30
    .line 31
    return-void
.end method
