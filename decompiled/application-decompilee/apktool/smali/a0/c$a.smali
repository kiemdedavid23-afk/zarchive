.class public final La0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/c;->q(Landroid/app/ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La0/c;


# direct methods
.method public constructor <init>(La0/c;)V
    .locals 0

    iput-object p1, p0, La0/c$a;->a:La0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, La0/c$a;->a:La0/c;

    .line 2
    .line 3
    iget-object v0, p1, La0/c;->b:Landroid/view/ActionMode;

    .line 4
    .line 5
    instance-of v0, v0, Ly0/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, La0/c;->j()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x4

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
