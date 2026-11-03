.class public final La0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Landroid/view/View;

.field public final synthetic b:Lru/zdevs/zarchiver/activity/OpenAsDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V
    .locals 1

    .line 1
    iput-object p1, p0, La0/h;->b:Lru/zdevs/zarchiver/activity/OpenAsDlg;

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
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, La0/h;->a:Landroid/view/View;

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
    iget-object p2, p0, La0/h;->a:Landroid/view/View;

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
    sget p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->f:I

    .line 23
    .line 24
    iget-object p1, p0, La0/h;->b:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->a(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method
