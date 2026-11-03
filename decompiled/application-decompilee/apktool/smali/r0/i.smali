.class public final Lr0/i;
.super Lr0/g;
.source "SourceFile"


# instance fields
.field public i:Lg0/h;

.field public j:J

.field public k:J


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V
    .locals 1

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    return-void
.end method


# virtual methods
.method public final c(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lr0/i;->j:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v2, p0, Lr0/i;->k:J

    .line 11
    .line 12
    add-long/2addr v2, p1

    .line 13
    iput-wide v2, p0, Lr0/i;->k:J

    .line 14
    .line 15
    const-wide/16 p1, 0x64

    .line 16
    .line 17
    mul-long/2addr v2, p1

    .line 18
    div-long/2addr v2, v0

    .line 19
    long-to-int p1, v2

    .line 20
    sget-object p2, Lru/zdevs/zarchiver/archiver/C2JBridge;->h:[I

    .line 21
    .line 22
    iget v0, p0, Lr0/g;->c:I

    .line 23
    .line 24
    aget v1, p2, v0

    .line 25
    .line 26
    if-eq p1, v1, :cond_1

    .line 27
    .line 28
    aput p1, p2, v0

    .line 29
    .line 30
    :try_start_0
    iget-object p2, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 31
    .line 32
    invoke-virtual {p2, v0, p1}, Lru/zdevs/zarchiver/service/ZArchiverService;->d(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :cond_1
    return-void
.end method

.method public final p()V
    .locals 12

    .line 1
    new-instance v0, Lg0/h;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x2f

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lr0/i;->i:Lg0/h;

    .line 21
    .line 22
    invoke-virtual {v2}, Lg0/h;->e()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lr0/i;->i:Lg0/h;

    .line 37
    .line 38
    invoke-static {v1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lg0/f;->o()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, p0, Lr0/i;->j:J

    .line 47
    .line 48
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v3, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v0}, Lg0/f;->d()Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    const-wide/16 v4, -0x1

    .line 59
    .line 60
    invoke-virtual {v0, v4, v5}, Lg0/f;->x(J)Ljava/io/OutputStream;

    .line 61
    .line 62
    .line 63
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    if-nez v10, :cond_0

    .line 65
    .line 66
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lg0/f;->w()Ljava/io/InputStream;

    .line 77
    .line 78
    .line 79
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {v1}, Lg0/f;->o()J

    .line 81
    .line 82
    .line 83
    move-result-wide v6

    .line 84
    move-object v4, p0

    .line 85
    move-object v5, v11

    .line 86
    move-object v8, v10

    .line 87
    invoke-static/range {v4 .. v9}, Lq0/b;->c(Lr0/a;Ljava/io/InputStream;JLjava/io/OutputStream;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 91
    invoke-static {v11}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception v4

    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    goto :goto_3

    .line 108
    :catch_1
    move-exception v4

    .line 109
    move-object v11, v2

    .line 110
    goto :goto_0

    .line 111
    :catchall_1
    move-exception v1

    .line 112
    move-object v10, v2

    .line 113
    goto :goto_3

    .line 114
    :catch_2
    move-exception v4

    .line 115
    move-object v10, v2

    .line 116
    move-object v11, v10

    .line 117
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Lg0/f;->i()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {p0, v1, v4}, Lq0/b;->k(Lr0/a;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 122
    .line 123
    .line 124
    invoke-static {v11}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_1

    .line 135
    .line 136
    :goto_1
    invoke-static {v0}, Lq0/b;->f(Lg0/f;)Z

    .line 137
    .line 138
    .line 139
    :cond_1
    if-eqz v3, :cond_2

    .line 140
    .line 141
    const/high16 v0, 0x120000

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    const/high16 v0, 0x110000

    .line 145
    .line 146
    :goto_2
    invoke-virtual {p0, v0}, Lr0/g;->q(I)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 150
    .line 151
    iget-object v1, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 152
    .line 153
    invoke-virtual {v1, p0, v3, v0, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 154
    .line 155
    .line 156
    iget-wide v3, p0, Lr0/i;->j:J

    .line 157
    .line 158
    const-wide/32 v5, 0x500000

    .line 159
    .line 160
    .line 161
    cmp-long v0, v3, v5

    .line 162
    .line 163
    if-gez v0, :cond_3

    .line 164
    .line 165
    iget-object v2, p0, Lr0/i;->i:Lg0/h;

    .line 166
    .line 167
    const-string v0, "plglocal"

    .line 168
    .line 169
    invoke-virtual {v2, v0}, Lg0/h;->q(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-object v0, p0, Lr0/i;->i:Lg0/h;

    .line 173
    .line 174
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    iget v0, p0, Lr0/g;->d:I

    .line 178
    .line 179
    and-int/lit8 v0, v0, 0x8

    .line 180
    .line 181
    iget v3, p0, Lr0/g;->c:I

    .line 182
    .line 183
    invoke-virtual {v1, v3, v2, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->k(ILg0/h;I)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :catchall_2
    move-exception v1

    .line 188
    move-object v2, v11

    .line 189
    :goto_3
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v10}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_4

    .line 200
    .line 201
    invoke-static {v0}, Lq0/b;->f(Lg0/f;)Z

    .line 202
    .line 203
    .line 204
    :cond_4
    throw v1
.end method
