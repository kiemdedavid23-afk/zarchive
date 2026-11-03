.class public final Lz/i0;
.super Lv0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 5

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
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ls0/a;->c()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ls0/a;->k()V

    .line 18
    .line 19
    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v3, 0x19

    .line 23
    .line 24
    if-le v2, v3, :cond_0

    .line 25
    .line 26
    sget-object v3, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    invoke-static {v4}, Ls0/a;->d(Z)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lu0/g;->a(Lru/zdevs/zarchiver/ZApp;Ljava/util/ArrayList;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    sget-object v3, Lm0/d;->a:Ljava/lang/String;

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    const/16 v3, 0x1f

    .line 46
    .line 47
    if-ge v2, v3, :cond_1

    .line 48
    .line 49
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 50
    .line 51
    sget-object v3, Lm0/d;->a:Ljava/lang/String;

    .line 52
    .line 53
    const-string v4, ".nomedia"

    .line 54
    .line 55
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method
