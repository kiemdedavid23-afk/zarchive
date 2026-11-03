.class public final Lz0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Landroid/view/View;

.field public final synthetic b:Lz0/f;


# direct methods
.method public constructor <init>(Lz0/f;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lz0/b;->b:Lz0/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0700ae

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lz0/b;->a:Landroid/view/View;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p2, p0, Lz0/b;->a:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    int-to-float p2, p2

    .line 18
    cmpg-float p1, p1, p2

    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lz0/b;->b:Lz0/f;

    .line 23
    .line 24
    invoke-virtual {p1}, Lz0/f;->dismiss()V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    return p1
.end method
