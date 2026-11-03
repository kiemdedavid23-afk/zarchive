.class public final Ly/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/a$f;,
        Ly/a$d;,
        Ly/a$e;,
        Ly/a$g;
    }
.end annotation


# static fields
.field public static a:Landroid/os/IBinder; = null

.field public static b:Lj/c; = null

.field public static c:Z = false

.field public static d:Z = false

.field public static final e:Ly/a$a;

.field public static final f:Ly/a$b;

.field public static final g:Ljava/util/ArrayList;

.field public static final h:Ljava/util/ArrayList;

.field public static final i:Ljava/util/ArrayList;

.field public static final j:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Ly/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ly/a;->e:Ly/a$a;

    .line 7
    .line 8
    new-instance v0, Ly/a$b;

    .line 9
    .line 10
    invoke-direct {v0}, Ly/a$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ly/a;->f:Ly/a$b;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ly/a;->g:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Ly/a;->h:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Ly/a;->i:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance v0, Landroid/os/Handler;

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Ly/a;->j:Landroid/os/Handler;

    .line 46
    .line 47
    return-void
.end method

.method public static a(Ly/a$g;)V
    .locals 3

    .line 1
    sget-object v0, Ly/a;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ly/a;->i:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance v2, Ly/a$d;

    .line 7
    .line 8
    invoke-direct {v2, p0}, Ly/a$d;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public static b(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    const-string v2, "moe.shizuku.server.IShizukuService"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Ly/a;->e:Ly/a$a;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 p1, 0xe

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method public static c(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "shizuku:attach-api-version"

    .line 7
    .line 8
    const/16 v2, 0xd

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    const-string v1, "shizuku:attach-package-name"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :try_start_0
    const-string v2, "moe.shizuku.server.IShizukuService"

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Ly/a;->e:Ly/a$a;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x12

    .line 48
    .line 49
    invoke-interface {p0, v0, p1, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 60
    .line 61
    .line 62
    return p0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 68
    .line 69
    .line 70
    throw p0
.end method

.method public static d(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ly/a;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    if-ne v0, p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p0, :cond_3

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    sput-object p0, Ly/a;->a:Landroid/os/IBinder;

    .line 10
    .line 11
    sput-object p0, Ly/a;->b:Lj/c;

    .line 12
    .line 13
    sget-object v1, Ly/a;->g:Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    sget-object p0, Ly/a;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ly/a$d;

    .line 33
    .line 34
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    iget-object p1, p1, Ly/a$d;->a:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ly/a$e;

    .line 47
    .line 48
    invoke-interface {p1}, Ly/a$e;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Ly/a;->j:Landroid/os/Handler;

    .line 53
    .line 54
    new-instance v2, Ly/b;

    .line 55
    .line 56
    invoke-direct {v2, p1}, Ly/b;-><init>(Ly/a$d;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    monitor-exit v1

    .line 64
    goto :goto_4

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    sget-object v2, Ly/a;->f:Ly/a$b;

    .line 72
    .line 73
    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 74
    .line 75
    .line 76
    :cond_4
    sput-object p0, Ly/a;->a:Landroid/os/IBinder;

    .line 77
    .line 78
    sget v0, Lj/c$a;->a:I

    .line 79
    .line 80
    const-string v0, "moe.shizuku.server.IShizukuService"

    .line 81
    .line 82
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    instance-of v2, v0, Lj/c;

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    check-cast v0, Lj/c;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    new-instance v0, Lj/c$a$a;

    .line 96
    .line 97
    invoke-direct {v0, p0}, Lj/c$a$a;-><init>(Landroid/os/IBinder;)V

    .line 98
    .line 99
    .line 100
    :goto_1
    sput-object v0, Ly/a;->b:Lj/c;

    .line 101
    .line 102
    :try_start_1
    sget-object p0, Ly/a;->a:Landroid/os/IBinder;

    .line 103
    .line 104
    sget-object v0, Ly/a;->f:Ly/a$b;

    .line 105
    .line 106
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catchall_1
    const-string p0, "ShizukuApplication"

    .line 111
    .line 112
    const-string v0, "attachApplication"

    .line 113
    .line 114
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :goto_2
    :try_start_2
    sget-object p0, Ly/a;->a:Landroid/os/IBinder;

    .line 118
    .line 119
    invoke-static {p0, p1}, Ly/a;->c(Landroid/os/IBinder;Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-nez p0, :cond_6

    .line 124
    .line 125
    sget-object p0, Ly/a;->a:Landroid/os/IBinder;

    .line 126
    .line 127
    invoke-static {p0, p1}, Ly/a;->b(Landroid/os/IBinder;Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    if-nez p0, :cond_6

    .line 132
    .line 133
    const/4 p0, 0x1

    .line 134
    sput-boolean p0, Ly/a;->d:Z

    .line 135
    .line 136
    :cond_6
    const-string p0, "ShizukuApplication"

    .line 137
    .line 138
    const-string p1, "attachApplication"

    .line 139
    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catchall_2
    move-exception p0

    .line 145
    const-string p1, "ShizukuApplication"

    .line 146
    .line 147
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :goto_3
    sget-boolean p0, Ly/a;->d:Z

    .line 155
    .line 156
    if-eqz p0, :cond_7

    .line 157
    .line 158
    invoke-static {}, Ly/a;->e()V

    .line 159
    .line 160
    .line 161
    :cond_7
    :goto_4
    return-void
.end method

.method public static e()V
    .locals 5

    .line 1
    sget-object v0, Ly/a;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ly/a$d;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    iget-object v2, v2, Ly/a$d;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ly/a$f;

    .line 33
    .line 34
    invoke-interface {v2}, Ly/a$f;->a()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v3, Ly/a;->j:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v4, Ly/a$c;

    .line 41
    .line 42
    invoke-direct {v4, v2}, Ly/a$c;-><init>(Ly/a$d;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v1
.end method
