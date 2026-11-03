.class public final Lb0/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb0/a$a;,
        Lb0/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/LayoutInflater;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lb0/a$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lb0/a;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/a;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string p2, "layout_inflater"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/LayoutInflater;

    .line 15
    .line 16
    iput-object p1, p0, Lb0/a;->a:Landroid/view/LayoutInflater;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lb0/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb0/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/a$a;

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lb0/a;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lb0/a$a;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lb0/a;->a:Landroid/view/LayoutInflater;

    .line 12
    .line 13
    const v0, 0x7f080032

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance p3, Lb0/a$b;

    .line 22
    .line 23
    invoke-direct {p3}, Lb0/a$b;-><init>()V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f070075

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    .line 35
    iput-object v0, p3, Lb0/a$b;->a:Landroid/widget/ImageView;

    .line 36
    .line 37
    const v0, 0x7f0700b4

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
    iput-object v0, p3, Lb0/a$b;->b:Landroid/widget/TextView;

    .line 47
    .line 48
    const v0, 0x7f070060

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
    iput-object v0, p3, Lb0/a$b;->c:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Lb0/a$b;

    .line 67
    .line 68
    iget-object v0, p3, Lb0/a$b;->a:Landroid/widget/ImageView;

    .line 69
    .line 70
    monitor-enter p1

    .line 71
    :try_start_0
    iget-object v1, p1, Lb0/a$a;->c:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    if-nez v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p1, Lb0/a$a;->a:Landroid/content/pm/PackageInfo;

    .line 76
    .line 77
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    .line 79
    iget-object v2, p1, Lb0/a$a;->d:Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p1, Lb0/a$a;->c:Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    :cond_1
    iget-object v1, p1, Lb0/a$a;->c:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    monitor-exit p1

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p3, Lb0/a$b;->b:Landroid/widget/TextView;

    .line 94
    .line 95
    iget-object v1, p1, Lb0/a$a;->b:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v2, p0, Lb0/a;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Ly0/f;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object p3, p3, Lb0/a$b;->c:Landroid/widget/TextView;

    .line 103
    .line 104
    iget-object p1, p1, Lb0/a$a;->a:Landroid/content/pm/PackageInfo;

    .line 105
    .line 106
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v0, p0, Lb0/a;->d:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {p3, p1, v0}, Ly0/f;->e(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object p2

    .line 114
    :catchall_0
    move-exception p2

    .line 115
    monitor-exit p1

    .line 116
    throw p2
.end method
