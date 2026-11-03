.class public final Lc1/a;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lc1/a;->a:I

    invoke-direct {p0}, Lc1/b;-><init>()V

    iput p1, p0, Lc1/a;->b:I

    return-void
.end method


# virtual methods
.method public final a(BC[CI)B
    .locals 11

    .line 1
    iget v0, p0, Lc1/a;->a:I

    .line 2
    .line 3
    const/16 v1, 0x27

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/16 v3, 0x2f

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/16 v6, 0x17

    .line 11
    .line 12
    const/4 v7, 0x7

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :pswitch_0
    iget v0, p0, Lc1/a;->b:I

    .line 19
    .line 20
    const/16 v8, 0xd

    .line 21
    .line 22
    if-ne v0, v8, :cond_6

    .line 23
    .line 24
    const/16 v0, 0x2a

    .line 25
    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    .line 28
    if-lez p4, :cond_0

    .line 29
    .line 30
    sub-int/2addr p4, v4

    .line 31
    aget-char p3, p3, p4

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p3, v5

    .line 35
    :goto_0
    if-ne p3, v0, :cond_a

    .line 36
    .line 37
    if-ne p2, v3, :cond_a

    .line 38
    .line 39
    const/16 p1, 0x41

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    if-ne p1, v4, :cond_2

    .line 43
    .line 44
    const/16 v8, 0x3a

    .line 45
    .line 46
    if-ne p2, v8, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v6, 0x7b

    .line 50
    .line 51
    if-eq p2, v6, :cond_8

    .line 52
    .line 53
    const/16 v6, 0x7d

    .line 54
    .line 55
    if-ne p2, v6, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    const/16 v6, 0x2e

    .line 59
    .line 60
    if-ne p2, v6, :cond_4

    .line 61
    .line 62
    move p1, v1

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    if-ne p2, v3, :cond_a

    .line 65
    .line 66
    add-int/2addr p4, v4

    .line 67
    array-length p2, p3

    .line 68
    if-ge p4, p2, :cond_5

    .line 69
    .line 70
    aget-char p2, p3, p4

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    move p2, v5

    .line 74
    :goto_1
    if-ne p2, v0, :cond_a

    .line 75
    .line 76
    move p1, v2

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    if-ne p1, v4, :cond_7

    .line 79
    .line 80
    const/16 p3, 0x3d

    .line 81
    .line 82
    if-ne p2, p3, :cond_7

    .line 83
    .line 84
    :goto_2
    move p1, v6

    .line 85
    goto :goto_4

    .line 86
    :cond_7
    if-ne p1, v4, :cond_9

    .line 87
    .line 88
    const/16 p3, 0x5b

    .line 89
    .line 90
    if-eq p2, p3, :cond_8

    .line 91
    .line 92
    const/16 p3, 0x5d

    .line 93
    .line 94
    if-ne p2, p3, :cond_9

    .line 95
    .line 96
    :cond_8
    :goto_3
    move p1, v7

    .line 97
    goto :goto_4

    .line 98
    :cond_9
    if-ne p1, v4, :cond_a

    .line 99
    .line 100
    const/16 p3, 0x23

    .line 101
    .line 102
    if-ne p2, p3, :cond_a

    .line 103
    .line 104
    if-nez p4, :cond_a

    .line 105
    .line 106
    const/16 p1, 0x15

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_a
    and-int/lit8 p2, p1, 0xf

    .line 110
    .line 111
    if-ne p2, v7, :cond_b

    .line 112
    .line 113
    move p1, v5

    .line 114
    :cond_b
    :goto_4
    return p1

    .line 115
    :goto_5
    if-ne p1, v4, :cond_c

    .line 116
    .line 117
    move p1, v5

    .line 118
    :cond_c
    invoke-static {p2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_e

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Lc1/a;->e(B)B

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    :cond_d
    :goto_6
    move v2, p1

    .line 129
    goto/16 :goto_a

    .line 130
    .line 131
    :cond_e
    const/16 v0, 0x22

    .line 132
    .line 133
    const/4 v8, 0x2

    .line 134
    const/16 v9, 0x3e

    .line 135
    .line 136
    if-eqz p1, :cond_13

    .line 137
    .line 138
    and-int/lit8 v10, p1, 0x7

    .line 139
    .line 140
    if-ne v10, v7, :cond_f

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_f
    and-int/lit8 v3, p1, 0xf

    .line 144
    .line 145
    if-ne v3, v8, :cond_11

    .line 146
    .line 147
    and-int/lit8 p3, p1, 0x30

    .line 148
    .line 149
    if-ne p2, v0, :cond_10

    .line 150
    .line 151
    if-nez p3, :cond_d

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_10
    if-ne p2, v1, :cond_d

    .line 155
    .line 156
    const/16 p2, 0x10

    .line 157
    .line 158
    if-ne p3, p2, :cond_d

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_11
    if-ne p1, v2, :cond_d

    .line 162
    .line 163
    if-ne p2, v9, :cond_d

    .line 164
    .line 165
    if-lez p4, :cond_12

    .line 166
    .line 167
    sub-int/2addr p4, v4

    .line 168
    aget-char v5, p3, p4

    .line 169
    .line 170
    :cond_12
    const/16 p2, 0x2d

    .line 171
    .line 172
    if-ne v5, p2, :cond_d

    .line 173
    .line 174
    :goto_7
    const/16 p1, 0x40

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_13
    :goto_8
    add-int/2addr p4, v4

    .line 178
    array-length v4, p3

    .line 179
    if-ge p4, v4, :cond_14

    .line 180
    .line 181
    aget-char v5, p3, p4

    .line 182
    .line 183
    :cond_14
    const/16 p3, 0x3c

    .line 184
    .line 185
    if-ne p2, p3, :cond_16

    .line 186
    .line 187
    const/16 p1, 0x21

    .line 188
    .line 189
    if-ne v5, p1, :cond_15

    .line 190
    .line 191
    goto :goto_a

    .line 192
    :cond_15
    move v2, v7

    .line 193
    goto :goto_a

    .line 194
    :cond_16
    if-eq p2, v9, :cond_1a

    .line 195
    .line 196
    if-eq p2, v3, :cond_17

    .line 197
    .line 198
    const/16 p3, 0x3f

    .line 199
    .line 200
    if-ne p2, p3, :cond_18

    .line 201
    .line 202
    :cond_17
    if-ne v5, v9, :cond_18

    .line 203
    .line 204
    goto :goto_9

    .line 205
    :cond_18
    if-ne p2, v0, :cond_19

    .line 206
    .line 207
    move v2, v8

    .line 208
    goto :goto_a

    .line 209
    :cond_19
    if-ne p2, v1, :cond_d

    .line 210
    .line 211
    const/16 p1, 0x12

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_1a
    :goto_9
    move v2, v6

    .line 215
    :goto_a
    return v2

    .line 216
    nop

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lc1/a;->b:I

    return v0
.end method

.method public final d(B)B
    .locals 2

    iget v0, p0, Lc1/a;->a:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :goto_1
    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(B)B
    .locals 5

    iget v0, p0, Lc1/a;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-ne p1, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x27

    if-ne p1, v0, :cond_2

    move p1, v1

    :cond_2
    move v2, p1

    :goto_0
    return v2

    :goto_1
    if-ne p1, v4, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    and-int/lit8 v0, p1, 0xf

    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f([CII)B
    .locals 0

    iget p1, p0, Lc1/a;->a:I

    packed-switch p1, :pswitch_data_0

    const/16 p1, 0xc

    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
