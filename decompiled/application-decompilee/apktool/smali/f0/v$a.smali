.class public final Lf0/v$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb0/h;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/view/LayoutInflater;

.field public final synthetic c:Lf0/v;


# direct methods
.method public constructor <init>(Lf0/v;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf0/v$a;->c:Lf0/v;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x300

    .line 7
    .line 8
    invoke-static {p1}, Ls0/b;->k(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 15
    .line 16
    const v0, 0x7f0d0051

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 20
    .line 21
    .line 22
    move-object p2, p1

    .line 23
    :cond_0
    iput-object p3, p0, Lf0/v$a;->a:Ljava/util/List;

    .line 24
    .line 25
    const-string p1, "layout_inflater"

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/view/LayoutInflater;

    .line 32
    .line 33
    iput-object p1, p0, Lf0/v$a;->b:Landroid/view/LayoutInflater;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lf0/v$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf0/v$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/h;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lf0/v$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/h;

    iget p1, p1, Lb0/h;->c:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object p2, p0, Lf0/v$a;->b:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    const v1, 0x7f080027

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    iget-object p3, p0, Lf0/v$a;->a:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lb0/h;

    .line 20
    .line 21
    const p3, 0x7f070075

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Landroid/widget/ImageView;

    .line 29
    .line 30
    const v1, 0x7f0700b4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/TextView;

    .line 38
    .line 39
    const v2, 0x7f070088

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/ImageView;

    .line 47
    .line 48
    iget-object v3, p1, Lb0/h;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p1, Lb0/h;->b:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p1, Lb0/h;->d:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget p1, p1, Lb0/h;->c:I

    .line 69
    .line 70
    const/4 p3, 0x1

    .line 71
    add-int/2addr p1, p3

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p3}, Landroid/view/View;->setClickable(Z)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lf0/v$a$a;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lf0/v$a$a;-><init>(Lf0/v$a;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const/16 p1, 0x8

    .line 92
    .line 93
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-object p2
.end method
