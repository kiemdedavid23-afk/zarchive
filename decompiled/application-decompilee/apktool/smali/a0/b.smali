.class public final La0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/AboutDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/AboutDlg;)V
    .locals 0

    iput-object p1, p0, La0/b;->a:Lru/zdevs/zarchiver/activity/AboutDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0c0017

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, La0/b;->a:Lru/zdevs/zarchiver/activity/AboutDlg;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-static {v1, p1}, Lg1/h;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
