.class public final Lk0/d;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentProviderClient;

.field public final b:Landroid/os/ParcelFileDescriptor;

.field public final c:Lg0/h;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderClient;Lg0/h;Landroid/os/ParcelFileDescriptor;J)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lk0/d;->a:Landroid/content/ContentProviderClient;

    .line 9
    .line 10
    iput-object p3, p0, Lk0/d;->b:Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    iput-object p2, p0, Lk0/d;->c:Lg0/h;

    .line 13
    .line 14
    iput-wide p4, p0, Lk0/d;->e:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lk0/d;->e:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lk0/d;->d:J

    .line 12
    .line 13
    sub-long/2addr v0, v2

    .line 14
    const-wide/32 v2, 0x7fffffff

    .line 15
    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    return v0

    .line 25
    :cond_1
    long-to-int v0, v0

    .line 26
    return v0
.end method

.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/d;->b:Landroid/os/ParcelFileDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lk0/d;->a:Landroid/content/ContentProviderClient;

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    :try_start_0
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-wide v3, p0, Lk0/d;->e:J

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 15
    .line 16
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    if-lt v0, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :catchall_0
    move-exception v5

    .line 30
    iput-wide v3, p0, Lk0/d;->e:J

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 33
    .line 34
    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    if-lt v0, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    .line 44
    .line 45
    .line 46
    :goto_1
    throw v5
.end method

.method public final read([BII)I
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    iget-wide p2, p0, Lk0/d;->d:J

    .line 8
    .line 9
    int-to-long v0, p1

    .line 10
    add-long/2addr p2, v0

    .line 11
    iput-wide p2, p0, Lk0/d;->d:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :cond_0
    return p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    iget-object p2, p0, Lk0/d;->c:Lg0/h;

    .line 16
    .line 17
    invoke-static {p2}, Lk0/c;->f(Lg0/h;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    new-instance p1, Ljava/io/IOException;

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    throw p1
.end method

.method public final skip(J)J
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Lk0/d;->d:J

    .line 12
    .line 13
    add-long/2addr v0, p1

    .line 14
    iput-wide v0, p0, Lk0/d;->d:J

    .line 15
    .line 16
    :cond_0
    return-wide p1
.end method
