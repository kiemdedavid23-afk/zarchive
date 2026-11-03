.class public Lrikka/shizuku/ShizukuProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "content://"

    .line 2
    .line 3
    sget-boolean v1, Lrikka/shizuku/ShizukuProvider;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "request binder in non-provider process"

    .line 9
    .line 10
    const-string v2, "ShizukuProvider"

    .line 11
    .line 12
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    new-instance v1, Lrikka/shizuku/ShizukuProvider$a;

    .line 16
    .line 17
    invoke-direct {v1}, Lrikka/shizuku/ShizukuProvider$a;-><init>()V

    .line 18
    .line 19
    .line 20
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v4, 0x21

    .line 23
    .line 24
    const-string v5, "moe.shizuku.api.action.BINDER_RECEIVED"

    .line 25
    .line 26
    if-lt v3, v4, :cond_1

    .line 27
    .line 28
    new-instance v3, Landroid/content/IntentFilter;

    .line 29
    .line 30
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    .line 39
    .line 40
    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    :goto_0
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ".shizuku"

    .line 64
    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v4, "getBinder"

    .line 77
    .line 78
    new-instance v5, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :catchall_0
    if-eqz v1, :cond_2

    .line 88
    .line 89
    const-class v0, Lmoe/shizuku/api/BinderContainer;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "moe.shizuku.privileged.api.intent.extra.BINDER"

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lmoe/shizuku/api/BinderContainer;

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object v0, v0, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 109
    .line 110
    if-eqz v0, :cond_2

    .line 111
    .line 112
    const-string v1, "Binder received from other process"

    .line 113
    .line 114
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v0, p0}, Ly/a;->d(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5
    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    iget-boolean p1, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    sput-boolean p1, Lrikka/shizuku/ShizukuProvider;->b:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string p2, "android:exported must be true"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string p2, "android:multiprocess must be false"

    .line 27
    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .line 1
    const/4 p2, 0x0

    .line 2
    if-nez p3, :cond_0

    .line 3
    .line 4
    return-object p2

    .line 5
    :cond_0
    const-class v0, Lmoe/shizuku/api/BinderContainer;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v1, "sendBinder"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "moe.shizuku.privileged.api.intent.extra.BINDER"

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x0

    .line 32
    if-nez v1, :cond_4

    .line 33
    .line 34
    const-string p3, "getBinder"

    .line 35
    .line 36
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    sget-object p1, Ly/a;->a:Landroid/os/IBinder;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p3, Lmoe/shizuku/api/BinderContainer;

    .line 56
    .line 57
    invoke-direct {p3, p1}, Lmoe/shizuku/api/BinderContainer;-><init>(Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    move v3, v4

    .line 65
    :goto_1
    if-nez v3, :cond_7

    .line 66
    .line 67
    return-object p2

    .line 68
    :cond_4
    sget-object p1, Ly/a;->a:Landroid/os/IBinder;

    .line 69
    .line 70
    if-eqz p1, :cond_5

    .line 71
    .line 72
    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    move v3, v4

    .line 80
    :goto_2
    const-string p1, "ShizukuProvider"

    .line 81
    .line 82
    if-eqz v3, :cond_6

    .line 83
    .line 84
    const-string p2, "sendBinder is called when already a living binder"

    .line 85
    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_6
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    check-cast p2, Lmoe/shizuku/api/BinderContainer;

    .line 95
    .line 96
    if-eqz p2, :cond_7

    .line 97
    .line 98
    iget-object p3, p2, Lmoe/shizuku/api/BinderContainer;->a:Landroid/os/IBinder;

    .line 99
    .line 100
    if-eqz p3, :cond_7

    .line 101
    .line 102
    const-string v1, "binder received"

    .line 103
    .line 104
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-static {p3, v1}, Ly/a;->d(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget-boolean p3, Lrikka/shizuku/ShizukuProvider;->a:Z

    .line 119
    .line 120
    if-eqz p3, :cond_7

    .line 121
    .line 122
    const-string p3, "broadcast binder"

    .line 123
    .line 124
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    new-instance p1, Landroid/content/Intent;

    .line 128
    .line 129
    const-string p3, "moe.shizuku.api.action.BINDER_RECEIVED"

    .line 130
    .line 131
    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    :goto_3
    return-object v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()Z
    .locals 3

    .line 1
    sget-boolean v0, Lb/d;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lb/d;->F(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Initialize Sui: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "ShizukuProvider"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
