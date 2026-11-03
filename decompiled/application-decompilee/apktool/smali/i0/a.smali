.class public Li0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# static fields
.field public static b:Lg1/b;

.field public static c:Lg1/b;


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
    iput v0, p0, Li0/a;->a:I

    .line 6
    .line 7
    return-void
.end method

.method public static l(Ljava/lang/String;B)B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-eq p1, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq p1, v1, :cond_2

    .line 10
    .line 11
    const/4 p0, 0x6

    .line 12
    if-eq p1, p0, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 p0, 0x7e

    .line 16
    .line 17
    return p0

    .line 18
    :cond_2
    sget-object p1, Li0/a;->b:Lg1/b;

    .line 19
    .line 20
    if-nez p1, :cond_3

    .line 21
    .line 22
    invoke-static {}, Li0/a;->o()V

    .line 23
    .line 24
    .line 25
    :cond_3
    sget-object p1, Li0/a;->b:Lg1/b;

    .line 26
    .line 27
    invoke-static {p0}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1, p0}, Lg1/b;->a(Ljava/lang/String;)B

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0

    .line 36
    :cond_4
    sget-object p1, Li0/a;->c:Lg1/b;

    .line 37
    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    const-class p1, Li0/a;

    .line 41
    .line 42
    monitor-enter p1

    .line 43
    :try_start_0
    new-instance v0, Lg1/b;

    .line 44
    .line 45
    const/16 v2, 0x11

    .line 46
    .line 47
    invoke-direct {v0, v2}, Lg1/b;-><init>(I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Li0/a;->c:Lg1/b;

    .line 51
    .line 52
    const-string v2, "alarms"

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-virtual {v0, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 59
    .line 60
    const-string v2, "android"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 63
    .line 64
    .line 65
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 66
    .line 67
    const-string v1, "dcim"

    .line 68
    .line 69
    const/4 v2, 0x5

    .line 70
    invoke-virtual {v0, v1, v2}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 74
    .line 75
    const-string v1, "documents"

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-virtual {v0, v1, v2}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 82
    .line 83
    const-string v1, "download"

    .line 84
    .line 85
    const/16 v2, 0x8

    .line 86
    .line 87
    invoke-virtual {v0, v1, v2}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 91
    .line 92
    const-string v1, "movies"

    .line 93
    .line 94
    const/16 v2, 0x14

    .line 95
    .line 96
    invoke-virtual {v0, v1, v2}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 100
    .line 101
    const-string v1, "music"

    .line 102
    .line 103
    const/16 v2, 0xa

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 109
    .line 110
    const-string v1, "notifications"

    .line 111
    .line 112
    const/16 v3, 0xb

    .line 113
    .line 114
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 115
    .line 116
    .line 117
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 118
    .line 119
    const-string v1, "pictures"

    .line 120
    .line 121
    const/16 v3, 0xd

    .line 122
    .line 123
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 124
    .line 125
    .line 126
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 127
    .line 128
    const-string v1, "podcasts"

    .line 129
    .line 130
    const/16 v3, 0xe

    .line 131
    .line 132
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 136
    .line 137
    const-string v1, "ringtones"

    .line 138
    .line 139
    const/16 v3, 0xf

    .line 140
    .line 141
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 142
    .line 143
    .line 144
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 145
    .line 146
    const-string v1, "bluetooth"

    .line 147
    .line 148
    const/16 v3, 0x15

    .line 149
    .line 150
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 151
    .line 152
    .line 153
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 154
    .line 155
    const-string v1, "book"

    .line 156
    .line 157
    const/16 v3, 0x18

    .line 158
    .line 159
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 160
    .line 161
    .line 162
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 163
    .line 164
    const-string v1, "books"

    .line 165
    .line 166
    invoke-virtual {v0, v1, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Li0/a;->c:Lg1/b;

    .line 170
    .line 171
    const-string v1, "audio"

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Lg1/b;->b(Ljava/lang/String;B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 175
    .line 176
    monitor-exit p1

    .line 177
    goto :goto_0

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    monitor-exit p1

    .line 180
    throw p0

    .line 181
    :cond_5
    :goto_0
    sget-object p1, Li0/a;->c:Lg1/b;

    .line 182
    .line 183
    invoke-static {p0}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {p1, p0}, Lg1/b;->a(Ljava/lang/String;)B

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    return p0
.end method

.method public static m(Ljava/lang/String;)B
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ls0/b;->a:Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/16 p0, 0x19

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    sget-object v1, Ls0/b;->b:[Ljava/lang/String;

    .line 14
    .line 15
    aget-object v2, v1, v0

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    aget-object v1, v1, v2

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "/storage/emulated/999"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    const/16 p0, 0x1b

    .line 42
    .line 43
    return p0

    .line 44
    :cond_2
    :goto_0
    const/16 p0, 0x9

    .line 45
    .line 46
    return p0

    .line 47
    :catch_0
    :cond_3
    return v0
.end method

.method public static n(Ljava/lang/String;Z)B
    .locals 5

    .line 1
    :try_start_0
    const-string v0, "/storage/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x6

    .line 9
    if-nez v0, :cond_e

    .line 10
    .line 11
    const-string v0, "/mnt/"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_0
    const-string v0, "/"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v3, 0x3

    .line 28
    if-nez v0, :cond_d

    .line 29
    .line 30
    const-string v0, "/vendor"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :cond_1
    const-string v0, "/system"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const-string v4, "app"

    .line 47
    .line 48
    if-nez v0, :cond_8

    .line 49
    .line 50
    :try_start_1
    const-string v0, "/product"

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "/data"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-ge p1, v2, :cond_3

    .line 72
    .line 73
    return v3

    .line 74
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string p1, "system"

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return v3

    .line 87
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    const-string p1, "data"

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_12

    .line 100
    .line 101
    :cond_5
    return v2

    .line 102
    :cond_6
    const-string v0, "/SAF"

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    return v1

    .line 111
    :cond_7
    if-nez p1, :cond_12

    .line 112
    .line 113
    invoke-static {p0}, Lw0/c;->g(Ljava/lang/String;)Lw0/c$a;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-eqz p0, :cond_12

    .line 118
    .line 119
    return v1

    .line 120
    :cond_8
    :goto_0
    const/16 p1, 0x2f

    .line 121
    .line 122
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(II)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    const/4 v0, -0x1

    .line 127
    if-ne p1, v0, :cond_9

    .line 128
    .line 129
    return v3

    .line 130
    :cond_9
    add-int/2addr p1, v1

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string p1, "vendor"

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_a

    .line 142
    .line 143
    return v3

    .line 144
    :cond_a
    const-string p1, "media"

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_b

    .line 151
    .line 152
    return v1

    .line 153
    :cond_b
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-nez p1, :cond_c

    .line 158
    .line 159
    const-string p1, "priv-app"

    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    if-eqz p0, :cond_12

    .line 166
    .line 167
    :cond_c
    return v2

    .line 168
    :cond_d
    :goto_1
    return v3

    .line 169
    :cond_e
    :goto_2
    const-string p1, "/Android/data"

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_11

    .line 176
    .line 177
    const-string p1, "/Android/obb"

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-nez p1, :cond_11

    .line 184
    .line 185
    const-string p1, "/Android/media"

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_f

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_f
    invoke-static {p0}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    const-string p1, "/storage"

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_10

    .line 205
    .line 206
    const-string p1, "/storage/emulated"

    .line 207
    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_10

    .line 213
    .line 214
    const-string p1, "/mnt"

    .line 215
    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 220
    if-eqz p0, :cond_12

    .line 221
    .line 222
    :cond_10
    return v1

    .line 223
    :cond_11
    :goto_3
    return v2

    .line 224
    :catch_0
    :cond_12
    const/4 p0, 0x0

    .line 225
    return p0
.end method

.method public static declared-synchronized o()V
    .locals 6

    .line 1
    const-class v0, Li0/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Li0/a;->b:Lg1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Lg1/b;

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lg1/b;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Li0/a;->b:Lg1/b;

    .line 18
    .line 19
    const-string v2, "cache"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 26
    .line 27
    const-string v2, "dev"

    .line 28
    .line 29
    const/4 v3, 0x6

    .line 30
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 34
    .line 35
    const-string v2, "etc"

    .line 36
    .line 37
    const/16 v4, 0x11

    .line 38
    .line 39
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 40
    .line 41
    .line 42
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 43
    .line 44
    const-string v2, "mnt"

    .line 45
    .line 46
    const/16 v4, 0x12

    .line 47
    .line 48
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 49
    .line 50
    .line 51
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 52
    .line 53
    const-string v2, "proc"

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 59
    .line 60
    const-string v2, "storage"

    .line 61
    .line 62
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 66
    .line 67
    const-string v2, "bin"

    .line 68
    .line 69
    const/4 v3, 0x4

    .line 70
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 71
    .line 72
    .line 73
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 74
    .line 75
    const-string v2, "sbin"

    .line 76
    .line 77
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 78
    .line 79
    .line 80
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 81
    .line 82
    const-string v2, "system"

    .line 83
    .line 84
    const/16 v4, 0x1a

    .line 85
    .line 86
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 87
    .line 88
    .line 89
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 90
    .line 91
    const-string v2, "sdcard"

    .line 92
    .line 93
    const/16 v5, 0xc

    .line 94
    .line 95
    invoke-virtual {v1, v2, v5}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 96
    .line 97
    .line 98
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 99
    .line 100
    const-string v2, "xbin"

    .line 101
    .line 102
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 106
    .line 107
    const-string v2, "app"

    .line 108
    .line 109
    const/4 v3, 0x3

    .line 110
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 114
    .line 115
    const-string v2, "priv-app"

    .line 116
    .line 117
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 121
    .line 122
    const-string v2, "lost+found"

    .line 123
    .line 124
    const/16 v3, 0x13

    .line 125
    .line 126
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 130
    .line 131
    const-string v2, "framework"

    .line 132
    .line 133
    const/16 v3, 0x16

    .line 134
    .line 135
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 136
    .line 137
    .line 138
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 139
    .line 140
    const-string v2, "fonts"

    .line 141
    .line 142
    const/16 v3, 0x17

    .line 143
    .line 144
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 145
    .line 146
    .line 147
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 148
    .line 149
    const-string v2, "data"

    .line 150
    .line 151
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 152
    .line 153
    .line 154
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 155
    .line 156
    const-string v2, "vendor"

    .line 157
    .line 158
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 159
    .line 160
    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 162
    .line 163
    const/16 v2, 0x1e

    .line 164
    .line 165
    if-lt v1, v2, :cond_1

    .line 166
    .line 167
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 168
    .line 169
    const-string v2, "system_ext"

    .line 170
    .line 171
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 172
    .line 173
    .line 174
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 175
    .line 176
    const-string v2, "product"

    .line 177
    .line 178
    invoke-virtual {v1, v2, v4}, Lg1/b;->b(Ljava/lang/String;B)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    sget-object v1, Li0/a;->b:Lg1/b;

    .line 183
    .line 184
    const-string v2, "root"

    .line 185
    .line 186
    const/16 v3, 0x10

    .line 187
    .line 188
    invoke-virtual {v1, v2, v3}, Lg1/b;->b(Ljava/lang/String;B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .line 190
    .line 191
    :goto_0
    monitor-exit v0

    .line 192
    return-void

    .line 193
    :catchall_0
    move-exception v1

    .line 194
    monitor-exit v0

    .line 195
    throw v1
.end method

.method public static p(Ljava/io/File;Ljava/util/regex/Pattern;[IILg0/e$c;Lu0/d;)V
    .locals 8

    .line 1
    if-eqz p5, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p5}, Lu0/d;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-static {v0, p2}, Lg0/e;->g(Ljava/lang/String;[I)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    new-instance v0, Lg0/e$b;

    .line 39
    .line 40
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput-boolean v1, v0, Lg0/e$b;->a:Z

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    iput-wide v1, v0, Lg0/e$b;->b:J

    .line 54
    .line 55
    iget-boolean v1, v0, Lg0/e$b;->a:Z

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/io/File;->length()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-wide/16 v1, -0x1

    .line 65
    .line 66
    :goto_0
    iput-wide v1, v0, Lg0/e$b;->c:J

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    new-instance v2, Lg0/h;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-interface {p4, v0, v2, v1, v3}, Lg0/e$c;->d(Lg0/e$b;Lg0/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    invoke-static {p3, v0}, Lb/d;->K(II)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-nez p0, :cond_4

    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    array-length v0, p0

    .line 109
    const/4 v1, 0x0

    .line 110
    :goto_1
    if-ge v1, v0, :cond_6

    .line 111
    .line 112
    aget-object v2, p0, v1

    .line 113
    .line 114
    move-object v3, p1

    .line 115
    move-object v4, p2

    .line 116
    move v5, p3

    .line 117
    move-object v6, p4

    .line 118
    move-object v7, p5

    .line 119
    invoke-static/range {v2 .. v7}, Li0/a;->p(Ljava/io/File;Ljava/util/regex/Pattern;[IILg0/e$c;Lu0/d;)V

    .line 120
    .line 121
    .line 122
    if-eqz p5, :cond_5

    .line 123
    .line 124
    invoke-interface {p5}, Lu0/d;->isCancelled()Z

    .line 125
    .line 126
    .line 127
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lg0/h;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object p2, p2, Lg0/h;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length p1, p1

    .line 17
    :goto_0
    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Li0/a;->a:I

    return v0
.end method

.method public e(Lg0/h;Lu0/d;)Lg0/e$b;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lg0/h;->toFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v1, Lg0/e$b;

    .line 31
    .line 32
    invoke-direct {v1}, Lg0/e$b;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iput-boolean v2, v1, Lg0/e$b;->a:Z

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iput-wide v2, v1, Lg0/e$b;->b:J

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-static {p1, v1, p2}, Lm0/c;->d(Ljava/io/File;Lg0/e$b;Lu0/d;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    iput-wide v2, v1, Lg0/e$b;->c:J

    .line 62
    .line 63
    iget p2, v1, Lg0/e$b;->d:I

    .line 64
    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    iput p2, v1, Lg0/e$b;->d:I

    .line 68
    .line 69
    :goto_0
    invoke-static {p1}, Lm0/c;->f(Ljava/io/File;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput-boolean p2, v1, Lg0/e$b;->e:Z

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, v1, Lg0/e$b;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    :cond_3
    return-object v1

    .line 88
    :catch_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final f(Lg0/h;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lg0/h;->toFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lw0/a;->a(Ljava/io/File;)B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x11

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move p1, v1

    .line 24
    :goto_1
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x3

    .line 27
    if-ne v0, v2, :cond_3

    .line 28
    .line 29
    :cond_2
    or-int/lit8 p1, p1, 0x8

    .line 30
    .line 31
    :cond_3
    const/4 v2, 0x2

    .line 32
    if-ne v0, v2, :cond_4

    .line 33
    .line 34
    or-int/lit8 p1, p1, 0x2

    .line 35
    .line 36
    :cond_4
    if-eq v0, v2, :cond_5

    .line 37
    .line 38
    if-ne v0, v1, :cond_6

    .line 39
    .line 40
    :cond_5
    or-int/lit8 p1, p1, 0x4

    .line 41
    .line 42
    :cond_6
    return p1
.end method

.method public final g([Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    .line 3
    .line 4
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v1, Lg0/e$b;

    .line 13
    .line 14
    invoke-direct {v1}, Lg0/e$b;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    array-length v2, p2

    .line 18
    if-ge v0, v2, :cond_4

    .line 19
    .line 20
    aget-object v2, p1, v0

    .line 21
    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    aget-object v2, p2, v0

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 30
    .line 31
    aget-object v3, p1, v0

    .line 32
    .line 33
    invoke-virtual {v3}, Lg0/h;->r()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    aget-object v4, p2, v0

    .line 38
    .line 39
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-static {v2, v1, p3}, Lm0/c;->d(Ljava/io/File;Lg0/e$b;Lu0/d;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-wide v3, v1, Lg0/e$b;->c:J

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    add-long/2addr v5, v3

    .line 59
    iput-wide v5, v1, Lg0/e$b;->c:J

    .line 60
    .line 61
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return-object v1
.end method

.method public final i(Lg0/h;Ljava/lang/String;[IILg0/e$c;Lu0/d;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lg0/h;->toFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object/from16 v2, p2

    .line 23
    .line 24
    invoke-static {v2, v1}, Lu0/h;->c(Ljava/lang/String;Z)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    aget-object v2, v2, v1

    .line 29
    .line 30
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v9, 0x1

    .line 35
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    array-length v10, v0

    .line 43
    array-length v11, v0

    .line 44
    move v12, v1

    .line 45
    move v13, v12

    .line 46
    :goto_0
    if-ge v12, v11, :cond_4

    .line 47
    .line 48
    aget-object v3, v0, v12

    .line 49
    .line 50
    move-object v4, v2

    .line 51
    move-object/from16 v5, p3

    .line 52
    .line 53
    move/from16 v6, p4

    .line 54
    .line 55
    move-object/from16 v7, p5

    .line 56
    .line 57
    move-object/from16 v8, p6

    .line 58
    .line 59
    invoke-static/range {v3 .. v8}, Li0/a;->p(Ljava/io/File;Ljava/util/regex/Pattern;[IILg0/e$c;Lu0/d;)V

    .line 60
    .line 61
    .line 62
    if-eqz p6, :cond_3

    .line 63
    .line 64
    invoke-interface/range {p6 .. p6}, Lu0/d;->isCancelled()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    return v1

    .line 71
    :cond_3
    add-int/2addr v13, v9

    .line 72
    mul-int/lit8 v3, v13, 0x64

    .line 73
    .line 74
    div-int/2addr v3, v10

    .line 75
    move-object/from16 v4, p5

    .line 76
    .line 77
    invoke-interface {v4, v3}, Lg0/e$c;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    add-int/lit8 v12, v12, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    :cond_4
    return v9

    .line 84
    :cond_5
    :goto_1
    return v1
.end method

.method public final j(Lg0/h;)Z
    .locals 0

    invoke-virtual {p1}, Lg0/h;->j()Z

    move-result p1

    return p1
.end method

.method public final k(Lg0/h;[Ljava/lang/String;Lu0/d;)Lg0/e$b;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p1}, Lg0/h;->l()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p1}, Lg0/h;->toFile()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_4

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    new-instance v0, Lg0/e$b;

    .line 24
    .line 25
    invoke-direct {v0}, Lg0/e$b;-><init>()V

    .line 26
    .line 27
    .line 28
    array-length v1, p2

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v1, :cond_5

    .line 31
    .line 32
    aget-object v3, p2, v2

    .line 33
    .line 34
    if-nez v3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance v4, Ljava/io/File;

    .line 38
    .line 39
    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-static {v4, v0, p3}, Lm0/c;->d(Ljava/io/File;Lg0/e$b;Lu0/d;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    iget-wide v5, v0, Lg0/e$b;->c:J

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    add-long/2addr v3, v5

    .line 59
    iput-wide v3, v0, Lg0/e$b;->c:J

    .line 60
    .line 61
    iget v3, v0, Lg0/e$b;->d:I

    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    iput v3, v0, Lg0/e$b;->d:I

    .line 66
    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 71
    :cond_5
    return-object v0
.end method
