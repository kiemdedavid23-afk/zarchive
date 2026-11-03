.class public final Lz/s0;
.super Lv0/c;
.source "SourceFile"

# interfaces
.implements Lg0/e$c;


# instance fields
.field public final e:Lru/zdevs/zarchiver/b;

.field public f:Lc0/i;

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/b;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lz/s0;->f:Lc0/i;

    .line 8
    .line 9
    iput-boolean p3, p0, Lz/s0;->h:Z

    .line 10
    .line 11
    iput-boolean p2, p0, Lz/s0;->g:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 0

    return-void
.end method

.method public final d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v9, Lc0/f;

    .line 2
    .line 3
    iget-boolean v0, p1, Lg0/e$b;->a:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x4

    .line 10
    :goto_0
    move v4, v0

    .line 11
    iget-wide v5, p1, Lg0/e$b;->c:J

    .line 12
    .line 13
    iget-wide v7, p1, Lg0/e$b;->b:J

    .line 14
    .line 15
    move-object v0, v9

    .line 16
    move-object v1, p2

    .line 17
    move-object v2, p3

    .line 18
    move-object v3, p4

    .line 19
    invoke-direct/range {v0 .. v8}, Lc0/f;-><init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lz/s0;->f:Lc0/i;

    .line 23
    .line 24
    invoke-virtual {p1, v9}, Lc0/i;->i(Lc0/f;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v0, v0, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 11
    .line 12
    iget-object v0, v0, Lg0/h;->c:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v1, v0}, Le0/d;->m(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    const/16 v1, 0xf

    .line 33
    .line 34
    invoke-static {v0, v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetStatus(II)V

    .line 35
    .line 36
    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->e:Le0/d;

    .line 39
    .line 40
    :cond_2
    :goto_0
    invoke-super {p0}, Lv0/c;->e()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 13

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
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 15
    .line 16
    iget-object v3, v2, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 17
    .line 18
    iget v3, v3, Lc0/b;->a:I

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    move v3, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v5

    .line 27
    :goto_0
    iget-boolean v6, p0, Lz/s0;->g:Z

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    if-nez v6, :cond_2

    .line 31
    .line 32
    iget-boolean v6, p0, Lz/s0;->h:Z

    .line 33
    .line 34
    if-nez v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 37
    .line 38
    .line 39
    return-object v7

    .line 40
    :cond_1
    iget-object v6, v2, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v6

    .line 43
    :try_start_0
    new-instance v2, Lc0/i;

    .line 44
    .line 45
    iget-object v7, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 46
    .line 47
    iget-object v7, v7, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 48
    .line 49
    invoke-direct {v2, v7}, Lc0/i;-><init>(Lc0/i;)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lz/s0;->f:Lc0/i;

    .line 53
    .line 54
    monitor-exit v6

    .line 55
    goto :goto_3

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw v0

    .line 59
    :cond_2
    const/4 v6, 0x4

    .line 60
    invoke-virtual {v2, v6}, Lru/zdevs/zarchiver/b;->g(I)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Le0/a;->a()V

    .line 71
    .line 72
    .line 73
    :try_start_1
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 74
    .line 75
    iget-object v2, v2, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 76
    .line 77
    invoke-static {v2}, Ld0/b;->d(Lg0/h;)V
    :try_end_1
    .catch Ld0/b$b; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 82
    .line 83
    iget-object v2, v2, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v2

    .line 86
    :try_start_2
    new-instance v6, Lc0/i;

    .line 87
    .line 88
    iget-object v8, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 89
    .line 90
    iget-object v8, v8, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 91
    .line 92
    invoke-direct {v6, v8}, Lc0/i;-><init>(Lc0/i;)V

    .line 93
    .line 94
    .line 95
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 97
    .line 98
    iget-object v2, v2, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 99
    .line 100
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    array-length v9, v8

    .line 105
    move v10, v5

    .line 106
    :goto_1
    if-ge v10, v9, :cond_6

    .line 107
    .line 108
    aget-object v11, v8, v10

    .line 109
    .line 110
    invoke-interface {v11, v2}, Lg0/b;->j(Lg0/h;)Z

    .line 111
    .line 112
    .line 113
    move-result v12

    .line 114
    if-eqz v12, :cond_4

    .line 115
    .line 116
    invoke-interface {v11, v6}, Lg0/b;->c(Lc0/i;)Lc0/i;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {p0}, Lv0/c;->isCancelled()Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-eqz v11, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_6
    :goto_2
    iput-object v7, p0, Lz/s0;->f:Lc0/i;

    .line 132
    .line 133
    :catch_0
    :goto_3
    iget-object v2, p0, Lz/s0;->f:Lc0/i;

    .line 134
    .line 135
    if-nez v2, :cond_a

    .line 136
    .line 137
    :try_start_3
    new-instance v2, Lc0/i;

    .line 138
    .line 139
    invoke-direct {v2, v5}, Lc0/i;-><init>(I)V

    .line 140
    .line 141
    .line 142
    iput-object v2, p0, Lz/s0;->f:Lc0/i;

    .line 143
    .line 144
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 145
    .line 146
    iget-object v6, v2, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 147
    .line 148
    iget-object v7, v2, Lru/zdevs/zarchiver/b;->o:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v2, v2, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v2}, Lg0/e;->a([Ljava/lang/String;)[I

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 157
    .line 158
    iget-object v2, v2, Lru/zdevs/zarchiver/b;->p:[Ljava/lang/String;

    .line 159
    .line 160
    if-nez v2, :cond_8

    .line 161
    .line 162
    :cond_7
    move v9, v5

    .line 163
    goto :goto_5

    .line 164
    :cond_8
    array-length v9, v2

    .line 165
    move v10, v5

    .line 166
    :goto_4
    if-ge v10, v9, :cond_7

    .line 167
    .line 168
    aget-object v11, v2, v10

    .line 169
    .line 170
    const-string v12, "[SF]"

    .line 171
    .line 172
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v11

    .line 176
    if-eqz v11, :cond_9

    .line 177
    .line 178
    move v9, v4

    .line 179
    goto :goto_5

    .line 180
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :goto_5
    move-object v10, p0

    .line 184
    move-object v11, p0

    .line 185
    invoke-static/range {v6 .. v11}, Lg0/e;->h(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 186
    .line 187
    .line 188
    :catch_1
    :cond_a
    iget-boolean v2, p0, Lz/s0;->h:Z

    .line 189
    .line 190
    if-eqz v2, :cond_b

    .line 191
    .line 192
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 193
    .line 194
    iget v2, v2, Lru/zdevs/zarchiver/b;->h:I

    .line 195
    .line 196
    iget-object v6, p0, Lz/s0;->f:Lc0/i;

    .line 197
    .line 198
    invoke-static {v2, v6}, Lg0/e;->i(ILc0/b;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 202
    .line 203
    iget-object v6, v2, Lru/zdevs/zarchiver/b;->a:Ljava/lang/Object;

    .line 204
    .line 205
    monitor-enter v6

    .line 206
    :try_start_4
    iget-object v2, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 207
    .line 208
    iget-object v7, p0, Lz/s0;->f:Lc0/i;

    .line 209
    .line 210
    iput-object v7, v2, Lru/zdevs/zarchiver/b;->r:Lc0/i;

    .line 211
    .line 212
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 214
    .line 215
    .line 216
    new-instance v0, Lz/v;

    .line 217
    .line 218
    iget-object v1, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    .line 219
    .line 220
    if-eqz v3, :cond_c

    .line 221
    .line 222
    iget-object v2, p0, Lz/s0;->f:Lc0/i;

    .line 223
    .line 224
    iget v2, v2, Lc0/b;->a:I

    .line 225
    .line 226
    if-nez v2, :cond_c

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_c
    move v4, v5

    .line 230
    :goto_6
    invoke-direct {v0, v1, v4}, Lz/v;-><init>(Lru/zdevs/zarchiver/b;Z)V

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 236
    throw v0

    .line 237
    :catchall_2
    move-exception v0

    .line 238
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 239
    throw v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lz/s0;->e:Lru/zdevs/zarchiver/b;

    iget v0, v0, Lru/zdevs/zarchiver/b;->b:I

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
