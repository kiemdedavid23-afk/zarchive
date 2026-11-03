.class public final Le1/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/a;


# direct methods
.method public constructor <init>(Le1/a;)V
    .locals 0

    iput-object p1, p0, Le1/a$c;->a:Le1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le1/a$c;->a:Le1/a;

    .line 2
    .line 3
    iget-object v1, v0, Le1/b;->a:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    sget-object v4, Le1/a;->j:[I

    .line 16
    .line 17
    aget v4, v4, v3

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-ne v4, v6, :cond_0

    .line 24
    .line 25
    move-object v4, p1

    .line 26
    check-cast v4, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    .line 29
    .line 30
    .line 31
    sget-object v4, Le1/a;->k:[I

    .line 32
    .line 33
    aget v4, v4, v3

    .line 34
    .line 35
    iput v4, v0, Le1/a;->b:I

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->setChecked(Z)V

    .line 45
    .line 46
    .line 47
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iput-boolean v5, v0, Le1/a;->f:Z

    .line 51
    .line 52
    return-void
.end method
