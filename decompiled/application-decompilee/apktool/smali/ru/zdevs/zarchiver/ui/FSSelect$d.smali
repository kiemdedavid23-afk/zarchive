.class public final Lru/zdevs/zarchiver/ui/FSSelect$d;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/FSSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final e:Lru/zdevs/zarchiver/b;

.field public final f:Lg0/h;

.field public final g:[Lg0/b;

.field public final h:I


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/b;Lg0/h;[Lg0/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->e:Lru/zdevs/zarchiver/b;

    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->f:Lg0/h;

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->g:[Lg0/b;

    .line 9
    .line 10
    iput p4, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->h:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 9

    .line 1
    new-instance v0, Lc0/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lc0/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->g:[Lg0/b;

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    move v4, v1

    .line 11
    :goto_0
    iget-object v5, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->f:Lg0/h;

    .line 12
    .line 13
    const v6, 0x7f0c00d7

    .line 14
    .line 15
    .line 16
    if-ge v4, v3, :cond_2

    .line 17
    .line 18
    aget-object v7, v2, v4

    .line 19
    .line 20
    if-nez v7, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v8, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->h:I

    .line 24
    .line 25
    invoke-interface {v7, v5, v0, v8}, Lg0/b;->b(Lg0/h;Lc0/b;I)Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    if-eqz v8, :cond_1

    .line 30
    .line 31
    invoke-interface {v7}, Lg0/b;->d()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v2, v6

    .line 40
    :goto_2
    invoke-virtual {v0}, Lc0/b;->size()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x1

    .line 45
    if-le v3, v4, :cond_3

    .line 46
    .line 47
    iget-object v1, p0, Lru/zdevs/zarchiver/ui/FSSelect$d;->e:Lru/zdevs/zarchiver/b;

    .line 48
    .line 49
    iget v1, v1, Lru/zdevs/zarchiver/b;->h:I

    .line 50
    .line 51
    invoke-static {v1, v0}, Lg0/e;->i(ILc0/b;)V

    .line 52
    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    if-nez v3, :cond_4

    .line 56
    .line 57
    if-ne v2, v6, :cond_4

    .line 58
    .line 59
    new-instance v3, Lc0/d;

    .line 60
    .line 61
    const-string v4, ".."

    .line 62
    .line 63
    const/4 v6, 0x3

    .line 64
    invoke-direct {v3, v4, v6}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v3}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_4
    :goto_3
    new-instance v1, Lru/zdevs/zarchiver/ui/FSSelect$a;

    .line 71
    .line 72
    invoke-direct {v1, v5, v0, v2}, Lru/zdevs/zarchiver/ui/FSSelect$a;-><init>(Lg0/h;Lc0/b;I)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method
