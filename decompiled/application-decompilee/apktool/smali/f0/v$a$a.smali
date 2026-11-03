.class public final Lf0/v$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/v$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/v$a;


# direct methods
.method public constructor <init>(Lf0/v$a;)V
    .locals 0

    iput-object p1, p0, Lf0/v$a$a;->a:Lf0/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lf0/v$a$a;->a:Lf0/v$a;

    iget-object v1, v0, Lf0/v$a;->c:Lf0/v;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lf0/v;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
