.class public final Ld0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/a$b;,
        Ld0/a$a;
    }
.end annotation


# static fields
.field public static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ld0/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static declared-synchronized a(I)Ld0/a$b;
    .locals 6

    .line 1
    const-class v0, Ld0/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld0/a;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ld0/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v2

    .line 21
    :cond_1
    :try_start_2
    sget-object v3, Ld0/a;->a:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->delete(I)V

    .line 24
    .line 25
    .line 26
    iget-object p0, v1, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object v2

    .line 36
    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    const-wide/16 v4, 0x3e8

    .line 41
    .line 42
    div-long/2addr v2, v4

    .line 43
    long-to-int p0, v2

    .line 44
    iget v2, v1, Ld0/a$b;->d:I

    .line 45
    .line 46
    sub-int/2addr p0, v2

    .line 47
    iput p0, v1, Ld0/a$b;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-object v1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0
.end method

.method public static declared-synchronized b(IZLjava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Ld0/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld0/a;->a:Landroid/util/SparseArray;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Ld0/a;->a:Landroid/util/SparseArray;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Ld0/a;->a:Landroid/util/SparseArray;

    .line 16
    .line 17
    new-instance v2, Ld0/a$b;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-direct {v2, p0, p1, p2}, Ld0/a$b;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public static declared-synchronized c(IZ)V
    .locals 3

    .line 1
    const-class v0, Ld0/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld0/a;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ld0/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
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
    iget-object v2, v1, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_6

    .line 27
    .line 28
    sget-object v2, Lb/d;->d:[I

    .line 29
    .line 30
    aget p0, v2, p0

    .line 31
    .line 32
    const/16 v2, 0xf

    .line 33
    .line 34
    invoke-static {p0, v2}, Lb/d;->K(II)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_4

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget p0, v1, Ld0/a$b;->e:I

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-static {p0, p1}, Lb/d;->K(II)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    const p0, 0x7f0c00e1

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    const p0, 0x7f0c00e7

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    :goto_0
    const p0, 0x7f0c00dc

    .line 61
    .line 62
    .line 63
    :goto_1
    sget-object p1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 64
    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    const-string p0, ""

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    sget-object p1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :goto_2
    const/4 p1, 0x0

    .line 81
    invoke-virtual {v1, p1, p0}, Ld0/a$b;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_6
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    .line 88
    throw p0
.end method

.method public static declared-synchronized d(IILjava/lang/String;)Z
    .locals 3

    .line 1
    const-class v0, Ld0/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ld0/a;->a:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ld0/a$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return v2

    .line 21
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Ld0/a$b;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit v0

    .line 29
    throw p0
.end method

.method public static e(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

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
    const/16 v2, 0xc8

    .line 8
    .line 9
    if-eq p0, v2, :cond_1

    .line 10
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    return-object v1

    .line 15
    :pswitch_0
    const p0, 0x7f0c0048

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_1
    const p0, 0x7f0c004a

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_2
    const p0, 0x7f0c00e4

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_3
    const p0, 0x7f0c004c

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :pswitch_4
    const p0, 0x7f0c0046

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :pswitch_5
    const p0, 0x7f0c0045

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :pswitch_6
    const p0, 0x7f0c0049

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_7
    const p0, 0x7f0c0047

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0

    .line 79
    :pswitch_8
    const p0, 0x7f0c004d

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_9
    const p0, 0x7f0c004b

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_a
    return-object p1

    .line 96
    :cond_1
    const p0, 0x7f0c00d7

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
