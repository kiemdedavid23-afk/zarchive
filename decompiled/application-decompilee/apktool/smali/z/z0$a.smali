.class public final Lz/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/z0;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ListPopupWindow;

.field public final synthetic b:Lz/z0;


# direct methods
.method public constructor <init>(Lz/z0;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz/z0$a;->b:Lz/z0;

    iput-object p2, p0, Lz/z0$a;->a:Landroid/widget/ListPopupWindow;

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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb0/e;

    .line 8
    .line 9
    iget-object p2, p0, Lz/z0$a;->b:Lz/z0;

    .line 10
    .line 11
    iget-object p2, p2, Lz/z0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 12
    .line 13
    new-instance p3, Lg0/h;

    .line 14
    .line 15
    iget-object p1, p1, Lb0/e;->c:Lg0/h;

    .line 16
    .line 17
    invoke-direct {p3, p1}, Lg0/h;-><init>(Lg0/h;)V

    .line 18
    .line 19
    .line 20
    sget p1, Lru/zdevs/zarchiver/ZSelectFile;->n:I

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    const/4 p4, 0x0

    .line 24
    invoke-virtual {p2, p1, p3, p4}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lg0/h;Z)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lz/z0$a;->a:Landroid/widget/ListPopupWindow;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
