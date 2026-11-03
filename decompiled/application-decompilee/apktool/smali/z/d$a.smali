.class public final Lz/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lz/d$a;->b:Lz/d;

    iput-object p2, p0, Lz/d$a;->a:Landroid/widget/ListPopupWindow;

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
    iget-object p2, p0, Lz/d$a;->b:Lz/d;

    .line 2
    .line 3
    iget-object p2, p2, Lz/d;->b:Lru/zdevs/zarchiver/ZArchiver;

    .line 4
    .line 5
    invoke-static {p2, p1, p3}, Lru/zdevs/zarchiver/ZArchiver;->u(Lru/zdevs/zarchiver/ZArchiver;Landroid/widget/AdapterView;I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lz/d$a;->a:Landroid/widget/ListPopupWindow;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
