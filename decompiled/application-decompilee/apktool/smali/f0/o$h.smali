.class public final Lf0/o$h;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public e:Lru/zdevs/zarchiver/archiver/NArc;

.field public final f:Lg0/h;

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lg0/h;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 6
    .line 7
    iput-object p2, p0, Lf0/o$h;->f:Lg0/h;

    .line 8
    .line 9
    iput p3, p0, Lf0/o$h;->g:I

    .line 10
    .line 11
    const-string p2, "epub"

    .line 12
    .line 13
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x3

    .line 22
    :goto_0
    invoke-static {p1, p2}, Lf0/o;->r(Landroid/app/Dialog;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0}, Lv0/c;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 10

    .line 1
    iget-object v0, p0, Lf0/o$h;->f:Lg0/h;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lg0/h;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    if-eqz v5, :cond_2

    .line 13
    .line 14
    iget-object v5, v0, Lg0/h;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v5}, Lru/zdevs/zarchiver/archiver/NArc;->l(Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iput-object v5, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    if-nez v5, :cond_1

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {v5, v4}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    iput-object v4, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 30
    .line 31
    :cond_0
    return-object v4

    .line 32
    :cond_1
    :try_start_1
    iget-object v5, v0, Lg0/h;->d:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    invoke-static {v6, v5}, Lb/d;->i0(ILjava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v6, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 40
    .line 41
    iget-object v7, v0, Lg0/h;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v6, v5, v7}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lg0/h;->m()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-static {v0}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lg0/f;->w()Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    new-instance v5, Ljava/io/FileInputStream;

    .line 64
    .line 65
    iget-object v6, v0, Lg0/h;->c:Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    .line 69
    .line 70
    :goto_0
    if-nez v5, :cond_5

    .line 71
    .line 72
    :try_start_2
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 80
    .line 81
    .line 82
    iput-object v4, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 83
    .line 84
    :cond_4
    return-object v4

    .line 85
    :cond_5
    :try_start_3
    iget v6, p0, Lf0/o$h;->g:I

    .line 86
    .line 87
    const v7, 0x7f0c005b

    .line 88
    .line 89
    .line 90
    const/4 v8, 0x3

    .line 91
    const/4 v9, 0x0

    .line 92
    if-ne v6, v7, :cond_6

    .line 93
    .line 94
    new-instance v6, Lb/c;

    .line 95
    .line 96
    invoke-direct {v6, v3}, Lb/c;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lb/d;->s(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v6, v5, v0, v9}, Lb/c;->b(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v9}, Lb/c;->a(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    aput-object v0, v2, v9

    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    invoke-virtual {v6, v0}, Lb/c;->a(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    aput-object v7, v2, v3

    .line 122
    .line 123
    invoke-virtual {v6, v8}, Lb/c;->a(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    aput-object v6, v2, v0

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    invoke-static {v5}, Lp0/c;->a(Ljava/io/InputStream;)Lp0/c$a;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    iget-object v6, v0, Lp0/c$a;->a:Ljava/lang/String;

    .line 137
    .line 138
    aput-object v6, v2, v9

    .line 139
    .line 140
    iget-object v6, v0, Lp0/c$a;->b:Ljava/lang/String;

    .line 141
    .line 142
    aput-object v6, v2, v3

    .line 143
    .line 144
    iget-object v0, v0, Lp0/c$a;->c:Ljava/lang/String;

    .line 145
    .line 146
    aput-object v0, v2, v8

    .line 147
    .line 148
    :cond_7
    :goto_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 152
    .line 153
    if-eqz v0, :cond_9

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    goto :goto_2

    .line 161
    :catchall_1
    move-exception v0

    .line 162
    move-object v5, v4

    .line 163
    :goto_2
    iget-object v1, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 164
    .line 165
    if-eqz v1, :cond_8

    .line 166
    .line 167
    invoke-virtual {v1, v5}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 168
    .line 169
    .line 170
    iput-object v4, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 171
    .line 172
    :cond_8
    throw v0

    .line 173
    :catch_0
    move-object v5, v4

    .line 174
    :catch_1
    iget-object v0, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 175
    .line 176
    if-eqz v0, :cond_9

    .line 177
    .line 178
    invoke-virtual {v0, v5}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    iput-object v4, p0, Lf0/o$h;->e:Lru/zdevs/zarchiver/archiver/NArc;

    .line 182
    .line 183
    :cond_9
    new-array v0, v1, [I

    .line 184
    .line 185
    fill-array-data v0, :array_0

    .line 186
    .line 187
    .line 188
    new-instance v1, Lf0/o$c;

    .line 189
    .line 190
    invoke-direct {v1, v3, v2, v0}, Lf0/o$c;-><init>(I[Ljava/lang/String;[I)V

    .line 191
    .line 192
    .line 193
    return-object v1

    .line 194
    nop

    .line 195
    :array_0
    .array-data 4
        0x7f0c005a
        0x7f0c005d
        0x7f0c006f
        0x7f0c005c
    .end array-data
.end method
