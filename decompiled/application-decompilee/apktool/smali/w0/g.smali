.class public final Lw0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lw0/g;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Files: SDK "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " V "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_0
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "com.google.android.documentsui"

    .line 7
    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "com.android.documentsui"

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    return-object p0

    .line 24
    :catch_1
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 6

    .line 1
    const-string v0, "/system/priv-app/"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1e

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    invoke-static {p0}, Lw0/g;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    invoke-static {v1}, Lw0/g;->d(Landroid/content/pm/PackageInfo;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    return v3

    .line 26
    :cond_2
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v4, :cond_4

    .line 31
    .line 32
    const-string v5, "/data/app/"

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_4

    .line 39
    .line 40
    :try_start_0
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, ".google."

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    const-string v1, "DocumentsUIGoogle"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "DocumentsUI"

    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "/"

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v0, ".apk"

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-static {p0}, Lw0/g;->d(Landroid/content/pm/PackageInfo;)Z

    .line 89
    .line 90
    .line 91
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    if-eqz p0, :cond_4

    .line 93
    .line 94
    const/4 p0, 0x2

    .line 95
    return p0

    .line 96
    :catch_0
    :cond_4
    return v2
.end method

.method public static d(Landroid/content/pm/PackageInfo;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 4
    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/32 v3, 0x14507c42

    .line 16
    .line 17
    .line 18
    cmp-long p0, v0, v3

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-lez p0, :cond_1

    .line 22
    .line 23
    const-wide/32 v4, 0x3b039310

    .line 24
    .line 25
    .line 26
    cmp-long p0, v0, v4

    .line 27
    .line 28
    if-nez p0, :cond_3

    .line 29
    .line 30
    :cond_1
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 31
    .line 32
    const-string v0, "yyyy-MM-dd"

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const-wide v4, 0x18d61f71800L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmp-long p0, v0, v4

    .line 53
    .line 54
    if-gez p0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    move v2, v3

    .line 58
    :goto_0
    return v2

    .line 59
    :catch_0
    :cond_3
    return v3
.end method

.method public static e(Lru/zdevs/zarchiver/ZArchiver;Landroid/os/storage/StorageVolume;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0, v0, p2}, Lw0/g;->g(Lru/zdevs/zarchiver/ZArchiver;Landroid/net/Uri;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static f(Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 2

    .line 1
    const-string v0, "content://com.android.externalstorage.documents/document/primary"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/content/Intent;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p2, "android.intent.action.CREATE_DOCUMENT"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p2, "android.intent.action.OPEN_DOCUMENT"

    .line 15
    .line 16
    :goto_0
    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p2, "android.intent.category.OPENABLE"

    .line 20
    .line 21
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string p2, "text/plain"

    .line 25
    .line 26
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const-string p2, "android.intent.extra.TITLE"

    .line 32
    .line 33
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    :cond_1
    const-string p1, "android.intent.extra.LOCAL_ONLY"

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const-string p1, "android.content.extra.SHOW_ADVANCED"

    .line 43
    .line 44
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const-string p1, "android.provider.extra.INITIAL_URI"

    .line 48
    .line 49
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v1, p3}, Lw0/g;->j(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public static g(Lru/zdevs/zarchiver/ZArchiver;Landroid/net/Uri;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x43

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "android.content.extra.SHOW_ADVANCED"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const-string v1, "android.provider.extra.SHOW_ADVANCED"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const-string v1, "android.provider.extra.INITIAL_URI"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {p0, v0, p2}, Lw0/g;->j(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static h(Lru/zdevs/zarchiver/ZArchiver;Lw0/c$a;Ljava/lang/String;I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "content://com.android.externalstorage.documents/document/"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lw0/c$a;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ":"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    const-string p2, ""

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-static {p0, p1, p3}, Lw0/g;->g(Lru/zdevs/zarchiver/ZArchiver;Landroid/net/Uri;I)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public static i(Lru/zdevs/zarchiver/ZArchiver;Landroid/os/storage/StorageVolume;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->createOpenDocumentTreeIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1, p2}, Lw0/g;->j(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-static {p0, p1, p2}, Lw0/g;->g(Lru/zdevs/zarchiver/ZArchiver;Landroid/net/Uri;I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static j(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "android.intent.action."

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Failed to call "

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ". The Files (documnetui) application may be frozen."

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lg1/g;

    .line 41
    .line 42
    invoke-direct {v1, p0, p1, p2, v0}, Lg1/g;-><init>(Landroid/app/Activity;Landroid/content/Intent;ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lv0/c;->h(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
