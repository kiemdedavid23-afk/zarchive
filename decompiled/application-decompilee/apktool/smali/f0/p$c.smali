.class public final Lf0/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

    iput-object p1, p0, Lf0/p$c;->a:Lf0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lf0/p$c;->a:Lf0/p;

    const/4 v1, 0x0

    iput-object v1, v0, Lf0/p;->j:Landroid/widget/ListPopupWindow;

    return-void
.end method
