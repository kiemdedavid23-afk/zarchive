.class public abstract Lg0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/e$a;,
        Lg0/e$b;,
        Lg0/e$c;
    }
.end annotation


# static fields
.field public static a:[Lg0/b;


# direct methods
.method public static a([Ljava/lang/String;)[I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    array-length v2, p0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v3

    .line 13
    :goto_0
    if-ge v4, v2, :cond_7

    .line 14
    .line 15
    aget-object v5, p0, v4

    .line 16
    .line 17
    const-string v6, "[APK]"

    .line 18
    .line 19
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-eqz v6, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x6

    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/16 v5, 0x14

    .line 34
    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    const-string v6, "[ARC]"

    .line 45
    .line 46
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x2

    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    const/16 v5, 0x11

    .line 69
    .line 70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    const/16 v5, 0x12

    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    const/16 v5, 0x13

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const-string v6, "[MP3]"

    .line 97
    .line 98
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-eqz v6, :cond_3

    .line 103
    .line 104
    const/4 v5, 0x7

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    const-string v6, "[DOC]"

    .line 114
    .line 115
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_4

    .line 120
    .line 121
    const/4 v5, 0x5

    .line 122
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    const/16 v5, 0x8

    .line 130
    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    const/16 v5, 0xa

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    const/16 v5, 0xd

    .line 148
    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    const/16 v5, 0xb

    .line 157
    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    const/16 v5, 0xc

    .line 166
    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    const-string v6, "[IMG]"

    .line 176
    .line 177
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-eqz v6, :cond_5

    .line 182
    .line 183
    const/16 v5, 0x9

    .line 184
    .line 185
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_5
    const-string v6, "[VID]"

    .line 194
    .line 195
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-eqz v5, :cond_6

    .line 200
    .line 201
    const/16 v5, 0xe

    .line 202
    .line 203
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_8

    .line 219
    .line 220
    return-object v0

    .line 221
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 222
    .line 223
    .line 224
    new-array v0, p0, [I

    .line 225
    .line 226
    :goto_2
    if-ge v3, p0, :cond_9

    .line 227
    .line 228
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    check-cast v2, Ljava/lang/Integer;

    .line 233
    .line 234
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    aput v2, v0, v3

    .line 239
    .line 240
    add-int/lit8 v3, v3, 0x1

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_9
    return-object v0
.end method

.method public static declared-synchronized b()[Lg0/b;
    .locals 5

    .line 1
    const-class v0, Lg0/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lg0/e;->a:[Lg0/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    new-array v1, v1, [Lg0/b;

    .line 10
    .line 11
    sput-object v1, Lg0/e;->a:[Lg0/b;

    .line 12
    .line 13
    new-instance v2, Lh0/a;

    .line 14
    .line 15
    invoke-direct {v2}, Lh0/a;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aput-object v2, v1, v3

    .line 20
    .line 21
    new-instance v2, Li0/b;

    .line 22
    .line 23
    invoke-direct {v2}, Li0/b;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    aput-object v2, v1, v3

    .line 28
    .line 29
    new-instance v2, Ll0/a;

    .line 30
    .line 31
    invoke-direct {v2}, Ll0/a;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    aput-object v2, v1, v4

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    add-int/2addr v3, v2

    .line 39
    new-instance v4, Lj0/a;

    .line 40
    .line 41
    invoke-direct {v4}, Lj0/a;-><init>()V

    .line 42
    .line 43
    .line 44
    aput-object v4, v1, v2

    .line 45
    .line 46
    new-instance v2, Li0/c;

    .line 47
    .line 48
    invoke-direct {v2}, Li0/c;-><init>()V

    .line 49
    .line 50
    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    :cond_0
    sget-object v1, Lg0/e;->a:[Lg0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    .line 58
    monitor-exit v0

    .line 59
    throw v1
.end method

.method public static c(Lg0/h;)I
    .locals 6

    .line 1
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v3, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-interface {v4, p0}, Lg0/b;->j(Lg0/h;)Z

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-interface {v4, p0}, Lg0/b;->f(Lg0/h;)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return v2
.end method

.method public static d(Lg0/h;)Lg0/e$a;
    .locals 4

    .line 1
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-interface {v3, p0}, Lg0/b;->h(Lg0/h;)Lg0/e$a;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    array-length v2, v1

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_3

    .line 12
    .line 13
    aget-object v4, v1, v3

    .line 14
    .line 15
    invoke-interface {v4, p0, p1}, Lg0/b;->e(Lg0/h;Lu0/d;)Lg0/e$b;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    return-object v4

    .line 22
    :cond_1
    if-eqz p1, :cond_2

    .line 23
    .line 24
    invoke-interface {p1}, Lu0/d;->isCancelled()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static f(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_3

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    invoke-interface {v4, p0, p1, p2}, Lg0/b;->k(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    return-object v4

    .line 24
    :cond_1
    if-eqz p2, :cond_2

    .line 25
    .line 26
    invoke-interface {p2}, Lu0/d;->isCancelled()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static g(Ljava/lang/String;[I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lb/d;->E(Ljava/lang/String;)B

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    array-length v2, p1

    .line 14
    move v3, v1

    .line 15
    :goto_0
    if-ge v3, v2, :cond_4

    .line 16
    .line 17
    aget v4, p1, v3

    .line 18
    .line 19
    if-ne v4, p0, :cond_2

    .line 20
    .line 21
    return v0

    .line 22
    :cond_2
    if-le v4, p0, :cond_3

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_4
    :goto_1
    return v1
.end method

.method public static h(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)V
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Lg0/e;->b()[Lg0/b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    array-length v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_3

    .line 11
    .line 12
    aget-object v3, v0, v2

    .line 13
    .line 14
    move-object v4, p0

    .line 15
    move-object v5, p1

    .line 16
    move-object v6, p2

    .line 17
    move v7, p3

    .line 18
    move-object v8, p4

    .line 19
    move-object v9, p5

    .line 20
    invoke-interface/range {v3 .. v9}, Lg0/b;->i(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    if-eqz p5, :cond_2

    .line 28
    .line 29
    invoke-interface {p5}, Lu0/d;->isCancelled()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_1
    return-void
.end method

.method public static i(ILc0/b;)V
    .locals 1

    .line 1
    invoke-static {p1, p0}, Lg0/e;->j(Ljava/util/List;I)Lg1/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p1, Lc0/b;->c:[I

    .line 8
    .line 9
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit p1

    .line 16
    throw p0
.end method

.method public static j(Ljava/util/List;I)Lg1/d;
    .locals 5

    .line 1
    and-int/lit16 v0, p1, 0xf0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {p1, v1}, Lb/d;->K(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/16 v1, 0x2710

    .line 14
    .line 15
    const/16 v2, 0x30

    .line 16
    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    const/16 v4, 0x10

    .line 20
    .line 21
    if-le p0, v1, :cond_3

    .line 22
    .line 23
    if-eq v0, v4, :cond_2

    .line 24
    .line 25
    if-eq v0, v3, :cond_1

    .line 26
    .line 27
    if-eq v0, v2, :cond_0

    .line 28
    .line 29
    new-instance p0, Lg1/d;

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_0
    new-instance p0, Lg1/d;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_1
    new-instance p0, Lg1/d;

    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    new-instance p0, Lg1/d;

    .line 51
    .line 52
    const/4 v0, 0x7

    .line 53
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_3
    if-eq v0, v4, :cond_6

    .line 58
    .line 59
    if-eq v0, v3, :cond_5

    .line 60
    .line 61
    if-eq v0, v2, :cond_4

    .line 62
    .line 63
    new-instance p0, Lg1/d;

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 67
    .line 68
    .line 69
    return-object p0

    .line 70
    :cond_4
    new-instance p0, Lg1/d;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_5
    new-instance p0, Lg1/d;

    .line 78
    .line 79
    const/4 v0, 0x4

    .line 80
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 81
    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_6
    new-instance p0, Lg1/d;

    .line 85
    .line 86
    const/4 v0, 0x6

    .line 87
    invoke-direct {p0, v0, p1}, Lg1/d;-><init>(IZ)V

    .line 88
    .line 89
    .line 90
    return-object p0
.end method
