.class public final Lh0/a;
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
    iput v0, p0, Lh0/a;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;[ILg0/e$c;Lu0/d;)V
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-interface/range {p6 .. p6}, Lu0/d;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v0, v1}, Le0/a;->f(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_6

    .line 33
    .line 34
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lc0/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .line 40
    :try_start_1
    iget-object v2, v1, Lc0/d;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    :try_start_2
    iget-object v2, v1, Lc0/d;->a:Ljava/lang/String;

    .line 52
    .line 53
    :goto_0
    move-object/from16 v9, p3

    .line 54
    .line 55
    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    move-object/from16 v10, p4

    .line 66
    .line 67
    invoke-static {v2, v10}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    new-instance v2, Lg0/e$b;

    .line 74
    .line 75
    invoke-direct {v2}, Lg0/e$b;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lc0/d;->f()Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_2

    .line 83
    .line 84
    const/4 v3, 0x1

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const/4 v3, 0x0

    .line 87
    :goto_1
    iput-boolean v3, v2, Lg0/e$b;->a:Z

    .line 88
    .line 89
    invoke-virtual {v1}, Lc0/d;->b()J

    .line 90
    .line 91
    .line 92
    move-result-wide v3

    .line 93
    iput-wide v3, v2, Lg0/e$b;->b:J

    .line 94
    .line 95
    iget-wide v3, v1, Lc0/d;->d:J

    .line 96
    .line 97
    iput-wide v3, v2, Lg0/e$b;->c:J

    .line 98
    .line 99
    new-instance v3, Lg0/h;

    .line 100
    .line 101
    move-object v11, p0

    .line 102
    move-object v12, p1

    .line 103
    invoke-direct {v3, p0, p1, v0}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v4, v1, Lc0/d;->a:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v5, v1, Lc0/d;->b:Ljava/lang/String;

    .line 109
    .line 110
    move-object/from16 v13, p5

    .line 111
    .line 112
    invoke-interface {v13, v2, v3, v4, v5}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move-object v11, p0

    .line 117
    move-object v12, p1

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    move-object v11, p0

    .line 120
    move-object v12, p1

    .line 121
    move-object/from16 v10, p4

    .line 122
    .line 123
    :goto_2
    move-object/from16 v13, p5

    .line 124
    .line 125
    :goto_3
    invoke-virtual {v1}, Lc0/d;->f()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v1, v1, Lc0/d;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const/16 v1, 0x2f

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object v1, p0

    .line 154
    move-object v2, p1

    .line 155
    move-object/from16 v4, p3

    .line 156
    .line 157
    move-object/from16 v5, p4

    .line 158
    .line 159
    move-object/from16 v6, p5

    .line 160
    .line 161
    move-object/from16 v7, p6

    .line 162
    .line 163
    invoke-static/range {v1 .. v7}, Lh0/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;[ILg0/e$c;Lu0/d;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    if-eqz p6, :cond_1

    .line 167
    .line 168
    invoke-interface/range {p6 .. p6}, Lu0/d;->isCancelled()Z

    .line 169
    .line 170
    .line 171
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    if-eqz v1, :cond_1

    .line 173
    .line 174
    :catch_1
    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg0/h;)I
    .locals 2

    .line 1
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p2, p2, Lg0/h;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p2, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p2, v0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Le0/a;->b:Le0/d;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v0, p1}, Le0/d;->i(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 35
    .line 36
    .line 37
    return p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public final b(Lg0/h;Lc0/b;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lh0/a;->a:I

    .line 3
    .line 4
    invoke-virtual {p1}, Lg0/h;->g()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p1, Lg0/h;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    invoke-static {p3, v3}, Lb/d;->K(II)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lg0/h;->i()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-le v3, v5, :cond_2

    .line 38
    .line 39
    :cond_1
    new-instance v3, Lc0/d;

    .line 40
    .line 41
    const-string v6, ".."

    .line 42
    .line 43
    invoke-direct {v3, v6, v4}, Lc0/d;-><init>(Ljava/lang/String;B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {p2}, Lc0/b;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    :try_start_0
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v1}, Le0/a;->n(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-static {p3, v5}, Lb/d;->K(II)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-nez p3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Le0/a;->k()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    if-eqz p3, :cond_4

    .line 74
    .line 75
    invoke-virtual {v3}, Le0/a;->k()I

    .line 76
    .line 77
    .line 78
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    if-eq p3, v4, :cond_4

    .line 80
    .line 81
    :cond_3
    :try_start_1
    invoke-static {p1}, Ld0/b;->d(Lg0/h;)V
    :try_end_1
    .catch Ld0/b$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    .line 83
    .line 84
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Le0/a;->k()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const p3, 0x7f0c00dc

    .line 89
    .line 90
    .line 91
    const/16 v1, 0xd

    .line 92
    .line 93
    if-eq p1, v1, :cond_9

    .line 94
    .line 95
    invoke-virtual {v3, v2, p2}, Le0/a;->f(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lc0/b;->size()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-gt p1, v0, :cond_a

    .line 103
    .line 104
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Le0/a;->k()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const/4 p2, 0x2

    .line 113
    if-ne p1, p2, :cond_5

    .line 114
    .line 115
    const p1, 0x7f0c004d

    .line 116
    .line 117
    .line 118
    iput p1, p0, Lh0/a;->a:I

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    if-ne p1, v4, :cond_6

    .line 122
    .line 123
    const p1, 0x7f0c00e1

    .line 124
    .line 125
    .line 126
    iput p1, p0, Lh0/a;->a:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_6
    if-ne p1, v1, :cond_7

    .line 130
    .line 131
    iput p3, p0, Lh0/a;->a:I

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    const/16 p2, 0xc8

    .line 135
    .line 136
    if-ne p1, p2, :cond_8

    .line 137
    .line 138
    const p1, 0x7f0c00d7

    .line 139
    .line 140
    .line 141
    iput p1, p0, Lh0/a;->a:I

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_8
    const p1, 0x7f0c00e6

    .line 145
    .line 146
    .line 147
    iput p1, p0, Lh0/a;->a:I

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_9
    iput p3, p0, Lh0/a;->a:I

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_0
    const p1, 0x7f0c0044

    .line 154
    .line 155
    .line 156
    iput p1, p0, Lh0/a;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    :catch_1
    :cond_a
    :goto_0
    return v5
.end method

.method public final c(Lc0/i;)Lc0/i;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lh0/a;->a:I

    return v0
.end method

.method public final e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lg0/h;->g()Z

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
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object p1, p1, Lg0/h;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, p1, p2}, Le0/a;->e(Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p1

    .line 20
    :catch_0
    return-object v1
.end method

.method public final f(Lg0/h;)I
    .locals 0

    const/16 p1, 0x10

    return p1
.end method

.method public final g([Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    invoke-virtual {v1}, Lg0/h;->g()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v2

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    array-length v3, p2

    .line 18
    if-ge v0, v3, :cond_2

    .line 19
    .line 20
    aget-object v3, p1, v0

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    aget-object v3, p2, v0

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    aget-object v4, p1, v0

    .line 34
    .line 35
    iget-object v4, v4, Lg0/h;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, "/"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    aget-object v4, p2, v0

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, v1, p3}, Le0/a;->g(Ljava/util/ArrayList;Lu0/d;)Lg0/e$b;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p1

    .line 69
    :catch_0
    return-object v2
.end method

.method public final h(Lg0/h;)Lg0/e$a;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lg0/h;->g()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Le0/a;->d()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    new-instance p1, Lg0/e$a;

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ""

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0c0063

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    move-object v1, v0

    .line 42
    move-object v0, p1

    .line 43
    invoke-direct/range {v0 .. v5}, Lg0/e$a;-><init>(Ljava/lang/String;JJ)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public final i(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v9, p5

    .line 8
    .line 9
    move-object/from16 v10, p6

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Lg0/h;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v11, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return v11

    .line 19
    :cond_0
    iget-object v12, v0, Lg0/h;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, v0, Lg0/h;->e:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, "/"

    .line 28
    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    iget-object v13, v0, Lg0/h;->a:Ljava/lang/String;

    .line 42
    .line 43
    :try_start_0
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v12}, Le0/a;->n(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    return v11

    .line 54
    :catch_0
    :cond_2
    move-object/from16 v0, p2

    .line 55
    .line 56
    invoke-static {v0, v11}, Lu0/h;->c(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    aget-object v0, v0, v11

    .line 61
    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    const/4 v15, 0x1

    .line 67
    const/16 v0, 0xa

    .line 68
    .line 69
    :try_start_1
    invoke-interface {v9, v0}, Lg0/e$c;->b(I)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v8, v15}, Lb/d;->K(II)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    move v2, v15

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move v2, v11

    .line 85
    :goto_0
    iget-object v4, v0, Le0/a;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    .line 87
    :try_start_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 92
    .line 93
    .line 94
    iget-object v0, v0, Le0/a;->b:Le0/d;

    .line 95
    .line 96
    const/4 v5, 0x0

    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    move-object v0, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_4
    invoke-interface {v0, v1, v14, v2, v10}, Le0/d;->r(Ljava/lang/String;Ljava/util/regex/Pattern;ZLu0/d;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 110
    .line 111
    .line 112
    const/16 v6, 0x2f

    .line 113
    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    const/16 v1, 0x42

    .line 117
    .line 118
    invoke-interface {v9, v1}, Lg0/e$c;->b(I)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Le0/b;

    .line 136
    .line 137
    iget-object v2, v1, Le0/b;->a:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v2, v7}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_5

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_5
    iget-object v3, v1, Le0/b;->f:Le0/b;

    .line 147
    .line 148
    if-nez v3, :cond_6

    .line 149
    .line 150
    const-string v3, ""

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v8, v3, Le0/b;->a:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-object v3, v3, Le0/b;->f:Le0/b;

    .line 167
    .line 168
    :goto_3
    if-eqz v3, :cond_7

    .line 169
    .line 170
    iget-object v8, v3, Le0/b;->a:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v4, v11, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v8, v11, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget-object v3, v3, Le0/b;->f:Le0/b;

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    :goto_4
    new-instance v4, Lg0/e$b;

    .line 187
    .line 188
    invoke-direct {v4}, Lg0/e$b;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Le0/b;->b()Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    xor-int/2addr v8, v15

    .line 196
    iput-boolean v8, v4, Lg0/e$b;->a:Z

    .line 197
    .line 198
    iget v8, v1, Le0/b;->c:I

    .line 199
    .line 200
    int-to-long v6, v8

    .line 201
    const-wide/16 v16, 0x3e8

    .line 202
    .line 203
    mul-long v6, v6, v16

    .line 204
    .line 205
    iput-wide v6, v4, Lg0/e$b;->b:J

    .line 206
    .line 207
    iget-wide v6, v1, Le0/b;->b:J

    .line 208
    .line 209
    iput-wide v6, v4, Lg0/e$b;->c:J

    .line 210
    .line 211
    new-instance v1, Lg0/h;

    .line 212
    .line 213
    invoke-direct {v1, v13, v12, v3}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v9, v4, v1, v2, v5}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v7, p3

    .line 220
    .line 221
    const/16 v6, 0x2f

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_8
    const/16 v0, 0x64

    .line 225
    .line 226
    invoke-interface {v9, v0}, Lg0/e$c;->b(I)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_a

    .line 230
    .line 231
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2, v1, v0}, Le0/a;->f(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_a

    .line 248
    .line 249
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    :cond_a
    move-object v7, v1

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v16

    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v17

    .line 262
    move/from16 v18, v11

    .line 263
    .line 264
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_10

    .line 269
    .line 270
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lc0/d;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 275
    .line 276
    :try_start_4
    iget-object v1, v0, Lc0/d;->a:Ljava/lang/String;

    .line 277
    .line 278
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 286
    goto :goto_6

    .line 287
    :catch_1
    :try_start_5
    iget-object v1, v0, Lc0/d;->a:Ljava/lang/String;

    .line 288
    .line 289
    :goto_6
    invoke-virtual {v14, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_c

    .line 298
    .line 299
    move-object/from16 v6, p3

    .line 300
    .line 301
    invoke-static {v1, v6}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_d

    .line 306
    .line 307
    new-instance v1, Lg0/e$b;

    .line 308
    .line 309
    invoke-direct {v1}, Lg0/e$b;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lc0/d;->f()Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-nez v2, :cond_b

    .line 317
    .line 318
    move v2, v15

    .line 319
    goto :goto_7

    .line 320
    :cond_b
    move v2, v11

    .line 321
    :goto_7
    iput-boolean v2, v1, Lg0/e$b;->a:Z

    .line 322
    .line 323
    invoke-virtual {v0}, Lc0/d;->b()J

    .line 324
    .line 325
    .line 326
    move-result-wide v2

    .line 327
    iput-wide v2, v1, Lg0/e$b;->b:J

    .line 328
    .line 329
    iget-wide v2, v0, Lc0/d;->d:J

    .line 330
    .line 331
    iput-wide v2, v1, Lg0/e$b;->c:J

    .line 332
    .line 333
    new-instance v2, Lg0/h;

    .line 334
    .line 335
    invoke-direct {v2, v13, v12, v7}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    iget-object v3, v0, Lc0/d;->a:Ljava/lang/String;

    .line 339
    .line 340
    iget-object v4, v0, Lc0/d;->b:Ljava/lang/String;

    .line 341
    .line 342
    invoke-interface {v9, v1, v2, v3, v4}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_c
    move-object/from16 v6, p3

    .line 347
    .line 348
    :cond_d
    :goto_8
    invoke-virtual {v0}, Lc0/d;->f()Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_e

    .line 353
    .line 354
    invoke-static {v8, v15}, Lb/d;->K(II)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-nez v1, :cond_e

    .line 359
    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget-object v0, v0, Lc0/d;->a:Ljava/lang/String;

    .line 369
    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const/16 v5, 0x2f

    .line 374
    .line 375
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    move-object v0, v13

    .line 383
    move-object v1, v12

    .line 384
    move-object v3, v14

    .line 385
    move-object/from16 v4, p3

    .line 386
    .line 387
    move/from16 v19, v5

    .line 388
    .line 389
    move-object/from16 v5, p5

    .line 390
    .line 391
    move-object/from16 v6, p6

    .line 392
    .line 393
    invoke-static/range {v0 .. v6}, Lh0/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;[ILg0/e$c;Lu0/d;)V

    .line 394
    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_e
    const/16 v19, 0x2f

    .line 398
    .line 399
    :goto_9
    if-eqz v10, :cond_f

    .line 400
    .line 401
    invoke-interface/range {p6 .. p6}, Lu0/d;->isCancelled()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_f

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :cond_f
    add-int/lit8 v18, v18, 0x1

    .line 409
    .line 410
    mul-int/lit8 v0, v18, 0x64

    .line 411
    .line 412
    div-int v0, v0, v16

    .line 413
    .line 414
    invoke-interface {v9, v0}, Lg0/e$c;->b(I)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_5

    .line 418
    .line 419
    :catchall_0
    move-exception v0

    .line 420
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 425
    .line 426
    .line 427
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 428
    :catch_2
    :cond_10
    :goto_a
    return v15
.end method

.method public final j(Lg0/h;)Z
    .locals 0

    invoke-virtual {p1}, Lg0/h;->g()Z

    move-result p1

    return p1
.end method

.method public final k(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lg0/h;->g()Z

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
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p1, Lg0/h;->e:Ljava/lang/String;

    .line 15
    .line 16
    array-length v2, p2

    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v2, :cond_2

    .line 19
    .line 20
    aget-object v4, p2, v3

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    new-instance v5, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v6, "/"

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Le0/a;->m()Le0/a;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v0, p3}, Le0/a;->g(Ljava/util/ArrayList;Lu0/d;)Lg0/e$b;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-object p1

    .line 59
    :catch_0
    return-object v1
.end method
