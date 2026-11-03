.class public final Ll0/c;
.super Lg0/f;
.source "SourceFile"


# instance fields
.field public final b:Landroid/net/Uri;

.field public c:J


# direct methods
.method public constructor <init>(Lg0/h;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lg0/f;-><init>(Lg0/h;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lg0/h;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Lru/zdevs/zarchiver/io/ZAIO;->c(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ll0/c;->b:Landroid/net/Uri;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Ll0/c;->c:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lg0/h;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final o()J
    .locals 4

    .line 1
    iget-wide v0, p0, Ll0/c;->c:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ll0/c;->b:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-static {v0}, Lru/zdevs/zarchiver/io/ZAIO;->b(Landroid/net/Uri;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-wide v0, p0, Ll0/c;->c:J

    .line 16
    .line 17
    :cond_0
    iget-wide v0, p0, Ll0/c;->c:J

    .line 18
    .line 19
    return-wide v0
.end method

.method public final p()[Lg0/f;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lg0/f;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final s(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final t(Lg0/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final v(I)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Ll0/c;->b:Landroid/net/Uri;

    .line 7
    .line 8
    const-string v0, "r"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/io/ZAIO;->e(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 24
    .line 25
    const-string v0, "Create file not supported"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final w()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Ll0/c;->v(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method public final x(J)Ljava/io/OutputStream;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final y(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final z(JLjava/io/OutputStream;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
