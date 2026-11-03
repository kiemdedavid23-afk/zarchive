.class public final Lrikka/shizuku/ShizukuProvider$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/shizuku/ShizukuProvider;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "moe.shizuku.privileged.api.intent.extra.BINDER"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lmoe/shizuku/api/BinderContainer;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p2, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const-string v0, "ShizukuProvider"

    .line 16
    .line 17
    const-string v1, "binder received from broadcast"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Ly/a;->d(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
