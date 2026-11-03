.class public final La0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/activity/OpenAsDlg;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/activity/OpenAsDlg;)V
    .locals 0

    iput-object p1, p0, La0/f;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

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
    iget-object p1, p0, La0/f;->a:Lru/zdevs/zarchiver/activity/OpenAsDlg;

    .line 2
    .line 3
    iget-object p2, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->c:Ljava/lang/String;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iput p3, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b:I

    .line 8
    .line 9
    :cond_0
    iget p2, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b:I

    .line 10
    .line 11
    if-ne p2, p3, :cond_1

    .line 12
    .line 13
    iget-object p1, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->e:Lru/zdevs/zarchiver/activity/OpenAsDlg$b;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/activity/OpenAsDlg$b;->onClick(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iput p3, p1, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b:I

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/activity/OpenAsDlg;->b(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
