.class public final Lf0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/CheckBox;

.field public final synthetic b:Lf0/a0;


# direct methods
.method public constructor <init>(Lf0/a0;Landroid/widget/CheckBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lf0/z;->b:Lf0/a0;

    iput-object p2, p0, Lf0/z;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf0/z;->b:Lf0/a0;

    .line 2
    .line 3
    iget-object p1, p1, Lf0/a0;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lf0/z;->a:Landroid/widget/CheckBox;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x80

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
