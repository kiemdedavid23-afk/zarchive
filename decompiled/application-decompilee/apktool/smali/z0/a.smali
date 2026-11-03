.class public final Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lz0/f;


# direct methods
.method public constructor <init>(Lz0/f;)V
    .locals 0

    iput-object p1, p0, Lz0/a;->a:Lz0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz0/a;->a:Lz0/f;

    .line 2
    .line 3
    iget-object v1, v0, Lz0/f;->a:Lz0/f$a;

    .line 4
    .line 5
    iget-object v1, v1, Lz0/f$a;->a:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v1}, Ly0/f;->f(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lz0/f;->a:Lz0/f$a;

    .line 11
    .line 12
    iget-object v0, v0, Lz0/f$a;->a:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0
.end method
