.class public final Lz/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/ListPopupWindow;

.field public final synthetic b:Lz/d;


# direct methods
.method public constructor <init>(Lz/d;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz/d$b;->b:Lz/d;

    iput-object p2, p0, Lz/d$b;->a:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lz/d$b;->b:Lz/d;

    .line 2
    .line 3
    iget-object p2, p2, Lz/d;->b:Lru/zdevs/zarchiver/ZArchiver;

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lru/zdevs/zarchiver/ZArchiver;->v(Lru/zdevs/zarchiver/ZArchiver;Landroid/widget/AdapterView;I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lz/d$b;->a:Landroid/widget/ListPopupWindow;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method
