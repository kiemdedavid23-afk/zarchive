.class public final Lz/m0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(ILandroid/content/ClipData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lz/m0;->e:Landroid/content/ClipData;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 8

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Lz/m0;->e:Landroid/content/ClipData;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v2, :cond_3

    .line 20
    .line 21
    iget-object v5, p0, Lz/m0;->e:Landroid/content/ClipData;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v0, v5}, Lu0/f;->d(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {v5}, Lw0/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-static {v6}, Lm0/h;->b([Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_2

    .line 49
    .line 50
    const/4 v7, 0x2

    .line 51
    aget-object v6, v6, v7

    .line 52
    .line 53
    invoke-static {v5, v6}, Lm0/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    :cond_2
    new-instance v6, Lg0/h;

    .line 58
    .line 59
    const-string v7, "file"

    .line 60
    .line 61
    invoke-direct {v6, v7, v5}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    new-instance v1, Lz/y;

    .line 78
    .line 79
    invoke-direct {v1, v3}, Lz/y;-><init>(Ljava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-object v1
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
