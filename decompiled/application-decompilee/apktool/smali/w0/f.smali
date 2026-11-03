.class public final Lw0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    const-string v0, "/Android/data"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ge v0, v3, :cond_1

    .line 18
    .line 19
    const-string v0, "/Android/obb"

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    move v4, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v4, v1

    .line 28
    :goto_0
    if-ge v0, v3, :cond_2

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {v5}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    if-nez v6, :cond_3

    .line 40
    .line 41
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 42
    .line 43
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v6}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 51
    .line 52
    .line 53
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-nez v6, :cond_3

    .line 55
    .line 56
    :catch_0
    return-object v2

    .line 57
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lb/d;->a0(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v6}, Lw0/c$a;->a()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    aput-object v2, v0, v1

    .line 73
    .line 74
    if-nez v4, :cond_4

    .line 75
    .line 76
    const-string v1, "Android/data"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string v1, "Android/obb"

    .line 80
    .line 81
    :goto_1
    aput-object v1, v0, v3

    .line 82
    .line 83
    const/4 v1, 0x2

    .line 84
    aput-object p0, v0, v1

    .line 85
    .line 86
    const/4 p0, 0x3

    .line 87
    aput-object v5, v0, p0

    .line 88
    .line 89
    return-object v0
.end method

.method public static b(Lg0/h;)B
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg0/h;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lg0/h;->h()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lg0/h;->k()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Lg0/h;->i()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lg0/h;->r()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lw0/f;->c(Ljava/lang/String;)B

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_3
    :goto_1
    const/4 p0, 0x2

    .line 45
    return p0
.end method

.method public static c(Ljava/lang/String;)B
    .locals 6

    .line 1
    const-string v0, "/test\\|:<*>?rw"

    .line 2
    .line 3
    const-string v1, "/SAF"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const-string v1, "/storage/"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v3, "/sdcard"

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-nez v1, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v1, 0x1e

    .line 34
    .line 35
    if-lt v0, v1, :cond_3

    .line 36
    .line 37
    invoke-static {p0}, Lw0/c;->e(Ljava/lang/String;)Lw0/c$a;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move v2, v4

    .line 45
    :goto_0
    return v2

    .line 46
    :cond_3
    return v4

    .line 47
    :cond_4
    :goto_1
    invoke-static {p0}, Lw0/f;->g(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    const/high16 v5, 0x4000000

    .line 54
    .line 55
    invoke-static {v5}, Ls0/b;->f(I)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    return v4

    .line 62
    :cond_5
    if-ne v1, v4, :cond_9

    .line 63
    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v4, 0x21

    .line 67
    .line 68
    if-lt v1, v4, :cond_9

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    :try_start_0
    sget v4, Landroid/system/OsConstants;->W_OK:I

    .line 72
    .line 73
    invoke-static {p0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_7

    .line 78
    .line 79
    const-string v4, "/storage/emu"

    .line 80
    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const/16 v0, 0x1ff

    .line 98
    .line 99
    invoke-static {p0, v0}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :cond_6
    return v2

    .line 103
    :cond_7
    return v1

    .line 104
    :catch_0
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-eqz p0, :cond_8

    .line 110
    .line 111
    const-string v0, "EINVAL"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    if-eqz p0, :cond_8

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_8
    move v2, v1

    .line 121
    :cond_9
    :goto_2
    return v2
.end method

.method public static d(Lg0/h;Z)B
    .locals 8

    .line 1
    invoke-virtual {p0}, Lg0/h;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lg0/h;->n()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    invoke-virtual {p0}, Lg0/h;->h()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v3, 0x5

    .line 22
    if-nez v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lg0/h;->j()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v3

    .line 32
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lg0/h;->l()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x3

    .line 38
    if-nez v4, :cond_b

    .line 39
    .line 40
    if-nez v0, :cond_b

    .line 41
    .line 42
    invoke-virtual {p0}, Lg0/h;->toFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :goto_1
    invoke-static {v4}, Lw0/f;->c(Ljava/lang/String;)B

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v7, v1, :cond_4

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_4
    if-ne v7, v6, :cond_5

    .line 63
    .line 64
    move v3, v1

    .line 65
    goto :goto_3

    .line 66
    :cond_5
    invoke-static {v4}, Lw0/c;->e(Ljava/lang/String;)Lw0/c$a;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-nez v7, :cond_6

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v7}, Lw0/c;->e(Ljava/lang/String;)Lw0/c$a;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    :cond_6
    if-nez v7, :cond_8

    .line 81
    .line 82
    const-string v7, "/storage/emulated/"

    .line 83
    .line 84
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_7

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    goto :goto_2

    .line 95
    :cond_7
    move v0, v5

    .line 96
    goto :goto_2

    .line 97
    :cond_8
    invoke-virtual {v7}, Lw0/c$a;->f()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    :goto_2
    if-eqz v0, :cond_9

    .line 102
    .line 103
    move v3, v2

    .line 104
    :cond_9
    :goto_3
    if-eq v3, v1, :cond_a

    .line 105
    .line 106
    if-ne v3, v2, :cond_b

    .line 107
    .line 108
    :cond_a
    return v3

    .line 109
    :cond_b
    if-nez p1, :cond_14

    .line 110
    .line 111
    invoke-virtual {p0}, Lg0/h;->r()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    sget-object p1, Lw0/a;->a:[Ljava/lang/String;

    .line 116
    .line 117
    const-string p1, "/"

    .line 118
    .line 119
    invoke-static {p1}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_c

    .line 124
    .line 125
    move p1, v1

    .line 126
    goto :goto_4

    .line 127
    :cond_c
    move p1, v2

    .line 128
    :goto_4
    sget v0, Lw0/a;->g:I

    .line 129
    .line 130
    if-ge v0, p1, :cond_d

    .line 131
    .line 132
    invoke-static {p1}, Lw0/a;->c(I)V

    .line 133
    .line 134
    .line 135
    :cond_d
    new-instance p1, Ljava/io/File;

    .line 136
    .line 137
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    sget-object v0, Lw0/a;->f:Ljava/util/ArrayList;

    .line 145
    .line 146
    monitor-enter v0

    .line 147
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_12

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lw0/a$a;

    .line 162
    .line 163
    iget-object v7, v4, Lw0/a$a;->b:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_f

    .line 170
    .line 171
    iget-object p0, v4, Lw0/a$a;->d:Ljava/lang/String;

    .line 172
    .line 173
    if-eqz p0, :cond_10

    .line 174
    .line 175
    const-string p1, "rw"

    .line 176
    .line 177
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_10

    .line 182
    .line 183
    move p0, v2

    .line 184
    goto :goto_5

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    goto :goto_8

    .line 187
    :cond_10
    move p0, v5

    .line 188
    :goto_5
    if-eqz p0, :cond_11

    .line 189
    .line 190
    iget-byte p0, v4, Lw0/a$a;->e:B

    .line 191
    .line 192
    if-eq p0, v1, :cond_11

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_11
    move v2, v5

    .line 196
    :goto_6
    monitor-exit v0

    .line 197
    move v5, v2

    .line 198
    goto :goto_7

    .line 199
    :cond_12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    if-nez p1, :cond_e

    .line 205
    .line 206
    :goto_7
    if-eqz v5, :cond_13

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_13
    const/4 p0, 0x4

    .line 210
    return p0

    .line 211
    :goto_8
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    throw p0

    .line 213
    :cond_14
    :goto_9
    return v6
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lw0/f;->f(Ljava/lang/String;)Lw0/c$a;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;)Lw0/c$a;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    const-string v0, "/Android/data"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ge v0, v1, :cond_1

    .line 17
    .line 18
    const-string v0, "/Android/obb"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :cond_1
    if-ge v0, v1, :cond_2

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_2
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object p0

    .line 53
    :catch_0
    return-object v2
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lw0/f;->f(Ljava/lang/String;)Lw0/c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x21

    .line 10
    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lb/d;->Y(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, "Android/data"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "Android/obb"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :cond_1
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    return p0
.end method
