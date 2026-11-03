.class public Lru/zdevs/zarchiver/io/KitKatExtSD;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Landroid/net/Uri;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

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
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    :try_start_0
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "external"

    .line 20
    .line 21
    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    new-array v4, v3, [Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const/4 v6, 0x0

    .line 33
    aput-object v5, v4, v6

    .line 34
    .line 35
    const-string v5, "_data=?"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    new-instance v4, Landroid/content/ContentValues;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "_data"

    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v4, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "_size"

    .line 55
    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v4, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 68
    :catch_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    const-string v1, "external"

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    :try_start_0
    new-array v8, p0, [Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v2, v8, v4

    .line 33
    .line 34
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    filled-new-array {v0}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v7, "_data=?"

    .line 47
    .line 48
    const-string v9, "_id"

    .line 49
    .line 50
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    .line 52
    .line 53
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ne v4, p0, :cond_2

    .line 62
    .line 63
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, p0}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    return-object p0

    .line 82
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    :catchall_1
    :goto_0
    return-object v3
.end method

.method public static c(Lg0/h;)Landroid/net/Uri;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg0/h;->toFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static close(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static errno()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public static mkdir(Ljava/lang/String;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "/.za_tmp.txt"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v2}, Lru/zdevs/zarchiver/io/KitKatExtSD;->a(Ljava/io/File;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    .line 61
    :catch_1
    const/4 p0, 0x0

    .line 62
    return p0

    .line 63
    :cond_2
    return v1
.end method

.method public static mkdirs(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0}, Lru/zdevs/zarchiver/io/KitKatExtSD;->mkdir(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static open(Ljava/lang/String;I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x41

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    and-int/lit16 v0, p1, 0x402

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lru/zdevs/zarchiver/io/KitKatExtSD;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_2

    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lru/zdevs/zarchiver/io/KitKatExtSD;->a(Ljava/io/File;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {p0}, Lru/zdevs/zarchiver/io/KitKatExtSD;->b(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/4 p0, -0x2

    .line 34
    return p0

    .line 35
    :cond_3
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p1}, Lru/zdevs/zarchiver/io/ZAIO;->d(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-nez p0, :cond_4

    .line 48
    .line 49
    const/4 p0, -0x3

    .line 50
    return p0

    .line 51
    :cond_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return p0

    .line 56
    :catch_0
    const/4 p0, -0x4

    .line 57
    return p0
.end method

.method public static remove(Ljava/lang/String;)I
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method public static rename(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
