.class public final Lj0/b;
.super Lg0/f;
.source "SourceFile"


# instance fields
.field public b:Lk0/c$b;


# direct methods
.method public constructor <init>(Lg0/h;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lg0/f;-><init>(Lg0/h;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lj0/b;->b:Lk0/c$b;

    return-void
.end method

.method public constructor <init>(Lg0/h;Lk0/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg0/f;-><init>(Lg0/h;)V

    .line 2
    iput-object p2, p0, Lj0/b;->b:Lk0/c$b;

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lj0/b;->b:Lk0/c$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 8
    .line 9
    invoke-static {v0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    .line 12
    move-result-object v9

    .line 13
    const/4 v10, 0x0

    .line 14
    if-nez v9, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    :try_start_0
    invoke-static {v0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v5, Lk0/c;->a:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v6, "get=file"

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    move-object v3, v9

    .line 28
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    new-instance v3, Lk0/c$b;

    .line 41
    .line 42
    invoke-direct {v3}, Lk0/c$b;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, v3, Lk0/c$b;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iput-object v4, v3, Lk0/c$b;->b:Ljava/lang/String;

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ne v4, v1, :cond_1

    .line 63
    .line 64
    move v4, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v4, v2

    .line 67
    :goto_0
    iput-boolean v4, v3, Lk0/c$b;->c:Z

    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    iput-wide v4, v3, Lk0/c$b;->d:J

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    iput-wide v4, v3, Lk0/c$b;->e:J

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v3, v10

    .line 85
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    move-object v10, v3

    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    invoke-static {v9}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :catch_0
    :cond_3
    :goto_2
    invoke-static {v9}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 96
    .line 97
    .line 98
    :goto_3
    iput-object v10, p0, Lj0/b;->b:Lk0/c$b;

    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Lj0/b;->b:Lk0/c$b;

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_5
    move v1, v2

    .line 106
    :goto_4
    return v1
.end method

.method public final a(Lg0/h;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p1, Lg0/h;->e:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, p0, Lg0/f;->a:Lg0/h;

    .line 11
    .line 12
    iget-object v3, v2, Lg0/h;->e:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v2, p1, v1}, Lk0/c;->c(Lg0/h;Lg0/h;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    return v1
.end method

.method public final b(Ljava/lang/String;)Lg0/h;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "_account"

    .line 17
    .line 18
    iget-object v5, v0, Lg0/h;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "_uri"

    .line 24
    .line 25
    invoke-static {v0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "remove"

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v1, v0, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "_ret"

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :catch_0
    :cond_2
    :goto_0
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 58
    .line 59
    .line 60
    :goto_1
    return v2
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lj0/b;->A()Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    invoke-static {v0}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Z
    .locals 1

    invoke-virtual {p0}, Lj0/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b;->b:Lk0/c$b;

    iget-boolean v0, v0, Lk0/c$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    invoke-virtual {p0}, Lj0/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj0/b;->b:Lk0/c$b;

    iget-boolean v0, v0, Lk0/c$b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj0/b;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lj0/b;->b:Lk0/c$b;

    .line 8
    .line 9
    iget-wide v0, v0, Lk0/c$b;->d:J

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public final o()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj0/b;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lj0/b;->b:Lk0/c$b;

    .line 8
    .line 9
    iget-wide v0, v0, Lk0/c$b;->e:J

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public final p()[Lg0/f;
    .locals 11

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v9, 0x0

    .line 9
    if-nez v7, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-static {v0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lk0/c;->a:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "get=list"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v1, v7

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    new-instance v2, Lk0/c$b;

    .line 48
    .line 49
    invoke-direct {v2}, Lk0/c$b;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, v2, Lk0/c$b;->a:Ljava/lang/String;

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    iput-object v4, v2, Lk0/c$b;->b:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ne v4, v3, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v3, v8

    .line 74
    :goto_1
    iput-boolean v3, v2, Lk0/c$b;->c:Z

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    iput-wide v3, v2, Lk0/c$b;->d:J

    .line 82
    .line 83
    const/4 v3, 0x2

    .line 84
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v3

    .line 88
    iput-wide v3, v2, Lk0/c$b;->e:J

    .line 89
    .line 90
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-static {v7}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 98
    .line 99
    .line 100
    move-object v9, v10

    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    invoke-static {v7}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :catch_0
    invoke-static {v7}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    if-nez v9, :cond_4

    .line 111
    .line 112
    new-array v0, v8, [Lg0/f;

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    new-array v1, v1, [Lg0/f;

    .line 120
    .line 121
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lk0/c$b;

    .line 136
    .line 137
    new-instance v4, Lg0/h;

    .line 138
    .line 139
    iget-object v5, v3, Lk0/c$b;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-direct {v4, v5, v0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 142
    .line 143
    .line 144
    iget-object v5, v3, Lk0/c$b;->b:Ljava/lang/String;

    .line 145
    .line 146
    iput-object v5, v4, Lg0/h;->d:Ljava/lang/String;

    .line 147
    .line 148
    add-int/lit8 v5, v8, 0x1

    .line 149
    .line 150
    new-instance v6, Lj0/b;

    .line 151
    .line 152
    invoke-direct {v6, v4, v3}, Lj0/b;-><init>(Lg0/h;Lk0/c$b;)V

    .line 153
    .line 154
    .line 155
    aput-object v6, v1, v8

    .line 156
    .line 157
    move v8, v5

    .line 158
    goto :goto_3

    .line 159
    :cond_5
    return-object v1
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "_account"

    .line 17
    .line 18
    iget-object v5, v0, Lg0/h;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "_uri"

    .line 24
    .line 25
    invoke-static {v0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "_name"

    .line 33
    .line 34
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "mkdir"

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v1, p1, v0, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "_ret"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catch_0
    :cond_2
    :goto_0
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return v2
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final t(Lg0/h;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lg0/h;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lg0/f;->a:Lg0/h;

    .line 10
    .line 11
    iget-object v2, v1, Lg0/h;->e:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    invoke-static {v1, p1, v0}, Lk0/c;->c(Lg0/h;Lg0/h;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method public final v(I)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 1
    const v0, 0x9000

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lb/d;->K(II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lg0/f;->a:Lg0/h;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {v1}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    :try_start_0
    invoke-static {v1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "rt"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    invoke-static {p1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :catch_0
    :goto_0
    invoke-static {p1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 37
    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_1
    const/high16 v0, 0x20000000

    .line 41
    .line 42
    and-int/2addr p1, v0

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p1, 0x0

    .line 48
    :goto_1
    invoke-static {v1}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    :try_start_1
    invoke-static {v1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const-string p1, "w"

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const-string p1, "r"

    .line 64
    .line 65
    :goto_2
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 70
    .line 71
    .line 72
    move-object v0, p1

    .line 73
    :goto_3
    if-eqz v0, :cond_4

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    goto :goto_4

    .line 84
    :catch_1
    :try_start_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :goto_4
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method public final w()Ljava/io/InputStream;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lj0/b;->o()J

    .line 2
    .line 3
    .line 4
    move-result-wide v4

    .line 5
    iget-object v2, p0, Lg0/f;->a:Lg0/h;

    .line 6
    .line 7
    invoke-static {v2}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    const/4 v7, 0x0

    .line 12
    if-nez v6, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {v2}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "r"

    .line 20
    .line 21
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    new-instance v8, Lk0/d;

    .line 28
    .line 29
    move-object v0, v8

    .line 30
    move-object v1, v6

    .line 31
    invoke-direct/range {v0 .. v5}, Lk0/d;-><init>(Landroid/content/ContentProviderClient;Lg0/h;Landroid/os/ParcelFileDescriptor;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    move-object v7, v8

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    :cond_1
    invoke-static {v6}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    if-eqz v7, :cond_2

    .line 40
    .line 41
    return-object v7

    .line 42
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final x(J)Ljava/io/OutputStream;
    .locals 5

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v3, p1, v3

    .line 14
    .line 15
    const-string v4, "w"

    .line 16
    .line 17
    if-lez v3, :cond_1

    .line 18
    .line 19
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    :cond_1
    invoke-static {v0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, p1, v4}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    new-instance p2, Lk0/e;

    .line 42
    .line 43
    invoke-direct {p2, v1, v0, p1}, Lk0/e;-><init>(Landroid/content/ContentProviderClient;Lg0/h;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    move-object v2, p2

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    :cond_2
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    if-eqz v2, :cond_3

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "_account"

    .line 17
    .line 18
    iget-object v5, v0, Lg0/h;->e:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v4, "_uri"

    .line 24
    .line 25
    invoke-static {v0}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "_name"

    .line 33
    .line 34
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "rename"

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {v1, p1, v0, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v0, "_ret"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :catch_0
    :cond_2
    :goto_0
    invoke-static {v1}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return v2
.end method

.method public final z(JLjava/io/OutputStream;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
