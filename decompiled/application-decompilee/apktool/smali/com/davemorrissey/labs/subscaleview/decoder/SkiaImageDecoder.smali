.class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/c;


# instance fields
.field public final a:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lg/d;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->a:Landroid/graphics/Bitmap$Config;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->a:Landroid/graphics/Bitmap$Config;

    .line 16
    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lg/a;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->a:Landroid/graphics/Bitmap$Config;

    .line 7
    .line 8
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    iget-object v1, p2, Lg/a;->d:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v1, :cond_5

    .line 13
    .line 14
    iget-object v1, p2, Lg/a;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    iget-object v2, p2, Lg/a;->c:Landroid/os/ParcelFileDescriptor;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    sget p2, Landroid/system/OsConstants;->SEEK_SET:I

    .line 35
    .line 36
    invoke-static {p1, v3, v4, p2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p2, Lg/a;->a:Landroid/net/Uri;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 55
    .line 56
    .line 57
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 59
    .line 60
    .line 61
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    invoke-static {p1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    move-object p1, p2

    .line 68
    :goto_0
    if-eqz p1, :cond_3

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    const-string p2, "Skia image region decoder returned null bitmap - image format may not be supported"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :catchall_0
    move-exception p2

    .line 80
    move-object v1, p1

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    move-object p2, p1

    .line 84
    :goto_1
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    throw p2

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 91
    .line 92
    iget-object p2, p2, Lg/a;->d:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1
.end method
