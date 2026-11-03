.class public final Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz/d;->b:Lru/zdevs/zarchiver/ZArchiver;

    iput-object p2, p0, Lz/d;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lz/d;->a:Landroid/view/View;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lb0/d;

    .line 8
    .line 9
    iget-object v2, p0, Lz/d;->b:Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v1, v2, v0, v3}, Lb0/d;-><init>(Landroid/content/Context;ZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v2, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 16
    .line 17
    iget v0, v0, Lru/zdevs/zarchiver/d;->e:I

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lb0/d;->a(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v4, Landroid/widget/ListPopupWindow;

    .line 31
    .line 32
    invoke-direct {v4, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    iget-object v5, v2, Lru/zdevs/zarchiver/ZArchiver;->j:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    .line 42
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .line 44
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v4, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    .line 53
    .line 54
    const v0, 0x7f06000a

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v4, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lz/d$a;

    .line 65
    .line 66
    invoke-direct {v0, p0, v4}, Lz/d$a;-><init>(Lz/d;Landroid/widget/ListPopupWindow;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    .line 71
    .line 72
    :try_start_0
    invoke-virtual {v4, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 76
    .line 77
    .line 78
    new-instance v0, Lz/d$b;

    .line 79
    .line 80
    invoke-direct {v0, p0, v4}, Lz/d$b;-><init>(Lz/d;Landroid/widget/ListPopupWindow;)V

    .line 81
    .line 82
    .line 83
    const-class v1, Landroid/widget/ListPopupWindow;

    .line 84
    .line 85
    const-string v2, "mDropDownList"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lb/d;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 94
    .line 95
    .line 96
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/widget/ListView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    const/4 v1, 0x0

    .line 104
    :goto_0
    if-eqz v1, :cond_0

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 110
    .line 111
    .line 112
    :catch_1
    return-void
.end method
