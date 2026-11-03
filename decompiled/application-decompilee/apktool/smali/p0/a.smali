.class public final Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/a$b;,
        Lp0/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    invoke-static {p2, p2, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance p1, Landroid/graphics/Canvas;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v2, p2, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    .line 33
    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Landroid/graphics/Canvas;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    .line 42
    div-int/lit8 v3, p2, 0x2

    .line 43
    .line 44
    int-to-float v3, v3

    .line 45
    const v4, 0x3fcccccd    # 1.6f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v4, v4, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 49
    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, v2, v2, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-virtual {p1, v2, v2, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 63
    .line 64
    .line 65
    return-object v0
.end method

.method public static c(Lk/a;Ljava/lang/String;[B)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    const-string v0, ".xml"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, p2}, Lp0/a;->k(Lk/a;[B)Le/d;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const-string p0, "res/"

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 27
    .line 28
    array-length p1, p2

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p2, v0, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 39
    .line 40
    const/16 p2, 0x10

    .line 41
    .line 42
    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    long-to-int p1, p1

    .line 47
    const/high16 p2, -0x1000000

    .line 48
    .line 49
    or-int/2addr p1, p2

    .line 50
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    return-object p0

    .line 54
    :catch_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static d(Lk/a;I)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lk/a;->d:Ll/a;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Ll/a;->a:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v2

    .line 14
    :goto_0
    if-nez v1, :cond_1

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    iget-object v1, p0, Lk/a;->e:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    const/16 v4, 0x18

    .line 29
    .line 30
    const-string v5, ".xml"

    .line 31
    .line 32
    if-lt v3, v4, :cond_7

    .line 33
    .line 34
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_7

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ll/b;

    .line 49
    .line 50
    iget-object v4, v4, Ll/b;->a:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0, v4}, Lk/a;->a(Ljava/lang/String;)[B

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-nez v4, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    new-instance v6, Ln/a;

    .line 66
    .line 67
    invoke-direct {v6}, Ln/a;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    new-instance v8, Ln/b;

    .line 75
    .line 76
    iget-object v9, p0, Lk/a;->c:Lp/g;

    .line 77
    .line 78
    invoke-direct {v8, v7, v9}, Ln/b;-><init>(Ljava/nio/ByteBuffer;Lp/g;)V

    .line 79
    .line 80
    .line 81
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 82
    .line 83
    if-eqz v7, :cond_5

    .line 84
    .line 85
    iput-object v7, v8, Ln/b;->f:Ljava/util/Locale;

    .line 86
    .line 87
    :cond_5
    iput-object v6, v8, Ln/b;->d:Ln/g;

    .line 88
    .line 89
    invoke-virtual {v8}, Ln/b;->a()V

    .line 90
    .line 91
    .line 92
    iget-object v7, v6, Ln/a;->c:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v6, v6, Ln/a;->d:Ljava/lang/String;

    .line 95
    .line 96
    if-nez v7, :cond_6

    .line 97
    .line 98
    if-nez v6, :cond_6

    .line 99
    .line 100
    invoke-static {p0, v4}, Lp0/a;->k(Lk/a;[B)Le/d;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    if-eqz v4, :cond_3

    .line 105
    .line 106
    invoke-static {v0, v4, p1}, Lp0/a;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_6
    if-eqz v7, :cond_3

    .line 112
    .line 113
    invoke-virtual {p0, v7}, Lk/a;->a(Ljava/lang/String;)[B

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    if-eqz v4, :cond_3

    .line 118
    .line 119
    invoke-static {p0, v7, v4}, Lp0/a;->c(Lk/a;Ljava/lang/String;[B)Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0, v6}, Lk/a;->a(Ljava/lang/String;)[B

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {p0, v6, v1}, Lp0/a;->c(Lk/a;Ljava/lang/String;[B)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0, v4, p1}, Lp0/a;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_9

    .line 147
    .line 148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Ll/b;

    .line 153
    .line 154
    iget-object v1, v1, Ll/b;->a:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-nez v3, :cond_8

    .line 161
    .line 162
    invoke-virtual {p0, v1}, Lk/a;->a(Ljava/lang/String;)[B

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    array-length p0, v1

    .line 169
    invoke-static {v1, v2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 170
    .line 171
    .line 172
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    return-object p0

    .line 174
    :catch_0
    :cond_9
    return-object v0
.end method

.method public static e(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 3
    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {v1, v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    .line 12
    .line 13
    :try_start_1
    const-string v2, "icon.png"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string v5, "split_"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_1

    .line 60
    .line 61
    const-string v5, ".apk"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    new-instance v2, Lk/a;

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-direct {v2, v3, p1}, Lk/a;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    :try_start_3
    invoke-static {v2, p0}, Lp0/a;->d(Lk/a;I)Landroid/graphics/Bitmap;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 86
    .line 87
    .line 88
    return-object p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    move-object v0, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    :goto_0
    move-object p1, v0

    .line 98
    move-object v0, v1

    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-object v2, v0

    .line 101
    goto :goto_2

    .line 102
    :catchall_2
    move-exception p0

    .line 103
    move-object p1, v0

    .line 104
    :goto_1
    invoke-static {v0}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :catch_1
    move-object v1, v0

    .line 112
    move-object v2, v1

    .line 113
    :catch_2
    :goto_2
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 117
    .line 118
    .line 119
    :goto_3
    return-object v0
.end method

.method public static f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 3
    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    invoke-direct {v1, v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    const-string p0, "icon.png"

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 30
    .line 31
    .line 32
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    move-object v0, v1

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :goto_0
    invoke-static {v0}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :catch_0
    move-object v1, v0

    .line 46
    :catch_1
    invoke-static {v1}, Lm0/d;->f(Ljava/util/zip/ZipFile;)V

    .line 47
    .line 48
    .line 49
    return-object v0
.end method

.method public static g(Lg0/h;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lg1/h;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 17
    .line 18
    const-class v2, Lru/zdevs/zarchiver/activity/InstallApkDlg;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "apk_path"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    new-instance p0, Lp0/a$b;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lp0/a$b;-><init>(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Lg0/h;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    aput-object p0, v0, v1

    .line 39
    .line 40
    invoke-static {p0, v0}, Lp0/a;->h(Lg0/h;[Lg0/h;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    return p0
.end method

.method public static h(Lg0/h;[Lg0/h;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 14
    .line 15
    .line 16
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v8, 0x1a

    .line 26
    .line 27
    if-lt v7, v8, :cond_0

    .line 28
    .line 29
    const/4 v8, 0x4

    .line 30
    invoke-virtual {v5, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    const/16 v8, 0x21

    .line 34
    .line 35
    if-lt v7, v8, :cond_1

    .line 36
    .line 37
    const/4 v7, 0x3

    .line 38
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 42
    .line 43
    .line 44
    array-length v7, v0

    .line 45
    const-wide/16 v8, 0x0

    .line 46
    .line 47
    move v10, v1

    .line 48
    move-wide v11, v8

    .line 49
    :goto_0
    if-ge v10, v7, :cond_3

    .line 50
    .line 51
    aget-object v13, v0, v10

    .line 52
    .line 53
    invoke-static {v13}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 54
    .line 55
    .line 56
    move-result-object v13

    .line 57
    invoke-virtual {v13}, Lg0/f;->o()J

    .line 58
    .line 59
    .line 60
    move-result-wide v13

    .line 61
    cmp-long v15, v13, v8

    .line 62
    .line 63
    if-lez v15, :cond_2

    .line 64
    .line 65
    add-long/2addr v11, v13

    .line 66
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 70
    .line 71
    .line 72
    const/high16 v7, 0x10000

    .line 73
    .line 74
    new-array v7, v7, [B

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 77
    .line 78
    .line 79
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->d()Lru/zdevs/zarchiver/ZApp;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    if-eqz v10, :cond_4

    .line 89
    .line 90
    invoke-virtual {v10}, Lru/zdevs/zarchiver/ZApp;->h()V

    .line 91
    .line 92
    .line 93
    :cond_4
    array-length v14, v0

    .line 94
    move v15, v1

    .line 95
    :goto_1
    if-ge v15, v14, :cond_7

    .line 96
    .line 97
    aget-object v10, v0, v15

    .line 98
    .line 99
    invoke-static {v10}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 100
    .line 101
    .line 102
    move-result-object v11

    .line 103
    invoke-virtual {v11}, Lg0/f;->o()J

    .line 104
    .line 105
    .line 106
    move-result-wide v12

    .line 107
    cmp-long v16, v12, v8

    .line 108
    .line 109
    if-gtz v16, :cond_5

    .line 110
    .line 111
    const-wide/16 v12, -0x1

    .line 112
    .line 113
    :cond_5
    move-wide/from16 v16, v12

    .line 114
    .line 115
    invoke-virtual {v11}, Lg0/f;->w()Ljava/io/InputStream;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    invoke-virtual {v10}, Lg0/h;->e()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    const-wide/16 v18, 0x0

    .line 124
    .line 125
    move-object v10, v2

    .line 126
    move-object v8, v12

    .line 127
    move-wide/from16 v12, v18

    .line 128
    .line 129
    move v9, v14

    .line 130
    move/from16 v18, v15

    .line 131
    .line 132
    move-wide/from16 v14, v16

    .line 133
    .line 134
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    :goto_2
    invoke-virtual {v8, v7}, Ljava/io/InputStream;->read([B)I

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-ltz v11, :cond_6

    .line 143
    .line 144
    invoke-virtual {v10, v7, v1, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    invoke-virtual {v2, v10}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 155
    .line 156
    .line 157
    add-int/lit8 v15, v18, 0x1

    .line 158
    .line 159
    move v14, v9

    .line 160
    const-wide/16 v8, 0x0

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_7
    new-instance v0, Landroid/content/Intent;

    .line 164
    .line 165
    const-string v7, "ru.zdevs.zarchiver.APP_INSTALL_RESULT"

    .line 166
    .line 167
    invoke-virtual/range {p0 .. p0}, Lg0/h;->s()Landroid/net/Uri;

    .line 168
    .line 169
    .line 170
    move-result-object v8

    .line 171
    const-class v9, Lru/zdevs/zarchiver/ZArchiver;

    .line 172
    .line 173
    invoke-direct {v0, v7, v8, v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    const/high16 v7, 0xa000000

    .line 177
    .line 178
    invoke-static {v3, v1, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 190
    .line 191
    .line 192
    return v6

    .line 193
    :catchall_0
    move v5, v1

    .line 194
    goto :goto_3

    .line 195
    :catchall_1
    move v5, v1

    .line 196
    move-object v4, v2

    .line 197
    :catchall_2
    :goto_3
    if-eqz v2, :cond_8

    .line 198
    .line 199
    :try_start_3
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :catchall_3
    move-exception v0

    .line 204
    goto :goto_5

    .line 205
    :catch_0
    :cond_8
    :goto_4
    if-eqz v4, :cond_a

    .line 206
    .line 207
    if-eqz v5, :cond_a

    .line 208
    .line 209
    :try_start_4
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :goto_5
    if-eqz v2, :cond_9

    .line 214
    .line 215
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 216
    .line 217
    .line 218
    :cond_9
    throw v0

    .line 219
    :catch_1
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 220
    .line 221
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 222
    .line 223
    .line 224
    :cond_b
    return v1
.end method

.method public static i(Lg0/h;[Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x1a

    .line 8
    .line 9
    if-lt v1, v2, :cond_2

    .line 10
    .line 11
    invoke-static {}, Lg1/h;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    sget-object v1, Lru/zdevs/zarchiver/ZApp;->c:Lru/zdevs/zarchiver/ZApp;

    .line 21
    .line 22
    const-class v2, Lru/zdevs/zarchiver/activity/InstallApkDlg;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "dir_path"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string p0, "name_list"

    .line 33
    .line 34
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    new-instance p0, Lp0/a$b;

    .line 38
    .line 39
    invoke-direct {p0, v0}, Lp0/a$b;-><init>(Landroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_2
    :goto_0
    aget-object v1, p1, v0

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    array-length v3, p1

    .line 48
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    array-length v3, p1

    .line 52
    move v4, v0

    .line 53
    :goto_1
    if-ge v4, v3, :cond_4

    .line 54
    .line 55
    aget-object v5, p1, v4

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-ge v6, v7, :cond_3

    .line 66
    .line 67
    move-object v1, v5

    .line 68
    :cond_3
    new-instance v6, Lg0/h;

    .line 69
    .line 70
    invoke-direct {v6, v5, p0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-array p1, v0, [Lg0/h;

    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, [Lg0/h;

    .line 86
    .line 87
    new-instance v0, Lg0/h;

    .line 88
    .line 89
    invoke-direct {v0, v1, p0}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0, p1}, Lp0/a;->h(Lg0/h;[Lg0/h;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0
.end method

.method public static j(Lg0/h;Ljava/lang/Class;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/h;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lg1/h;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->d()Lru/zdevs/zarchiver/ZApp;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-class v2, Lru/zdevs/zarchiver/activity/InstallApkDlg;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "apk_path"

    .line 26
    .line 27
    move-object/from16 v2, p0

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lp0/a$b;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lp0/a$b;-><init>(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :cond_1
    :goto_0
    move-object/from16 v2, p0

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    .line 50
    .line 51
    .line 52
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 53
    :try_start_1
    new-instance v7, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    invoke-direct {v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 57
    .line 58
    .line 59
    if-lt v0, v1, :cond_2

    .line 60
    .line 61
    const/4 v1, 0x4

    .line 62
    :try_start_2
    invoke-virtual {v7, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallReason(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    const/16 v1, 0x21

    .line 66
    .line 67
    if-lt v0, v1, :cond_3

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    const/4 v1, 0x0

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v7, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallLocation(I)V

    .line 77
    .line 78
    .line 79
    const/high16 v0, 0x10000

    .line 80
    .line 81
    new-array v0, v0, [B

    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Lg0/h;->r()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1}, Lru/zdevs/zarchiver/archiver/NArc;->j(Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 88
    .line 89
    .line 90
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 91
    if-nez v1, :cond_5

    .line 92
    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return v4

    .line 99
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->g()I

    .line 100
    .line 101
    .line 102
    move-result v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 103
    const-wide/16 v10, 0x0

    .line 104
    .line 105
    move v12, v4

    .line 106
    move-wide v13, v10

    .line 107
    :goto_2
    const-string v15, ".apk"

    .line 108
    .line 109
    if-ge v12, v9, :cond_9

    .line 110
    .line 111
    :try_start_5
    invoke-virtual {v1, v12}, Lru/zdevs/zarchiver/archiver/NArc;->f(I)Lru/zdevs/zarchiver/archiver/NArc$NArcItem;

    .line 112
    .line 113
    .line 114
    move-result-object v16

    .line 115
    if-nez v16, :cond_6

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->getPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-eqz v3, :cond_8

    .line 123
    .line 124
    invoke-virtual {v3, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_7

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->getSize()J

    .line 132
    .line 133
    .line 134
    move-result-wide v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 135
    cmp-long v3, v15, v10

    .line 136
    .line 137
    if-lez v3, :cond_8

    .line 138
    .line 139
    add-long/2addr v13, v15

    .line 140
    :cond_8
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :catchall_1
    :goto_4
    move v0, v4

    .line 144
    goto/16 :goto_9

    .line 145
    .line 146
    :cond_9
    :try_start_6
    invoke-virtual {v7, v13, v14}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    .line 150
    .line 151
    .line 152
    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 153
    :try_start_7
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    .line 154
    .line 155
    .line 156
    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 157
    :try_start_8
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->d()Lru/zdevs/zarchiver/ZApp;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    if-eqz v12, :cond_a

    .line 162
    .line 163
    invoke-virtual {v12}, Lru/zdevs/zarchiver/ZApp;->h()V

    .line 164
    .line 165
    .line 166
    :cond_a
    move v12, v4

    .line 167
    :goto_5
    if-ge v12, v9, :cond_10

    .line 168
    .line 169
    invoke-virtual {v1, v12}, Lru/zdevs/zarchiver/archiver/NArc;->f(I)Lru/zdevs/zarchiver/archiver/NArc$NArcItem;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    if-nez v13, :cond_b

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_b
    invoke-virtual {v13}, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->getPath()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    if-eqz v14, :cond_f

    .line 181
    .line 182
    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v16

    .line 186
    if-nez v16, :cond_c

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_c
    invoke-virtual {v13}, Lru/zdevs/zarchiver/archiver/NArc$NArcItem;->getSize()J

    .line 190
    .line 191
    .line 192
    move-result-wide v16

    .line 193
    cmp-long v13, v16, v10

    .line 194
    .line 195
    if-gtz v13, :cond_d

    .line 196
    .line 197
    const-wide/16 v16, -0x1

    .line 198
    .line 199
    :cond_d
    move-wide/from16 v22, v16

    .line 200
    .line 201
    invoke-virtual {v1, v12, v14}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    const-wide/16 v20, 0x0

    .line 206
    .line 207
    move-object/from16 v18, v7

    .line 208
    .line 209
    move-object/from16 v19, v14

    .line 210
    .line 211
    invoke-virtual/range {v18 .. v23}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    :goto_6
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-ltz v10, :cond_e

    .line 220
    .line 221
    invoke-virtual {v14, v0, v4, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_e
    invoke-virtual {v7, v14}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13}, Ld0/f;->close()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 232
    .line 233
    .line 234
    :cond_f
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 235
    .line 236
    const-wide/16 v10, 0x0

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_10
    new-instance v0, Landroid/content/Intent;

    .line 240
    .line 241
    const-string v9, "ru.zdevs.zarchiver.APP_INSTALL_RESULT"

    .line 242
    .line 243
    invoke-virtual/range {p0 .. p0}, Lg0/h;->s()Landroid/net/Uri;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    move-object/from16 v10, p1

    .line 248
    .line 249
    invoke-direct {v0, v9, v2, v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .line 251
    .line 252
    const/high16 v2, 0xa000000

    .line 253
    .line 254
    invoke-static {v5, v4, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 269
    .line 270
    .line 271
    return v8

    .line 272
    :catchall_2
    move v0, v3

    .line 273
    move-object v3, v7

    .line 274
    goto :goto_a

    .line 275
    :catchall_3
    move v3, v4

    .line 276
    goto :goto_8

    .line 277
    :catchall_4
    move v3, v4

    .line 278
    const/4 v1, 0x0

    .line 279
    :catchall_5
    :goto_8
    move v0, v3

    .line 280
    :goto_9
    const/4 v3, 0x0

    .line 281
    goto :goto_a

    .line 282
    :catchall_6
    move v0, v4

    .line 283
    const/4 v1, 0x0

    .line 284
    const/4 v3, 0x0

    .line 285
    const/4 v6, 0x0

    .line 286
    :goto_a
    if-eqz v3, :cond_11

    .line 287
    .line 288
    :try_start_9
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 289
    .line 290
    .line 291
    goto :goto_b

    .line 292
    :catchall_7
    move-exception v0

    .line 293
    goto :goto_c

    .line 294
    :catch_0
    :cond_11
    :goto_b
    if-eqz v6, :cond_14

    .line 295
    .line 296
    if-eqz v0, :cond_14

    .line 297
    .line 298
    :try_start_a
    invoke-virtual {v6, v0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 299
    .line 300
    .line 301
    goto :goto_d

    .line 302
    :goto_c
    if-eqz v1, :cond_12

    .line 303
    .line 304
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 305
    .line 306
    .line 307
    :cond_12
    if-eqz v3, :cond_13

    .line 308
    .line 309
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 310
    .line 311
    .line 312
    :cond_13
    throw v0

    .line 313
    :catch_1
    :cond_14
    :goto_d
    if-eqz v1, :cond_15

    .line 314
    .line 315
    invoke-virtual {v1}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 316
    .line 317
    .line 318
    :cond_15
    if-eqz v3, :cond_16

    .line 319
    .line 320
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 321
    .line 322
    .line 323
    :cond_16
    return v4
.end method

.method public static k(Lk/a;[B)Le/d;
    .locals 19

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.content.res.XmlBlock"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v4, [B

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v4, v3, v5

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "newParser"

    .line 21
    .line 22
    new-array v6, v5, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 32
    .line 33
    .line 34
    new-array v4, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object p1, v4, v5

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-array v4, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1e

    .line 62
    .line 63
    move-object/from16 v4, p0

    .line 64
    .line 65
    iget-object v4, v4, Lk/a;->c:Lp/g;

    .line 66
    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    move-object v6, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance v6, Lk/c;

    .line 72
    .line 73
    invoke-direct {v6, v4}, Lk/c;-><init>(Lp/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .line 75
    .line 76
    :goto_1
    :try_start_1
    new-instance v4, Le/d;

    .line 77
    .line 78
    invoke-direct {v4}, Le/d;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v7, v4, Le/d;->a:Le/d$f;

    .line 82
    .line 83
    new-instance v8, Le/d$e;

    .line 84
    .line 85
    invoke-direct {v8}, Le/d$e;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v8, v7, Le/d$f;->b:Le/d$e;

    .line 89
    .line 90
    sget-object v8, Le/a;->a:[I

    .line 91
    .line 92
    sget-object v9, Le/a;->b:[Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v6, v3, v8, v9}, Lk/c;->a(Landroid/util/AttributeSet;[I[Ljava/lang/String;)Le/c;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    iget-object v9, v4, Le/d;->a:Le/d$f;

    .line 99
    .line 100
    iget-object v9, v9, Le/d$f;->b:Le/d$e;

    .line 101
    .line 102
    iget v10, v9, Le/d$e;->j:F

    .line 103
    .line 104
    check-cast v8, Lk/d;

    .line 105
    .line 106
    const/4 v11, 0x4

    .line 107
    invoke-virtual {v8, v10, v11}, Lk/d;->c(FI)F

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    iput v10, v9, Le/d$e;->j:F

    .line 112
    .line 113
    iget v10, v9, Le/d$e;->k:F

    .line 114
    .line 115
    const/4 v12, 0x5

    .line 116
    invoke-virtual {v8, v10, v12}, Lk/d;->c(FI)F

    .line 117
    .line 118
    .line 119
    move-result v10

    .line 120
    iput v10, v9, Le/d$e;->k:F

    .line 121
    .line 122
    iget v13, v9, Le/d$e;->j:F

    .line 123
    .line 124
    const/4 v14, 0x0

    .line 125
    cmpg-float v13, v13, v14

    .line 126
    .line 127
    if-lez v13, :cond_1d

    .line 128
    .line 129
    cmpg-float v10, v10, v14

    .line 130
    .line 131
    if-lez v10, :cond_1c

    .line 132
    .line 133
    iget v10, v9, Le/d$e;->h:F

    .line 134
    .line 135
    const/4 v13, 0x2

    .line 136
    invoke-virtual {v8, v10, v13}, Lk/d;->b(FI)F

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    iput v10, v9, Le/d$e;->h:F

    .line 141
    .line 142
    iget v10, v9, Le/d$e;->i:F

    .line 143
    .line 144
    invoke-virtual {v8, v10, v2}, Lk/d;->b(FI)F

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    iput v10, v9, Le/d$e;->i:F

    .line 149
    .line 150
    iget v15, v9, Le/d$e;->h:F

    .line 151
    .line 152
    cmpg-float v15, v15, v14

    .line 153
    .line 154
    if-lez v15, :cond_1b

    .line 155
    .line 156
    cmpg-float v10, v10, v14

    .line 157
    .line 158
    if-lez v10, :cond_1a

    .line 159
    .line 160
    iget v10, v9, Le/d$e;->l:I

    .line 161
    .line 162
    int-to-float v10, v10

    .line 163
    const/high16 v15, 0x437f0000    # 255.0f

    .line 164
    .line 165
    div-float/2addr v10, v15

    .line 166
    const/4 v0, 0x3

    .line 167
    invoke-virtual {v8, v10, v0}, Lk/d;->c(FI)F

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    mul-float/2addr v10, v15

    .line 172
    float-to-int v10, v10

    .line 173
    iput v10, v9, Le/d$e;->l:I

    .line 174
    .line 175
    invoke-virtual {v8, v5}, Lk/d;->e(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-eqz v8, :cond_2

    .line 180
    .line 181
    iput-object v8, v9, Le/d$e;->m:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v10, v9, Le/d$e;->n:Landroid/util/ArrayMap;

    .line 184
    .line 185
    invoke-virtual {v10, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    :cond_2
    invoke-virtual {v4}, Le/d;->getChangingConfigurations()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    iput v8, v7, Le/d$f;->a:I

    .line 193
    .line 194
    iput-boolean v2, v7, Le/d$f;->e:Z

    .line 195
    .line 196
    iget-object v7, v4, Le/d;->a:Le/d$f;

    .line 197
    .line 198
    iget-object v8, v7, Le/d$f;->b:Le/d$e;

    .line 199
    .line 200
    new-instance v9, Ljava/util/ArrayDeque;

    .line 201
    .line 202
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 203
    .line 204
    .line 205
    iget-object v10, v8, Le/d$e;->g:Le/d$c;

    .line 206
    .line 207
    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    add-int/2addr v15, v2

    .line 219
    move/from16 v16, v2

    .line 220
    .line 221
    :goto_2
    if-eq v10, v2, :cond_18

    .line 222
    .line 223
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 224
    .line 225
    .line 226
    move-result v14

    .line 227
    if-ge v14, v15, :cond_3

    .line 228
    .line 229
    if-eq v10, v0, :cond_18

    .line 230
    .line 231
    :cond_3
    const-string v14, "group"

    .line 232
    .line 233
    if-ne v10, v13, :cond_16

    .line 234
    .line 235
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v17

    .line 243
    move-object/from16 v11, v17

    .line 244
    .line 245
    check-cast v11, Le/d$c;

    .line 246
    .line 247
    if-nez v11, :cond_4

    .line 248
    .line 249
    const/4 v11, 0x4

    .line 250
    const/4 v12, 0x5

    .line 251
    const/4 v14, 0x0

    .line 252
    goto :goto_2

    .line 253
    :cond_4
    const-string v10, "path"

    .line 254
    .line 255
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    iget-object v11, v11, Le/d$c;->b:Ljava/util/ArrayList;

    .line 260
    .line 261
    iget-object v0, v8, Le/d$e;->n:Landroid/util/ArrayMap;

    .line 262
    .line 263
    if-eqz v10, :cond_e

    .line 264
    .line 265
    new-instance v10, Le/d$b;

    .line 266
    .line 267
    invoke-direct {v10}, Le/d$b;-><init>()V

    .line 268
    .line 269
    .line 270
    sget-object v12, Le/a;->e:[I

    .line 271
    .line 272
    sget-object v14, Le/a;->f:[Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v6, v3, v12, v14}, Lk/c;->a(Landroid/util/AttributeSet;[I[Ljava/lang/String;)Le/c;

    .line 275
    .line 276
    .line 277
    move-result-object v12

    .line 278
    check-cast v12, Lk/d;

    .line 279
    .line 280
    invoke-virtual {v12, v13}, Lk/d;->e(I)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    if-nez v14, :cond_5

    .line 285
    .line 286
    goto/16 :goto_5

    .line 287
    .line 288
    :cond_5
    invoke-static {v14}, Ld/a;->a(Ljava/lang/String;)[Ld/a$a;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    iput-object v14, v10, Le/d$d;->a:[Ld/a$a;

    .line 293
    .line 294
    invoke-virtual {v12, v5}, Lk/d;->e(I)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    if-eqz v14, :cond_6

    .line 299
    .line 300
    iput-object v14, v10, Le/d$d;->b:Ljava/lang/String;

    .line 301
    .line 302
    :cond_6
    iget v14, v10, Le/d$b;->f:I

    .line 303
    .line 304
    const/4 v5, 0x1

    .line 305
    invoke-virtual {v12, v5, v14}, Lk/d;->a(II)I

    .line 306
    .line 307
    .line 308
    move-result v14

    .line 309
    iput v14, v10, Le/d$b;->f:I

    .line 310
    .line 311
    iget v5, v10, Le/d$b;->i:F

    .line 312
    .line 313
    const/16 v14, 0xc

    .line 314
    .line 315
    invoke-virtual {v12, v5, v14}, Lk/d;->c(FI)F

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    iput v5, v10, Le/d$b;->i:F

    .line 320
    .line 321
    const/16 v5, 0x8

    .line 322
    .line 323
    const/4 v14, -0x1

    .line 324
    invoke-virtual {v12, v5, v14}, Lk/d;->d(II)I

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    iget-object v2, v10, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    .line 329
    .line 330
    if-eqz v5, :cond_9

    .line 331
    .line 332
    const/4 v14, 0x1

    .line 333
    if-eq v5, v14, :cond_8

    .line 334
    .line 335
    if-eq v5, v13, :cond_7

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_7
    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 339
    .line 340
    goto :goto_3

    .line 341
    :cond_8
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 342
    .line 343
    goto :goto_3

    .line 344
    :cond_9
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 345
    .line 346
    :goto_3
    iput-object v2, v10, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    .line 347
    .line 348
    const/16 v2, 0x9

    .line 349
    .line 350
    const/4 v5, -0x1

    .line 351
    invoke-virtual {v12, v2, v5}, Lk/d;->d(II)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    iget-object v5, v10, Le/d$b;->n:Landroid/graphics/Paint$Join;

    .line 356
    .line 357
    if-eqz v2, :cond_c

    .line 358
    .line 359
    const/4 v14, 0x1

    .line 360
    if-eq v2, v14, :cond_b

    .line 361
    .line 362
    if-eq v2, v13, :cond_a

    .line 363
    .line 364
    goto :goto_4

    .line 365
    :cond_a
    sget-object v5, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_b
    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    .line 369
    .line 370
    goto :goto_4

    .line 371
    :cond_c
    sget-object v5, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    .line 372
    .line 373
    :goto_4
    iput-object v5, v10, Le/d$b;->n:Landroid/graphics/Paint$Join;

    .line 374
    .line 375
    iget v2, v10, Le/d$b;->o:F

    .line 376
    .line 377
    const/16 v5, 0xa

    .line 378
    .line 379
    invoke-virtual {v12, v2, v5}, Lk/d;->c(FI)F

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    iput v2, v10, Le/d$b;->o:F

    .line 384
    .line 385
    iget v2, v10, Le/d$b;->d:I

    .line 386
    .line 387
    const/4 v5, 0x3

    .line 388
    invoke-virtual {v12, v5, v2}, Lk/d;->a(II)I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    iput v2, v10, Le/d$b;->d:I

    .line 393
    .line 394
    iget v2, v10, Le/d$b;->g:F

    .line 395
    .line 396
    const/16 v5, 0xb

    .line 397
    .line 398
    invoke-virtual {v12, v2, v5}, Lk/d;->c(FI)F

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    iput v2, v10, Le/d$b;->g:F

    .line 403
    .line 404
    iget v2, v10, Le/d$b;->e:F

    .line 405
    .line 406
    const/4 v5, 0x4

    .line 407
    invoke-virtual {v12, v2, v5}, Lk/d;->c(FI)F

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    iput v2, v10, Le/d$b;->e:F

    .line 412
    .line 413
    iget v2, v10, Le/d$b;->k:F

    .line 414
    .line 415
    const/4 v5, 0x6

    .line 416
    invoke-virtual {v12, v2, v5}, Lk/d;->c(FI)F

    .line 417
    .line 418
    .line 419
    move-result v2

    .line 420
    iput v2, v10, Le/d$b;->k:F

    .line 421
    .line 422
    iget v2, v10, Le/d$b;->l:F

    .line 423
    .line 424
    const/4 v5, 0x7

    .line 425
    invoke-virtual {v12, v2, v5}, Lk/d;->c(FI)F

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    iput v2, v10, Le/d$b;->l:F

    .line 430
    .line 431
    iget v2, v10, Le/d$b;->j:F

    .line 432
    .line 433
    const/4 v5, 0x5

    .line 434
    invoke-virtual {v12, v2, v5}, Lk/d;->c(FI)F

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    iput v2, v10, Le/d$b;->j:F

    .line 439
    .line 440
    iget v2, v10, Le/d$b;->h:I

    .line 441
    .line 442
    const/16 v5, 0xd

    .line 443
    .line 444
    invoke-virtual {v12, v5, v2}, Lk/d;->d(II)I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    iput v2, v10, Le/d$b;->h:I

    .line 449
    .line 450
    :goto_5
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    iget-object v2, v10, Le/d$d;->b:Ljava/lang/String;

    .line 454
    .line 455
    if-eqz v2, :cond_d

    .line 456
    .line 457
    invoke-virtual {v0, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    :cond_d
    iget v0, v7, Le/d$f;->a:I

    .line 461
    .line 462
    iget v2, v10, Le/d$d;->c:I

    .line 463
    .line 464
    or-int/2addr v0, v2

    .line 465
    iput v0, v7, Le/d$f;->a:I

    .line 466
    .line 467
    const/4 v0, 0x1

    .line 468
    const/4 v2, 0x3

    .line 469
    const/16 v16, 0x0

    .line 470
    .line 471
    goto/16 :goto_8

    .line 472
    .line 473
    :cond_e
    const-string v2, "clip-path"

    .line 474
    .line 475
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_12

    .line 480
    .line 481
    new-instance v2, Le/d$a;

    .line 482
    .line 483
    invoke-direct {v2}, Le/d$a;-><init>()V

    .line 484
    .line 485
    .line 486
    sget-object v5, Le/a;->g:[I

    .line 487
    .line 488
    sget-object v10, Le/a;->h:[Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v6, v3, v5, v10}, Lk/c;->a(Landroid/util/AttributeSet;[I[Ljava/lang/String;)Le/c;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    check-cast v5, Lk/d;

    .line 495
    .line 496
    const/4 v10, 0x0

    .line 497
    invoke-virtual {v5, v10}, Lk/d;->e(I)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v12

    .line 501
    if-eqz v12, :cond_f

    .line 502
    .line 503
    iput-object v12, v2, Le/d$d;->b:Ljava/lang/String;

    .line 504
    .line 505
    :cond_f
    const/4 v10, 0x1

    .line 506
    invoke-virtual {v5, v10}, Lk/d;->e(I)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    if-eqz v5, :cond_10

    .line 511
    .line 512
    invoke-static {v5}, Ld/a;->a(Ljava/lang/String;)[Ld/a$a;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    iput-object v5, v2, Le/d$d;->a:[Ld/a$a;

    .line 517
    .line 518
    :cond_10
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    iget-object v5, v2, Le/d$d;->b:Ljava/lang/String;

    .line 522
    .line 523
    if-eqz v5, :cond_11

    .line 524
    .line 525
    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    :cond_11
    iget v0, v7, Le/d$f;->a:I

    .line 529
    .line 530
    iget v2, v2, Le/d$d;->c:I

    .line 531
    .line 532
    or-int/2addr v0, v2

    .line 533
    iput v0, v7, Le/d$f;->a:I

    .line 534
    .line 535
    goto/16 :goto_6

    .line 536
    .line 537
    :cond_12
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    if-eqz v2, :cond_15

    .line 542
    .line 543
    new-instance v2, Le/d$c;

    .line 544
    .line 545
    invoke-direct {v2}, Le/d$c;-><init>()V

    .line 546
    .line 547
    .line 548
    sget-object v5, Le/a;->c:[I

    .line 549
    .line 550
    sget-object v10, Le/a;->d:[Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v6, v3, v5, v10}, Lk/c;->a(Landroid/util/AttributeSet;[I[Ljava/lang/String;)Le/c;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    iget v10, v2, Le/d$c;->c:F

    .line 557
    .line 558
    check-cast v5, Lk/d;

    .line 559
    .line 560
    const/4 v12, 0x5

    .line 561
    invoke-virtual {v5, v10, v12}, Lk/d;->c(FI)F

    .line 562
    .line 563
    .line 564
    move-result v10

    .line 565
    iput v10, v2, Le/d$c;->c:F

    .line 566
    .line 567
    iget v10, v2, Le/d$c;->d:F

    .line 568
    .line 569
    const/4 v14, 0x1

    .line 570
    invoke-virtual {v5, v10, v14}, Lk/d;->c(FI)F

    .line 571
    .line 572
    .line 573
    move-result v10

    .line 574
    iput v10, v2, Le/d$c;->d:F

    .line 575
    .line 576
    iget v10, v2, Le/d$c;->e:F

    .line 577
    .line 578
    invoke-virtual {v5, v10, v13}, Lk/d;->c(FI)F

    .line 579
    .line 580
    .line 581
    move-result v10

    .line 582
    iput v10, v2, Le/d$c;->e:F

    .line 583
    .line 584
    iget v10, v2, Le/d$c;->f:F

    .line 585
    .line 586
    const/4 v12, 0x3

    .line 587
    invoke-virtual {v5, v10, v12}, Lk/d;->c(FI)F

    .line 588
    .line 589
    .line 590
    move-result v10

    .line 591
    iput v10, v2, Le/d$c;->f:F

    .line 592
    .line 593
    iget v10, v2, Le/d$c;->g:F

    .line 594
    .line 595
    const/4 v12, 0x4

    .line 596
    invoke-virtual {v5, v10, v12}, Lk/d;->c(FI)F

    .line 597
    .line 598
    .line 599
    move-result v10

    .line 600
    iput v10, v2, Le/d$c;->g:F

    .line 601
    .line 602
    iget v10, v2, Le/d$c;->h:F

    .line 603
    .line 604
    const/4 v12, 0x6

    .line 605
    invoke-virtual {v5, v10, v12}, Lk/d;->c(FI)F

    .line 606
    .line 607
    .line 608
    move-result v10

    .line 609
    iput v10, v2, Le/d$c;->h:F

    .line 610
    .line 611
    iget v10, v2, Le/d$c;->i:F

    .line 612
    .line 613
    const/4 v12, 0x7

    .line 614
    invoke-virtual {v5, v10, v12}, Lk/d;->c(FI)F

    .line 615
    .line 616
    .line 617
    move-result v10

    .line 618
    iput v10, v2, Le/d$c;->i:F

    .line 619
    .line 620
    const/4 v12, 0x0

    .line 621
    invoke-virtual {v5, v12}, Lk/d;->e(I)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    if-eqz v5, :cond_13

    .line 626
    .line 627
    iput-object v5, v2, Le/d$c;->l:Ljava/lang/String;

    .line 628
    .line 629
    :cond_13
    iget-object v5, v2, Le/d$c;->j:Landroid/graphics/Matrix;

    .line 630
    .line 631
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 632
    .line 633
    .line 634
    iget v10, v2, Le/d$c;->d:F

    .line 635
    .line 636
    neg-float v10, v10

    .line 637
    iget v12, v2, Le/d$c;->e:F

    .line 638
    .line 639
    neg-float v12, v12

    .line 640
    invoke-virtual {v5, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 641
    .line 642
    .line 643
    iget v10, v2, Le/d$c;->f:F

    .line 644
    .line 645
    iget v12, v2, Le/d$c;->g:F

    .line 646
    .line 647
    invoke-virtual {v5, v10, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 648
    .line 649
    .line 650
    iget v10, v2, Le/d$c;->c:F

    .line 651
    .line 652
    const/4 v12, 0x0

    .line 653
    invoke-virtual {v5, v10, v12, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 654
    .line 655
    .line 656
    iget v10, v2, Le/d$c;->h:F

    .line 657
    .line 658
    iget v12, v2, Le/d$c;->d:F

    .line 659
    .line 660
    add-float/2addr v10, v12

    .line 661
    iget v12, v2, Le/d$c;->i:F

    .line 662
    .line 663
    iget v13, v2, Le/d$c;->e:F

    .line 664
    .line 665
    add-float/2addr v12, v13

    .line 666
    invoke-virtual {v5, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 667
    .line 668
    .line 669
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    .line 671
    .line 672
    invoke-virtual {v9, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    iget-object v5, v2, Le/d$c;->l:Ljava/lang/String;

    .line 676
    .line 677
    if-eqz v5, :cond_14

    .line 678
    .line 679
    invoke-virtual {v0, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    :cond_14
    iget v0, v7, Le/d$f;->a:I

    .line 683
    .line 684
    iget v2, v2, Le/d$c;->k:I

    .line 685
    .line 686
    or-int/2addr v0, v2

    .line 687
    iput v0, v7, Le/d$f;->a:I

    .line 688
    .line 689
    goto :goto_7

    .line 690
    :cond_15
    :goto_6
    const/4 v14, 0x1

    .line 691
    :goto_7
    move v0, v14

    .line 692
    const/4 v2, 0x3

    .line 693
    goto :goto_8

    .line 694
    :cond_16
    move/from16 v18, v2

    .line 695
    .line 696
    move v2, v0

    .line 697
    move/from16 v0, v18

    .line 698
    .line 699
    if-ne v10, v2, :cond_17

    .line 700
    .line 701
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v5

    .line 705
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v5

    .line 709
    if-eqz v5, :cond_17

    .line 710
    .line 711
    invoke-virtual {v9}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    :cond_17
    :goto_8
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 715
    .line 716
    .line 717
    move-result v10

    .line 718
    const/4 v5, 0x0

    .line 719
    const/4 v11, 0x4

    .line 720
    const/4 v12, 0x5

    .line 721
    const/4 v13, 0x2

    .line 722
    const/4 v14, 0x0

    .line 723
    move/from16 v18, v2

    .line 724
    .line 725
    move v2, v0

    .line 726
    move/from16 v0, v18

    .line 727
    .line 728
    goto/16 :goto_2

    .line 729
    .line 730
    :cond_18
    if-nez v16, :cond_19

    .line 731
    .line 732
    return-object v4

    .line 733
    :cond_19
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 734
    .line 735
    const-string v1, "no path defined"

    .line 736
    .line 737
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    throw v0

    .line 741
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 742
    .line 743
    const-string v1, "<vector> tag requires height > 0"

    .line 744
    .line 745
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    throw v0

    .line 749
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 750
    .line 751
    const-string v1, "<vector> tag requires width > 0"

    .line 752
    .line 753
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 754
    .line 755
    .line 756
    throw v0

    .line 757
    :cond_1c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 758
    .line 759
    const-string v1, "<vector> tag requires viewportHeight > 0"

    .line 760
    .line 761
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    throw v0

    .line 765
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 766
    .line 767
    const-string v1, "<vector> tag requires viewportWidth > 0"

    .line 768
    .line 769
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 773
    :catch_0
    const/4 v0, 0x0

    .line 774
    goto :goto_9

    .line 775
    :cond_1e
    move-object/from16 v4, p0

    .line 776
    .line 777
    const/4 v0, 0x0

    .line 778
    goto/16 :goto_0

    .line 779
    .line 780
    :catch_1
    :goto_9
    return-object v0
.end method

.method public static l(Lru/zdevs/zarchiver/c;Lg0/h;)I
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lg0/h;->r()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v3, "zip"

    .line 9
    .line 10
    invoke-static {v0, v3, v2}, Lru/zdevs/zarchiver/archiver/NArc;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lru/zdevs/zarchiver/archiver/NArc;

    .line 11
    .line 12
    .line 13
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    :try_start_1
    const-string v0, "manifest.json"

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    invoke-virtual {v3, v4, v0}, Lru/zdevs/zarchiver/archiver/NArc;->h(ILjava/lang/String;)Ld0/f;

    .line 20
    .line 21
    .line 22
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .line 26
    .line 27
    new-instance v5, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    if-eqz v6, :cond_0

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v6, 0xa

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :try_start_3
    invoke-virtual {v3, v4}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :try_start_4
    new-instance v0, Lp0/a$a;

    .line 66
    .line 67
    const-string v5, "manifest.json not found"

    .line 68
    .line 69
    invoke-direct {v0, v5}, Lp0/a$a;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    move-object v4, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :try_start_5
    new-instance v0, Lp0/a$a;

    .line 77
    .line 78
    const-string v4, "XAPK file not found"

    .line 79
    .line 80
    invoke-direct {v0, v4}, Lp0/a$a;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    :catchall_2
    move-exception v0

    .line 85
    move-object v3, v2

    .line 86
    move-object v4, v3

    .line 87
    :goto_1
    if-eqz v3, :cond_3

    .line 88
    .line 89
    :try_start_6
    invoke-virtual {v3, v4}, Lru/zdevs/zarchiver/archiver/NArc;->b(Ljava/io/InputStream;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 93
    :catch_0
    move-object v0, v2

    .line 94
    :catch_1
    :goto_2
    if-eqz v0, :cond_16

    .line 95
    .line 96
    invoke-static {}, Lw0/c;->i()Lw0/c$a;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    new-instance v4, Lg0/h;

    .line 101
    .line 102
    iget-object v3, v3, Lw0/c$a;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v4, v3}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Ls0/b;->a()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-lez v3, :cond_4

    .line 112
    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v6, "\\-y\\-mmt="

    .line 116
    .line 117
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_3

    .line 128
    :cond_4
    const-string v3, "\\-y"

    .line 129
    .line 130
    :goto_3
    new-instance v5, Lorg/json/JSONTokener;

    .line 131
    .line 132
    invoke-direct {v5, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 138
    .line 139
    .line 140
    const-string v5, "expansions"

    .line 141
    .line 142
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lorg/json/JSONArray;

    .line 147
    .line 148
    const/4 v5, 0x2

    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    new-instance v8, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .line 159
    .line 160
    new-instance v9, Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    new-instance v10, Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-direct {v10, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .line 169
    .line 170
    new-instance v11, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v11, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .line 174
    .line 175
    const/4 v12, 0x0

    .line 176
    :goto_4
    if-ge v12, v7, :cond_a

    .line 177
    .line 178
    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    move-result-object v13

    .line 182
    const-string v14, "install_location"

    .line 183
    .line 184
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    const-string v15, "EXTERNAL_STORAGE"

    .line 189
    .line 190
    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result v14

    .line 194
    if-nez v14, :cond_5

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_5
    const-string v14, "file"

    .line 198
    .line 199
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v14

    .line 203
    const-string v15, "install_path"

    .line 204
    .line 205
    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v15

    .line 213
    if-lt v15, v5, :cond_8

    .line 214
    .line 215
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 216
    .line 217
    .line 218
    move-result v15

    .line 219
    if-ge v15, v5, :cond_6

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_6
    invoke-static {v14}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v15

    .line 226
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    new-instance v15, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    const-string v6, "\\"

    .line 235
    .line 236
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    new-instance v6, Lg0/h;

    .line 250
    .line 251
    invoke-static {v13}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-direct {v6, v13, v4}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    const/16 v6, 0x2f

    .line 262
    .line 263
    invoke-virtual {v14, v6}, Ljava/lang/String;->indexOf(I)I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-lez v6, :cond_7

    .line 268
    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v13, "\\-z"

    .line 278
    .line 279
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-static {v14}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v13

    .line 286
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_7
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3

    .line 298
    .line 299
    .line 300
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_9
    move-object v8, v2

    .line 304
    move-object v9, v8

    .line 305
    move-object v10, v9

    .line 306
    move-object v11, v10

    .line 307
    :cond_a
    if-eqz v9, :cond_15

    .line 308
    .line 309
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_b

    .line 314
    .line 315
    goto/16 :goto_9

    .line 316
    .line 317
    :cond_b
    if-nez v1, :cond_c

    .line 318
    .line 319
    const/4 v0, 0x3

    .line 320
    return v0

    .line 321
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const/4 v3, 0x0

    .line 326
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_11

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    check-cast v4, Lg0/h;

    .line 337
    .line 338
    iget-object v6, v4, Lg0/h;->c:Ljava/lang/String;

    .line 339
    .line 340
    invoke-static {v6}, Lw0/f;->f(Ljava/lang/String;)Lw0/c$a;

    .line 341
    .line 342
    .line 343
    move-result-object v7

    .line 344
    if-eqz v7, :cond_10

    .line 345
    .line 346
    const/high16 v12, 0x4000000

    .line 347
    .line 348
    invoke-static {v12}, Ls0/b;->f(I)Z

    .line 349
    .line 350
    .line 351
    move-result v12

    .line 352
    if-eqz v12, :cond_d

    .line 353
    .line 354
    or-int/lit8 v3, v3, 0x1

    .line 355
    .line 356
    goto :goto_6

    .line 357
    :cond_d
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 358
    .line 359
    const/16 v13, 0x21

    .line 360
    .line 361
    if-lt v12, v13, :cond_e

    .line 362
    .line 363
    const-string v12, "/Android/obb/"

    .line 364
    .line 365
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-nez v12, :cond_10

    .line 370
    .line 371
    :cond_e
    invoke-virtual {v7, v6}, Lw0/c$a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-static {v6}, Lru/zdevs/zarchiver/io/SAF;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v12

    .line 379
    if-eqz v12, :cond_f

    .line 380
    .line 381
    invoke-virtual {v7, v12}, Lw0/c$a;->d(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v12

    .line 385
    if-eqz v12, :cond_f

    .line 386
    .line 387
    invoke-static {v7, v6}, Lru/zdevs/zarchiver/io/SAF;->n(Lw0/c$a;Ljava/lang/String;)Lg0/h;

    .line 388
    .line 389
    .line 390
    move-result-object v6

    .line 391
    if-eqz v6, :cond_f

    .line 392
    .line 393
    iget-object v7, v6, Lg0/h;->c:Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v4, v7}, Lg0/h;->p(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget-object v6, v6, Lg0/h;->a:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v4, v6}, Lg0/h;->q(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_6

    .line 404
    :cond_f
    return v5

    .line 405
    :cond_10
    invoke-static {v4}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v4, v2}, Lg0/f;->s(Ljava/lang/String;)Z

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_11
    or-int/lit8 v22, v3, 0x40

    .line 414
    .line 415
    iget-object v0, v1, Lru/zdevs/zarchiver/c;->a:Ljava/lang/ref/WeakReference;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    move-object/from16 v16, v0

    .line 422
    .line 423
    check-cast v16, Lru/zdevs/zarchiver/service/c;

    .line 424
    .line 425
    const/4 v0, 0x1

    .line 426
    if-nez v16, :cond_12

    .line 427
    .line 428
    goto :goto_8

    .line 429
    :cond_12
    :try_start_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-ne v1, v0, :cond_13

    .line 434
    .line 435
    const/4 v1, 0x0

    .line 436
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    move-object/from16 v17, v2

    .line 441
    .line 442
    check-cast v17, Ljava/lang/String;

    .line 443
    .line 444
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    move-object/from16 v19, v2

    .line 449
    .line 450
    check-cast v19, Ljava/lang/String;

    .line 451
    .line 452
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    move-object/from16 v20, v2

    .line 457
    .line 458
    check-cast v20, Ljava/lang/String;

    .line 459
    .line 460
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    move-object/from16 v21, v1

    .line 465
    .line 466
    check-cast v21, Lg0/h;

    .line 467
    .line 468
    move-object/from16 v18, p1

    .line 469
    .line 470
    invoke-interface/range {v16 .. v22}, Lru/zdevs/zarchiver/service/c;->ArchiveExtract(Ljava/lang/String;Lg0/h;Ljava/lang/String;Ljava/lang/String;Lg0/h;I)V

    .line 471
    .line 472
    .line 473
    goto :goto_8

    .line 474
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    const/4 v6, 0x0

    .line 484
    :goto_7
    if-ge v6, v2, :cond_14

    .line 485
    .line 486
    move-object/from16 v3, p1

    .line 487
    .line 488
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    add-int/lit8 v6, v6, 0x1

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_14
    move-object/from16 v17, v8

    .line 495
    .line 496
    move-object/from16 v18, v1

    .line 497
    .line 498
    move-object/from16 v19, v11

    .line 499
    .line 500
    move-object/from16 v20, v9

    .line 501
    .line 502
    move-object/from16 v21, v10

    .line 503
    .line 504
    invoke-interface/range {v16 .. v22}, Lru/zdevs/zarchiver/service/c;->ArchiveExtractMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 505
    .line 506
    .line 507
    :catch_2
    :goto_8
    return v0

    .line 508
    :cond_15
    :goto_9
    const/4 v0, 0x0

    .line 509
    return v0

    .line 510
    :catch_3
    move-exception v0

    .line 511
    new-instance v1, Lp0/a$a;

    .line 512
    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    const-string v3, "manifest.json: "

    .line 516
    .line 517
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    invoke-direct {v1, v0}, Lp0/a$a;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw v1

    .line 535
    :cond_16
    new-instance v0, Lp0/a$a;

    .line 536
    .line 537
    const-string v1, "Bad manifest.json"

    .line 538
    .line 539
    invoke-direct {v0, v1}, Lp0/a$a;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    throw v0
.end method
