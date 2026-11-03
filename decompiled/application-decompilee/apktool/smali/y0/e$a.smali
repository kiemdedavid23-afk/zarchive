.class public final Ly0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly0/e;->g(Landroid/app/AlertDialog$Builder;IILandroid/widget/PopupMenu$OnMenuItemClickListener;)Landroid/view/Menu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/widget/PopupMenu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly0/e$a;->a:Landroid/widget/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ly0/e$a;->a:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
