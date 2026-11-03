.class public final Lf0/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/p;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/p;


# direct methods
.method public constructor <init>(Lf0/p;)V
    .locals 0

    iput-object p1, p0, Lf0/p$b;->a:Lf0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object p2, p0, Lf0/p$b;->a:Lf0/p;

    .line 4
    .line 5
    iget-object p4, p2, Lf0/p;->i:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const p5, 0x7f07006e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    check-cast p4, Lru/zdevs/zarchiver/ui/FSSelect;

    .line 18
    .line 19
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lb0/e;

    .line 24
    .line 25
    if-eqz p4, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    new-instance p3, Lg0/h;

    .line 30
    .line 31
    iget-object p1, p1, Lb0/e;->c:Lg0/h;

    .line 32
    .line 33
    invoke-direct {p3, p1}, Lg0/h;-><init>(Lg0/h;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p3}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lg0/h;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lf0/p;->w()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, p2, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-object p1, p2, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method
