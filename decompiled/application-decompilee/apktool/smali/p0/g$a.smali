.class public final Lp0/g$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lp0/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public c:I

.field public d:[B

.field public final synthetic e:Lp0/g;


# direct methods
.method public constructor <init>(Lp0/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/g$a;->e:Lp0/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 12
    .line 13
    iput p2, p0, Lp0/g$a;->b:I

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lp0/g$a;->c:I

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lp0/g$a;->d:[B

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lp0/g$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g$a;->c:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lb/d;->K(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lp0/g$a;->c()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v1, p0, Lp0/g$a;->c:I

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    iput v1, p0, Lp0/g$a;->c:I

    .line 20
    .line 21
    iget-object v1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lp0/g$a;->e:Lp0/g;

    .line 27
    .line 28
    iget-byte p1, p1, Lp0/g;->c:B

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public final b(Lp0/g$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g$a;->c:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lb/d;->K(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lp0/g$a;->c()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v1, p0, Lp0/g$a;->e:Lp0/g;

    .line 28
    .line 29
    iget v2, v1, Lp0/g;->b:I

    .line 30
    .line 31
    if-le p1, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-byte p1, v1, Lp0/g;->c:B

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    if-ne p1, v1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 46
    .line 47
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g$a;->c:I

    .line 5
    .line 6
    and-int/lit8 v1, v1, -0x2

    .line 7
    .line 8
    iput v1, p0, Lp0/g$a;->c:I

    .line 9
    .line 10
    iget-object v1, p0, Lp0/g$a;->e:Lp0/g;

    .line 11
    .line 12
    iget-byte v1, v1, Lp0/g;->c:B

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lp0/g$b;

    .line 34
    .line 35
    iget-object v2, v2, Lp0/g$b;->e:Lc0/g;

    .line 36
    .line 37
    if-nez v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 46
    .line 47
    .line 48
    :cond_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v1
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lp0/g$a;->c:I

    .line 5
    .line 6
    and-int/lit8 v1, v1, -0x2

    .line 7
    .line 8
    iput v1, p0, Lp0/g$a;->c:I

    .line 9
    .line 10
    iget-object v1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method public final run()V
    .locals 15

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x12c

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iput-object v5, p0, Lp0/g$a;->d:[B

    .line 15
    .line 16
    iget v0, p0, Lp0/g$a;->c:I

    .line 17
    .line 18
    invoke-static {v0, v4}, Lb/d;->K(II)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget v0, p0, Lp0/g$a;->c:I

    .line 25
    .line 26
    and-int/lit8 v0, v0, -0x2

    .line 27
    .line 28
    iput v0, p0, Lp0/g$a;->c:I

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lp0/g$a;->e:Lp0/g;

    .line 31
    .line 32
    iget-object v6, v0, Lp0/g;->a:Lp0/g$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 33
    .line 34
    if-nez v6, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :try_start_1
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v7, v0, Lp0/g;->a:Lp0/g$e;

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v0, Lp0/g;->a:Lp0/g$e;

    .line 47
    .line 48
    iput v3, v0, Lp0/g$e;->b:I

    .line 49
    .line 50
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/io/InvalidObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 51
    .line 52
    .line 53
    :catch_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 54
    .line 55
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 56
    :try_start_3
    iget-object v6, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_3
    monitor-exit v0

    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    :try_start_4
    throw v1

    .line 75
    :cond_4
    :goto_1
    iget-object v0, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_f

    .line 82
    .line 83
    iget v0, p0, Lp0/g$a;->c:I

    .line 84
    .line 85
    invoke-static {v0, v4}, Lb/d;->K(II)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iget-object v6, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 90
    .line 91
    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    :try_start_5
    iget-object v7, p0, Lp0/g$a;->e:Lp0/g;

    .line 95
    .line 96
    iget-byte v7, v7, Lp0/g;->c:B

    .line 97
    .line 98
    if-nez v7, :cond_5

    .line 99
    .line 100
    iget-object v7, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    sub-int/2addr v7, v4

    .line 107
    goto :goto_2

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_5
    move v7, v3

    .line 112
    :goto_2
    iget-object v8, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 113
    .line 114
    invoke-virtual {v8, v7}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Lp0/g$b;

    .line 119
    .line 120
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    :try_start_6
    iget-object v6, v7, Lp0/g$b;->e:Lc0/g;

    .line 124
    .line 125
    if-nez v6, :cond_6

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    const/4 v4, 0x5

    .line 129
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Thread;->getPriority()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eq v4, v6, :cond_7

    .line 134
    .line 135
    invoke-virtual {p0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 136
    .line 137
    .line 138
    :cond_7
    if-nez v0, :cond_9

    .line 139
    .line 140
    iget-object v0, p0, Lp0/g$a;->e:Lp0/g;

    .line 141
    .line 142
    iget v4, v0, Lp0/g;->b:I

    .line 143
    .line 144
    iget-object v6, p0, Lp0/g$a;->a:Ljava/util/LinkedList;

    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    sub-int/2addr v4, v6

    .line 151
    mul-int/lit8 v4, v4, 0x64

    .line 152
    .line 153
    iget-object v6, p0, Lp0/g$a;->e:Lp0/g;

    .line 154
    .line 155
    iget v6, v6, Lp0/g;->b:I

    .line 156
    .line 157
    div-int/2addr v4, v6

    .line 158
    iget-object v6, v0, Lp0/g;->a:Lp0/g$e;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 159
    .line 160
    if-nez v6, :cond_8

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_8
    :try_start_7
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    iget-object v8, v0, Lp0/g;->a:Lp0/g$e;

    .line 168
    .line 169
    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v0, Lp0/g;->a:Lp0/g$e;

    .line 173
    .line 174
    iput v4, v0, Lp0/g$e;->b:I

    .line 175
    .line 176
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7
    .catch Ljava/io/InvalidObjectException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 177
    .line 178
    .line 179
    :catch_1
    :cond_9
    :goto_4
    :try_start_8
    iget-object v0, p0, Lp0/g$a;->e:Lp0/g;

    .line 180
    .line 181
    iget-object v1, v0, Lp0/g;->f:Lp0/g$a;

    .line 182
    .line 183
    if-nez v1, :cond_a

    .line 184
    .line 185
    goto/16 :goto_8

    .line 186
    .line 187
    :cond_a
    iget-object v0, v0, Lp0/g;->d:Lp0/i;

    .line 188
    .line 189
    iget v1, v7, Lp0/g$b;->d:I

    .line 190
    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lp0/i;->b(Ljava/lang/Integer;)Lp0/e$a;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-nez v0, :cond_e

    .line 200
    .line 201
    iget-object v0, p0, Lp0/g$a;->d:[B

    .line 202
    .line 203
    if-nez v0, :cond_b

    .line 204
    .line 205
    const v0, 0x8000

    .line 206
    .line 207
    .line 208
    new-array v0, v0, [B

    .line 209
    .line 210
    iput-object v0, p0, Lp0/g$a;->d:[B

    .line 211
    .line 212
    :cond_b
    new-instance v8, Lg0/h;

    .line 213
    .line 214
    iget-object v0, v7, Lp0/g$b;->b:Lg0/h;

    .line 215
    .line 216
    iget-object v1, v7, Lp0/g$b;->a:Lc0/d;

    .line 217
    .line 218
    iget-object v2, v1, Lc0/d;->a:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v1, v1, Lc0/d;->b:Ljava/lang/String;

    .line 221
    .line 222
    invoke-direct {v8, v2, v0, v1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, v7, Lp0/g$b;->a:Lc0/d;

    .line 226
    .line 227
    iget-wide v9, v0, Lc0/d;->d:J

    .line 228
    .line 229
    invoke-virtual {v0}, Lc0/d;->d()B

    .line 230
    .line 231
    .line 232
    move-result v11

    .line 233
    iget v12, v7, Lp0/g$b;->c:I

    .line 234
    .line 235
    iget v13, p0, Lp0/g$a;->b:I

    .line 236
    .line 237
    iget-object v14, p0, Lp0/g$a;->d:[B

    .line 238
    .line 239
    invoke-static/range {v8 .. v14}, Lp0/e;->f(Lg0/h;JIII[B)Lp0/e$a;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_c

    .line 244
    .line 245
    iget-object v1, v0, Lp0/e$a;->c:[Ljava/lang/String;

    .line 246
    .line 247
    if-eqz v1, :cond_c

    .line 248
    .line 249
    iget-object v2, v7, Lp0/g$b;->a:Lc0/d;

    .line 250
    .line 251
    aget-object v1, v1, v3

    .line 252
    .line 253
    iput-object v1, v2, Lc0/d;->h:Ljava/lang/Object;

    .line 254
    .line 255
    :cond_c
    if-eqz v0, :cond_d

    .line 256
    .line 257
    move-object v1, v0

    .line 258
    goto :goto_5

    .line 259
    :cond_d
    new-instance v1, Lp0/e$a;

    .line 260
    .line 261
    invoke-direct {v1, v5, v5, v5}, Lp0/e$a;-><init>(Landroid/graphics/Bitmap;[I[Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_5
    iget-object v2, p0, Lp0/g$a;->e:Lp0/g;

    .line 265
    .line 266
    iget-object v2, v2, Lp0/g;->d:Lp0/i;

    .line 267
    .line 268
    iget v3, v7, Lp0/g$b;->d:I

    .line 269
    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    invoke-virtual {v2, v3, v1}, Lp0/i;->c(Ljava/lang/Integer;Lp0/e$a;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 275
    .line 276
    .line 277
    :cond_e
    if-eqz v0, :cond_f

    .line 278
    .line 279
    :try_start_9
    iget-object v1, v7, Lp0/g$b;->e:Lc0/g;

    .line 280
    .line 281
    if-eqz v1, :cond_f

    .line 282
    .line 283
    iget-object v1, v0, Lp0/e$a;->a:Landroid/graphics/Bitmap;

    .line 284
    .line 285
    if-eqz v1, :cond_f

    .line 286
    .line 287
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->f()Landroid/os/Handler;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    new-instance v2, Lp0/g$d;

    .line 292
    .line 293
    invoke-direct {v2, v7, v0}, Lp0/g$d;-><init>(Lp0/g$b;Lp0/e$a;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :goto_6
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 301
    :try_start_b
    throw v0

    .line 302
    :catch_2
    :cond_f
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 303
    .line 304
    .line 305
    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 306
    if-eqz v0, :cond_0

    .line 307
    .line 308
    goto :goto_8

    .line 309
    :catch_3
    move-exception v0

    .line 310
    instance-of v0, v0, Ljava/lang/InterruptedException;

    .line 311
    .line 312
    :goto_8
    return-void
.end method
