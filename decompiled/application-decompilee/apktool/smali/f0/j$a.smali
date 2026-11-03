.class public final Lf0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/j;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/widget/Button;

.field public final synthetic b:Lf0/j;


# direct methods
.method public constructor <init>(Lf0/j;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf0/j$a;->b:Lf0/j;

    iput-object p2, p0, Lf0/j$a;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lf0/j$a;->b:Lf0/j;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, v0, Lf0/j;->b:Lf0/k;

    .line 4
    .line 5
    new-instance v9, Ly0/d;

    .line 6
    .line 7
    iget-object v3, v0, Lf0/j;->a:Landroid/content/Context;

    .line 8
    .line 9
    const/16 v5, 0x30

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-static {v2}, Ly0/c;->a(I)I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    iget-object v2, p0, Lf0/j$a;->a:Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const v2, 0x7f0c0091

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    move-object v2, v9

    .line 31
    move-object v4, p1

    .line 32
    invoke-direct/range {v2 .. v8}, Ly0/d;-><init>(Landroid/content/Context;Landroid/view/View;ILjava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    iput-object v9, v1, Lf0/k;->h:Ly0/d;

    .line 36
    .line 37
    iget-object p1, v0, Lf0/j;->b:Lf0/k;

    .line 38
    .line 39
    iget-object p1, p1, Lf0/k;->h:Ly0/d;

    .line 40
    .line 41
    iget-object v0, p1, Ly0/d;->f:Landroid/widget/PopupWindow;

    .line 42
    .line 43
    iget v1, p1, Ly0/d;->b:I

    .line 44
    .line 45
    iget-object v2, p1, Ly0/d;->a:Landroid/view/View;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Ly0/d;->e:Landroid/widget/LinearLayout;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method
