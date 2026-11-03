.class public final Lp0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Landroid/media/MediaScannerConnection;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp0/f$a;->a:Ljava/io/File;

    .line 5
    .line 6
    new-instance p1, Landroid/media/MediaScannerConnection;

    .line 7
    .line 8
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lp0/f$a;->b:Landroid/media/MediaScannerConnection;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Lp0/f$a;->b:Landroid/media/MediaScannerConnection;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    array-length v3, v0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v3, :cond_5

    .line 20
    .line 21
    aget-object v5, v0, v4

    .line 22
    .line 23
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v5}, Lp0/f$a;->a(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v2, v5, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v0, Lp0/f;->a:[Ljava/lang/String;

    .line 56
    .line 57
    :try_start_2
    new-instance v0, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "volume"

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    sget-object v2, Lp0/f;->b:Ljava/util/regex/Pattern;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v2, "emulated"

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    const-string p1, "external_primary"

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    if-eqz p1, :cond_4

    .line 95
    .line 96
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 97
    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_2

    .line 103
    :cond_4
    const-string p1, "external"

    .line 104
    .line 105
    :goto_2
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance p1, Landroid/content/Intent;

    .line 109
    .line 110
    const-string v1, "android.media.IMediaScannerService"

    .line 111
    .line 112
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    const-string v0, "com.android.providers.media"

    .line 120
    .line 121
    const-string v1, "com.android.providers.media.MediaScannerService"

    .line 122
    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    :catchall_0
    :cond_5
    :goto_3
    return-void
.end method

.method public final onMediaScannerConnected()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/f$a;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lp0/f$a;->a(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lp0/f$a;->b:Landroid/media/MediaScannerConnection;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
