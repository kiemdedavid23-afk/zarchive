.class public Lk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/io/InputStream;

.field public c:Lp/g;

.field public d:Ll/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lk/a;->a:Ljava/util/HashMap;

    .line 34
    iput-object v0, p0, Lk/a;->b:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lk/a;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    .line 4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 5
    iput-object p1, p0, Lk/a;->b:Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lk/a;->b:Ljava/io/InputStream;

    .line 7
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 8
    :goto_1
    iget-object v1, p0, Lk/a;->b:Ljava/io/InputStream;

    if-ne p1, v1, :cond_2

    .line 9
    new-instance v1, Lm0/e;

    invoke-direct {v1, p1, v2}, Lm0/e;-><init>(Ljava/io/Closeable;I)V

    move-object p1, v1

    .line 10
    :cond_2
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move p1, v2

    move v4, p1

    .line 11
    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 12
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AndroidManifest.xml"

    .line 13
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move p1, v3

    goto/16 :goto_9

    :cond_4
    if-ne p2, v3, :cond_3

    const-string v7, "resources.arsc"

    .line 14
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    if-nez v4, :cond_6

    const-string v7, "res/"

    .line 15
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    const-string v7, "r/"

    .line 16
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x2

    :cond_6
    :goto_3
    const-string v7, ".xml"

    const-string v8, ".png"

    if-ne v4, v3, :cond_d

    const-string v5, "icon.png"

    const-string v9, "/ic_launcher"

    if-eqz v0, :cond_a

    const-string v8, "/mipmap"

    .line 17
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "/drawable"

    .line 18
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 20
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v3

    goto :goto_4

    :cond_8
    move v8, v2

    :goto_4
    if-nez v8, :cond_9

    .line 21
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    goto :goto_5

    :cond_9
    move v5, v2

    :goto_5
    if-nez v7, :cond_10

    if-nez v8, :cond_10

    if-nez v5, :cond_10

    goto :goto_2

    .line 22
    :cond_a
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 23
    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v8, v3

    goto :goto_6

    :cond_b
    move v8, v2

    :goto_6
    if-eqz v7, :cond_c

    .line 24
    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    goto :goto_7

    :cond_c
    move v5, v2

    :goto_7
    if-nez v8, :cond_3

    if-eqz v5, :cond_10

    goto/16 :goto_2

    .line 25
    :cond_d
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    const-wide/16 v11, 0x1400

    cmp-long v5, v9, v11

    if-gtz v5, :cond_3

    const-wide/16 v11, 0x400

    cmp-long v5, v9, v11

    if-gez v5, :cond_e

    goto/16 :goto_2

    .line 26
    :cond_e
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    move v7, v3

    goto :goto_8

    :cond_f
    move v7, v2

    :goto_8
    if-nez v5, :cond_10

    if-nez v7, :cond_10

    goto/16 :goto_2

    .line 28
    :cond_10
    :goto_9
    iget-object v5, p0, Lk/a;->a:Ljava/util/HashMap;

    invoke-static {v1}, Lb/d;->T(Ljava/io/InputStream;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 29
    :cond_11
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    if-eqz p1, :cond_12

    .line 30
    invoke-virtual {p0}, Lk/a;->c()V

    .line 31
    invoke-virtual {p0}, Lk/a;->b()V

    :cond_12
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[B
    .locals 5

    .line 1
    iget-object v0, p0, Lk/a;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lk/a;->b:Ljava/io/InputStream;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 16
    .line 17
    .line 18
    new-instance v2, Ljava/util/zip/ZipInputStream;

    .line 19
    .line 20
    new-instance v3, Lm0/e;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {v3, v1, v4}, Lm0/e;-><init>(Ljava/io/Closeable;I)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-static {v2}, Lb/d;->T(Ljava/io/InputStream;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object v0, p1

    .line 50
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 5

    .line 1
    const-string v0, "AndroidManifest.xml"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lk/a;->a(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ln/c;

    .line 11
    .line 12
    iget-object v2, p0, Lk/a;->c:Lp/g;

    .line 13
    .line 14
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Ln/c;-><init>(Lp/g;Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ln/b;

    .line 24
    .line 25
    iget-object v4, p0, Lk/a;->c:Lp/g;

    .line 26
    .line 27
    invoke-direct {v2, v0, v4}, Ln/b;-><init>(Ljava/nio/ByteBuffer;Lp/g;)V

    .line 28
    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    iput-object v3, v2, Ln/b;->f:Ljava/util/Locale;

    .line 33
    .line 34
    :cond_1
    iput-object v1, v2, Ln/b;->d:Ln/g;

    .line 35
    .line 36
    invoke-virtual {v2}, Ln/b;->a()V

    .line 37
    .line 38
    .line 39
    iget-object v0, v1, Ln/c;->a:Ll/a;

    .line 40
    .line 41
    iput-object v0, p0, Lk/a;->d:Ll/a;

    .line 42
    .line 43
    iget-object v0, v1, Ln/c;->b:Ljava/util/List;

    .line 44
    .line 45
    iput-object v0, p0, Lk/a;->e:Ljava/util/List;

    .line 46
    .line 47
    return-void
.end method

.method public final c()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "resources.arsc"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lk/a;->a(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_8

    .line 10
    .line 11
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ln/d;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Ln/d;-><init>(Ljava/nio/ByteBuffer;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ln/d;->a()Lo/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lp/h;

    .line 25
    .line 26
    iget-object v3, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 27
    .line 28
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ln/d;->a()Lo/a;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lo/c;

    .line 35
    .line 36
    invoke-static {v3, v4}, Lr/b;->b(Ljava/nio/ByteBuffer;Lo/c;)Le/b;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v2, Ln/d;->b:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v3, Lp/g;

    .line 43
    .line 44
    invoke-direct {v3}, Lp/g;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v3, v2, Ln/d;->d:Ljava/lang/Object;

    .line 48
    .line 49
    iget v3, v1, Lp/h;->d:I

    .line 50
    .line 51
    int-to-long v3, v3

    .line 52
    const-wide v5, 0xffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v3, v5

    .line 58
    const-wide/16 v7, 0x0

    .line 59
    .line 60
    cmp-long v3, v3, v7

    .line 61
    .line 62
    if-eqz v3, :cond_7

    .line 63
    .line 64
    invoke-virtual {v2}, Ln/d;->a()Lo/a;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lp/b;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    :goto_0
    int-to-long v8, v7

    .line 72
    iget v10, v1, Lp/h;->d:I

    .line 73
    .line 74
    int-to-long v10, v10

    .line 75
    and-long/2addr v10, v5

    .line 76
    cmp-long v8, v8, v10

    .line 77
    .line 78
    if-gez v8, :cond_7

    .line 79
    .line 80
    new-instance v8, Lp/f;

    .line 81
    .line 82
    invoke-direct {v8, v3}, Lp/f;-><init>(Lp/b;)V

    .line 83
    .line 84
    .line 85
    iget-object v9, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 86
    .line 87
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/nio/Buffer;->position()I

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    int-to-long v9, v9

    .line 94
    iget v11, v3, Lp/b;->e:I

    .line 95
    .line 96
    iget-short v12, v3, Lo/a;->b:S

    .line 97
    .line 98
    if-lez v11, :cond_0

    .line 99
    .line 100
    iget-object v13, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 101
    .line 102
    check-cast v13, Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    int-to-long v14, v11

    .line 105
    add-long/2addr v14, v9

    .line 106
    int-to-long v4, v12

    .line 107
    sub-long/2addr v14, v4

    .line 108
    invoke-static {v13, v14, v15}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 109
    .line 110
    .line 111
    iget-object v4, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 112
    .line 113
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    invoke-virtual {v2}, Ln/d;->a()Lo/a;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lo/c;

    .line 120
    .line 121
    invoke-static {v4, v5}, Lr/b;->b(Ljava/nio/ByteBuffer;Lo/c;)Le/b;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    iput-object v4, v8, Lp/f;->b:Le/b;

    .line 126
    .line 127
    :cond_0
    iget v3, v3, Lp/b;->f:I

    .line 128
    .line 129
    if-lez v3, :cond_1

    .line 130
    .line 131
    iget-object v4, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 132
    .line 133
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 134
    .line 135
    int-to-long v13, v3

    .line 136
    add-long/2addr v9, v13

    .line 137
    int-to-long v11, v12

    .line 138
    sub-long/2addr v9, v11

    .line 139
    invoke-static {v4, v9, v10}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 143
    .line 144
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    invoke-virtual {v2}, Ln/d;->a()Lo/a;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Lo/c;

    .line 151
    .line 152
    invoke-static {v3, v4}, Lr/b;->b(Ljava/nio/ByteBuffer;Lo/c;)Le/b;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    iput-object v3, v8, Lp/f;->c:Le/b;

    .line 157
    .line 158
    :cond_1
    :goto_1
    iget-object v3, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 159
    .line 160
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_6

    .line 167
    .line 168
    invoke-virtual {v2}, Ln/d;->a()Lo/a;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v4, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 173
    .line 174
    check-cast v4, Ljava/nio/ByteBuffer;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    int-to-long v4, v4

    .line 181
    iget-short v9, v3, Lo/a;->a:S

    .line 182
    .line 183
    if-eqz v9, :cond_5

    .line 184
    .line 185
    packed-switch v9, :pswitch_data_0

    .line 186
    .line 187
    .line 188
    new-instance v1, Lm/a;

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v3, "unexpected chunk type: 0x"

    .line 193
    .line 194
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-direct {v1, v2}, Lm/a;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw v1

    .line 208
    :pswitch_0
    iget-object v9, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 209
    .line 210
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    iget v10, v3, Lo/a;->c:I

    .line 213
    .line 214
    iget-short v3, v3, Lo/a;->b:S

    .line 215
    .line 216
    sub-int/2addr v10, v3

    .line 217
    int-to-long v10, v10

    .line 218
    add-long/2addr v4, v10

    .line 219
    invoke-static {v9, v4, v5}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :pswitch_1
    check-cast v3, Lp/m;

    .line 224
    .line 225
    iget v9, v3, Lp/m;->e:I

    .line 226
    .line 227
    new-array v9, v9, [J

    .line 228
    .line 229
    const/4 v10, 0x0

    .line 230
    :goto_2
    iget v11, v3, Lp/m;->e:I

    .line 231
    .line 232
    if-ge v10, v11, :cond_2

    .line 233
    .line 234
    iget-object v11, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 235
    .line 236
    check-cast v11, Ljava/nio/ByteBuffer;

    .line 237
    .line 238
    invoke-static {v11}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 239
    .line 240
    .line 241
    move-result-wide v11

    .line 242
    aput-wide v11, v9, v10

    .line 243
    .line 244
    add-int/lit8 v10, v10, 0x1

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_2
    new-instance v10, Lp/l;

    .line 248
    .line 249
    invoke-direct {v10, v3}, Lp/l;-><init>(Lp/m;)V

    .line 250
    .line 251
    .line 252
    iput-object v9, v10, Lp/l;->a:[J

    .line 253
    .line 254
    iget-object v9, v8, Lp/f;->b:Le/b;

    .line 255
    .line 256
    iget-byte v11, v3, Lp/m;->d:B

    .line 257
    .line 258
    and-int/lit16 v11, v11, 0xff

    .line 259
    .line 260
    int-to-short v11, v11

    .line 261
    add-int/lit8 v11, v11, -0x1

    .line 262
    .line 263
    invoke-virtual {v9, v11}, Le/b;->a(I)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    iput-object v9, v10, Lp/l;->b:Ljava/lang/String;

    .line 268
    .line 269
    iget-object v9, v8, Lp/f;->d:Ljava/util/HashMap;

    .line 270
    .line 271
    iget-short v11, v10, Lp/l;->c:S

    .line 272
    .line 273
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    iget-object v9, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 281
    .line 282
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 283
    .line 284
    iget v10, v3, Lo/a;->c:I

    .line 285
    .line 286
    iget-short v3, v3, Lo/a;->b:S

    .line 287
    .line 288
    sub-int/2addr v10, v3

    .line 289
    int-to-long v10, v10

    .line 290
    add-long/2addr v4, v10

    .line 291
    invoke-static {v9, v4, v5}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_1

    .line 295
    .line 296
    :pswitch_2
    check-cast v3, Lp/k;

    .line 297
    .line 298
    iget v9, v3, Lp/k;->e:I

    .line 299
    .line 300
    new-array v9, v9, [J

    .line 301
    .line 302
    const/4 v10, 0x0

    .line 303
    :goto_3
    iget v11, v3, Lp/k;->e:I

    .line 304
    .line 305
    if-ge v10, v11, :cond_3

    .line 306
    .line 307
    iget-object v11, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 308
    .line 309
    check-cast v11, Ljava/nio/ByteBuffer;

    .line 310
    .line 311
    invoke-static {v11}, Lb/d;->V(Ljava/nio/ByteBuffer;)J

    .line 312
    .line 313
    .line 314
    move-result-wide v11

    .line 315
    aput-wide v11, v9, v10

    .line 316
    .line 317
    add-int/lit8 v10, v10, 0x1

    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_3
    new-instance v10, Lp/j;

    .line 321
    .line 322
    invoke-direct {v10, v3}, Lp/j;-><init>(Lp/k;)V

    .line 323
    .line 324
    .line 325
    iget-object v11, v8, Lp/f;->b:Le/b;

    .line 326
    .line 327
    iget-byte v12, v3, Lp/k;->d:B

    .line 328
    .line 329
    and-int/lit16 v12, v12, 0xff

    .line 330
    .line 331
    int-to-short v12, v12

    .line 332
    add-int/lit8 v12, v12, -0x1

    .line 333
    .line 334
    invoke-virtual {v11, v12}, Le/b;->a(I)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v11

    .line 338
    iput-object v11, v10, Lp/j;->a:Ljava/lang/String;

    .line 339
    .line 340
    iget v11, v3, Lp/k;->f:I

    .line 341
    .line 342
    int-to-long v11, v11

    .line 343
    add-long/2addr v11, v4

    .line 344
    iget-short v13, v3, Lo/a;->b:S

    .line 345
    .line 346
    int-to-long v14, v13

    .line 347
    sub-long/2addr v11, v14

    .line 348
    iget-object v14, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 349
    .line 350
    check-cast v14, Ljava/nio/ByteBuffer;

    .line 351
    .line 352
    invoke-static {v14, v11, v12}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 353
    .line 354
    .line 355
    iget-object v11, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 356
    .line 357
    check-cast v11, Ljava/nio/ByteBuffer;

    .line 358
    .line 359
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 364
    .line 365
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 366
    .line 367
    .line 368
    iput-object v11, v10, Lp/j;->d:Ljava/nio/ByteBuffer;

    .line 369
    .line 370
    iget-object v11, v8, Lp/f;->c:Le/b;

    .line 371
    .line 372
    iput-object v11, v10, Lp/j;->c:Le/b;

    .line 373
    .line 374
    iput-object v9, v10, Lp/j;->e:[J

    .line 375
    .line 376
    iget-object v9, v2, Ln/d;->b:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v9, Le/b;

    .line 379
    .line 380
    iput-object v9, v10, Lp/j;->f:Le/b;

    .line 381
    .line 382
    iget-object v9, v8, Lp/f;->e:Ljava/util/HashMap;

    .line 383
    .line 384
    iget-short v11, v10, Lp/j;->b:S

    .line 385
    .line 386
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 387
    .line 388
    .line 389
    move-result-object v12

    .line 390
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v12

    .line 394
    check-cast v12, Ljava/util/List;

    .line 395
    .line 396
    if-nez v12, :cond_4

    .line 397
    .line 398
    new-instance v12, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    :cond_4
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    iget-object v9, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 414
    .line 415
    check-cast v9, Ljava/nio/ByteBuffer;

    .line 416
    .line 417
    iget v3, v3, Lo/a;->c:I

    .line 418
    .line 419
    sub-int/2addr v3, v13

    .line 420
    int-to-long v10, v3

    .line 421
    add-long/2addr v4, v10

    .line 422
    invoke-static {v9, v4, v5}, Lb/d;->R(Ljava/nio/ByteBuffer;J)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :pswitch_3
    check-cast v3, Lp/b;

    .line 428
    .line 429
    goto :goto_4

    .line 430
    :cond_5
    iget-object v3, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 431
    .line 432
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    .line 435
    .line 436
    .line 437
    move-result v4

    .line 438
    iget-object v5, v2, Ln/d;->c:Ljava/lang/Comparable;

    .line 439
    .line 440
    check-cast v5, Ljava/nio/ByteBuffer;

    .line 441
    .line 442
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    add-int/2addr v5, v4

    .line 447
    invoke-virtual {v3, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 448
    .line 449
    .line 450
    goto/16 :goto_1

    .line 451
    .line 452
    :cond_6
    const/4 v3, 0x0

    .line 453
    :goto_4
    iget-object v4, v2, Ln/d;->d:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v4, Lp/g;

    .line 456
    .line 457
    iget-object v4, v4, Lp/g;->a:Ljava/util/HashMap;

    .line 458
    .line 459
    iget-short v5, v8, Lp/f;->a:S

    .line 460
    .line 461
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    invoke-virtual {v4, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    add-int/lit8 v7, v7, 0x1

    .line 469
    .line 470
    const-wide v5, 0xffffffffL

    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :cond_7
    iget-object v1, v2, Ln/d;->d:Ljava/lang/Object;

    .line 478
    .line 479
    check-cast v1, Lp/g;

    .line 480
    .line 481
    iput-object v1, v0, Lk/a;->c:Lp/g;

    .line 482
    .line 483
    goto :goto_5

    .line 484
    :cond_8
    new-instance v1, Lp/g;

    .line 485
    .line 486
    invoke-direct {v1}, Lp/g;-><init>()V

    .line 487
    .line 488
    .line 489
    iput-object v1, v0, Lk/a;->c:Lp/g;

    .line 490
    .line 491
    :goto_5
    return-void

    .line 492
    nop

    .line 493
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lk/a;->c:Lp/g;

    .line 3
    .line 4
    iget-object v0, p0, Lk/a;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lk/a;->close()V

    return-void
.end method
