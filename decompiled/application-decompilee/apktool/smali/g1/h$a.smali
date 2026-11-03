.class public final Lg1/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/h;->e(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg1/h$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lg1/h$a;->b:Landroid/content/Intent;

    iput-object p3, p0, Lg1/h$a;->c:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lg1/h$a;->b:Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lg1/h$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lg1/h$a;->c:Landroid/content/ServiceConnection;

    .line 9
    .line 10
    const/16 v3, 0x48

    .line 11
    .line 12
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
