.class public final Ll0/a;
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
    iput v0, p0, Ll0/a;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static l(Lru/zdevs/zarchiver/io/SAF$a;Ljava/lang/String;Ljava/util/regex/Pattern;[IILg0/e$c;Lu0/d;)V
    .locals 9

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p6}, Lu0/d;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-static {v0, p3}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Lg0/e$b;

    .line 39
    .line 40
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    move v1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_0
    iput-boolean v1, v0, Lg0/e$b;->a:Z

    .line 51
    .line 52
    iget-wide v4, p0, Lru/zdevs/zarchiver/io/SAF$a;->c:J

    .line 53
    .line 54
    iput-wide v4, v0, Lg0/e$b;->b:J

    .line 55
    .line 56
    iget-wide v4, p0, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 57
    .line 58
    iput-wide v4, v0, Lg0/e$b;->c:J

    .line 59
    .line 60
    new-instance v1, Lg0/h;

    .line 61
    .line 62
    const-string v4, "saf"

    .line 63
    .line 64
    invoke-direct {v1, v4, p1}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {p5, v0, v1, v4, v2}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    iget-boolean v0, p0, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-static {p4, v3}, Lb/d;->K(II)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 83
    .line 84
    invoke-static {v0, v2}, Lru/zdevs/zarchiver/io/SAF;->r(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_3

    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    move-object v2, v1

    .line 106
    check-cast v2, Lru/zdevs/zarchiver/io/SAF$a;

    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v3, "/"

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lru/zdevs/zarchiver/io/SAF$a;->a:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    move-object v4, p2

    .line 131
    move-object v5, p3

    .line 132
    move v6, p4

    .line 133
    move-object v7, p5

    .line 134
    move-object v8, p6

    .line 135
    invoke-static/range {v2 .. v8}, Ll0/a;->l(Lru/zdevs/zarchiver/io/SAF$a;Ljava/lang/String;Ljava/util/regex/Pattern;[IILg0/e$c;Lu0/d;)V

    .line 136
    .line 137
    .line 138
    if-eqz p6, :cond_4

    .line 139
    .line 140
    invoke-interface {p6}, Lu0/d;->isCancelled()Z

    .line 141
    .line 142
    .line 143
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    if-eqz v1, :cond_4

    .line 145
    .line 146
    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg0/h;)I
    .locals 1

    .line 1
    iget-object p2, p2, Lg0/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-static {p2, p1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, -0x1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/io/SAF;->a:[Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {p1}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return p2
.end method

.method public final b(Lg0/h;Lc0/b;I)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Lg0/h;->m()Z

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
    iput v5, v1, Ll0/a;->a:I

    .line 18
    .line 19
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x4

    .line 23
    invoke-static {v3, v4}, Lb/d;->K(II)Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    const/4 v7, 0x3

    .line 28
    if-eqz v6, :cond_1

    .line 29
    .line 30
    new-instance v6, Lc0/d;

    .line 31
    .line 32
    const-string v8, ".."

    .line 33
    .line 34
    invoke-direct {v6, v8, v7}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    const/16 v8, 0x20

    .line 45
    .line 46
    invoke-static {v3, v8}, Lb/d;->K(II)Z

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    const/4 v9, 0x1

    .line 51
    xor-int/2addr v8, v9

    .line 52
    const/4 v10, 0x0

    .line 53
    const v11, 0x7f0c00d7

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object v12, v0, Lg0/h;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v9, v12}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    if-nez v12, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v13, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v12, v13}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    :goto_0
    const/4 v12, 0x2

    .line 72
    if-nez v10, :cond_5

    .line 73
    .line 74
    invoke-static {v3, v12}, Lb/d;->K(II)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    iput v11, v1, Ll0/a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    invoke-static {v10}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 83
    .line 84
    .line 85
    return v9

    .line 86
    :cond_3
    :try_start_1
    iget-object v2, v0, Lg0/h;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v2}, Lw0/c;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Lg0/h;->p(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    const-string v2, "root"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Lg0/h;->q(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-static {v10}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 103
    .line 104
    .line 105
    return v5

    .line 106
    :cond_5
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    add-int/2addr v3, v9

    .line 111
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lg0/h;->t()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v3, v9}, Li0/a;->n(Ljava/lang/String;Z)B

    .line 119
    .line 120
    .line 121
    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move v3, v5

    .line 124
    :goto_1
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 125
    .line 126
    .line 127
    move-result v13

    .line 128
    if-eqz v13, :cond_8

    .line 129
    .line 130
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v15

    .line 134
    if-eqz v8, :cond_6

    .line 135
    .line 136
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-nez v13, :cond_6

    .line 141
    .line 142
    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    const/16 v14, 0x2e

    .line 147
    .line 148
    if-ne v13, v14, :cond_6

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    const-string v14, "vnd.android.document/directory"

    .line 156
    .line 157
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v13

    .line 161
    if-eqz v13, :cond_7

    .line 162
    .line 163
    invoke-static {v15, v3}, Li0/a;->l(Ljava/lang/String;B)B

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    move/from16 v16, v4

    .line 168
    .line 169
    move/from16 v17, v13

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_7
    const/4 v13, -0x1

    .line 173
    move/from16 v17, v5

    .line 174
    .line 175
    move/from16 v16, v13

    .line 176
    .line 177
    :goto_2
    new-instance v13, Lc0/d;

    .line 178
    .line 179
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v18

    .line 183
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v20

    .line 187
    move-object v14, v13

    .line 188
    invoke-direct/range {v14 .. v21}, Lc0/d;-><init>(Ljava/lang/String;BBJJ)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    goto :goto_3

    .line 197
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lc0/b;->size()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-gt v2, v6, :cond_9

    .line 202
    .line 203
    const v2, 0x7f0c00e6

    .line 204
    .line 205
    .line 206
    iput v2, v1, Ll0/a;->a:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .line 208
    :cond_9
    invoke-static {v10}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 209
    .line 210
    .line 211
    const-string v2, "saf"

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Lg0/h;->q(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    return v9

    .line 217
    :catch_1
    :try_start_5
    iput v11, v1, Ll0/a;->a:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 218
    .line 219
    invoke-static {v10}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 220
    .line 221
    .line 222
    return v5

    .line 223
    :goto_3
    invoke-static {v10}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 224
    .line 225
    .line 226
    throw v0
.end method

.method public final c(Lc0/i;)Lc0/i;
    .locals 4

    .line 1
    new-instance v0, Lc0/i;

    .line 2
    .line 3
    invoke-virtual {p1}, Lc0/b;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lc0/i;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lc0/d;

    .line 25
    .line 26
    check-cast v1, Lc0/f;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v3, v1, Lc0/f;->k:Lg0/h;

    .line 34
    .line 35
    iget-object v3, v3, Lg0/h;->c:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v3, 0x2f

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Lc0/d;->a:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-static {v3, v2}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-static {v2}, Lru/zdevs/zarchiver/io/SAF;->p(Landroid/net/Uri;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    :goto_1
    if-eqz v3, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lc0/i;->i(Lc0/f;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ll0/a;->a:I

    return v0
.end method

.method public final e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lg0/h;->m()Z

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
    :try_start_0
    new-instance v0, Lg0/e$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->e(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    iget-boolean v2, p1, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v2, :cond_4

    .line 27
    .line 28
    iget-object p1, p1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-static {v3, v1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_2
    if-nez p1, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    const-string v2, "_size"

    .line 40
    .line 41
    const-string v4, "document_id"

    .line 42
    .line 43
    const-string v5, "mime_type"

    .line 44
    .line 45
    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {p1, v2, v0, p2, v3}, Lru/zdevs/zarchiver/io/SAF;->b(Landroid/net/Uri;[Ljava/lang/String;Lg0/e$b;Lu0/d;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const/4 p2, 0x1

    .line 54
    iput-boolean p2, v0, Lg0/e$b;->a:Z

    .line 55
    .line 56
    iget-wide v4, p1, Lru/zdevs/zarchiver/io/SAF$a;->c:J

    .line 57
    .line 58
    iput-wide v4, v0, Lg0/e$b;->b:J

    .line 59
    .line 60
    iget-wide p1, p1, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 61
    .line 62
    iput-wide p1, v0, Lg0/e$b;->c:J

    .line 63
    .line 64
    iput-boolean v3, v0, Lg0/e$b;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    :goto_0
    return-object v0

    .line 67
    :catch_0
    return-object v1
.end method

.method public final f(Lg0/h;)I
    .locals 0

    const/16 p1, 0x11

    return p1
.end method

.method public final g([Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 6

    .line 1
    const/4 p3, 0x0

    .line 2
    aget-object v0, p1, p3

    .line 3
    .line 4
    invoke-virtual {v0}, Lg0/h;->m()Z

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
    if-ge p3, v1, :cond_2

    .line 19
    .line 20
    aget-object v1, p1, p3

    .line 21
    .line 22
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    aget-object v2, p2, p3

    .line 25
    .line 26
    invoke-static {v1, v2}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lru/zdevs/zarchiver/io/SAF;->e(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-wide v2, v0, Lg0/e$b;->c:J

    .line 38
    .line 39
    iget-wide v4, v1, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 40
    .line 41
    add-long/2addr v2, v4

    .line 42
    iput-wide v2, v0, Lg0/e$b;->c:J

    .line 43
    .line 44
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object v0
.end method

.method public final h(Lg0/h;)Lg0/e$a;
    .locals 11

    .line 1
    invoke-virtual {p1}, Lg0/h;->m()Z

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
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "r"

    .line 24
    .line 25
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    invoke-static {p1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v8, Lg0/e$a;

    .line 44
    .line 45
    iget-wide v2, v0, Landroid/system/StructStatVfs;->f_bavail:J

    .line 46
    .line 47
    iget-wide v4, v0, Landroid/system/StructStatVfs;->f_bsize:J

    .line 48
    .line 49
    mul-long v6, v2, v4

    .line 50
    .line 51
    iget-wide v2, v0, Landroid/system/StructStatVfs;->f_blocks:J

    .line 52
    .line 53
    mul-long v9, v2, v4

    .line 54
    .line 55
    const-string v3, "Storage Access Framework"

    .line 56
    .line 57
    move-object v2, v8

    .line 58
    move-wide v4, v6

    .line 59
    move-wide v6, v9

    .line 60
    invoke-direct/range {v2 .. v7}, Lg0/e$a;-><init>(Ljava/lang/String;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 64
    .line 65
    .line 66
    return-object v8

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object v1, p1

    .line 69
    goto :goto_1

    .line 70
    :goto_0
    move-object v0, p1

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    goto :goto_0

    .line 74
    :goto_1
    invoke-static {v1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :catch_0
    move-object p1, v1

    .line 79
    :catch_1
    invoke-static {p1}, Lm0/d;->c(Landroid/os/ParcelFileDescriptor;)V

    .line 80
    .line 81
    .line 82
    return-object v1
.end method

.method public final i(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)Z
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    invoke-virtual {p1}, Lg0/h;->m()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-object v1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Lru/zdevs/zarchiver/io/SAF;->e(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    iget-boolean v3, v1, Lru/zdevs/zarchiver/io/SAF$a;->b:Z

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move-object/from16 v3, p2

    .line 24
    .line 25
    invoke-static {v3, v2}, Lu0/h;->c(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    aget-object v3, v3, v2

    .line 30
    .line 31
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v11, 0x1

    .line 36
    :try_start_0
    iget-object v1, v1, Lru/zdevs/zarchiver/io/SAF$a;->e:Landroid/net/Uri;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-static {v1, v4}, Lru/zdevs/zarchiver/io/SAF;->r(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    move v13, v2

    .line 54
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Lru/zdevs/zarchiver/io/SAF$a;

    .line 65
    .line 66
    iget-object v5, v0, Lg0/h;->c:Ljava/lang/String;

    .line 67
    .line 68
    move-object v6, v3

    .line 69
    move-object/from16 v7, p3

    .line 70
    .line 71
    move/from16 v8, p4

    .line 72
    .line 73
    move-object/from16 v9, p5

    .line 74
    .line 75
    move-object/from16 v10, p6

    .line 76
    .line 77
    invoke-static/range {v4 .. v10}, Ll0/a;->l(Lru/zdevs/zarchiver/io/SAF$a;Ljava/lang/String;Ljava/util/regex/Pattern;[IILg0/e$c;Lu0/d;)V

    .line 78
    .line 79
    .line 80
    if-eqz p6, :cond_2

    .line 81
    .line 82
    invoke-interface/range {p6 .. p6}, Lu0/d;->isCancelled()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    return v2

    .line 89
    :cond_2
    add-int/2addr v13, v11

    .line 90
    mul-int/lit8 v4, v13, 0x64

    .line 91
    .line 92
    div-int/2addr v4, v12

    .line 93
    move-object/from16 v5, p5

    .line 94
    .line 95
    invoke-interface {v5, v4}, Lg0/e$c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    :cond_3
    return v11

    .line 100
    :cond_4
    :goto_1
    return v2
.end method

.method public final j(Lg0/h;)Z
    .locals 0

    invoke-virtual {p1}, Lg0/h;->m()Z

    move-result p1

    return p1
.end method

.method public final k(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lg0/h;->m()Z

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
    if-ge v1, v0, :cond_2

    .line 17
    .line 18
    aget-object v2, p2, v1

    .line 19
    .line 20
    iget-object v3, p1, Lg0/h;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3, v2}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Lru/zdevs/zarchiver/io/SAF;->e(Ljava/lang/String;)Lru/zdevs/zarchiver/io/SAF$a;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-wide v3, p3, Lg0/e$b;->c:J

    .line 34
    .line 35
    iget-wide v5, v2, Lru/zdevs/zarchiver/io/SAF$a;->d:J

    .line 36
    .line 37
    add-long/2addr v3, v5

    .line 38
    iput-wide v3, p3, Lg0/e$b;->c:J

    .line 39
    .line 40
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object p3
.end method
