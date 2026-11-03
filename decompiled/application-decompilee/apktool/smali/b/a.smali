.class public final Lb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lb/b;

.field public final c:Lb/c;

.field public d:I

.field public e:[I

.field public f:[I

.field public g:[F

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(Lb/b;Lb/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb/a;->a:I

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    iput v1, p0, Lb/a;->d:I

    .line 10
    .line 11
    new-array v2, v1, [I

    .line 12
    .line 13
    iput-object v2, p0, Lb/a;->e:[I

    .line 14
    .line 15
    new-array v2, v1, [I

    .line 16
    .line 17
    iput-object v2, p0, Lb/a;->f:[I

    .line 18
    .line 19
    new-array v1, v1, [F

    .line 20
    .line 21
    iput-object v1, p0, Lb/a;->g:[F

    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    iput v1, p0, Lb/a;->h:I

    .line 25
    .line 26
    iput v1, p0, Lb/a;->i:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lb/a;->j:Z

    .line 29
    .line 30
    iput-object p1, p0, Lb/a;->b:Lb/b;

    .line 31
    .line 32
    iput-object p2, p0, Lb/a;->c:Lb/c;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lb/g;F)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p2, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget v1, p0, Lb/a;->h:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x1

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v1, v3, :cond_2

    .line 13
    .line 14
    iput v2, p0, Lb/a;->h:I

    .line 15
    .line 16
    iget-object v0, p0, Lb/a;->g:[F

    .line 17
    .line 18
    aput p2, v0, v2

    .line 19
    .line 20
    iget-object p2, p0, Lb/a;->e:[I

    .line 21
    .line 22
    iget p1, p1, Lb/g;->a:I

    .line 23
    .line 24
    aput p1, p2, v2

    .line 25
    .line 26
    iget-object p1, p0, Lb/a;->f:[I

    .line 27
    .line 28
    aput v3, p1, v2

    .line 29
    .line 30
    iget p1, p0, Lb/a;->a:I

    .line 31
    .line 32
    add-int/2addr p1, v4

    .line 33
    iput p1, p0, Lb/a;->a:I

    .line 34
    .line 35
    iget-boolean p1, p0, Lb/a;->j:Z

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget p1, p0, Lb/a;->i:I

    .line 40
    .line 41
    add-int/2addr p1, v4

    .line 42
    iput p1, p0, Lb/a;->i:I

    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    move v5, v2

    .line 46
    move v6, v3

    .line 47
    :goto_0
    if-eq v1, v3, :cond_8

    .line 48
    .line 49
    iget v7, p0, Lb/a;->a:I

    .line 50
    .line 51
    if-ge v5, v7, :cond_8

    .line 52
    .line 53
    iget-object v7, p0, Lb/a;->e:[I

    .line 54
    .line 55
    aget v7, v7, v1

    .line 56
    .line 57
    iget v8, p1, Lb/g;->a:I

    .line 58
    .line 59
    if-ne v7, v8, :cond_6

    .line 60
    .line 61
    iget-object p1, p0, Lb/a;->g:[F

    .line 62
    .line 63
    aget v2, p1, v1

    .line 64
    .line 65
    add-float/2addr v2, p2

    .line 66
    aput v2, p1, v1

    .line 67
    .line 68
    cmpl-float p1, v2, v0

    .line 69
    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    iget p1, p0, Lb/a;->h:I

    .line 73
    .line 74
    if-ne v1, p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lb/a;->f:[I

    .line 77
    .line 78
    aget p1, p1, v1

    .line 79
    .line 80
    iput p1, p0, Lb/a;->h:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object p1, p0, Lb/a;->f:[I

    .line 84
    .line 85
    aget p2, p1, v1

    .line 86
    .line 87
    aput p2, p1, v6

    .line 88
    .line 89
    :goto_1
    iget-object p1, p0, Lb/a;->c:Lb/c;

    .line 90
    .line 91
    iget-object p1, p1, Lb/c;->e:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, [Lb/g;

    .line 94
    .line 95
    aget-object p1, p1, v7

    .line 96
    .line 97
    iget-object p2, p0, Lb/a;->b:Lb/b;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Lb/g;->a(Lb/b;)V

    .line 100
    .line 101
    .line 102
    iget-boolean p1, p0, Lb/a;->j:Z

    .line 103
    .line 104
    if-eqz p1, :cond_4

    .line 105
    .line 106
    iput v1, p0, Lb/a;->i:I

    .line 107
    .line 108
    :cond_4
    iget p1, p0, Lb/a;->a:I

    .line 109
    .line 110
    sub-int/2addr p1, v4

    .line 111
    iput p1, p0, Lb/a;->a:I

    .line 112
    .line 113
    :cond_5
    return-void

    .line 114
    :cond_6
    if-ge v7, v8, :cond_7

    .line 115
    .line 116
    move v6, v1

    .line 117
    :cond_7
    iget-object v7, p0, Lb/a;->f:[I

    .line 118
    .line 119
    aget v1, v7, v1

    .line 120
    .line 121
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    iget v0, p0, Lb/a;->i:I

    .line 125
    .line 126
    add-int/lit8 v1, v0, 0x1

    .line 127
    .line 128
    iget-boolean v5, p0, Lb/a;->j:Z

    .line 129
    .line 130
    if-eqz v5, :cond_a

    .line 131
    .line 132
    iget-object v1, p0, Lb/a;->e:[I

    .line 133
    .line 134
    aget v5, v1, v0

    .line 135
    .line 136
    if-ne v5, v3, :cond_9

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_9
    array-length v0, v1

    .line 140
    goto :goto_2

    .line 141
    :cond_a
    move v0, v1

    .line 142
    :goto_2
    iget-object v1, p0, Lb/a;->e:[I

    .line 143
    .line 144
    array-length v5, v1

    .line 145
    if-lt v0, v5, :cond_c

    .line 146
    .line 147
    iget v5, p0, Lb/a;->a:I

    .line 148
    .line 149
    array-length v1, v1

    .line 150
    if-ge v5, v1, :cond_c

    .line 151
    .line 152
    move v1, v2

    .line 153
    :goto_3
    iget-object v5, p0, Lb/a;->e:[I

    .line 154
    .line 155
    array-length v7, v5

    .line 156
    if-ge v1, v7, :cond_c

    .line 157
    .line 158
    aget v5, v5, v1

    .line 159
    .line 160
    if-ne v5, v3, :cond_b

    .line 161
    .line 162
    move v0, v1

    .line 163
    goto :goto_4

    .line 164
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_c
    :goto_4
    iget-object v1, p0, Lb/a;->e:[I

    .line 168
    .line 169
    array-length v5, v1

    .line 170
    if-lt v0, v5, :cond_d

    .line 171
    .line 172
    array-length v0, v1

    .line 173
    iget v1, p0, Lb/a;->d:I

    .line 174
    .line 175
    mul-int/lit8 v1, v1, 0x2

    .line 176
    .line 177
    iput v1, p0, Lb/a;->d:I

    .line 178
    .line 179
    iput-boolean v2, p0, Lb/a;->j:Z

    .line 180
    .line 181
    add-int/lit8 v2, v0, -0x1

    .line 182
    .line 183
    iput v2, p0, Lb/a;->i:I

    .line 184
    .line 185
    iget-object v2, p0, Lb/a;->g:[F

    .line 186
    .line 187
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iput-object v1, p0, Lb/a;->g:[F

    .line 192
    .line 193
    iget-object v1, p0, Lb/a;->e:[I

    .line 194
    .line 195
    iget v2, p0, Lb/a;->d:I

    .line 196
    .line 197
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iput-object v1, p0, Lb/a;->e:[I

    .line 202
    .line 203
    iget-object v1, p0, Lb/a;->f:[I

    .line 204
    .line 205
    iget v2, p0, Lb/a;->d:I

    .line 206
    .line 207
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, p0, Lb/a;->f:[I

    .line 212
    .line 213
    :cond_d
    iget-object v1, p0, Lb/a;->e:[I

    .line 214
    .line 215
    iget p1, p1, Lb/g;->a:I

    .line 216
    .line 217
    aput p1, v1, v0

    .line 218
    .line 219
    iget-object p1, p0, Lb/a;->g:[F

    .line 220
    .line 221
    aput p2, p1, v0

    .line 222
    .line 223
    if-eq v6, v3, :cond_e

    .line 224
    .line 225
    iget-object p1, p0, Lb/a;->f:[I

    .line 226
    .line 227
    aget p2, p1, v6

    .line 228
    .line 229
    aput p2, p1, v0

    .line 230
    .line 231
    aput v0, p1, v6

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_e
    iget-object p1, p0, Lb/a;->f:[I

    .line 235
    .line 236
    iget p2, p0, Lb/a;->h:I

    .line 237
    .line 238
    aput p2, p1, v0

    .line 239
    .line 240
    iput v0, p0, Lb/a;->h:I

    .line 241
    .line 242
    :goto_5
    iget p1, p0, Lb/a;->a:I

    .line 243
    .line 244
    add-int/2addr p1, v4

    .line 245
    iput p1, p0, Lb/a;->a:I

    .line 246
    .line 247
    iget-boolean p1, p0, Lb/a;->j:Z

    .line 248
    .line 249
    if-nez p1, :cond_f

    .line 250
    .line 251
    iget p1, p0, Lb/a;->i:I

    .line 252
    .line 253
    add-int/2addr p1, v4

    .line 254
    iput p1, p0, Lb/a;->i:I

    .line 255
    .line 256
    :cond_f
    iget p1, p0, Lb/a;->i:I

    .line 257
    .line 258
    array-length p2, v1

    .line 259
    if-lt p1, p2, :cond_10

    .line 260
    .line 261
    iput-boolean v4, p0, Lb/a;->j:Z

    .line 262
    .line 263
    array-length p1, v1

    .line 264
    sub-int/2addr p1, v4

    .line 265
    iput p1, p0, Lb/a;->i:I

    .line 266
    .line 267
    :cond_10
    return-void
.end method

.method public final b(Lb/g;)F
    .locals 4

    .line 1
    iget v0, p0, Lb/a;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    const/4 v2, -0x1

    .line 5
    if-eq v0, v2, :cond_1

    .line 6
    .line 7
    iget v2, p0, Lb/a;->a:I

    .line 8
    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lb/a;->e:[I

    .line 12
    .line 13
    aget v2, v2, v0

    .line 14
    .line 15
    iget v3, p1, Lb/g;->a:I

    .line 16
    .line 17
    if-ne v2, v3, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lb/a;->g:[F

    .line 20
    .line 21
    aget p1, p1, v0

    .line 22
    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v2, p0, Lb/a;->f:[I

    .line 25
    .line 26
    aget v0, v2, v0

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final c(Lb/g;F)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p2, v0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lb/a;->d(Lb/g;)F

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lb/a;->h:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v2, :cond_2

    .line 16
    .line 17
    iput v1, p0, Lb/a;->h:I

    .line 18
    .line 19
    iget-object v0, p0, Lb/a;->g:[F

    .line 20
    .line 21
    aput p2, v0, v1

    .line 22
    .line 23
    iget-object p2, p0, Lb/a;->e:[I

    .line 24
    .line 25
    iget p1, p1, Lb/g;->a:I

    .line 26
    .line 27
    aput p1, p2, v1

    .line 28
    .line 29
    iget-object p1, p0, Lb/a;->f:[I

    .line 30
    .line 31
    aput v2, p1, v1

    .line 32
    .line 33
    iget p1, p0, Lb/a;->a:I

    .line 34
    .line 35
    add-int/2addr p1, v3

    .line 36
    iput p1, p0, Lb/a;->a:I

    .line 37
    .line 38
    iget-boolean p1, p0, Lb/a;->j:Z

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget p1, p0, Lb/a;->i:I

    .line 43
    .line 44
    add-int/2addr p1, v3

    .line 45
    iput p1, p0, Lb/a;->i:I

    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    move v4, v1

    .line 49
    move v5, v2

    .line 50
    :goto_0
    if-eq v0, v2, :cond_5

    .line 51
    .line 52
    iget v6, p0, Lb/a;->a:I

    .line 53
    .line 54
    if-ge v4, v6, :cond_5

    .line 55
    .line 56
    iget-object v6, p0, Lb/a;->e:[I

    .line 57
    .line 58
    aget v6, v6, v0

    .line 59
    .line 60
    iget v7, p1, Lb/g;->a:I

    .line 61
    .line 62
    if-ne v6, v7, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lb/a;->g:[F

    .line 65
    .line 66
    aput p2, p1, v0

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    if-ge v6, v7, :cond_4

    .line 70
    .line 71
    move v5, v0

    .line 72
    :cond_4
    iget-object v6, p0, Lb/a;->f:[I

    .line 73
    .line 74
    aget v0, v6, v0

    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget v0, p0, Lb/a;->i:I

    .line 80
    .line 81
    add-int/lit8 v4, v0, 0x1

    .line 82
    .line 83
    iget-boolean v6, p0, Lb/a;->j:Z

    .line 84
    .line 85
    if-eqz v6, :cond_7

    .line 86
    .line 87
    iget-object v4, p0, Lb/a;->e:[I

    .line 88
    .line 89
    aget v6, v4, v0

    .line 90
    .line 91
    if-ne v6, v2, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    array-length v0, v4

    .line 95
    goto :goto_1

    .line 96
    :cond_7
    move v0, v4

    .line 97
    :goto_1
    iget-object v4, p0, Lb/a;->e:[I

    .line 98
    .line 99
    array-length v6, v4

    .line 100
    if-lt v0, v6, :cond_9

    .line 101
    .line 102
    iget v6, p0, Lb/a;->a:I

    .line 103
    .line 104
    array-length v4, v4

    .line 105
    if-ge v6, v4, :cond_9

    .line 106
    .line 107
    move v4, v1

    .line 108
    :goto_2
    iget-object v6, p0, Lb/a;->e:[I

    .line 109
    .line 110
    array-length v7, v6

    .line 111
    if-ge v4, v7, :cond_9

    .line 112
    .line 113
    aget v6, v6, v4

    .line 114
    .line 115
    if-ne v6, v2, :cond_8

    .line 116
    .line 117
    move v0, v4

    .line 118
    goto :goto_3

    .line 119
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_9
    :goto_3
    iget-object v4, p0, Lb/a;->e:[I

    .line 123
    .line 124
    array-length v6, v4

    .line 125
    if-lt v0, v6, :cond_a

    .line 126
    .line 127
    array-length v0, v4

    .line 128
    iget v4, p0, Lb/a;->d:I

    .line 129
    .line 130
    mul-int/lit8 v4, v4, 0x2

    .line 131
    .line 132
    iput v4, p0, Lb/a;->d:I

    .line 133
    .line 134
    iput-boolean v1, p0, Lb/a;->j:Z

    .line 135
    .line 136
    add-int/lit8 v1, v0, -0x1

    .line 137
    .line 138
    iput v1, p0, Lb/a;->i:I

    .line 139
    .line 140
    iget-object v1, p0, Lb/a;->g:[F

    .line 141
    .line 142
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lb/a;->g:[F

    .line 147
    .line 148
    iget-object v1, p0, Lb/a;->e:[I

    .line 149
    .line 150
    iget v4, p0, Lb/a;->d:I

    .line 151
    .line 152
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iput-object v1, p0, Lb/a;->e:[I

    .line 157
    .line 158
    iget-object v1, p0, Lb/a;->f:[I

    .line 159
    .line 160
    iget v4, p0, Lb/a;->d:I

    .line 161
    .line 162
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iput-object v1, p0, Lb/a;->f:[I

    .line 167
    .line 168
    :cond_a
    iget-object v1, p0, Lb/a;->e:[I

    .line 169
    .line 170
    iget p1, p1, Lb/g;->a:I

    .line 171
    .line 172
    aput p1, v1, v0

    .line 173
    .line 174
    iget-object p1, p0, Lb/a;->g:[F

    .line 175
    .line 176
    aput p2, p1, v0

    .line 177
    .line 178
    if-eq v5, v2, :cond_b

    .line 179
    .line 180
    iget-object p1, p0, Lb/a;->f:[I

    .line 181
    .line 182
    aget p2, p1, v5

    .line 183
    .line 184
    aput p2, p1, v0

    .line 185
    .line 186
    aput v0, p1, v5

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_b
    iget-object p1, p0, Lb/a;->f:[I

    .line 190
    .line 191
    iget p2, p0, Lb/a;->h:I

    .line 192
    .line 193
    aput p2, p1, v0

    .line 194
    .line 195
    iput v0, p0, Lb/a;->h:I

    .line 196
    .line 197
    :goto_4
    iget p1, p0, Lb/a;->a:I

    .line 198
    .line 199
    add-int/2addr p1, v3

    .line 200
    iput p1, p0, Lb/a;->a:I

    .line 201
    .line 202
    iget-boolean p2, p0, Lb/a;->j:Z

    .line 203
    .line 204
    if-nez p2, :cond_c

    .line 205
    .line 206
    iget p2, p0, Lb/a;->i:I

    .line 207
    .line 208
    add-int/2addr p2, v3

    .line 209
    iput p2, p0, Lb/a;->i:I

    .line 210
    .line 211
    :cond_c
    array-length p2, v1

    .line 212
    if-lt p1, p2, :cond_d

    .line 213
    .line 214
    iput-boolean v3, p0, Lb/a;->j:Z

    .line 215
    .line 216
    :cond_d
    return-void
.end method

.method public final d(Lb/g;)F
    .locals 8

    .line 1
    iget v0, p0, Lb/a;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    const/4 v3, 0x0

    .line 9
    move v4, v1

    .line 10
    :goto_0
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    iget v5, p0, Lb/a;->a:I

    .line 13
    .line 14
    if-ge v3, v5, :cond_4

    .line 15
    .line 16
    iget-object v5, p0, Lb/a;->e:[I

    .line 17
    .line 18
    aget v5, v5, v0

    .line 19
    .line 20
    iget v6, p1, Lb/g;->a:I

    .line 21
    .line 22
    if-ne v5, v6, :cond_3

    .line 23
    .line 24
    iget p1, p0, Lb/a;->h:I

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lb/a;->f:[I

    .line 29
    .line 30
    aget p1, p1, v0

    .line 31
    .line 32
    iput p1, p0, Lb/a;->h:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p1, p0, Lb/a;->f:[I

    .line 36
    .line 37
    aget v2, p1, v0

    .line 38
    .line 39
    aput v2, p1, v4

    .line 40
    .line 41
    :goto_1
    iget-object p1, p0, Lb/a;->c:Lb/c;

    .line 42
    .line 43
    iget-object p1, p1, Lb/c;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, [Lb/g;

    .line 46
    .line 47
    aget-object p1, p1, v5

    .line 48
    .line 49
    iget-object v2, p0, Lb/a;->b:Lb/b;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lb/g;->a(Lb/b;)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lb/a;->a:I

    .line 55
    .line 56
    add-int/2addr p1, v1

    .line 57
    iput p1, p0, Lb/a;->a:I

    .line 58
    .line 59
    iget-object p1, p0, Lb/a;->e:[I

    .line 60
    .line 61
    aput v1, p1, v0

    .line 62
    .line 63
    iget-boolean p1, p0, Lb/a;->j:Z

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iput v0, p0, Lb/a;->i:I

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lb/a;->g:[F

    .line 70
    .line 71
    aget p1, p1, v0

    .line 72
    .line 73
    return p1

    .line 74
    :cond_3
    iget-object v4, p0, Lb/a;->f:[I

    .line 75
    .line 76
    aget v4, v4, v0

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    move v7, v4

    .line 81
    move v4, v0

    .line 82
    move v0, v7

    .line 83
    goto :goto_0

    .line 84
    :cond_4
    return v2
.end method

.method public final e(Lb/b;Lb/b;)V
    .locals 7

    .line 1
    iget v0, p0, Lb/a;->h:I

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_1
    const/4 v3, -0x1

    .line 6
    if-eq v0, v3, :cond_2

    .line 7
    .line 8
    iget v4, p0, Lb/a;->a:I

    .line 9
    .line 10
    if-ge v2, v4, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lb/a;->e:[I

    .line 13
    .line 14
    aget v4, v4, v0

    .line 15
    .line 16
    iget-object v5, p2, Lb/b;->a:Lb/g;

    .line 17
    .line 18
    iget v6, v5, Lb/g;->a:I

    .line 19
    .line 20
    if-ne v4, v6, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lb/a;->g:[F

    .line 23
    .line 24
    aget v0, v2, v0

    .line 25
    .line 26
    invoke-virtual {p0, v5}, Lb/a;->d(Lb/g;)F

    .line 27
    .line 28
    .line 29
    iget-object v2, p2, Lb/b;->c:Lb/a;

    .line 30
    .line 31
    iget v4, v2, Lb/a;->h:I

    .line 32
    .line 33
    :goto_2
    if-eq v4, v3, :cond_0

    .line 34
    .line 35
    iget v5, v2, Lb/a;->a:I

    .line 36
    .line 37
    if-ge v1, v5, :cond_0

    .line 38
    .line 39
    iget-object v5, p0, Lb/a;->c:Lb/c;

    .line 40
    .line 41
    iget-object v5, v5, Lb/c;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v5, [Lb/g;

    .line 44
    .line 45
    iget-object v6, v2, Lb/a;->e:[I

    .line 46
    .line 47
    aget v6, v6, v4

    .line 48
    .line 49
    aget-object v5, v5, v6

    .line 50
    .line 51
    iget-object v6, v2, Lb/a;->g:[F

    .line 52
    .line 53
    aget v6, v6, v4

    .line 54
    .line 55
    mul-float/2addr v6, v0

    .line 56
    invoke-virtual {p0, v5, v6}, Lb/a;->a(Lb/g;F)V

    .line 57
    .line 58
    .line 59
    iget-object v5, v2, Lb/a;->f:[I

    .line 60
    .line 61
    aget v4, v5, v4

    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_0
    iget v1, p1, Lb/b;->b:F

    .line 67
    .line 68
    iget v2, p2, Lb/b;->b:F

    .line 69
    .line 70
    mul-float/2addr v2, v0

    .line 71
    add-float/2addr v2, v1

    .line 72
    iput v2, p1, Lb/b;->b:F

    .line 73
    .line 74
    iget-object v0, p2, Lb/b;->a:Lb/g;

    .line 75
    .line 76
    invoke-virtual {v0, p1}, Lb/g;->a(Lb/b;)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lb/a;->h:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, p0, Lb/a;->f:[I

    .line 83
    .line 84
    aget v0, v3, v0

    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    return-void
.end method

.method public final f(Lb/b;[Lb/b;)V
    .locals 9

    .line 1
    iget v0, p0, Lb/a;->h:I

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_1
    const/4 v3, -0x1

    .line 6
    if-eq v0, v3, :cond_2

    .line 7
    .line 8
    iget v4, p0, Lb/a;->a:I

    .line 9
    .line 10
    if-ge v2, v4, :cond_2

    .line 11
    .line 12
    iget-object v4, p0, Lb/a;->c:Lb/c;

    .line 13
    .line 14
    iget-object v5, v4, Lb/c;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v5, [Lb/g;

    .line 17
    .line 18
    iget-object v6, p0, Lb/a;->e:[I

    .line 19
    .line 20
    aget v6, v6, v0

    .line 21
    .line 22
    aget-object v5, v5, v6

    .line 23
    .line 24
    iget v6, v5, Lb/g;->b:I

    .line 25
    .line 26
    if-eq v6, v3, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lb/a;->g:[F

    .line 29
    .line 30
    aget v0, v2, v0

    .line 31
    .line 32
    invoke-virtual {p0, v5}, Lb/a;->d(Lb/g;)F

    .line 33
    .line 34
    .line 35
    iget v2, v5, Lb/g;->b:I

    .line 36
    .line 37
    aget-object v2, p2, v2

    .line 38
    .line 39
    iget-boolean v5, v2, Lb/b;->d:Z

    .line 40
    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    iget-object v5, v2, Lb/b;->c:Lb/a;

    .line 44
    .line 45
    iget v6, v5, Lb/a;->h:I

    .line 46
    .line 47
    :goto_2
    if-eq v6, v3, :cond_0

    .line 48
    .line 49
    iget v7, v5, Lb/a;->a:I

    .line 50
    .line 51
    if-ge v1, v7, :cond_0

    .line 52
    .line 53
    iget-object v7, v4, Lb/c;->e:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, [Lb/g;

    .line 56
    .line 57
    iget-object v8, v5, Lb/a;->e:[I

    .line 58
    .line 59
    aget v8, v8, v6

    .line 60
    .line 61
    aget-object v7, v7, v8

    .line 62
    .line 63
    iget-object v8, v5, Lb/a;->g:[F

    .line 64
    .line 65
    aget v8, v8, v6

    .line 66
    .line 67
    mul-float/2addr v8, v0

    .line 68
    invoke-virtual {p0, v7, v8}, Lb/a;->a(Lb/g;F)V

    .line 69
    .line 70
    .line 71
    iget-object v7, v5, Lb/a;->f:[I

    .line 72
    .line 73
    aget v6, v7, v6

    .line 74
    .line 75
    add-int/lit8 v1, v1, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_0
    iget v1, p1, Lb/b;->b:F

    .line 79
    .line 80
    iget v3, v2, Lb/b;->b:F

    .line 81
    .line 82
    mul-float/2addr v3, v0

    .line 83
    add-float/2addr v3, v1

    .line 84
    iput v3, p1, Lb/b;->b:F

    .line 85
    .line 86
    iget-object v0, v2, Lb/b;->a:Lb/g;

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lb/g;->a(Lb/b;)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lb/a;->h:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-object v3, p0, Lb/a;->f:[I

    .line 95
    .line 96
    aget v0, v3, v0

    .line 97
    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lb/a;->h:I

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/4 v3, -0x1

    .line 7
    if-eq v0, v3, :cond_0

    .line 8
    .line 9
    iget v3, p0, Lb/a;->a:I

    .line 10
    .line 11
    if-ge v2, v3, :cond_0

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " -> "

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lb/a;->g:[F

    .line 39
    .line 40
    aget v1, v1, v0

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " : "

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lb/a;->c:Lb/c;

    .line 63
    .line 64
    iget-object v1, v1, Lb/c;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, [Lb/g;

    .line 67
    .line 68
    iget-object v4, p0, Lb/a;->e:[I

    .line 69
    .line 70
    aget v4, v4, v0

    .line 71
    .line 72
    aget-object v1, v1, v4

    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v3, p0, Lb/a;->f:[I

    .line 82
    .line 83
    aget v0, v3, v0

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-object v1
.end method
