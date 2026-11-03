.class public final Lz/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lz/a1;->a:Lru/zdevs/zarchiver/ZSelectFile;

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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lb0/e;

    .line 9
    .line 10
    new-instance p2, Lg0/h;

    .line 11
    .line 12
    iget-object p1, p1, Lb0/e;->c:Lg0/h;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Lg0/h;-><init>(Lg0/h;)V

    .line 15
    .line 16
    .line 17
    sget p1, Lru/zdevs/zarchiver/ZSelectFile;->n:I

    .line 18
    .line 19
    iget-object p1, p0, Lz/a1;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 20
    .line 21
    const/4 p3, 0x0

    .line 22
    const/4 p4, 0x0

    .line 23
    invoke-virtual {p1, p3, p2, p4}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lg0/h;Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
