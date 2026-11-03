.class public final Lj0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lj0/a;->a:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg0/h;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public final b(Lg0/h;Lc0/b;I)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lg0/h;->k()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v4, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    iput v5, v0, Lj0/a;->a:I

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v4, v1, Lg0/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    const/4 v6, 0x3

    .line 29
    const/4 v7, 0x4

    .line 30
    const/4 v8, 0x1

    .line 31
    if-le v4, v8, :cond_1

    .line 32
    .line 33
    invoke-static {v3, v7}, Lb/d;->K(II)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    new-instance v4, Lc0/d;

    .line 40
    .line 41
    const-string v9, ".."

    .line 42
    .line 43
    invoke-direct {v4, v9, v6}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/16 v9, 0x20

    .line 54
    .line 55
    invoke-static {v3, v9}, Lb/d;->K(II)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    xor-int/2addr v9, v8

    .line 60
    :try_start_0
    invoke-static {v3, v8}, Lb/d;->K(II)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v10, 0x2

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    move v3, v10

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v3, v5

    .line 70
    :goto_0
    or-int/2addr v3, v8

    .line 71
    invoke-static/range {p1 .. p1}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 72
    .line 73
    .line 74
    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    if-nez v17, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    :try_start_1
    invoke-static/range {p1 .. p1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    sget-object v13, Lk0/c;->a:[Ljava/lang/String;

    .line 83
    .line 84
    const-string v14, "get=list"

    .line 85
    .line 86
    new-array v15, v8, [Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    aput-object v3, v15, v5

    .line 93
    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    move-object/from16 v11, v17

    .line 97
    .line 98
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static/range {v17 .. v17}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_0
    :goto_1
    const/4 v3, 0x0

    .line 107
    :goto_2
    if-eqz v3, :cond_7

    .line 108
    .line 109
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    add-int/2addr v11, v8

    .line 114
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 115
    .line 116
    .line 117
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 118
    .line 119
    .line 120
    move-result v11

    .line 121
    if-eqz v11, :cond_6

    .line 122
    .line 123
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    if-eqz v9, :cond_4

    .line 128
    .line 129
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    if-nez v11, :cond_4

    .line 134
    .line 135
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    const/16 v12, 0x2e

    .line 140
    .line 141
    if-ne v11, v12, :cond_4

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-ne v11, v8, :cond_5

    .line 149
    .line 150
    move v15, v7

    .line 151
    goto :goto_4

    .line 152
    :cond_5
    const/4 v11, -0x1

    .line 153
    move v15, v11

    .line 154
    :goto_4
    new-instance v11, Lc0/d;

    .line 155
    .line 156
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    const/16 v16, 0x0

    .line 161
    .line 162
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v17

    .line 166
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v19

    .line 170
    move-object v12, v11

    .line 171
    invoke-direct/range {v12 .. v20}, Lc0/d;-><init>(Ljava/lang/String;Ljava/lang/String;BBJJ)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 179
    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    invoke-static/range {p1 .. p1}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    if-eqz v3, :cond_8

    .line 187
    .line 188
    invoke-static {v3}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_8
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-gt v2, v4, :cond_9

    .line 196
    .line 197
    const v2, 0x7f0c00e6

    .line 198
    .line 199
    .line 200
    iput v2, v0, Lj0/a;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 201
    .line 202
    :cond_9
    const-string v2, "plugin"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Lg0/h;->q(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return v8

    .line 208
    :catch_1
    const v1, 0x7f0c00d7

    .line 209
    .line 210
    .line 211
    iput v1, v0, Lj0/a;->a:I

    .line 212
    .line 213
    return v5
.end method

.method public final c(Lc0/i;)Lc0/i;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lj0/a;->a:I

    return v0
.end method

.method public final e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lg0/f;->d()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance p2, Lg0/e$b;

    .line 21
    .line 22
    invoke-direct {p2}, Lg0/e$b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lg0/f;->l()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iput-boolean v1, p2, Lg0/e$b;->a:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Lg0/f;->n()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iput-wide v1, p2, Lg0/e$b;->b:J

    .line 36
    .line 37
    invoke-virtual {p1}, Lg0/f;->o()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    iput-wide v1, p2, Lg0/e$b;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    return-object p2

    .line 44
    :catch_0
    return-object v0
.end method

.method public final f(Lg0/h;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lk0/c;->d(Lg0/h;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x200

    .line 6
    .line 7
    invoke-static {p1, v0}, Lb/d;->K(II)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x21

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v0, 0x20

    .line 17
    .line 18
    :goto_0
    const/16 v1, 0x100

    .line 19
    .line 20
    invoke-static {p1, v1}, Lb/d;->K(II)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    or-int/lit8 v0, v0, 0x2

    .line 27
    .line 28
    :cond_1
    return v0
.end method

.method public final g([Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    aget-object v0, p1, p3

    .line 3
    .line 4
    invoke-virtual {v0}, Lg0/h;->k()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Lg0/e$b;

    .line 13
    .line 14
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    array-length v1, p2

    .line 18
    if-ge p3, v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Lg0/h;

    .line 21
    .line 22
    aget-object v2, p1, p3

    .line 23
    .line 24
    aget-object v3, p2, p3

    .line 25
    .line 26
    invoke-direct {v1, v3, v2}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-wide v2, v0, Lg0/e$b;->c:J

    .line 34
    .line 35
    invoke-virtual {v1}, Lg0/f;->o()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    add-long/2addr v4, v2

    .line 40
    iput-wide v4, v0, Lg0/e$b;->c:J

    .line 41
    .line 42
    add-int/lit8 p3, p3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-object v0
.end method

.method public final h(Lg0/h;)Lg0/e$a;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p1}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "_account"

    .line 22
    .line 23
    iget-object v4, p1, Lg0/h;->e:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "_uri"

    .line 29
    .line 30
    invoke-static {p1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    .line 36
    .line 37
    const-string p1, "disk"

    .line 38
    .line 39
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const-string v2, "_ret"

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    new-instance v2, Lk0/c$a;

    .line 55
    .line 56
    const-string v3, "_used"

    .line 57
    .line 58
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v5

    .line 62
    const-string v3, "_free"

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    const-string v3, "_fs_type"

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    move-object v3, v2

    .line 75
    invoke-direct/range {v3 .. v8}, Lk0/c$a;-><init>(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :catch_0
    :cond_3
    :goto_0
    invoke-static {v0}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    move-object v2, v1

    .line 91
    :goto_2
    if-eqz v2, :cond_5

    .line 92
    .line 93
    new-instance p1, Lg0/e$a;

    .line 94
    .line 95
    iget-wide v5, v2, Lk0/c$a;->a:J

    .line 96
    .line 97
    iget-wide v0, v2, Lk0/c$a;->b:J

    .line 98
    .line 99
    add-long v7, v0, v5

    .line 100
    .line 101
    iget-object v0, v2, Lk0/c$a;->c:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const-string v0, "Remote"

    .line 107
    .line 108
    :goto_3
    move-object v4, v0

    .line 109
    move-object v3, p1

    .line 110
    invoke-direct/range {v3 .. v8}, Lg0/e$a;-><init>(Ljava/lang/String;JJ)V

    .line 111
    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_5
    return-object v1
.end method

.method public final i(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 2
    .line 3
    .line 4
    move-result p4

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Lk0/c;->e(Lg0/h;)Landroid/content/ContentProviderClient;

    .line 10
    .line 11
    .line 12
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    const/4 v7, 0x1

    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    :try_start_1
    invoke-static {p1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v3, Lk0/c;->b:[Ljava/lang/String;

    .line 22
    .line 23
    const-string v4, "get=search"

    .line 24
    .line 25
    new-array v5, v7, [Ljava/lang/String;

    .line 26
    .line 27
    aput-object p2, v5, v0

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    move-object v1, p4

    .line 31
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p4}, Lk0/c;->b(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    :goto_0
    const/4 p2, 0x0

    .line 40
    :goto_1
    if-eqz p2, :cond_8

    .line 41
    .line 42
    :try_start_2
    new-instance p4, Lg0/h;

    .line 43
    .line 44
    invoke-direct {p4, p1}, Lg0/h;-><init>(Lg0/h;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_7

    .line 52
    .line 53
    if-eqz p6, :cond_2

    .line 54
    .line 55
    invoke-interface {p6}, Lu0/d;->isCancelled()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    return v0

    .line 62
    :cond_2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1, p3}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    new-instance v2, Lg0/e$b;

    .line 74
    .line 75
    invoke-direct {v2}, Lg0/e$b;-><init>()V

    .line 76
    .line 77
    .line 78
    const/4 v3, 0x3

    .line 79
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    move v3, v7

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    move v3, v0

    .line 88
    :goto_3
    iput-boolean v3, v2, Lg0/e$b;->a:Z

    .line 89
    .line 90
    const/4 v3, 0x4

    .line 91
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    iput-wide v3, v2, Lg0/e$b;->b:J

    .line 96
    .line 97
    const/4 v3, 0x2

    .line 98
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    iput-wide v3, v2, Lg0/e$b;->c:J

    .line 103
    .line 104
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const/4 v4, 0x5

    .line 109
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_5

    .line 118
    .line 119
    invoke-interface {p5, v2, p1, v1, v3}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iget-object v5, p4, Lg0/h;->c:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-nez v5, :cond_6

    .line 130
    .line 131
    new-instance p4, Lg0/h;

    .line 132
    .line 133
    invoke-direct {p4, p1}, Lg0/h;-><init>(Lg0/h;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4, v4}, Lg0/h;->p(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_6
    invoke-interface {p5, v2, p4, v1, v3}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_8
    invoke-static {p1}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_9

    .line 152
    .line 153
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->j(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    .line 155
    .line 156
    :cond_9
    :goto_4
    return v7

    .line 157
    :catch_1
    return v0
.end method

.method public final j(Lg0/h;)Z
    .locals 0

    invoke-virtual {p1}, Lg0/h;->k()Z

    move-result p1

    return p1
.end method

.method public final k(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lg0/h;->k()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p3, Lg0/e$b;

    .line 10
    .line 11
    invoke-direct {p3}, Lg0/e$b;-><init>()V

    .line 12
    .line 13
    .line 14
    array-length v0, p2

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_1

    .line 17
    .line 18
    aget-object v2, p2, v1

    .line 19
    .line 20
    new-instance v3, Lg0/h;

    .line 21
    .line 22
    invoke-direct {v3, v2, p1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-wide v3, p3, Lg0/e$b;->c:J

    .line 30
    .line 31
    invoke-virtual {v2}, Lg0/f;->o()J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    add-long/2addr v5, v3

    .line 36
    iput-wide v5, p3, Lg0/e$b;->c:J

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-object p3
.end method
