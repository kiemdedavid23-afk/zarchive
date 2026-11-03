.class public final Li0/d;
.super Lg0/f;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/File;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg0/h;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lg0/f;-><init>(Lg0/h;)V

    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 7
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Li0/d;->b:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Lg0/h;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-direct {v0, v2, v1}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lg0/f;-><init>(Lg0/h;)V

    .line 2
    iput-object p1, p0, Li0/d;->b:Ljava/io/File;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Li0/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg0/h;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Li0/d;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lg0/h;

    .line 9
    .line 10
    const-string v1, "file"

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {p1, v1, v2}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :goto_0
    :try_start_1
    iget-object v1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-static {v2, v1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :catch_1
    move-exception p1

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    :cond_1
    throw v0
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Lru/zdevs/zarchiver/io/SAF;->remove(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v2, v1

    .line 28
    :cond_2
    :goto_1
    return v2
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lm0/d;->j(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li0/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-static {v0}, Lm0/c;->f(Ljava/io/File;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()J
    .locals 2

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o()J
    .locals 2

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()[Lg0/f;
    .locals 5

    .line 1
    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-array v0, v1, [Lg0/f;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    array-length v2, v0

    .line 14
    new-array v2, v2, [Lg0/f;

    .line 15
    .line 16
    :goto_0
    array-length v3, v0

    .line 17
    if-ge v1, v3, :cond_1

    .line 18
    .line 19
    new-instance v3, Li0/d;

    .line 20
    .line 21
    aget-object v4, v0, v1

    .line 22
    .line 23
    invoke-direct {v3, v4}, Li0/d;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    aput-object v3, v2, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object v2
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Li0/d;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v1, 0x1

    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lru/zdevs/zarchiver/io/SAF;->mkdir(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    move p1, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p1, v0

    .line 40
    :goto_0
    if-eqz p1, :cond_2

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v1, v0

    .line 44
    :cond_3
    :goto_1
    return v1
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/io/SAF;->mkdirs(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    neg-int p1, p1

    .line 41
    invoke-static {p1}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Li0/d;->c:Ljava/lang/String;

    .line 46
    .line 47
    return v0

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public final t(Lg0/h;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    iget-object v2, p1, Lg0/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Li0/d;->b:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :cond_0
    :try_start_0
    iget-object v1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1, v0, p1}, Lru/zdevs/zarchiver/io/SAF;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return p1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Li0/d;->c:Ljava/lang/String;

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public final v(I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    invoke-static {v0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public final w()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Li0/d;->b:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final x(J)Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object p1, p0, Li0/d;->b:Ljava/io/File;

    .line 2
    .line 3
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-object p2

    .line 9
    :catch_0
    move-exception p2

    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/io/SAF;->u(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_1
    .catch Ljava/util/InvalidPropertiesFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_0

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    throw p2
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Li0/d;->b:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_1
    iget-object v0, p0, Lg0/f;->a:Lg0/h;

    .line 29
    .line 30
    iget-object v1, v0, Lg0/h;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lg0/h;->e()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0, p1}, Lru/zdevs/zarchiver/io/SAF;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public final z(JLjava/io/OutputStream;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Li0/d;->b:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-static {p3}, Lb/d;->z(Ljava/io/OutputStream;)I

    .line 10
    .line 11
    .line 12
    move-result p3

    .line 13
    if-lez p3, :cond_1

    .line 14
    .line 15
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 28
    .line 29
    div-long/2addr p1, v0

    .line 30
    long-to-int p1, p1

    .line 31
    invoke-static {p3, p1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetMTime(II)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 41
    :goto_2
    return p1
.end method
