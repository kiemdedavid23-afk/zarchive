.class public final Lb1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:B

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb1/e;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput-byte v0, p0, Lb1/e;->b:B

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput v2, p0, Lb1/e;->c:I

    .line 20
    .line 21
    const/16 v3, 0xb

    .line 22
    .line 23
    new-array v3, v3, [I

    .line 24
    .line 25
    iput-object v3, p0, Lb1/e;->f:[I

    .line 26
    .line 27
    const/high16 v4, -0x80000000

    .line 28
    .line 29
    const/16 v5, 0xa

    .line 30
    .line 31
    const/16 v6, 0x9

    .line 32
    .line 33
    const/4 v7, 0x5

    .line 34
    const/4 v8, 0x4

    .line 35
    const/4 v9, 0x3

    .line 36
    const/4 v10, 0x2

    .line 37
    const/4 v11, 0x0

    .line 38
    :try_start_0
    new-array v12, v7, [I

    .line 39
    .line 40
    const v13, 0x7f03000c

    .line 41
    .line 42
    .line 43
    aput v13, v12, v2

    .line 44
    .line 45
    const v13, 0x7f030008

    .line 46
    .line 47
    .line 48
    aput v13, v12, v1

    .line 49
    .line 50
    const v13, 0x7f030009

    .line 51
    .line 52
    .line 53
    aput v13, v12, v10

    .line 54
    .line 55
    const v13, 0x7f03000a

    .line 56
    .line 57
    .line 58
    aput v13, v12, v9

    .line 59
    .line 60
    const v13, 0x7f030016

    .line 61
    .line 62
    .line 63
    aput v13, v12, v8

    .line 64
    .line 65
    invoke-virtual {p1, v12}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    invoke-virtual {v11, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    aput p1, v3, v2

    .line 74
    .line 75
    invoke-virtual {v11, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const v12, 0xffffff

    .line 80
    .line 81
    .line 82
    and-int/2addr p1, v12

    .line 83
    or-int/2addr p1, v4

    .line 84
    aput p1, v3, v6

    .line 85
    .line 86
    invoke-virtual {v11, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_0

    .line 91
    .line 92
    move p1, v10

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move p1, v9

    .line 95
    :goto_0
    invoke-virtual {v11, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    aput p1, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_3

    .line 104
    :catch_0
    :try_start_1
    iget-object p1, p0, Lb1/e;->f:[I

    .line 105
    .line 106
    aput v0, p1, v2

    .line 107
    .line 108
    aput v4, p1, v5

    .line 109
    .line 110
    aput v4, p1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    if-eqz v11, :cond_1

    .line 113
    .line 114
    :goto_1
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-object p1, p0, Lb1/e;->f:[I

    .line 118
    .line 119
    aget p1, p1, v2

    .line 120
    .line 121
    invoke-static {p1}, Ly0/c;->e(I)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/high16 v0, -0x1000000

    .line 126
    .line 127
    if-ne p1, v0, :cond_2

    .line 128
    .line 129
    move v2, v1

    .line 130
    :cond_2
    iget-object p1, p0, Lb1/e;->f:[I

    .line 131
    .line 132
    const/16 v0, 0x8

    .line 133
    .line 134
    const/4 v3, 0x7

    .line 135
    const v4, -0x914bd7

    .line 136
    .line 137
    .line 138
    const/4 v5, 0x6

    .line 139
    if-eqz v2, :cond_3

    .line 140
    .line 141
    const v2, -0x77757b

    .line 142
    .line 143
    .line 144
    aput v2, p1, v7

    .line 145
    .line 146
    const v2, -0xb35537

    .line 147
    .line 148
    .line 149
    aput v2, p1, v1

    .line 150
    .line 151
    const v1, -0x8d6031

    .line 152
    .line 153
    .line 154
    aput v1, p1, v5

    .line 155
    .line 156
    const v1, -0x9a0100

    .line 157
    .line 158
    .line 159
    aput v1, p1, v10

    .line 160
    .line 161
    aput v4, p1, v9

    .line 162
    .line 163
    const v1, -0x751dcc

    .line 164
    .line 165
    .line 166
    aput v1, p1, v8

    .line 167
    .line 168
    const v1, -0x346a93

    .line 169
    .line 170
    .line 171
    aput v1, p1, v3

    .line 172
    .line 173
    const v1, -0xa2476b

    .line 174
    .line 175
    .line 176
    aput v1, p1, v0

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_3
    const v2, -0x939196

    .line 180
    .line 181
    .line 182
    aput v2, p1, v7

    .line 183
    .line 184
    const v2, -0xc37760

    .line 185
    .line 186
    .line 187
    aput v2, p1, v1

    .line 188
    .line 189
    const v1, -0xa4805b

    .line 190
    .line 191
    .line 192
    aput v1, p1, v5

    .line 193
    .line 194
    const v1, -0xb84d00

    .line 195
    .line 196
    .line 197
    aput v1, p1, v10

    .line 198
    .line 199
    const v1, -0xa76fe0

    .line 200
    .line 201
    .line 202
    aput v1, p1, v9

    .line 203
    .line 204
    aput v4, p1, v8

    .line 205
    .line 206
    const v1, -0x5d88a9

    .line 207
    .line 208
    .line 209
    aput v1, p1, v3

    .line 210
    .line 211
    const v1, -0xb56c89

    .line 212
    .line 213
    .line 214
    aput v1, p1, v0

    .line 215
    .line 216
    :goto_2
    return-void

    .line 217
    :goto_3
    if-eqz v11, :cond_4

    .line 218
    .line 219
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    .line 221
    .line 222
    :cond_4
    throw p1
.end method


# virtual methods
.method public final a(B)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v0, p0, Lb1/e;->f:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, Lb1/e;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lb1/e;->a:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    float-to-int v1, v1

    .line 12
    iput v1, p0, Lb1/e;->c:I

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    float-to-int v0, v0

    .line 19
    iput v0, p0, Lb1/e;->d:I

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lb1/e;->d:I

    .line 22
    .line 23
    iget v1, p0, Lb1/e;->c:I

    .line 24
    .line 25
    sub-int/2addr v0, v1

    .line 26
    return v0
.end method

.method public final c(II[CI)F
    .locals 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    iget-object v2, p0, Lb1/e;->a:Landroid/graphics/Paint;

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v2, p3, p1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    :goto_0
    float-to-int p1, p1

    .line 14
    int-to-float p1, p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 v6, 0x0

    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    move-object v3, p3

    .line 21
    move v4, p1

    .line 22
    move v5, p2

    .line 23
    move v7, p4

    .line 24
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    goto :goto_0
.end method
