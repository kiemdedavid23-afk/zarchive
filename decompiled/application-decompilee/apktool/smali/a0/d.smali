.class public final La0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/c;

.field public final synthetic b:Lg0/h;

.field public final synthetic c:Lru/zdevs/zarchiver/activity/InstallApksDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/InstallApksDlg;Lru/zdevs/zarchiver/c;Lg0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La0/d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    iput-object p2, p0, La0/d;->a:Lru/zdevs/zarchiver/c;

    iput-object p3, p0, La0/d;->b:Lg0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, La0/d;->b:Lg0/h;

    .line 2
    .line 3
    iget-object v1, p0, La0/d;->c:Lru/zdevs/zarchiver/activity/InstallApksDlg;

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, La0/d;->a:Lru/zdevs/zarchiver/c;

    .line 6
    .line 7
    invoke-static {v2, v0}, Lp0/a;->l(Lru/zdevs/zarchiver/c;Lg0/h;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x3

    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iput-object v0, v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;->d:Lg0/h;

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v2, Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;->e:Lru/zdevs/zarchiver/activity/InstallApksDlg$e;

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Lg1/h;->e(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Landroid/os/Handler;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, v1, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a:Landroid/os/Handler;

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    sget v0, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v0, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lp0/a$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget v2, Lru/zdevs/zarchiver/activity/InstallApksDlg;->f:I

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v0, v2}, Lru/zdevs/zarchiver/activity/InstallApksDlg;->a(Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
