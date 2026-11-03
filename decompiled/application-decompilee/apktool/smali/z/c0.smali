.class public final Lz/c0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Lg0/h;

.field public final f:Lc0/b;

.field public final g:I

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:I


# direct methods
.method public constructor <init>(Lg0/h;Lc0/b;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/c0;->e:Lg0/h;

    .line 5
    .line 6
    iput-object p2, p0, Lz/c0;->f:Lc0/b;

    .line 7
    .line 8
    iput p3, p0, Lz/c0;->i:I

    .line 9
    .line 10
    iput p4, p0, Lz/c0;->g:I

    .line 11
    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lz/c0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/c0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Lv0/c;->e()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lz/c0;->e:Lg0/h;

    .line 7
    .line 8
    iget-object v2, v1, Lg0/h;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v2, p0, Lz/c0;->i:I

    .line 23
    .line 24
    const/16 v3, 0x100

    .line 25
    .line 26
    invoke-static {v2, v3}, Lb/d;->K(II)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x200

    .line 31
    .line 32
    invoke-static {v2, v4}, Lb/d;->K(II)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    array-length v7, v6

    .line 45
    move v8, v4

    .line 46
    :goto_0
    if-ge v8, v7, :cond_1

    .line 47
    .line 48
    aget-object v9, v6, v8

    .line 49
    .line 50
    invoke-interface {v9, v1}, Lg0/b;->j(Lg0/h;)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-eqz v10, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object v9, v5

    .line 61
    :goto_1
    if-eqz v9, :cond_2

    .line 62
    .line 63
    invoke-interface {v9, v1}, Lg0/b;->f(Lg0/h;)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const/16 v7, 0x10

    .line 68
    .line 69
    invoke-static {v6, v7}, Lb/d;->K(II)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-nez v6, :cond_4

    .line 74
    .line 75
    :cond_2
    move v2, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v9, v5

    .line 78
    :cond_4
    :goto_2
    iget-object v6, p0, Lz/c0;->f:Lc0/b;

    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_9

    .line 89
    .line 90
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Lc0/d;

    .line 95
    .line 96
    iget-object v8, p0, Lz/c0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    if-eqz v2, :cond_8

    .line 106
    .line 107
    invoke-virtual {v7}, Lc0/d;->f()Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_8

    .line 112
    .line 113
    invoke-virtual {v7}, Lc0/d;->g()Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-nez v8, :cond_8

    .line 118
    .line 119
    iget-object v8, v7, Lc0/d;->h:Ljava/lang/Object;

    .line 120
    .line 121
    if-eqz v8, :cond_7

    .line 122
    .line 123
    const/4 v8, 0x1

    .line 124
    goto :goto_4

    .line 125
    :cond_7
    move v8, v4

    .line 126
    :goto_4
    if-nez v8, :cond_8

    .line 127
    .line 128
    iget-object v8, v7, Lc0/d;->a:Ljava/lang/String;

    .line 129
    .line 130
    invoke-interface {v9, v8, v1}, Lg0/b;->a(Ljava/lang/String;Lg0/h;)I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    if-ltz v8, :cond_5

    .line 135
    .line 136
    new-instance v10, Lp0/h;

    .line 137
    .line 138
    invoke-direct {v10, v8}, Lp0/h;-><init>(I)V

    .line 139
    .line 140
    .line 141
    iput-object v10, v7, Lc0/d;->h:Ljava/lang/Object;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_8
    if-eqz v3, :cond_5

    .line 145
    .line 146
    invoke-virtual {v7, v0}, Lc0/d;->a(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_9
    :goto_5
    return-object v5
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lz/c0;->g:I

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
