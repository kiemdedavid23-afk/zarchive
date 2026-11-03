.class public final Lf0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/app/Dialog;

.field public final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/b$b;->a:Landroid/app/Dialog;

    .line 5
    .line 6
    iput-object p2, p0, Lf0/b$b;->b:Ljava/lang/CharSequence;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf0/b$b;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f070084

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ListView;

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lb0/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lf0/b$b;->b:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v3, v0, Lb0/a;->b:Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lb0/a$a;

    .line 61
    .line 62
    iget-object v5, v4, Lb0/a$a;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_1

    .line 73
    .line 74
    iget-object v5, v4, Lb0/a$a;->a:Landroid/content/pm/PackageInfo;

    .line 75
    .line 76
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_0

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iput-object v2, v0, Lb0/a;->c:Ljava/util/ArrayList;

    .line 93
    .line 94
    iput-object v1, v0, Lb0/a;->d:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iput-object v3, v0, Lb0/a;->c:Ljava/util/ArrayList;

    .line 98
    .line 99
    const/4 v1, 0x0

    .line 100
    iput-object v1, v0, Lb0/a;->d:Ljava/lang/String;

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 103
    .line 104
    .line 105
    :cond_4
    return-void
.end method
