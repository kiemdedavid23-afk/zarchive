.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/c$a;,
        Lw0/c$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw0/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lw0/c;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lw0/c;->b:Ljava/util/HashSet;

    .line 16
    .line 17
    sput-boolean v1, Lw0/c;->c:Z

    .line 18
    .line 19
    return-void
.end method

.method public static declared-synchronized a(Landroid/net/Uri;)V
    .locals 3

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lw0/c;->b:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "%3A"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const/16 v1, 0x3a

    .line 30
    .line 31
    invoke-static {p0, v1}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    array-length v1, p0

    .line 36
    if-lez v1, :cond_0

    .line 37
    .line 38
    aget-object p0, p0, v2

    .line 39
    .line 40
    invoke-static {p0}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    iget v1, p0, Lw0/c$a;->f:I

    .line 47
    .line 48
    and-int/lit16 v1, v1, -0x6001

    .line 49
    .line 50
    or-int/lit8 v1, v1, 0x8

    .line 51
    .line 52
    iput v1, p0, Lw0/c$a;->f:I

    .line 53
    .line 54
    :cond_0
    sput-boolean v2, Lw0/c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    :cond_1
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0

    .line 60
    throw p0
.end method

.method public static declared-synchronized b(Landroid/os/storage/StorageVolume;)V
    .locals 6

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/16 v2, 0x1e

    .line 7
    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_2
    :try_start_3
    new-instance v2, Lw0/c$a;

    .line 33
    .line 34
    const-string v3, "/mnt/media_rw"

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x2

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    move v3, v4

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-direct {v2, v1, v3, v5}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget v1, v2, Lw0/c$a;->f:I

    .line 60
    .line 61
    or-int/2addr v1, v4

    .line 62
    iput v1, v2, Lw0/c$a;->f:I

    .line 63
    .line 64
    :cond_4
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const-class v1, Landroid/os/storage/StorageVolume;

    .line 70
    .line 71
    const-string v3, "getUserLabel"

    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    new-array v5, v4, [Ljava/lang/Class;

    .line 75
    .line 76
    invoke-static {v1, v3, v5}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    new-array v3, v4, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    check-cast p0, Ljava/lang/String;

    .line 89
    .line 90
    iput-object p0, v2, Lw0/c$a;->a:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .line 92
    :catch_0
    :cond_5
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit v0

    .line 96
    throw p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lw0/c;->b:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lw0/c;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0

    .line 21
    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-string v0, "Found "

    .line 2
    .line 3
    const-class v1, Lw0/c;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    const/4 v2, 0x1

    .line 7
    :try_start_0
    sput-boolean v2, Lw0/c;->c:Z

    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 19
    :cond_0
    const/16 v3, 0x18

    .line 20
    .line 21
    if-ge v2, v3, :cond_1

    .line 22
    .line 23
    :try_start_1
    invoke-static {p0}, Lw0/c;->m(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lw0/c;->n(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p0}, Lw0/c;->o(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-static {p0}, Lw0/c;->l(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lw0/c;->s(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "StorageList"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lw0/c;->a:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, " storage"

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    monitor-exit v1

    .line 71
    throw p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)Lw0/c$a;
    .locals 5

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v2, Lw0/c;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    invoke-static {v1}, Lw0/c;->d(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_3

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lw0/c$a;

    .line 35
    .line 36
    iget-object v4, v3, Lw0/c$a;->b:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-object v3

    .line 46
    :cond_3
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz p0, :cond_4

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return-object v1

    .line 63
    :cond_4
    :try_start_2
    sget-object p0, Lw0/c;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lw0/c$a;

    .line 80
    .line 81
    iget-object v4, v3, Lw0/c$a;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    if-eqz v4, :cond_5

    .line 88
    .line 89
    monitor-exit v0

    .line 90
    return-object v3

    .line 91
    :catch_0
    :cond_6
    monitor-exit v0

    .line 92
    return-object v1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v0

    .line 95
    throw p0
.end method

.method public static declared-synchronized f(Ljava/lang/String;)Lw0/c$a;
    .locals 5

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v2, "primary"

    .line 10
    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    sget-object p0, Lw0/c;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_4

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lw0/c$a;

    .line 34
    .line 35
    invoke-virtual {v2}, Lw0/c$a;->e()Z

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-object v2

    .line 43
    :cond_2
    :try_start_1
    sget-object v2, Lw0/c;->a:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lw0/c$a;

    .line 60
    .line 61
    iget-object v4, v3, Lw0/c$a;->c:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-object v3

    .line 71
    :cond_4
    monitor-exit v0

    .line 72
    return-object v1

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0

    .line 75
    throw p0
.end method

.method public static declared-synchronized g(Ljava/lang/String;)Lw0/c$a;
    .locals 5

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v2, Lw0/c;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lw0/c$a;

    .line 26
    .line 27
    iget-object v4, v3, Lw0/c$a;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-object v3

    .line 37
    :cond_2
    monitor-exit v0

    .line 38
    return-object v1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0

    .line 41
    throw p0
.end method

.method public static h(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "/dev/block/vold/public"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x3a

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/lit8 v3, v3, -0x1

    .line 19
    .line 20
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    :try_start_0
    new-instance v0, Ljava/util/Scanner;

    .line 38
    .line 39
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    const-string v3, "/proc/mounts"

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    const/16 v3, 0x3e8

    .line 57
    .line 58
    if-ge v2, v3, :cond_1

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/4 v0, 0x0

    .line 84
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_7

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    const-string v2, "/mnt/media_rw/"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-gez v2, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    add-int/lit8 v2, v2, 0xe

    .line 112
    .line 113
    const/16 v0, 0x20

    .line 114
    .line 115
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-gez v0, :cond_5

    .line 120
    .line 121
    const/16 v0, 0x9

    .line 122
    .line 123
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :cond_5
    if-gez v0, :cond_6

    .line 128
    .line 129
    add-int/lit8 v0, v2, 0x9

    .line 130
    .line 131
    :cond_6
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    goto :goto_1

    .line 136
    :cond_7
    :goto_2
    return-object v0
.end method

.method public static declared-synchronized i()Lw0/c$a;
    .locals 5

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lw0/c$a;

    .line 21
    .line 22
    invoke-virtual {v2}, Lw0/c$a;->e()Z

    .line 23
    .line 24
    .line 25
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :cond_1
    :try_start_1
    new-instance v1, Lw0/c$a;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "primary"

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v1, v2, v4, v3}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0

    .line 50
    throw v1
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    const-string v0, "/SAF"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lru/zdevs/zarchiver/io/SAF;->g(Ljava/lang/String;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    aget-object v2, v1, v2

    .line 21
    .line 22
    invoke-static {v2}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    const/16 v3, 0x2f

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v4, v2, Lw0/c$a;->f:I

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    invoke-static {v4, v5}, Lb/d;->K(II)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget-object v2, v2, Lw0/c$a;->b:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    const-string v4, "/mnt/media_rw"

    .line 48
    .line 49
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_3
    const/4 v0, 0x1

    .line 54
    aget-object v4, v1, v0

    .line 55
    .line 56
    if-eqz v4, :cond_4

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "/"

    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    aget-object v0, v1, v0

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    :cond_4
    const/4 v0, -0x1

    .line 81
    if-eq v3, v0, :cond_5

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :cond_5
    return-object v2

    .line 103
    :cond_6
    :goto_0
    return-object p0
.end method

.method public static declared-synchronized k()Ljava/util/ArrayList;
    .locals 3

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v2}, Lw0/c;->d(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public static l(Landroid/content/Context;)V
    .locals 13

    .line 1
    :try_start_0
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v0, "android.os.storage.DiskInfo"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "getDisks"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    new-array v4, v3, [Ljava/lang/Class;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "getId"

    .line 32
    .line 33
    new-array v4, v3, [Ljava/lang/Class;

    .line 34
    .line 35
    invoke-static {v0, v2, v4}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v4, "isUsb"

    .line 40
    .line 41
    new-array v5, v3, [Ljava/lang/Class;

    .line 42
    .line 43
    invoke-static {v0, v4, v5}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v5, "label"

    .line 48
    .line 49
    invoke-static {v0, v5}, Lb/d;->t(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v2, :cond_d

    .line 54
    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    new-array v5, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/List;

    .line 66
    .line 67
    if-nez p0, :cond_2

    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v5, 0x0

    .line 75
    move v6, v3

    .line 76
    :goto_0
    if-ge v6, v1, :cond_d

    .line 77
    .line 78
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    if-nez v7, :cond_3

    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_3
    new-array v8, v3, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    check-cast v8, Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v8, :cond_c

    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    if-nez v8, :cond_4

    .line 101
    .line 102
    goto/16 :goto_4

    .line 103
    .line 104
    :cond_4
    new-array v8, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    check-cast v8, Ljava/lang/String;

    .line 111
    .line 112
    if-nez v8, :cond_5

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_5
    if-nez v5, :cond_6

    .line 117
    .line 118
    new-instance v5, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    :cond_6
    invoke-static {v8, v5}, Lw0/c;->h(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v8}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_7

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :cond_7
    invoke-static {v8}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    const/4 v10, 0x4

    .line 140
    if-nez v9, :cond_a

    .line 141
    .line 142
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    const/16 v11, 0x1e

    .line 145
    .line 146
    const-string v12, "/mnt/media_rw/"

    .line 147
    .line 148
    if-lt v9, v11, :cond_8

    .line 149
    .line 150
    :try_start_1
    new-instance v9, Ljava/io/File;

    .line 151
    .line 152
    new-instance v11, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    goto :goto_1

    .line 175
    :cond_8
    move v9, v3

    .line 176
    :goto_1
    if-eqz v9, :cond_9

    .line 177
    .line 178
    new-instance v9, Lw0/c$a;

    .line 179
    .line 180
    new-instance v11, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-direct {v9, v11, v10, v8}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_9
    new-instance v9, Lw0/c$a;

    .line 200
    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v12, "/SAF/"

    .line 207
    .line 208
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    invoke-direct {v9, v11, v10, v8}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget v8, v9, Lw0/c$a;->f:I

    .line 222
    .line 223
    or-int/2addr v8, v10

    .line 224
    iput v8, v9, Lw0/c$a;->f:I

    .line 225
    .line 226
    :goto_2
    sget-object v8, Lw0/c;->a:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_a
    iput-byte v10, v9, Lw0/c$a;->d:B

    .line 233
    .line 234
    iget v8, v9, Lw0/c$a;->f:I

    .line 235
    .line 236
    or-int/lit16 v8, v8, 0x1000

    .line 237
    .line 238
    iput v8, v9, Lw0/c$a;->f:I

    .line 239
    .line 240
    :goto_3
    iget-object v8, v9, Lw0/c$a;->a:Ljava/lang/String;

    .line 241
    .line 242
    if-nez v8, :cond_b

    .line 243
    .line 244
    if-eqz v0, :cond_b

    .line 245
    .line 246
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    check-cast v7, Ljava/lang/String;

    .line 251
    .line 252
    iput-object v7, v9, Lw0/c$a;->a:Ljava/lang/String;

    .line 253
    .line 254
    :cond_b
    iget v7, v9, Lw0/c$a;->f:I

    .line 255
    .line 256
    or-int/lit8 v7, v7, 0x2

    .line 257
    .line 258
    iput v7, v9, Lw0/c$a;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    .line 260
    :cond_c
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :catch_0
    :cond_d
    :goto_5
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    array-length v1, p0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_5

    .line 20
    .line 21
    aget-object v4, p0, v3

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "/Android"

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-lez v5, :cond_2

    .line 37
    .line 38
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_2
    invoke-static {v4}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    if-nez v5, :cond_4

    .line 47
    .line 48
    new-instance v5, Lw0/c$a;

    .line 49
    .line 50
    const/4 v6, 0x2

    .line 51
    invoke-direct {v5, v4, v6, v0}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sget-object v7, Lw0/c;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :try_start_1
    new-instance v7, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v7}, Landroid/os/Environment;->isExternalStorageRemovable(Ljava/io/File;)Z

    .line 65
    .line 66
    .line 67
    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v8, "Bad path: "

    .line 75
    .line 76
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const-string v7, "StorageList"

    .line 87
    .line 88
    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_1
    iput-byte v6, v5, Lw0/c$a;->d:B

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    iget v4, v5, Lw0/c$a;->f:I

    .line 95
    .line 96
    or-int/lit16 v4, v4, 0x1000

    .line 97
    .line 98
    iput v4, v5, Lw0/c$a;->f:I

    .line 99
    .line 100
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_5
    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 16

    .line 1
    :try_start_0
    const-string v0, "storage"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "android.os.storage.StorageVolume"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-object v1, v2

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "getVolumeList"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    new-array v6, v5, [Ljava/lang/Class;

    .line 34
    .line 35
    invoke-static {v3, v4, v6}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "getPath"

    .line 40
    .line 41
    new-array v6, v5, [Ljava/lang/Class;

    .line 42
    .line 43
    invoke-static {v1, v4, v6}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-string v6, "getUuid"

    .line 48
    .line 49
    new-array v7, v5, [Ljava/lang/Class;

    .line 50
    .line 51
    invoke-static {v1, v6, v7}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v7, "getState"

    .line 56
    .line 57
    new-array v8, v5, [Ljava/lang/Class;

    .line 58
    .line 59
    invoke-static {v1, v7, v8}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const-string v8, "isPrimary"

    .line 64
    .line 65
    new-array v9, v5, [Ljava/lang/Class;

    .line 66
    .line 67
    invoke-static {v1, v8, v9}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    const-string v9, "isRemovable"

    .line 72
    .line 73
    new-array v10, v5, [Ljava/lang/Class;

    .line 74
    .line 75
    invoke-static {v1, v9, v10}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    const-string v10, "getUserLabel"

    .line 80
    .line 81
    new-array v11, v5, [Ljava/lang/Class;

    .line 82
    .line 83
    invoke-static {v1, v10, v11}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v3, :cond_10

    .line 88
    .line 89
    if-nez v4, :cond_2

    .line 90
    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_2
    new-array v10, v5, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {v3, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    return-void

    .line 102
    :cond_3
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    move v10, v5

    .line 107
    :goto_1
    if-ge v10, v3, :cond_10

    .line 108
    .line 109
    invoke-static {v0, v10}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    if-nez v11, :cond_4

    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_4
    if-eqz v7, :cond_5

    .line 118
    .line 119
    new-array v12, v5, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-virtual {v7, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    check-cast v12, Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v12, :cond_5

    .line 128
    .line 129
    const-string v13, "mounted"

    .line 130
    .line 131
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    if-nez v13, :cond_5

    .line 136
    .line 137
    const-string v13, "mounted_ro"

    .line 138
    .line 139
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-nez v12, :cond_5

    .line 144
    .line 145
    goto/16 :goto_5

    .line 146
    .line 147
    :cond_5
    new-array v12, v5, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    check-cast v12, Ljava/lang/String;

    .line 154
    .line 155
    if-nez v12, :cond_6

    .line 156
    .line 157
    goto/16 :goto_5

    .line 158
    .line 159
    :cond_6
    if-eqz v9, :cond_7

    .line 160
    .line 161
    new-array v15, v5, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-virtual {v9, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v15

    .line 167
    check-cast v15, Ljava/lang/Boolean;

    .line 168
    .line 169
    if-eqz v15, :cond_7

    .line 170
    .line 171
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    if-nez v15, :cond_7

    .line 176
    .line 177
    const/4 v15, 0x1

    .line 178
    goto :goto_2

    .line 179
    :cond_7
    const/4 v15, 0x2

    .line 180
    :goto_2
    invoke-static {v12}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 181
    .line 182
    .line 183
    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    sget-object v14, Lw0/c;->a:Ljava/util/ArrayList;

    .line 185
    .line 186
    if-nez v13, :cond_8

    .line 187
    .line 188
    :try_start_3
    new-instance v13, Lw0/c$a;

    .line 189
    .line 190
    invoke-direct {v13, v12, v15, v2}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_8
    iget v12, v13, Lw0/c$a;->f:I

    .line 198
    .line 199
    or-int/lit16 v12, v12, 0x1000

    .line 200
    .line 201
    iput v12, v13, Lw0/c$a;->f:I

    .line 202
    .line 203
    iget-object v12, v13, Lw0/c$a;->e:Ljava/lang/Object;

    .line 204
    .line 205
    if-eqz v12, :cond_9

    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_9
    :goto_3
    iget-object v12, v13, Lw0/c$a;->c:Ljava/lang/String;

    .line 209
    .line 210
    if-nez v12, :cond_a

    .line 211
    .line 212
    if-eqz v6, :cond_a

    .line 213
    .line 214
    new-array v12, v5, [Ljava/lang/Object;

    .line 215
    .line 216
    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    check-cast v12, Ljava/lang/String;

    .line 221
    .line 222
    iput-object v12, v13, Lw0/c$a;->c:Ljava/lang/String;

    .line 223
    .line 224
    :cond_a
    const/4 v12, 0x2

    .line 225
    if-ne v15, v12, :cond_b

    .line 226
    .line 227
    iget v15, v13, Lw0/c$a;->f:I

    .line 228
    .line 229
    or-int/2addr v12, v15

    .line 230
    iput v12, v13, Lw0/c$a;->f:I

    .line 231
    .line 232
    :cond_b
    if-eqz v1, :cond_c

    .line 233
    .line 234
    new-array v12, v5, [Ljava/lang/Object;

    .line 235
    .line 236
    invoke-virtual {v1, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    check-cast v12, Ljava/lang/String;

    .line 241
    .line 242
    iput-object v12, v13, Lw0/c$a;->a:Ljava/lang/String;

    .line 243
    .line 244
    :cond_c
    iput-object v11, v13, Lw0/c$a;->e:Ljava/lang/Object;

    .line 245
    .line 246
    if-eqz v8, :cond_f

    .line 247
    .line 248
    invoke-virtual {v13}, Lw0/c$a;->e()Z

    .line 249
    .line 250
    .line 251
    move-result v12

    .line 252
    if-nez v12, :cond_f

    .line 253
    .line 254
    new-array v12, v5, [Ljava/lang/Object;

    .line 255
    .line 256
    invoke-virtual {v8, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v11

    .line 260
    check-cast v11, Ljava/lang/Boolean;

    .line 261
    .line 262
    if-eqz v11, :cond_f

    .line 263
    .line 264
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    if-eqz v11, :cond_f

    .line 269
    .line 270
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    :cond_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 275
    .line 276
    .line 277
    move-result v12

    .line 278
    if-eqz v12, :cond_e

    .line 279
    .line 280
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v12

    .line 284
    check-cast v12, Lw0/c$a;

    .line 285
    .line 286
    invoke-virtual {v12}, Lw0/c$a;->e()Z

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    if-eqz v12, :cond_d

    .line 291
    .line 292
    move v11, v5

    .line 293
    goto :goto_4

    .line 294
    :cond_e
    const/4 v11, 0x1

    .line 295
    :goto_4
    if-eqz v11, :cond_f

    .line 296
    .line 297
    iget v11, v13, Lw0/c$a;->f:I

    .line 298
    .line 299
    const/4 v12, 0x1

    .line 300
    or-int/2addr v11, v12

    .line 301
    iput v11, v13, Lw0/c$a;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 302
    .line 303
    :cond_f
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 304
    .line 305
    goto/16 :goto_1

    .line 306
    .line 307
    :catch_1
    :cond_10
    :goto_6
    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 13

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1e

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    const-class v0, Landroid/os/storage/StorageVolume;

    .line 9
    .line 10
    const-string v3, "getPath"

    .line 11
    .line 12
    new-array v4, v1, [Ljava/lang/Class;

    .line 13
    .line 14
    invoke-static {v0, v3, v4}, Lb/d;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :cond_1
    const-string v3, "storage"

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/storage/StorageManager;

    .line 29
    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_12

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroid/os/storage/StorageVolume;

    .line 52
    .line 53
    if-nez v4, :cond_4

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    const-string v6, "mounted"

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-nez v6, :cond_5

    .line 69
    .line 70
    const-string v6, "mounted_ro"

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .line 81
    if-lt v5, v2, :cond_7

    .line 82
    .line 83
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getDirectory()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    if-nez v6, :cond_6

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    goto :goto_1

    .line 95
    :cond_7
    new-array v6, v1, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {v0, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ljava/lang/String;

    .line 102
    .line 103
    :goto_1
    if-nez v6, :cond_8

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_8
    const-string v7, "/mnt/media_rw"

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    const/4 v8, 0x1

    .line 113
    const/4 v9, 0x2

    .line 114
    if-eqz v7, :cond_b

    .line 115
    .line 116
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    const/4 v10, 0x4

    .line 121
    if-eqz v7, :cond_9

    .line 122
    .line 123
    const-string v11, "SD"

    .line 124
    .line 125
    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_9

    .line 130
    .line 131
    move v7, v9

    .line 132
    goto :goto_2

    .line 133
    :cond_9
    move v7, v10

    .line 134
    :goto_2
    if-lt v5, v2, :cond_a

    .line 135
    .line 136
    sget v5, Landroid/system/OsConstants;->R_OK:I

    .line 137
    .line 138
    invoke-static {v6, v5}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_a

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v6, "/SAF/"

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    goto :goto_4

    .line 167
    :cond_b
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_c

    .line 172
    .line 173
    move v7, v9

    .line 174
    goto :goto_3

    .line 175
    :cond_c
    move v7, v8

    .line 176
    :goto_3
    move v10, v1

    .line 177
    :goto_4
    invoke-static {v6}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 178
    .line 179
    .line 180
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    sget-object v11, Lw0/c;->a:Ljava/util/ArrayList;

    .line 182
    .line 183
    if-nez v5, :cond_d

    .line 184
    .line 185
    :try_start_1
    new-instance v5, Lw0/c$a;

    .line 186
    .line 187
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v12

    .line 191
    invoke-direct {v5, v6, v7, v12}, Lw0/c$a;-><init>(Ljava/lang/String;BLjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget v6, v5, Lw0/c$a;->f:I

    .line 195
    .line 196
    or-int/2addr v6, v10

    .line 197
    iput v6, v5, Lw0/c$a;->f:I

    .line 198
    .line 199
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_d
    iget v6, v5, Lw0/c$a;->f:I

    .line 204
    .line 205
    or-int/lit16 v6, v6, 0x1000

    .line 206
    .line 207
    iput v6, v5, Lw0/c$a;->f:I

    .line 208
    .line 209
    iget-object v6, v5, Lw0/c$a;->e:Ljava/lang/Object;

    .line 210
    .line 211
    if-eqz v6, :cond_e

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_e
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    iput-object v6, v5, Lw0/c$a;->c:Ljava/lang/String;

    .line 220
    .line 221
    :goto_5
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_f

    .line 226
    .line 227
    iget v6, v5, Lw0/c$a;->f:I

    .line 228
    .line 229
    or-int/2addr v6, v9

    .line 230
    iput v6, v5, Lw0/c$a;->f:I

    .line 231
    .line 232
    :cond_f
    iput-object v4, v5, Lw0/c$a;->e:Ljava/lang/Object;

    .line 233
    .line 234
    invoke-virtual {v4, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    iput-object v6, v5, Lw0/c$a;->a:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    .line 241
    .line 242
    .line 243
    move-result v4

    .line 244
    if-eqz v4, :cond_3

    .line 245
    .line 246
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-eqz v6, :cond_11

    .line 255
    .line 256
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    check-cast v6, Lw0/c$a;

    .line 261
    .line 262
    invoke-virtual {v6}, Lw0/c$a;->e()Z

    .line 263
    .line 264
    .line 265
    move-result v6

    .line 266
    if-eqz v6, :cond_10

    .line 267
    .line 268
    move v4, v1

    .line 269
    goto :goto_6

    .line 270
    :cond_11
    move v4, v8

    .line 271
    :goto_6
    if-eqz v4, :cond_3

    .line 272
    .line 273
    iget v4, v5, Lw0/c$a;->f:I

    .line 274
    .line 275
    or-int/2addr v4, v8

    .line 276
    iput v4, v5, Lw0/c$a;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :catch_0
    :cond_12
    return-void
.end method

.method public static declared-synchronized p(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lw0/c$a;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lw0/c$a;

    .line 25
    .line 26
    iget v4, v3, Lw0/c$a;->f:I

    .line 27
    .line 28
    and-int/lit16 v4, v4, -0x1001

    .line 29
    .line 30
    iput v4, v3, Lw0/c$a;->f:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    invoke-static {v1}, Lw0/c;->d(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lw0/c$a;

    .line 54
    .line 55
    iget v4, v3, Lw0/c$a;->f:I

    .line 56
    .line 57
    const/16 v5, 0x1000

    .line 58
    .line 59
    invoke-static {v4, v5}, Lb/d;->K(II)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_2

    .line 64
    .line 65
    if-eqz p0, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget v4, v3, Lw0/c$a;->f:I

    .line 75
    .line 76
    and-int/lit16 v4, v4, -0x1001

    .line 77
    .line 78
    iput v4, v3, Lw0/c$a;->f:I

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    sget-object p0, Lw0/c;->a:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    if-eq v2, p0, :cond_4

    .line 88
    .line 89
    const/4 p0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    const/4 p0, 0x0

    .line 92
    :goto_2
    monitor-exit v0

    .line 93
    return p0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    monitor-exit v0

    .line 96
    throw p0
.end method

.method public static declared-synchronized q(Landroid/os/storage/StorageVolume;)Lw0/c$a;
    .locals 2

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-static {p0}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    sget-object v1, Lw0/c;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    .line 29
    throw p0
.end method

.method public static r(Landroid/content/Context;Lru/zdevs/zarchiver/a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lw0/c$b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    if-lt v0, v1, :cond_1

    .line 11
    .line 12
    const-string v0, "storage"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroid/os/storage/StorageManager;

    .line 19
    .line 20
    iget-object v0, p1, Lw0/c$b;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/os/storage/StorageManager$StorageVolumeCallback;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->unregisterStorageVolumeCallback(Landroid/os/storage/StorageManager$StorageVolumeCallback;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-object v0, p1, Lw0/c$b;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroid/database/ContentObserver;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    iput-object p0, p1, Lw0/c$b;->a:Ljava/lang/Object;

    .line 41
    .line 42
    return-void
.end method

.method public static declared-synchronized s(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lw0/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lw0/c;->b:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sput-boolean v1, Lw0/c;->c:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/content/UriPermission;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-static {v3}, Lw0/c;->a(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit v0

    .line 49
    throw p0
.end method
