.class public final Lb0/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Landroid/content/res/Resources;

.field public final c:Z

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lb0/d;->b:Landroid/content/res/Resources;

    .line 9
    .line 10
    const-string v0, "layout_inflater"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/LayoutInflater;

    .line 17
    .line 18
    iput-object v0, p0, Lb0/d;->a:Landroid/view/LayoutInflater;

    .line 19
    .line 20
    iput-boolean p3, p0, Lb0/d;->c:Z

    .line 21
    .line 22
    invoke-static {p2}, Ls0/a;->d(Z)Ljava/util/ArrayList;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lb0/d;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iput-object p3, p0, Lb0/d;->d:Ljava/util/ArrayList;

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Lb0/d;->e:Landroid/content/res/Resources$Theme;

    .line 60
    .line 61
    sget p2, Ls0/b;->i:I

    .line 62
    .line 63
    const/4 p3, 0x1

    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb0/d;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lb0/e;

    .line 18
    .line 19
    const/16 v2, 0x20

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lb0/e;->b(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v0, Lg0/h;

    .line 28
    .line 29
    sget-object v2, Ls0/b;->b:[Ljava/lang/String;

    .line 30
    .line 31
    aget-object p1, v2, p1

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v1, Lb0/e;->c:Lg0/h;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lb0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb0/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/e;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lb0/d;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb0/e;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iget-object v0, p0, Lb0/d;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const v1, 0x7f08002a

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lb0/d$a;

    .line 22
    .line 23
    invoke-direct {p3}, Lb0/d$a;-><init>()V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0700b4

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v0, p3, Lb0/d$a;->a:Landroid/widget/TextView;

    .line 36
    .line 37
    const v0, 0x7f070060

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v0, p3, Lb0/d$a;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    const v0, 0x7f070085

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object v0, p3, Lb0/d$a;->d:Landroid/widget/TextView;

    .line 58
    .line 59
    const v0, 0x7f070075

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v0, p3, Lb0/d$a;->b:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    check-cast p3, Lb0/d$a;

    .line 78
    .line 79
    iget-object v0, p3, Lb0/d$a;->a:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-object v1, p1, Lb0/e;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p3, Lb0/d$a;->b:Landroid/widget/ImageView;

    .line 87
    .line 88
    iget v1, p1, Lb0/e;->a:I

    .line 89
    .line 90
    invoke-static {}, Ls0/b;->d()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-static {v2, v1}, Ly0/b;->b(II)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    const/16 v3, 0x1000

    .line 99
    .line 100
    iget-object v4, p0, Lb0/d;->b:Landroid/content/res/Resources;

    .line 101
    .line 102
    if-eq v2, v3, :cond_1

    .line 103
    .line 104
    iget-object v2, p0, Lb0/d;->e:Landroid/content/res/Resources$Theme;

    .line 105
    .line 106
    invoke-static {v4, v2, v1}, Ly0/c;->i(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p3, Lb0/d$a;->c:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v1, p1, Lb0/e;->c:Lg0/h;

    .line 121
    .line 122
    invoke-virtual {v1}, Lg0/h;->t()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget-boolean v0, p0, Lb0/d;->c:Z

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    iget-object p3, p3, Lb0/d$a;->d:Landroid/widget/TextView;

    .line 134
    .line 135
    iget-object p1, p1, Lb0/e;->d:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz p1, :cond_2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    const-string p1, ""

    .line 141
    .line 142
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    :cond_3
    return-object p2
.end method
