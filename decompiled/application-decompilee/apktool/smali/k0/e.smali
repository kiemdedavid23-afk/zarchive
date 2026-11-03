.class public final Lk0/e;
.super Ljava/io/FileOutputStream;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentProviderClient;

.field public final b:Landroid/os/ParcelFileDescriptor;

.field public final c:Lg0/h;


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Lg0/h;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lk0/e;->a:Landroid/content/ContentProviderClient;

    .line 9
    .line 10
    iput-object p3, p0, Lk0/e;->b:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    iput-object p2, p0, Lk0/e;->c:Lg0/h;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/e;->a:Landroid/content/ContentProviderClient;

    .line 2
    .line 3
    sget-object v1, Lk0/c;->a:[Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lk0/e;->c:Lg0/h;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "_account"

    .line 14
    .line 15
    iget-object v5, v1, Lg0/h;->e:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v4, "_uri"

    .line 21
    .line 22
    invoke-static {v1}, Lk0/c;->g(Lg0/h;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "flush"

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string v3, "_ret"

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    :catch_0
    :cond_1
    :goto_0
    iget-object v1, p0, Lk0/e;->b:Landroid/os/ParcelFileDescriptor;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 51
    .line 52
    .line 53
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 54
    .line 55
    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 v3, 0x18

    .line 59
    .line 60
    if-lt v1, v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 67
    .line 68
    .line 69
    :goto_1
    if-eqz v2, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v1, "PUT file error!"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public final write([BII)V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lk0/e;->c:Lg0/h;

    .line 7
    .line 8
    invoke-static {p2}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/io/IOException;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_0
    throw p1
.end method
