.class public final Lk/b;
.super Lk/a;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 5
    .line 6
    new-instance v1, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {v0, v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lk/b;->f:Ljava/util/zip/ZipFile;

    .line 16
    .line 17
    new-instance p1, Lp/g;

    .line 18
    .line 19
    invoke-direct {p1}, Lp/g;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lk/a;->c:Lp/g;

    .line 23
    .line 24
    invoke-virtual {p0}, Lk/a;->b()V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 1

    .line 1
    const-string p1, "AndroidManifest.xml"

    .line 2
    .line 3
    iget-object v0, p0, Lk/b;->f:Ljava/util/zip/ZipFile;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lb/d;->T(Ljava/io/InputStream;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lk/a;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lk/b;->f:Ljava/util/zip/ZipFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
