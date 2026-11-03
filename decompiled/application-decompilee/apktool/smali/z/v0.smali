.class public final Lz/v0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:[Lru/zdevs/zarchiver/b;


# direct methods
.method public constructor <init>(I[Lru/zdevs/zarchiver/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lz/v0;->e:I

    .line 5
    .line 6
    iput-object p2, p0, Lz/v0;->f:[Lru/zdevs/zarchiver/b;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 10

    .line 1
    iget v0, p0, Lz/v0;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lb/d;->K(II)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    iget-object v0, p0, Lz/v0;->f:[Lru/zdevs/zarchiver/b;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v4, v3

    .line 23
    :goto_0
    invoke-static {v4}, Lw0/c;->p(Ljava/util/ArrayList;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    iget v5, p0, Lz/v0;->e:I

    .line 30
    .line 31
    or-int/2addr v5, v2

    .line 32
    iput v5, p0, Lz/v0;->e:I

    .line 33
    .line 34
    :cond_1
    invoke-static {}, Lk0/c;->i()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iget v5, p0, Lz/v0;->e:I

    .line 41
    .line 42
    or-int/2addr v5, v2

    .line 43
    iput v5, p0, Lz/v0;->e:I

    .line 44
    .line 45
    :cond_2
    if-eqz v4, :cond_7

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-lez v5, :cond_7

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    move v6, v5

    .line 55
    :goto_1
    array-length v7, v0

    .line 56
    if-ge v6, v7, :cond_7

    .line 57
    .line 58
    aget-object v7, v0, v6

    .line 59
    .line 60
    if-nez v7, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    iget-object v7, v7, Lru/zdevs/zarchiver/b;->c:Lg0/h;

    .line 64
    .line 65
    invoke-virtual {v7}, Lg0/h;->r()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_5

    .line 78
    .line 79
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    check-cast v9, Lw0/c$a;

    .line 84
    .line 85
    iget-object v9, v9, Lw0/c$a;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    if-eqz v9, :cond_4

    .line 92
    .line 93
    new-instance v7, Lz/w;

    .line 94
    .line 95
    invoke-direct {v7, v6, v1}, Lz/w;-><init>(IZ)V

    .line 96
    .line 97
    .line 98
    new-instance v8, Lg0/h;

    .line 99
    .line 100
    sget-object v9, Ls0/b;->b:[Ljava/lang/String;

    .line 101
    .line 102
    aget-object v9, v9, v6

    .line 103
    .line 104
    invoke-direct {v8, v9}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iput-object v8, v7, Lz/w;->b:Lg0/h;

    .line 108
    .line 109
    iget-object v8, p0, Lv0/c;->a:Lv0/a;

    .line 110
    .line 111
    if-eqz v8, :cond_5

    .line 112
    .line 113
    invoke-virtual {v8, v7, v5}, Lv0/a;->b(Lv0/a$b;Z)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    iget v0, p0, Lz/v0;->e:I

    .line 120
    .line 121
    const/16 v1, 0x8

    .line 122
    .line 123
    invoke-static {v0, v1}, Lb/d;->K(II)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    invoke-static {}, Lk0/c;->i()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    iget v0, p0, Lz/v0;->e:I

    .line 136
    .line 137
    or-int/2addr v0, v2

    .line 138
    iput v0, p0, Lz/v0;->e:I

    .line 139
    .line 140
    :cond_7
    iget v0, p0, Lz/v0;->e:I

    .line 141
    .line 142
    invoke-static {v0, v2}, Lb/d;->K(II)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    sget-object v0, Ls0/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 149
    .line 150
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 155
    .line 156
    .line 157
    sget-object v1, Ls0/a;->a:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 160
    .line 161
    .line 162
    invoke-static {}, Ls0/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 170
    .line 171
    .line 172
    new-instance v3, Lz/l;

    .line 173
    .line 174
    const/16 v0, 0xd

    .line 175
    .line 176
    invoke-direct {v3, v0}, Lz/l;-><init>(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catchall_0
    move-exception v1

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 186
    .line 187
    .line 188
    throw v1

    .line 189
    :cond_8
    :goto_3
    iget v0, p0, Lz/v0;->e:I

    .line 190
    .line 191
    const/4 v1, 0x6

    .line 192
    invoke-static {v0, v1}, Lb/d;->L(II)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    invoke-static {}, Ls0/a;->k()V

    .line 199
    .line 200
    .line 201
    :cond_9
    return-object v3
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method
