.class public final Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lz/f;->a:Lru/zdevs/zarchiver/ZArchiver;

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

    iget-object p2, p0, Lz/f;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-static {p2, p1, p3}, Lru/zdevs/zarchiver/ZArchiver;->v(Lru/zdevs/zarchiver/ZArchiver;Landroid/widget/AdapterView;I)Z

    move-result p1

    return p1
.end method
