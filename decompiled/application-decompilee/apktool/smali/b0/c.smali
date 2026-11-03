.class public final Lb0/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/c$a;,
        Lb0/c$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ld0/a$b;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout_inflater"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iput-object p1, p0, Lb0/c;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lb0/c;->c:Z

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lb0/c;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    array-length v0, p2

    .line 25
    move v1, p1

    .line 26
    :goto_0
    if-ge v1, v0, :cond_3

    .line 27
    .line 28
    aget-object v2, p2, v1

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_0
    iget-object v3, p0, Lb0/c;->b:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v4, Lb0/c$a;

    .line 36
    .line 37
    iget-object v5, v2, Ld0/a$b;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v5}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/4 v6, -0x1

    .line 44
    invoke-direct {v4, v6, v5}, Lb0/c$a;-><init>(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    move v4, p1

    .line 57
    :goto_1
    if-ge v4, v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Ld0/a$a;

    .line 64
    .line 65
    iget v5, v5, Ld0/a$a;->a:I

    .line 66
    .line 67
    if-eqz v5, :cond_1

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    iput-boolean v5, p0, Lb0/c;->c:Z

    .line 71
    .line 72
    :cond_1
    iget-object v5, p0, Lb0/c;->b:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v6, Lb0/c$a;

    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ld0/a$a;

    .line 81
    .line 82
    iget v8, v7, Ld0/a$a;->a:I

    .line 83
    .line 84
    iget-object v7, v7, Ld0/a$a;->b:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v8, v7}, Ld0/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-direct {v6, v4, v7}, Lb0/c$a;-><init>(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lb0/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb0/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/c$a;

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
    iget-object v0, p0, Lb0/c;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb0/c$a;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p2, p0, Lb0/c;->a:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    const v1, 0x7f080029

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lb0/c$b;

    .line 22
    .line 23
    invoke-direct {p3}, Lb0/c$b;-><init>()V

    .line 24
    .line 25
    .line 26
    const v1, 0x7f070089

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v1, p3, Lb0/c$b;->a:Landroid/widget/TextView;

    .line 36
    .line 37
    const v1, 0x7f0700b4

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object v1, p3, Lb0/c$b;->b:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lb0/c$b;

    .line 56
    .line 57
    iget v1, p1, Lb0/c$a;->a:I

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne v1, v2, :cond_1

    .line 63
    .line 64
    iget-object v0, p3, Lb0/c$b;->a:Landroid/widget/TextView;

    .line 65
    .line 66
    const/16 v1, 0x8

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p3, Lb0/c$b;->b:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p3, Lb0/c$b;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p3, Lb0/c$b;->a:Landroid/widget/TextView;

    .line 83
    .line 84
    iget v2, p1, Lb0/c$a;->a:I

    .line 85
    .line 86
    add-int/2addr v2, v4

    .line 87
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p3, Lb0/c$b;->b:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    iget-object p3, p3, Lb0/c$b;->b:Landroid/widget/TextView;

    .line 100
    .line 101
    iget-object p1, p1, Lb0/c$a;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    return-object p2
.end method
