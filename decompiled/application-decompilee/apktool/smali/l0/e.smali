.class public final Ll0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/g;Lg0/h;B[ILc0/i;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lg0/h;->m()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p4, p5}, Li0/f;->d([ILc0/b;)I

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    array-length p3, p4

    .line 14
    const/4 p5, 0x2

    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p3, v1, :cond_4

    .line 19
    .line 20
    invoke-static {p2, v1}, Lb/d;->K(II)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_4

    .line 25
    .line 26
    if-eqz p6, :cond_1

    .line 27
    .line 28
    const/16 p3, 0x1000

    .line 29
    .line 30
    invoke-static {p3}, Ls0/b;->l(I)Z

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    if-eqz p3, :cond_4

    .line 35
    .line 36
    :cond_1
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const/16 p3, 0xc

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {p2, p5}, Lb/d;->K(II)Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    const/16 p3, 0x100

    .line 54
    .line 55
    invoke-static {p2, p3}, Lb/d;->K(II)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-nez p3, :cond_3

    .line 60
    .line 61
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_4

    .line 66
    .line 67
    :cond_3
    const/16 p3, 0x12

    .line 68
    .line 69
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 70
    .line 71
    .line 72
    :cond_4
    invoke-static {p2, p5}, Lb/d;->K(II)Z

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    if-eqz p3, :cond_7

    .line 77
    .line 78
    array-length p3, p4

    .line 79
    if-gt p3, v1, :cond_5

    .line 80
    .line 81
    if-eqz p6, :cond_5

    .line 82
    .line 83
    const/16 p3, 0x800

    .line 84
    .line 85
    invoke-static {p3}, Ls0/b;->l(I)Z

    .line 86
    .line 87
    .line 88
    move-result p3

    .line 89
    if-eqz p3, :cond_7

    .line 90
    .line 91
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_7

    .line 96
    .line 97
    :cond_5
    array-length p2, p4

    .line 98
    if-ne p2, v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 101
    .line 102
    .line 103
    :cond_6
    const/16 p2, 0xb

    .line 104
    .line 105
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 106
    .line 107
    .line 108
    const/4 p2, 0x5

    .line 109
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 110
    .line 111
    .line 112
    :cond_7
    const/16 p2, 0x8

    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 115
    .line 116
    .line 117
    const/16 p2, 0x16

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 120
    .line 121
    .line 122
    const/16 p2, 0x18

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 125
    .line 126
    .line 127
    const/16 p2, 0x19

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 130
    .line 131
    .line 132
    const/16 p2, 0x17

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 135
    .line 136
    .line 137
    return v1

    .line 138
    :catch_0
    return p3
.end method

.method public final b(Lg0/g;Lg0/h;B[ILc0/b;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Lg0/h;->m()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p3, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p4, p5}, Li0/f;->d([ILc0/b;)I

    .line 10
    .line 11
    .line 12
    move-result p3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    array-length p4, p4

    .line 14
    const/16 p5, 0x17

    .line 15
    .line 16
    const/16 v1, 0x19

    .line 17
    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    const/16 v3, 0x8

    .line 21
    .line 22
    const/16 v4, 0x16

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-ne p4, v5, :cond_a

    .line 26
    .line 27
    const/4 p4, 0x2

    .line 28
    invoke-static {p3, p4}, Lb/d;->K(II)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v7, 0x1000

    .line 33
    .line 34
    const/16 v8, 0x120

    .line 35
    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    invoke-static {p3, v8}, Lb/d;->L(II)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    const/16 v6, 0x800

    .line 45
    .line 46
    invoke-static {v6}, Ls0/b;->l(I)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    :cond_1
    invoke-static {p3, v8}, Lb/d;->L(II)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_4

    .line 57
    .line 58
    invoke-static {v7}, Ls0/b;->l(I)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    :cond_2
    invoke-static {p3, v8}, Lb/d;->L(II)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1, v5}, Lg0/g;->a(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const/16 v6, 0xb

    .line 75
    .line 76
    invoke-virtual {p1, v6}, Lg0/g;->a(I)V

    .line 77
    .line 78
    .line 79
    const/4 v6, 0x6

    .line 80
    invoke-virtual {p1, v6}, Lg0/g;->a(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    const/4 v6, 0x7

    .line 84
    invoke-virtual {p1, v6}, Lg0/g;->a(I)V

    .line 85
    .line 86
    .line 87
    const/4 v6, 0x5

    .line 88
    invoke-virtual {p1, v6}, Lg0/g;->a(I)V

    .line 89
    .line 90
    .line 91
    :cond_4
    const/16 v6, 0x12

    .line 92
    .line 93
    invoke-static {p3, v6}, Lb/d;->L(II)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_5

    .line 98
    .line 99
    invoke-virtual {p1, v6}, Lg0/g;->a(I)V

    .line 100
    .line 101
    .line 102
    :cond_5
    const/16 v6, 0x10

    .line 103
    .line 104
    invoke-static {p3, v6}, Lb/d;->K(II)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_6

    .line 109
    .line 110
    invoke-static {v7}, Ls0/b;->l(I)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    if-eqz v7, :cond_7

    .line 115
    .line 116
    invoke-static {p3, p4}, Lb/d;->L(II)Z

    .line 117
    .line 118
    .line 119
    move-result p4

    .line 120
    if-nez p4, :cond_7

    .line 121
    .line 122
    :cond_6
    const/16 p4, 0x9

    .line 123
    .line 124
    const-string v7, "*.zip"

    .line 125
    .line 126
    invoke-virtual {p1, p4, v7}, Lg0/g;->b(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/16 p4, 0xa

    .line 130
    .line 131
    const-string v7, "*.7z"

    .line 132
    .line 133
    invoke-virtual {p1, p4, v7}, Lg0/g;->b(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_7
    invoke-virtual {p1, v3}, Lg0/g;->a(I)V

    .line 137
    .line 138
    .line 139
    invoke-static {p3, v6}, Lb/d;->K(II)Z

    .line 140
    .line 141
    .line 142
    move-result p4

    .line 143
    if-nez p4, :cond_8

    .line 144
    .line 145
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 146
    .line 147
    .line 148
    :cond_8
    invoke-virtual {p1, v2}, Lg0/g;->a(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p5}, Lg0/g;->a(I)V

    .line 155
    .line 156
    .line 157
    const/16 p4, 0x1b

    .line 158
    .line 159
    invoke-virtual {p1, p4}, Lg0/g;->a(I)V

    .line 160
    .line 161
    .line 162
    invoke-static {p3, v6}, Lb/d;->K(II)Z

    .line 163
    .line 164
    .line 165
    move-result p4

    .line 166
    if-eqz p4, :cond_9

    .line 167
    .line 168
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 169
    .line 170
    .line 171
    :cond_9
    invoke-static {p3, v6}, Lb/d;->K(II)Z

    .line 172
    .line 173
    .line 174
    move-result p3

    .line 175
    if-eqz p3, :cond_b

    .line 176
    .line 177
    iget-object p2, p2, Lg0/h;->c:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {p2}, Lru/zdevs/zarchiver/io/SAF;->g(Ljava/lang/String;)[Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    if-eqz p2, :cond_b

    .line 184
    .line 185
    aget-object p2, p2, v0

    .line 186
    .line 187
    invoke-static {p2}, Lw0/c;->f(Ljava/lang/String;)Lw0/c$a;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    if-eqz p2, :cond_b

    .line 192
    .line 193
    iget-byte p2, p2, Lw0/c$a;->d:B

    .line 194
    .line 195
    const/4 p3, 0x4

    .line 196
    if-eq p2, p3, :cond_b

    .line 197
    .line 198
    const/16 p2, 0x46

    .line 199
    .line 200
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_a
    invoke-virtual {p1, v3}, Lg0/g;->a(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v4}, Lg0/g;->a(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2}, Lg0/g;->a(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v1}, Lg0/g;->a(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p5}, Lg0/g;->a(I)V

    .line 217
    .line 218
    .line 219
    :cond_b
    :goto_1
    return v5

    .line 220
    :catch_0
    return v0
.end method

.method public final c(Lg0/g;Lg0/h;B[ILc0/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lg0/h;->m()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 p3, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p4, p5}, Li0/f;->d([ILc0/b;)I

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    array-length p3, p4

    .line 14
    const/16 p5, 0x20

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p3, v1, :cond_3

    .line 19
    .line 20
    invoke-static {p2, v1}, Lb/d;->K(II)Z

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    invoke-static {p2, p5}, Lb/d;->K(II)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    const/16 p3, 0xc

    .line 33
    .line 34
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_2

    .line 42
    .line 43
    const/16 p3, 0x100

    .line 44
    .line 45
    invoke-static {p2, p3}, Lb/d;->K(II)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_3

    .line 50
    .line 51
    :cond_2
    const/4 p3, 0x3

    .line 52
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_6

    .line 60
    .line 61
    array-length p3, p4

    .line 62
    if-ne p3, v1, :cond_4

    .line 63
    .line 64
    const/16 p3, 0x120

    .line 65
    .line 66
    invoke-static {p2, p3}, Lb/d;->L(II)Z

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    xor-int/2addr p3, v1

    .line 71
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 72
    .line 73
    .line 74
    :cond_4
    const/4 p3, 0x6

    .line 75
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 76
    .line 77
    .line 78
    const/16 p3, 0x200

    .line 79
    .line 80
    invoke-static {p2, p3}, Lb/d;->K(II)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-eqz p3, :cond_5

    .line 85
    .line 86
    const/4 p3, 0x7

    .line 87
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 88
    .line 89
    .line 90
    :cond_5
    const/4 p3, 0x5

    .line 91
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 92
    .line 93
    .line 94
    const/16 p3, 0xb

    .line 95
    .line 96
    invoke-virtual {p1, p3}, Lg0/g;->a(I)V

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-static {p2, v0}, Lb/d;->K(II)Z

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-eqz p3, :cond_7

    .line 104
    .line 105
    invoke-static {p2, p5}, Lb/d;->K(II)Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-eqz p2, :cond_8

    .line 110
    .line 111
    :cond_7
    const/16 p2, 0x9

    .line 112
    .line 113
    const-string p3, "*.zip"

    .line 114
    .line 115
    invoke-virtual {p1, p2, p3}, Lg0/g;->b(ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 p2, 0xa

    .line 119
    .line 120
    const-string p3, "*.7z"

    .line 121
    .line 122
    invoke-virtual {p1, p2, p3}, Lg0/g;->b(ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_8
    const/16 p2, 0x8

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lg0/g;->a(I)V

    .line 128
    .line 129
    .line 130
    return v1

    .line 131
    :catch_0
    return p3
.end method
