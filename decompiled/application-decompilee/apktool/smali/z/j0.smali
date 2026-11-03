.class public final Lz/j0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lf0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lg0/h;

.field public final g:Lg0/h;

.field public final h:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf0/y;Lg0/h;Lg0/h;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lz/j0;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lz/j0;->f:Lg0/h;

    .line 12
    .line 13
    iput-object p3, p0, Lz/j0;->g:Lg0/h;

    .line 14
    .line 15
    iput-object p4, p0, Lz/j0;->h:[Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 5

    .line 1
    iget-object v0, p0, Lz/j0;->f:Lg0/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lz/j0;->h:[Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lz/j0;->g:Lg0/h;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lp0/a;->i(Lg0/h;[Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v2, v0, Lg0/h;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2}, Lb/d;->E(Ljava/lang/String;)B

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x6

    .line 22
    if-ne v2, v3, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lp0/a;->g(Lg0/h;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-class v2, Lru/zdevs/zarchiver/ZArchiver;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lp0/a;->j(Lg0/h;Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catch Lp0/a$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {}, Lru/zdevs/zarchiver/ZArchiver;->z()Lru/zdevs/zarchiver/ZArchiver;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v0, v0, Lp0/a$b;->a:Landroid/content/Intent;

    .line 44
    .line 45
    const/16 v3, 0x4b3

    .line 46
    .line 47
    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_0
    iget-object v2, p0, Lz/j0;->e:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lf0/y;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    if-eqz v2, :cond_5

    .line 61
    .line 62
    iget-object v4, v2, Lf0/i;->e:Landroid/util/SparseArray;

    .line 63
    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    move-object v4, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :goto_1
    if-ne v4, p0, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2, v1, v3}, Lf0/i;->n(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    if-nez v0, :cond_5

    .line 78
    .line 79
    invoke-virtual {v2}, Lf0/i;->e()V

    .line 80
    .line 81
    .line 82
    :cond_5
    return-object v3
.end method
