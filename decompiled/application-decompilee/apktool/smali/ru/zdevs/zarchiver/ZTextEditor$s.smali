.class public final Lru/zdevs/zarchiver/ZTextEditor$s;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/net/Uri;

.field public final g:Lm0/d$a;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Z

.field public j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lm0/d$a;Lru/zdevs/zarchiver/ui/editor/b;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->e:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->f:Landroid/net/Uri;

    .line 12
    .line 13
    iput-object p3, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->g:Lm0/d$a;

    .line 14
    .line 15
    iput-object p4, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->h:Ljava/lang/CharSequence;

    .line 16
    .line 17
    iput-boolean p5, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->i:Z

    .line 18
    .line 19
    const-wide/16 p1, 0x0

    .line 20
    .line 21
    iput-wide p1, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->j:J

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 7

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->f:Landroid/net/Uri;

    .line 2
    .line 3
    const-string v1, "Failed to save file: "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "ru.zdevs.zarchiver.external"

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-string v4, "file"

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v5, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->e:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    :try_start_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZTextEditor$s;->m(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :goto_0
    move-object v2, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/content/Context;

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 49
    .line 50
    const-string v3, "Context is null"

    .line 51
    .line 52
    invoke-direct {v0, v3}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    if-nez v3, :cond_2

    .line 57
    .line 58
    :try_start_2
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->a()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 63
    .line 64
    .line 65
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catch_0
    :cond_2
    if-nez v2, :cond_4

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    :try_start_3
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v4, v0}, Lu0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lru/zdevs/zarchiver/ZTextEditor$s;->m(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_2
    if-nez v2, :cond_6

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/content/Context;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    invoke-static {}, Lru/zdevs/zarchiver/ZApp;->e()Lru/zdevs/zarchiver/ZApp;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_5
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const v4, 0x7f0c00d7

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {v3, v0}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 114
    .line 115
    .line 116
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 117
    .line 118
    .line 119
    return-object v3

    .line 120
    :cond_6
    :try_start_4
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->h:Ljava/lang/CharSequence;

    .line 121
    .line 122
    iget-object v4, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->g:Lm0/d$a;

    .line 123
    .line 124
    iget-wide v5, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->j:J

    .line 125
    .line 126
    invoke-static {v2, v0, v4, v5, v6}, Lm0/d;->n(Ljava/io/OutputStream;Ljava/lang/CharSequence;Lm0/d$a;J)V

    .line 127
    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 132
    .line 133
    .line 134
    :cond_7
    new-instance v0, Lru/zdevs/zarchiver/ZTextEditor$r;

    .line 135
    .line 136
    iget-boolean v3, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->i:Z

    .line 137
    .line 138
    invoke-direct {v0, v3}, Lru/zdevs/zarchiver/ZTextEditor$r;-><init>(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    .line 140
    .line 141
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    goto :goto_3

    .line 147
    :catch_1
    move-exception v0

    .line 148
    :try_start_5
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$o;

    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-direct {v3, v0}, Lru/zdevs/zarchiver/ZTextEditor$o;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    .line 168
    .line 169
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 170
    .line 171
    .line 172
    return-object v3

    .line 173
    :goto_3
    invoke-static {v2}, Lm0/d;->d(Ljava/io/Closeable;)V

    .line 174
    .line 175
    .line 176
    throw v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final m(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lru/zdevs/zarchiver/ZTextEditor;->a(Ljava/lang/String;)Lg0/f;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lg0/f;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lg0/f;->o()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lru/zdevs/zarchiver/ZTextEditor$s;->j:J

    .line 17
    .line 18
    :cond_0
    const-wide/16 v2, -0x1

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Lg0/f;->x(J)Ljava/io/OutputStream;

    .line 21
    .line 22
    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move-object v4, v1

    .line 25
    move-object v1, v0

    .line 26
    move-object v0, v4

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Ls0/b;->j()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    :try_start_1
    invoke-static {p1}, Lw0/c;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    sget v2, Ls0/b;->m:I

    .line 46
    .line 47
    invoke-static {v2, p1}, Ln0/d;->a(ILjava/lang/String;)Ln0/d;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    .line 63
    .line 64
    invoke-direct {p1, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    :goto_2
    return-object v0
.end method
