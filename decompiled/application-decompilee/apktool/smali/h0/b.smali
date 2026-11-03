.class public final Lh0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/c;


# instance fields
.field public final a:Lru/zdevs/zarchiver/archiver/NArc;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/archiver/NArc;Ljava/util/ArrayList;ILjava/lang/String;Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/zdevs/zarchiver/archiver/NArc;",
            "Ljava/util/ArrayList<",
            "Lc0/d;",
            ">;I",
            "Ljava/lang/String;",
            "Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh0/b;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 5
    .line 6
    iput-object p2, p0, Lh0/b;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lh0/b;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lh0/b;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lh0/b;->e:Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lh0/b;->c:I

    return v0
.end method

.method public final b(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 7

    .line 1
    new-instance v1, Lg0/h;

    .line 2
    .line 3
    iget-object v0, p0, Lh0/b;->e:Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 4
    .line 5
    iget-object v2, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lg0/h;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lg0/h;-><init>(Lg0/h;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lg0/h;->c()Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lh0/b;->getName(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v1, p2}, Lg0/h;->a(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v1, Lg0/h;->b:Ljava/lang/String;

    .line 21
    .line 22
    const-wide/16 v3, -0x2

    .line 23
    .line 24
    iget-object v5, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget v6, v0, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->c:I

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    invoke-static/range {v0 .. v6}, Lru/zdevs/zarchiver/provider/ArchiveFileProvider;->d(Landroid/content/Context;Lg0/h;Ljava/lang/String;JLjava/lang/String;I)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(I)Lg/a;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lh0/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc0/d;

    .line 8
    .line 9
    iget-object v0, p0, Lh0/b;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 10
    .line 11
    iget-object v1, p1, Lc0/d;->b:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {v2, v1}, Lb/d;->i0(ILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lh0/b;->d:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p1, Lc0/d;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v3}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/high16 v3, 0x200000

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v3}, Lru/zdevs/zarchiver/archiver/NArc;->d(ILjava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v1, p1, Lc0/d;->d:J

    .line 33
    .line 34
    new-instance p1, Lg/a;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {p1, v3, v3, v0}, Lg/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 38
    .line 39
    .line 40
    iput-wide v1, p1, Lg/a;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    return-object p1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    const-string p1, "Failed to open image from archive"

    .line 51
    .line 52
    :cond_0
    new-instance v0, Lg/a;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lg/a;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public final e()Lg0/h;
    .locals 2

    .line 1
    new-instance v0, Lg0/h;

    .line 2
    .line 3
    iget-object v1, p0, Lh0/b;->e:Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;

    .line 4
    .line 5
    iget-object v1, v1, Lru/zdevs/zarchiver/provider/ArchiveFileProvider$a;->a:Lg0/h;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lg0/h;-><init>(Lg0/h;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lg0/h;->c()Z

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final finalize()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lh0/b;->a:Lru/zdevs/zarchiver/archiver/NArc;

    .line 5
    .line 6
    invoke-virtual {v0}, Lru/zdevs/zarchiver/archiver/NArc;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lh0/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh0/b;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc0/d;

    .line 8
    .line 9
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-object p1
.end method

.method public final remove(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
