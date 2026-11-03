.class public final Lf0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lf0/k;


# direct methods
.method public constructor <init>(Lf0/k;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf0/j;->b:Lf0/k;

    iput-object p2, p0, Lf0/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lf0/j;->b:Lf0/k;

    .line 2
    .line 3
    iget-object v0, p1, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lf0/j;->a:Landroid/content/Context;

    .line 9
    .line 10
    const v1, 0x7f0600f4

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Ly0/c;->d(Landroid/content/Context;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p1, p1, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 29
    .line 30
    const/4 v0, -0x3

    .line 31
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 39
    .line 40
    .line 41
    const-string v0, ""

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lf0/j$a;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lf0/j$a;-><init>(Lf0/j;Landroid/widget/Button;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method
