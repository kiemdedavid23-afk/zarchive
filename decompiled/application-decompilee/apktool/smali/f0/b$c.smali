.class public final Lf0/b$c;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lb/d;->o()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    return-object v3

    .line 22
    :cond_0
    sget-object v4, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 23
    .line 24
    if-nez v4, :cond_1

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 55
    .line 56
    new-instance v6, Lb0/a$a;

    .line 57
    .line 58
    invoke-direct {v6, v5, v3}, Lb0/a$a;-><init>(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lf0/b$a;

    .line 72
    .line 73
    invoke-direct {v0, v4}, Lf0/b$a;-><init>(Ljava/util/ArrayList;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
