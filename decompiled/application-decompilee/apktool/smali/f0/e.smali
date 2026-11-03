.class public final Lf0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Lf0/h;


# direct methods
.method public constructor <init>(Lf0/h;)V
    .locals 0

    iput-object p1, p0, Lf0/e;->a:Lf0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    iget-object p1, p0, Lf0/e;->a:Lf0/h;

    .line 2
    .line 3
    iget p2, p1, Lf0/h;->l:I

    .line 4
    .line 5
    if-ne p3, p2, :cond_0

    .line 6
    .line 7
    iget-object p2, p1, Lf0/h;->g:Landroid/app/AlertDialog;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p3, Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    invoke-direct {p3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    const p4, 0x7f0c01a4

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 27
    .line 28
    .line 29
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object p4

    .line 33
    const p5, 0x7f080024

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p4, p5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p4

    .line 42
    const p5, 0x7f070069

    .line 43
    .line 44
    .line 45
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    check-cast p5, Landroid/widget/EditText;

    .line 50
    .line 51
    const v0, 0x7f0700a5

    .line 52
    .line 53
    .line 54
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/Spinner;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    .line 67
    new-instance p4, Lf0/g;

    .line 68
    .line 69
    invoke-direct {p4, p1, p5, p2, v0}, Lf0/g;-><init>(Lf0/h;Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/Spinner;)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7f0c0029

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p1, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
