.class public final Lm0/a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Ljava/lang/Object;

.field public volatile g:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm0/a;->f:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lm0/a;->g:Z

    .line 13
    .line 14
    iput-object p1, p0, Lm0/a;->a:Ljava/io/OutputStream;

    .line 15
    .line 16
    iput-object p2, p0, Lm0/a;->b:Landroid/net/Uri;

    .line 17
    .line 18
    iput-object p3, p0, Lm0/a;->c:Landroid/net/Uri;

    .line 19
    .line 20
    iput-object p4, p0, Lm0/a;->d:Ljava/lang/String;

    .line 21
    .line 22
    iput-boolean p5, p0, Lm0/a;->e:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/a;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lm0/a;->g:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lm0/a;->g:Z

    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lm0/a;->a:Ljava/io/OutputStream;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lm0/a;->d:Ljava/lang/String;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-static {v1, v0}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/16 v3, 0x2f

    .line 31
    .line 32
    :try_start_1
    iget-boolean v4, p0, Lm0/a;->e:Z

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v5, p0, Lm0/a;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Lm0/a;->b:Landroid/net/Uri;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-static {v1, v4}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v2, v4}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v4, p0, Lm0/a;->b:Landroid/net/Uri;

    .line 74
    .line 75
    iget-object v5, p0, Lm0/a;->c:Landroid/net/Uri;

    .line 76
    .line 77
    invoke-static {v2, v4, v5, v0}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_2

    .line 87
    .line 88
    const-string v5, "Already exists"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v5, p0, Lm0/a;->d:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lm0/a;->b:Landroid/net/Uri;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-static {v1, v3}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v2, v1}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 131
    .line 132
    .line 133
    iget-object v1, p0, Lm0/a;->b:Landroid/net/Uri;

    .line 134
    .line 135
    iget-object v3, p0, Lm0/a;->c:Landroid/net/Uri;

    .line 136
    .line 137
    invoke-static {v2, v1, v3, v0}, Landroid/provider/DocumentsContract;->moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    .line 139
    .line 140
    :catch_1
    :cond_2
    :goto_0
    return-void

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    throw v1
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lm0/a;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lm0/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lm0/a;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
