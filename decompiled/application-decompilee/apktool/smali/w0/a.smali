.class public final Lw0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/a$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lw0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public static g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "ext"

    .line 2
    .line 3
    const-string v1, "rootfs"

    .line 4
    .line 5
    const-string v2, "yaffs"

    .line 6
    .line 7
    const-string v3, "f2fs"

    .line 8
    .line 9
    const-string v4, "ubifs"

    .line 10
    .line 11
    const-string v5, "reiserfs"

    .line 12
    .line 13
    const-string v6, "btrfs"

    .line 14
    .line 15
    const-string v7, "jffs"

    .line 16
    .line 17
    const-string v8, "unionfs"

    .line 18
    .line 19
    const-string v9, "aufs"

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lw0/a;->a:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "cramfs"

    .line 28
    .line 29
    const-string v1, "squashfs"

    .line 30
    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lw0/a;->b:[Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "sysfs"

    .line 38
    .line 39
    const-string v1, "cgroup"

    .line 40
    .line 41
    const-string v2, "tmpfs"

    .line 42
    .line 43
    const-string v3, "proc"

    .line 44
    .line 45
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lw0/a;->c:[Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "exfat"

    .line 52
    .line 53
    const-string v1, "ntfs"

    .line 54
    .line 55
    const-string v2, "vfat"

    .line 56
    .line 57
    const-string v3, "msdos"

    .line 58
    .line 59
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lw0/a;->d:[Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "fuse"

    .line 66
    .line 67
    const-string v1, "sdcardfs"

    .line 68
    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lw0/a;->e:[Ljava/lang/String;

    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lw0/a;->f:Ljava/util/ArrayList;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    sput v0, Lw0/a;->g:I

    .line 84
    .line 85
    return-void
.end method

.method public static a(Ljava/io/File;)B
    .locals 5

    .line 1
    sget v0, Lw0/a;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lw0/a;->c(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lw0/a;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lw0/a$a;

    .line 31
    .line 32
    iget-object v4, v3, Lw0/a$a;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v3}, Lw0/a$a;->a()B

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    monitor-exit v1

    .line 45
    return p0

    .line 46
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return p0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public static b(Ljava/lang/String;Z)Lw0/a$a;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "/"

    .line 4
    .line 5
    invoke-static {p1}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    :goto_0
    sget v0, Lw0/a;->g:I

    .line 15
    .line 16
    if-ge v0, p1, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Lw0/a;->c(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    new-instance p1, Ljava/io/File;

    .line 22
    .line 23
    sget-object v0, Lu0/c;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_5

    .line 30
    .line 31
    sget-object v1, Lu0/c;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_5

    .line 38
    .line 39
    sget-object v2, Lu0/c;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v2}, Lu0/h;->e(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :cond_3
    sget-object v2, Lu0/c;->d:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v2, :cond_4

    .line 61
    .line 62
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const v3, 0x186a0

    .line 67
    .line 68
    .line 69
    div-int/2addr v2, v3

    .line 70
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Ljava/io/File;

    .line 75
    .line 76
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    sput-object v1, Lu0/c;->d:Ljava/lang/String;

    .line 84
    .line 85
    :cond_4
    sget-object v1, Lu0/c;->d:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    sget-object v1, Lu0/c;->d:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    :cond_5
    :goto_1
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    sget-object v0, Lw0/a;->f:Ljava/util/ArrayList;

    .line 107
    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Lw0/a$a;

    .line 124
    .line 125
    iget-object v3, v2, Lw0/a$a;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_7

    .line 132
    .line 133
    monitor-exit v0

    .line 134
    return-object v2

    .line 135
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-nez p1, :cond_6

    .line 141
    .line 142
    const/4 p0, 0x0

    .line 143
    return-object p0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p0
.end method

.method public static c(I)V
    .locals 7

    .line 1
    sput p0, Lw0/a;->g:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    invoke-static {v1}, Lw0/a;->d(Ln0/a;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_9

    .line 12
    .line 13
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 14
    .line 15
    const-string v2, "/proc/mounts"

    .line 16
    .line 17
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v2, Lw0/a;->f:Ljava/util/ArrayList;

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 30
    if-eqz v3, :cond_8

    .line 31
    .line 32
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 33
    .line 34
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 35
    .line 36
    .line 37
    :try_start_2
    new-instance p0, Ljava/io/BufferedReader;

    .line 38
    .line 39
    new-instance v4, Ljava/io/InputStreamReader;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    .line 47
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/16 v4, 0x20

    .line 54
    .line 55
    invoke-static {v1, v4}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    array-length v4, v1

    .line 60
    const/4 v5, 0x2

    .line 61
    if-ge v4, v5, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v4, Lw0/a$a;

    .line 65
    .line 66
    invoke-direct {v4}, Lw0/a$a;-><init>()V

    .line 67
    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    aget-object v6, v1, v6

    .line 71
    .line 72
    iput-object v6, v4, Lw0/a$a;->a:Ljava/lang/String;

    .line 73
    .line 74
    aget-object v6, v1, v0

    .line 75
    .line 76
    iput-object v6, v4, Lw0/a$a;->b:Ljava/lang/String;

    .line 77
    .line 78
    array-length v6, v1

    .line 79
    if-le v6, v5, :cond_2

    .line 80
    .line 81
    aget-object v5, v1, v5

    .line 82
    .line 83
    if-eqz v5, :cond_2

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    const-string v5, ""

    .line 87
    .line 88
    :goto_1
    iput-object v5, v4, Lw0/a$a;->c:Ljava/lang/String;

    .line 89
    .line 90
    array-length v5, v1

    .line 91
    const/4 v6, 0x3

    .line 92
    if-le v5, v6, :cond_3

    .line 93
    .line 94
    aget-object v1, v1, v6

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const-string v1, ""

    .line 100
    .line 101
    :goto_2
    iput-object v1, v4, Lw0/a$a;->d:Ljava/lang/String;

    .line 102
    .line 103
    const/4 v1, -0x1

    .line 104
    iput-byte v1, v4, Lw0/a$a;->e:B

    .line 105
    .line 106
    sget-object v1, Lw0/a;->f:Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 113
    .line 114
    .line 115
    goto :goto_5

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    move-object v1, p0

    .line 118
    goto :goto_3

    .line 119
    :catch_0
    move-object v1, p0

    .line 120
    goto :goto_4

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    move-object v0, p0

    .line 123
    goto :goto_3

    .line 124
    :catchall_2
    move-exception p0

    .line 125
    move-object v0, p0

    .line 126
    move-object v3, v1

    .line 127
    :goto_3
    if-eqz v1, :cond_5

    .line 128
    .line 129
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 130
    .line 131
    .line 132
    :cond_5
    if-eqz v3, :cond_6

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 135
    .line 136
    .line 137
    :catch_1
    :cond_6
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 138
    :catch_2
    move-object v3, v1

    .line 139
    :catch_3
    :goto_4
    if-eqz v1, :cond_7

    .line 140
    .line 141
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 142
    .line 143
    .line 144
    :cond_7
    if-eqz v3, :cond_8

    .line 145
    .line 146
    :goto_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 147
    .line 148
    .line 149
    :catch_4
    :cond_8
    :try_start_8
    sget-object p0, Lw0/a;->f:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    monitor-exit v2

    .line 155
    :cond_9
    return-void

    .line 156
    :catchall_3
    move-exception p0

    .line 157
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 158
    throw p0
.end method

.method public static d(Ln0/a;)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_3

    .line 4
    .line 5
    sget p0, Ls0/b;->m:I

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    sget-boolean v2, Lru/zdevs/zarchiver/ZApp;->g:Z

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Ln0/a;->g(I)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    :cond_1
    return v1

    .line 20
    :cond_2
    invoke-static {p0}, Ln0/a;->c(I)Ln0/a;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ln0/a;->f()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v3, "cat /proc/mounts"

    .line 37
    .line 38
    invoke-virtual {p0, v3}, Ln0/a;->b(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v4, 0x1

    .line 43
    if-nez v3, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catch_0
    :cond_4
    :goto_0
    invoke-virtual {p0, v4}, Ln0/a;->k(Z)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_7

    .line 51
    .line 52
    const/16 v5, 0x20

    .line 53
    .line 54
    :try_start_0
    invoke-static {v3, v5}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    array-length v5, v3

    .line 59
    const/4 v6, 0x6

    .line 60
    if-ge v5, v6, :cond_5

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_5
    new-instance v5, Lo0/e$a;

    .line 64
    .line 65
    invoke-direct {v5}, Lo0/e$a;-><init>()V

    .line 66
    .line 67
    .line 68
    aget-object v6, v3, v1

    .line 69
    .line 70
    iput-object v6, v5, Lo0/e$a;->a:Ljava/lang/String;

    .line 71
    .line 72
    aget-object v6, v3, v4

    .line 73
    .line 74
    iput-object v6, v5, Lo0/e$a;->b:Ljava/lang/String;

    .line 75
    .line 76
    aget-object v6, v3, v0

    .line 77
    .line 78
    iput-object v6, v5, Lo0/e$a;->c:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v6, 0x3

    .line 81
    aget-object v3, v3, v6

    .line 82
    .line 83
    if-eqz v3, :cond_6

    .line 84
    .line 85
    const-string v6, "rw"

    .line 86
    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    move v3, v4

    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move v3, v1

    .line 96
    :goto_1
    iput-boolean v3, v5, Lo0/e$a;->d:Z

    .line 97
    .line 98
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    iget v0, p0, Ln0/a;->h:I

    .line 103
    .line 104
    if-nez v0, :cond_8

    .line 105
    .line 106
    move v0, v4

    .line 107
    goto :goto_3

    .line 108
    :cond_8
    :goto_2
    move v0, v1

    .line 109
    :goto_3
    invoke-virtual {p0}, Ln0/a;->close()V

    .line 110
    .line 111
    .line 112
    if-nez v0, :cond_9

    .line 113
    .line 114
    return v1

    .line 115
    :cond_9
    sget-object p0, Lw0/a;->f:Ljava/util/ArrayList;

    .line 116
    .line 117
    monitor-enter p0

    .line 118
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_b

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lo0/e$a;

    .line 136
    .line 137
    new-instance v3, Lw0/a$a;

    .line 138
    .line 139
    invoke-direct {v3}, Lw0/a$a;-><init>()V

    .line 140
    .line 141
    .line 142
    iget-object v5, v2, Lo0/e$a;->a:Ljava/lang/String;

    .line 143
    .line 144
    iput-object v5, v3, Lw0/a$a;->a:Ljava/lang/String;

    .line 145
    .line 146
    iget-object v5, v2, Lo0/e$a;->b:Ljava/lang/String;

    .line 147
    .line 148
    iput-object v5, v3, Lw0/a$a;->b:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v5, v2, Lo0/e$a;->c:Ljava/lang/String;

    .line 151
    .line 152
    iput-object v5, v3, Lw0/a$a;->c:Ljava/lang/String;

    .line 153
    .line 154
    iget-boolean v2, v2, Lo0/e$a;->d:Z

    .line 155
    .line 156
    if-eqz v2, :cond_a

    .line 157
    .line 158
    const-string v2, "rw"

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :cond_a
    const-string v2, "ro"

    .line 162
    .line 163
    :goto_5
    iput-object v2, v3, Lw0/a$a;->d:Ljava/lang/String;

    .line 164
    .line 165
    const/4 v2, -0x1

    .line 166
    iput-byte v2, v3, Lw0/a$a;->e:B

    .line 167
    .line 168
    sget-object v2, Lw0/a;->f:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_b
    sget-object v0, Lw0/a;->f:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 181
    .line 182
    .line 183
    move-result p0

    .line 184
    if-lez p0, :cond_c

    .line 185
    .line 186
    move v1, v4

    .line 187
    :cond_c
    return v1

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw v0
.end method
