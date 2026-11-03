.class public abstract Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Process;

.field public e:Ljava/io/DataOutputStream;

.field public f:Ljava/io/DataInputStream;

.field public g:Ljava/io/DataInputStream;

.field public h:I

.field public volatile i:Z

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln0/a;->a:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Ln0/a;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput v0, p0, Ln0/a;->h:I

    .line 11
    .line 12
    iput v0, p0, Ln0/a;->j:I

    .line 13
    .line 14
    return-void
.end method

.method public static c(I)Ln0/a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ln0/b;

    .line 11
    .line 12
    invoke-direct {p0}, Ln0/b;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance p0, Ln0/e;

    .line 17
    .line 18
    invoke-direct {p0}, Ln0/e;-><init>()V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Ln0/f;

    .line 23
    .line 24
    invoke-direct {p0}, Ln0/f;-><init>()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static g(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p0, v2, :cond_7

    .line 5
    .line 6
    if-eq p0, v1, :cond_0

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq p0, v3, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    sget-byte p0, Ln0/e;->k:B

    .line 13
    .line 14
    if-nez p0, :cond_4

    .line 15
    .line 16
    sget-boolean p0, Lru/zdevs/zarchiver/ZApp;->g:Z

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    sput-byte v1, Ln0/e;->k:B

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const-string p0, "moe.shizuku.privileged.api"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v3}, Lru/zdevs/zarchiver/ZApp;->c(Landroid/content/Context;)Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catchall_0
    :goto_0
    if-eqz v3, :cond_3

    .line 42
    .line 43
    iget p0, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 44
    .line 45
    const/16 v3, 0x1f6

    .line 46
    .line 47
    if-lt p0, v3, :cond_3

    .line 48
    .line 49
    sput-byte v1, Ln0/e;->k:B

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    sput-byte v2, Ln0/e;->k:B

    .line 53
    .line 54
    :cond_4
    :goto_1
    sget-byte p0, Ln0/e;->k:B

    .line 55
    .line 56
    if-ne p0, v1, :cond_5

    .line 57
    .line 58
    move p0, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    move p0, v0

    .line 61
    :goto_2
    if-eqz p0, :cond_6

    .line 62
    .line 63
    move v0, v2

    .line 64
    :cond_6
    return v0

    .line 65
    :cond_7
    sget-byte p0, Ln0/f;->l:B

    .line 66
    .line 67
    if-nez p0, :cond_a

    .line 68
    .line 69
    sput-byte v2, Ln0/f;->l:B

    .line 70
    .line 71
    new-instance p0, Ln0/b;

    .line 72
    .line 73
    invoke-direct {p0}, Ln0/b;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_9

    .line 81
    .line 82
    const-string v3, "su -v"

    .line 83
    .line 84
    const/4 v4, 0x5

    .line 85
    invoke-virtual {p0, v4, v3}, Ln0/a;->a(ILjava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_9

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    :goto_3
    invoke-virtual {p0, v2}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-eqz v4, :cond_8

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 v4, 0xa

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 112
    .line 113
    .line 114
    iget v3, p0, Ln0/a;->h:I

    .line 115
    .line 116
    if-nez v3, :cond_9

    .line 117
    .line 118
    sput-byte v1, Ln0/f;->l:B

    .line 119
    .line 120
    :cond_9
    invoke-virtual {p0}, Ln0/a;->close()V

    .line 121
    .line 122
    .line 123
    :cond_a
    sget-byte p0, Ln0/f;->l:B

    .line 124
    .line 125
    if-ne p0, v1, :cond_b

    .line 126
    .line 127
    move v0, v2

    .line 128
    :cond_b
    return v0
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const-string p2, " ; echo -e \"\\n#@#[$?]#@#\\n\" \r\n"

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p0, p2}, Ln0/a;->n(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :cond_0
    const/4 p2, 0x2

    .line 29
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ln0/a;->l(II)Z

    .line 30
    .line 31
    .line 32
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    monitor-exit p0

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x258

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0, p1}, Ln0/a;->a(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Ln0/a;->i:Z

    .line 4
    .line 5
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 7
    .line 8
    .line 9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    iget-object v0, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 11
    .line 12
    invoke-static {v0}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 17
    .line 18
    iget-object v1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 19
    .line 20
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 24
    .line 25
    iget-object v1, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 26
    .line 27
    invoke-static {v1}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 31
    .line 32
    iget-object v1, p0, Ln0/a;->d:Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    .line 38
    .line 39
    :catch_0
    :try_start_4
    iput-object v0, p0, Ln0/a;->d:Ljava/lang/Process;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    .line 41
    :cond_0
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 46
    :catchall_1
    move-exception v0

    .line 47
    monitor-exit p0

    .line 48
    throw v0
.end method

.method public abstract d()I
.end method

.method public final e(Ljava/lang/Process;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln0/a;->i:Z

    .line 3
    .line 4
    iput-object p1, p0, Ln0/a;->d:Ljava/lang/Process;

    .line 5
    .line 6
    new-instance p1, Ljava/io/DataOutputStream;

    .line 7
    .line 8
    iget-object v0, p0, Ln0/a;->d:Ljava/lang/Process;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 18
    .line 19
    new-instance p1, Ljava/io/DataInputStream;

    .line 20
    .line 21
    iget-object v0, p0, Ln0/a;->d:Ljava/lang/Process;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 31
    .line 32
    new-instance p1, Ljava/io/DataInputStream;

    .line 33
    .line 34
    iget-object v0, p0, Ln0/a;->d:Ljava/lang/Process;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 44
    .line 45
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Ln0/a;->d:Ljava/lang/Process;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln0/a;->d:Ljava/lang/Process;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Ln0/a;->i:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-wide/16 v2, 0x12c

    .line 15
    .line 16
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ln0/a;->i()V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p0, Ln0/a;->i:Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 23
    .line 24
    :cond_1
    return v1

    .line 25
    :catch_1
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public final i()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-boolean v1, p0, Ln0/a;->i:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v1, v2}, Lm0/d;->m(Ljava/io/DataInputStream;Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x2

    .line 44
    if-le v1, v2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Ln0/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :catch_0
    :cond_2
    return-void
.end method

.method public final j(J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw p1
.end method

.method public final declared-synchronized k(Z)Ljava/lang/String;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Ln0/a;->i:Z

    .line 4
    .line 5
    if-nez v1, :cond_6

    .line 6
    .line 7
    iget-object v1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 8
    .line 9
    if-eqz v1, :cond_6

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-gtz v1, :cond_1

    .line 20
    .line 21
    const-wide/16 v1, 0x64

    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Ln0/a;->j(J)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-boolean v1, p0, Ln0/a;->i:Z

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget-object v1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-static {v1, v2}, Lm0/d;->m(Ljava/io/DataInputStream;Z)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    const-string v3, "#@#["

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    const-string v3, "]#@#"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x4

    .line 63
    sub-int/2addr v3, v4

    .line 64
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, p0, Ln0/a;->h:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    const/4 v1, -0x1

    .line 76
    :try_start_2
    iput v1, p0, Ln0/a;->h:I

    .line 77
    .line 78
    :goto_1
    iget v1, p0, Ln0/a;->h:I

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {p0}, Ln0/a;->i()V

    .line 83
    .line 84
    .line 85
    :cond_4
    iput-boolean v2, p0, Ln0/a;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    move-object v0, v1

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p0

    .line 92
    throw p1

    .line 93
    :catch_1
    :cond_6
    :goto_2
    monitor-exit p0

    .line 94
    return-object v0
.end method

.method public final declared-synchronized l(II)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    mul-int/lit8 p1, p1, 0x64

    .line 3
    .line 4
    :cond_0
    const-wide/16 v0, 0xa

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ln0/a;->j(J)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    if-ge v0, p2, :cond_2

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    if-lez p1, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Ln0/a;->i:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Ln0/a;->h()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iput-boolean v3, p0, Ln0/a;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return v2

    .line 42
    :cond_2
    :goto_0
    if-lez p1, :cond_3

    .line 43
    .line 44
    move v2, v3

    .line 45
    :cond_3
    monitor-exit p0

    .line 46
    return v2

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    :try_start_1
    iput-boolean v3, p0, Ln0/a;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return v2

    .line 53
    :goto_1
    monitor-exit p0

    .line 54
    throw p1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln0/a;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "\r\n"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 28
    .line 29
    const-string v1, "UTF-8"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized n(Ljava/lang/String;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Ln0/a;->i:Z

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, p0, Ln0/a;->h:I

    .line 7
    .line 8
    iget-object v1, p0, Ln0/a;->e:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :try_start_1
    iput-object v1, p0, Ln0/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Ln0/a;->f:Ljava/io/DataInputStream;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-long v2, v2

    .line 34
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-lez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Ln0/a;->g:Ljava/io/DataInputStream;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v2, v2

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v1, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 58
    .line 59
    const-string v2, "UTF-8"

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Ln0/a;->e:Ljava/io/DataOutputStream;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    monitor-exit p0

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :catch_0
    monitor-exit p0

    .line 77
    return v0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0

    .line 80
    throw p1
.end method
