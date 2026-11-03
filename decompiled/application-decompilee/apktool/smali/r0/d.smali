.class public final Lr0/d;
.super Lr0/g;
.source "SourceFile"


# instance fields
.field public i:Lg0/h;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;I)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0, p2}, Lr0/g;-><init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V

    return-void
.end method


# virtual methods
.method public final p()V
    .locals 9

    .line 1
    iget-object v0, p0, Lr0/d;->i:Lg0/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lr0/g;->d(Lg0/h;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Lm0/d;->g()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    iget-object v3, p0, Lr0/d;->j:Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v3, p0, Lr0/d;->k:Z

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    iget v5, p0, Lr0/g;->c:I

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move v3, v6

    .line 36
    :goto_0
    if-nez v3, :cond_2

    .line 37
    .line 38
    :cond_1
    iget-boolean v3, p0, Lr0/d;->k:Z

    .line 39
    .line 40
    if-nez v3, :cond_9

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_9

    .line 47
    .line 48
    :cond_2
    iget-object v3, p0, Lr0/d;->i:Lg0/h;

    .line 49
    .line 50
    iget-object v3, v3, Lg0/h;->c:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v5, v6, v3}, Ld0/a;->b(IZLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lr0/g;->isCancelled()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    invoke-virtual {p0, v1}, Lr0/g;->k(I)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    invoke-virtual {p0}, Lr0/g;->j()Ln0/a;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v6, p0, Lr0/d;->i:Lg0/h;

    .line 73
    .line 74
    iget-object v6, v6, Lg0/h;->c:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v7, p0, Lr0/d;->l:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v8, p0, Lr0/d;->j:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v3, v6, v7, v8, v0}, Lq0/a;->a(Ln0/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    :cond_4
    :goto_1
    move v6, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    invoke-virtual {p0}, Lr0/g;->h()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_8

    .line 91
    .line 92
    new-instance v3, Lg0/h;

    .line 93
    .line 94
    iget-object v7, p0, Lr0/d;->i:Lg0/h;

    .line 95
    .line 96
    iget-object v7, v7, Lg0/h;->c:Ljava/lang/String;

    .line 97
    .line 98
    invoke-direct {v3, v7}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v3, v1}, Lq0/c;->c(Lg0/h;Z)Lq0/c;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    sget-object v7, Lb/d;->e:[B

    .line 108
    .line 109
    aget-byte v8, v7, v5

    .line 110
    .line 111
    or-int/lit8 v8, v8, -0x80

    .line 112
    .line 113
    int-to-byte v8, v8

    .line 114
    aput-byte v8, v7, v5

    .line 115
    .line 116
    invoke-virtual {v3, p0}, Lq0/c;->b(Lr0/a;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-nez v7, :cond_6

    .line 121
    .line 122
    const-string v3, "Failed to write to archive"

    .line 123
    .line 124
    invoke-static {v5, v6, v3}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-object v3, v4

    .line 128
    :cond_6
    if-eqz v3, :cond_7

    .line 129
    .line 130
    iget-object v6, v3, Lq0/c;->b:Ljava/lang/String;

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object v6, p0, Lr0/d;->i:Lg0/h;

    .line 134
    .line 135
    iget-object v6, v6, Lg0/h;->c:Ljava/lang/String;

    .line 136
    .line 137
    :goto_2
    iget-object v7, p0, Lr0/d;->l:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v8, p0, Lr0/d;->j:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v5, v6, v7, v8, v0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cAddFiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v3, :cond_4

    .line 146
    .line 147
    invoke-virtual {v3, p0}, Lq0/c;->a(Lr0/a;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lr0/g;->n()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 155
    .line 156
    .line 157
    :cond_9
    if-eqz v6, :cond_a

    .line 158
    .line 159
    const/high16 v0, 0x120000

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_a
    const/high16 v0, 0x110000

    .line 163
    .line 164
    :goto_4
    invoke-virtual {p0, v0}, Lr0/g;->q(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 168
    .line 169
    iget-object v2, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 170
    .line 171
    invoke-virtual {v2, p0, v6, v0, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    if-eqz v6, :cond_b

    .line 175
    .line 176
    invoke-virtual {v2, v5, v1, v4}, Lru/zdevs/zarchiver/service/ZArchiverService;->m(IILg0/h;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    return-void
.end method
