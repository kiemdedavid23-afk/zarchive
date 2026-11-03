.class public final Lz/u0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:[Lg0/h;

.field public final f:[Ljava/lang/String;

.field public final g:Lf0/x$c;


# direct methods
.method public constructor <init>([Lg0/h;[Ljava/lang/String;Lf0/x$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/u0;->e:[Lg0/h;

    .line 5
    .line 6
    iput-object p2, p0, Lz/u0;->f:[Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lz/u0;->g:Lf0/x$c;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 11

    .line 1
    sget v0, Ls0/b;->m:I

    .line 2
    .line 3
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln0/a;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lz/x;

    .line 14
    .line 15
    const v1, 0x7f0c016e

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lz/x;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    move v4, v1

    .line 25
    move v3, v2

    .line 26
    :goto_0
    iget-object v5, p0, Lz/u0;->f:[Ljava/lang/String;

    .line 27
    .line 28
    array-length v6, v5

    .line 29
    if-ge v3, v6, :cond_6

    .line 30
    .line 31
    iget-object v6, p0, Lz/u0;->e:[Lg0/h;

    .line 32
    .line 33
    array-length v7, v6

    .line 34
    if-le v7, v1, :cond_1

    .line 35
    .line 36
    new-instance v7, Lg0/h;

    .line 37
    .line 38
    aget-object v6, v6, v3

    .line 39
    .line 40
    aget-object v5, v5, v3

    .line 41
    .line 42
    invoke-direct {v7, v5, v6}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v7, Lg0/h;

    .line 47
    .line 48
    aget-object v6, v6, v2

    .line 49
    .line 50
    aget-object v5, v5, v3

    .line 51
    .line 52
    invoke-direct {v7, v5, v6}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object v5, p0, Lz/u0;->g:Lf0/x$c;

    .line 56
    .line 57
    iget v6, v5, Lf0/x$c;->a:I

    .line 58
    .line 59
    invoke-static {v6, v1}, Lb/d;->K(II)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    invoke-virtual {v7}, Lg0/h;->r()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget v8, v5, Lf0/x$c;->b:I

    .line 70
    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v10, "chmod "

    .line 74
    .line 75
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v8, " \'"

    .line 82
    .line 83
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v8, "\'"

    .line 87
    .line 88
    const-string v10, "\'\\\'\'"

    .line 89
    .line 90
    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v6, 0x27

    .line 98
    .line 99
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v0, v6}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_2

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {v0, v2}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    iget v6, v0, Ln0/a;->h:I

    .line 117
    .line 118
    if-nez v6, :cond_3

    .line 119
    .line 120
    move v6, v1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    :goto_2
    move v6, v2

    .line 123
    :goto_3
    if-nez v6, :cond_4

    .line 124
    .line 125
    move v4, v2

    .line 126
    :cond_4
    iget v6, v5, Lf0/x$c;->a:I

    .line 127
    .line 128
    const/4 v8, 0x2

    .line 129
    invoke-static {v6, v8}, Lb/d;->K(II)Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_5

    .line 134
    .line 135
    invoke-virtual {v7}, Lg0/h;->r()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v8, ""

    .line 142
    .line 143
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget v9, v5, Lf0/x$c;->c:I

    .line 147
    .line 148
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    new-instance v9, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget v5, v5, Lf0/x$c;->d:I

    .line 161
    .line 162
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v0, v6, v7, v5, v2}, Lb/d;->e0(Ln0/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-nez v5, :cond_5

    .line 174
    .line 175
    move v4, v2

    .line 176
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_6
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 181
    .line 182
    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    return-object v0

    .line 187
    :cond_7
    new-instance v0, Lz/x;

    .line 188
    .line 189
    const v1, 0x7f0c00e7

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, v1}, Lz/x;-><init>(I)V

    .line 193
    .line 194
    .line 195
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x6d

    return v0
.end method
