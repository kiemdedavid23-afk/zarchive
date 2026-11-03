.class public final Lk0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/c$c;,
        Lk0/c$b;,
        Lk0/c$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static c:Ljava/lang/Boolean;

.field public static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk0/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "_dir"

    .line 2
    .line 3
    const-string v1, "_last_mod"

    .line 4
    .line 5
    const-string v2, "_name"

    .line 6
    .line 7
    const-string v3, "_id"

    .line 8
    .line 9
    const-string v4, "_size"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lk0/c;->a:[Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, "_name"

    .line 18
    .line 19
    const-string v2, "_id"

    .line 20
    .line 21
    const-string v3, "_size"

    .line 22
    .line 23
    const-string v4, "_dir"

    .line 24
    .line 25
    const-string v5, "_last_mod"

    .line 26
    .line 27
    const-string v6, "_path"

    .line 28
    .line 29
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lk0/c;->b:[Ljava/lang/String;

    .line 34
    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    sput-object v0, Lk0/c;->c:Ljava/lang/Boolean;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lk0/c;->d:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .line 51
    .line 52
    sput-object v0, Lk0/c;->e:Ljava/util/ArrayList;

    .line 53
    .line 54
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 3
    .line 4
    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_1
    new-instance v1, Landroid/net/Uri$Builder;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "_name"

    .line 23
    .line 24
    const-string v3, "_id"

    .line 25
    .line 26
    const-string v4, "_flags"

    .line 27
    .line 28
    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v4, "get=accounts"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, p0

    .line 37
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const/4 v5, 0x2

    .line 59
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    sget-object v6, Lk0/c;->d:Ljava/util/ArrayList;

    .line 64
    .line 65
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_3

    .line 74
    .line 75
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Lk0/c$c;

    .line 80
    .line 81
    iget-object v9, v8, Lk0/c$c;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    if-eqz v9, :cond_2

    .line 88
    .line 89
    iget-object v9, v8, Lk0/c$c;->c:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_2

    .line 96
    .line 97
    iget-object v9, v8, Lk0/c$c;->a:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_2

    .line 104
    .line 105
    iput v5, v8, Lk0/c$c;->d:I

    .line 106
    .line 107
    move v7, v0

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    move v7, v2

    .line 110
    :goto_1
    if-eqz v7, :cond_1

    .line 111
    .line 112
    new-instance v7, Lk0/c$c;

    .line 113
    .line 114
    invoke-direct {v7, v3, p1, v4, v5}, Lk0/c$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    :cond_5
    invoke-static {p0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 125
    .line 126
    .line 127
    return v2

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    invoke-static {p0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 130
    .line 131
    .line 132
    throw p1

    .line 133
    :catch_0
    invoke-static {p0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 134
    .line 135
    .line 136
    return v0

    .line 137
    :catch_1
    move-exception p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    return v0
.end method

.method public static b(Landroid/content/ContentProviderClient;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public static c(Lg0/h;Lg0/h;Z)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "_account"

    .line 15
    .line 16
    iget-object v4, p0, Lg0/h;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v3, "_uri"

    .line 22
    .line 23
    invoke-static {p0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    const-string p0, "_uri_to"

    .line 31
    .line 32
    invoke-static {p1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v2, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    const-string p0, "move"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string p0, "copy"

    .line 45
    .line 46
    :goto_0
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p0, p1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-nez p0, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    :try_start_1
    const-string p1, "_ret"

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_3
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :catch_0
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 76
    .line 77
    .line 78
    return v1
.end method

.method public static d(Lg0/h;)I
    .locals 4

    .line 1
    sget-object v0, Lk0/c;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lk0/c$c;

    .line 18
    .line 19
    iget-object v2, v1, Lk0/c$c;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p0, Lg0/h;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Lg0/h;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, v1, Lk0/c$c;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget p0, v1, Lk0/c$c;->d:I

    .line 40
    .line 41
    return p0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public static e(Lg0/h;)Landroid/content/ContentProviderClient;
    .locals 2

    .line 1
    iget-object p0, p0, Lg0/h;->b:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static f(Lg0/h;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "_account"

    .line 15
    .line 16
    iget-object p0, p0, Lg0/h;->e:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "error"

    .line 22
    .line 23
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    :try_start_1
    const-string v2, "_text"

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :catch_0
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 49
    .line 50
    .line 51
    return-object v1
.end method

.method public static g(Lg0/h;)Landroid/net/Uri;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lg0/h;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lg0/h;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p0, p0, Lg0/h;->d:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lk0/c;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "ru.zdevs.zarchiver.plugin.PLUGIN_APPLICATION"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    sget-object v1, Lk0/c;->e:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 32
    .line 33
    .line 34
    sget-object v2, Lk0/c;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    mul-int/lit8 v3, v3, 0x2

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 63
    .line 64
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 65
    .line 66
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {p0, v3}, Lk0/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 75
    .line 76
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 83
    .line 84
    sput-object p0, Lk0/c;->c:Ljava/lang/Boolean;

    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public static i()Z
    .locals 7

    .line 1
    sget-object v0, Lk0/c;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    sget-object v2, Lk0/c;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    const/high16 v5, 0x100000

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lk0/c$c;

    .line 39
    .line 40
    iget v6, v4, Lk0/c$c;->d:I

    .line 41
    .line 42
    or-int/2addr v5, v6

    .line 43
    iput v5, v4, Lk0/c$c;->d:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v2, Lk0/c;->e:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v0, v4}, Lk0/c;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    sget-object v0, Lk0/c;->d:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Lk0/c$c;

    .line 89
    .line 90
    iget v2, v2, Lk0/c$c;->d:I

    .line 91
    .line 92
    invoke-static {v2, v5}, Lb/d;->K(II)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    sget-object v0, Lk0/c;->d:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eq v3, v0, :cond_6

    .line 109
    .line 110
    const/4 v1, 0x1

    .line 111
    :cond_6
    return v1
.end method
