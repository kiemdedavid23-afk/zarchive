.class public final Lp0/d;
.super Landroid/media/ExifInterface;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lp0/d;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 6
    iput-object p1, p0, Lp0/d;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lp0/d;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getThumbnail()[B
    .locals 8

    .line 1
    iget-object v0, p0, Lp0/d;->a:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v2, 0x18

    .line 8
    .line 9
    if-lt v1, v2, :cond_6

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    instance-of v3, v0, Ljava/io/FileInputStream;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    move-object v3, v0

    .line 32
    check-cast v3, Ljava/io/FileInputStream;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aget-wide v5, v1, v4

    .line 39
    .line 40
    sget v7, Landroid/system/OsConstants;->SEEK_SET:I

    .line 41
    .line 42
    invoke-static {v3, v5, v6, v7}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 43
    .line 44
    .line 45
    move-result-wide v5

    .line 46
    aget-wide v3, v1, v4

    .line 47
    .line 48
    cmp-long v3, v5, v3

    .line 49
    .line 50
    if-eqz v3, :cond_3

    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 60
    .line 61
    .line 62
    aget-wide v5, v1, v4

    .line 63
    .line 64
    invoke-virtual {v0, v5, v6}, Ljava/io/InputStream;->skip(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    aget-wide v3, v1, v4

    .line 69
    .line 70
    cmp-long v3, v5, v3

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_3
    const/4 v3, 0x1

    .line 76
    aget-wide v3, v1, v3

    .line 77
    .line 78
    long-to-int v1, v3

    .line 79
    new-array v3, v1, [B

    .line 80
    .line 81
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 82
    .line 83
    .line 84
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    if-eq v0, v1, :cond_4

    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_4
    return-object v3

    .line 89
    :catch_0
    :cond_5
    return-object v2

    .line 90
    :cond_6
    invoke-super {p0}, Landroid/media/ExifInterface;->getThumbnail()[B

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method
