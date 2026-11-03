.class public final Lz/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lz/z0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lz/z0;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/widget/ListPopupWindow;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p1, Lru/zdevs/zarchiver/ZSelectFile;->k:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 22
    .line 23
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 24
    .line 25
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lb0/d;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-direct {v0, p1, v2, v2}, Lb0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lz/z0$a;

    .line 42
    .line 43
    invoke-direct {p1, p0, v1}, Lz/z0$a;-><init>(Lz/z0;Landroid/widget/ListPopupWindow;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    return-void
.end method
