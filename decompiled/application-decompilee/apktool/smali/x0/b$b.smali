.class public final Lx0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowManager;

.field public final synthetic b:Lx0/b;


# direct methods
.method public constructor <init>(Lx0/b;Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx0/b$b;->b:Lx0/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lx0/b$b;->a:Landroid/view/WindowManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    const-string v0, "WindowManagerWrapper"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "WindowManager\'s addView(view, params) has been hooked."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx0/b$b;->a:Landroid/view/WindowManager;

    .line 9
    .line 10
    invoke-interface {v1, p1, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string p2, "[addView]"

    .line 16
    .line 17
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lx0/b$b;->b:Lx0/b;

    .line 30
    .line 31
    iget-object p2, p1, Lx0/b;->b:Lx0/a;

    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iget-object p1, p1, Lx0/b;->a:Landroid/widget/Toast;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    return-void
.end method

.method public final getDefaultDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lx0/b$b;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lx0/b$b;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final removeViewImmediate(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lx0/b$b;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method

.method public final updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lx0/b$b;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
