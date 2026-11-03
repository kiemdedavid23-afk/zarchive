.class public final Lg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Lg/d;


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 0

    iput-object p1, p0, Lg/c;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lg/c;->a:Lg/d;

    .line 7
    .line 8
    iget-object v1, p1, Lg/d;->g0:Landroid/view/View$OnLongClickListener;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput v2, p1, Lg/d;->K:I

    .line 14
    .line 15
    invoke-static {p1, v1}, Lg/d;->b(Lg/d;Landroid/view/View$OnLongClickListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lg/d;->c(Lg/d;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return v0
.end method
