.class public final Ll0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/c;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Ll0/d;->a:Landroid/net/Uri;

    .line 9
    iput-object p2, p0, Ll0/d;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Ll0/d;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Ll0/d;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ll0/d;->a:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Ll0/d;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Ll0/d;->d:Ljava/lang/String;

    .line 6
    iput p3, p0, Ll0/d;->e:I

    return-void
.end method

.method public static f(Ljava/lang/String;)Ll0/d;
    .locals 9

    .line 1
    invoke-static {p0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lw0/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-static {p0}, Lw0/c;->e(Ljava/lang/String;)Lw0/c$a;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    iget p0, p0, Lw0/c$a;->f:I

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    invoke-static {p0, v1}, Lb/d;->K(II)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    move-object p0, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    aget-object p0, v1, v2

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    aget-object v1, v1, v4

    .line 40
    .line 41
    invoke-static {p0, v1, v2, v2}, Lru/zdevs/zarchiver/io/SAF;->m(Ljava/lang/String;Ljava/lang/String;ZZ)Lg0/h;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    if-eqz p0, :cond_b

    .line 46
    .line 47
    :try_start_0
    iget-object v1, p0, Lg0/h;->c:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    invoke-static {v4, v1}, Lru/zdevs/zarchiver/io/SAF;->l(ILjava/lang/String;)Landroid/net/Uri;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    move-object v1, v3

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    sget-object v5, Lru/zdevs/zarchiver/io/SAF;->b:[Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v5}, Lru/zdevs/zarchiver/io/SAF;->s(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :goto_1
    if-nez v1, :cond_4

    .line 65
    .line 66
    invoke-static {v1}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 67
    .line 68
    .line 69
    return-object v3

    .line 70
    :cond_4
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    :cond_5
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_7

    .line 80
    .line 81
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    const-string v7, "vnd.android.document/directory"

    .line 86
    .line 87
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_6

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-static {v6}, Lb/d;->E(Ljava/lang/String;)B

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    const/16 v8, 0x9

    .line 103
    .line 104
    if-ne v7, v8, :cond_5

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    new-instance v6, Lg1/e;

    .line 111
    .line 112
    invoke-direct {v6, v4}, Lg1/e;-><init>(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    :goto_3
    if-ge v2, v4, :cond_9

    .line 123
    .line 124
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-eqz v6, :cond_8

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_9
    const/4 v2, -0x1

    .line 139
    :goto_4
    if-ltz v2, :cond_a

    .line 140
    .line 141
    new-instance v0, Ll0/d;

    .line 142
    .line 143
    iget-object p0, p0, Lg0/h;->c:Ljava/lang/String;

    .line 144
    .line 145
    invoke-direct {v0, v5, p0, v2}, Ll0/d;-><init>(Ljava/util/ArrayList;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    move-object v3, v1

    .line 154
    goto :goto_5

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    :goto_5
    invoke-static {v3}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :catch_0
    move-object v1, v3

    .line 161
    :catch_1
    :cond_a
    invoke-static {v1}, Lm0/d;->b(Landroid/database/Cursor;)V

    .line 162
    .line 163
    .line 164
    :cond_b
    return-object v3
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ll0/d;->e:I

    return v0
.end method

.method public final b(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p1, p0, Ll0/d;->a:Landroid/net/Uri;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object p2, p0, Ll0/d;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p2, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->c(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(I)Lg/a;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ll0/d;->a:Landroid/net/Uri;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    new-instance p1, Lg/a;

    .line 7
    .line 8
    invoke-direct {p1, v1, v0, v0}, Lg/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 9
    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v1, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    :try_start_0
    iget-object v2, p0, Ll0/d;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-static {v1, p1}, Lru/zdevs/zarchiver/io/SAF;->k(ILjava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    new-instance v1, Lg/a;

    .line 36
    .line 37
    invoke-direct {v1, p1, v0, v0}, Lg/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 42
    .line 43
    const-string v0, "Uri must not be null"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    const-string p1, "Failed to get Uri for document"

    .line 57
    .line 58
    :cond_2
    new-instance v0, Lg/a;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Lg/a;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    new-instance p1, Lg/a;

    .line 65
    .line 66
    const-string v0, "Error"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Lg/a;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-object p1
.end method

.method public final e()Lg0/h;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Ll0/d;->a:Landroid/net/Uri;

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    const-string v2, "file"

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    new-instance v0, Lg0/h;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-object v0

    .line 32
    :cond_1
    iget-object v1, p0, Ll0/d;->d:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    new-instance v0, Lg0/h;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/d;->a:Landroid/net/Uri;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final getName(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/d;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_1
    const-string p1, ""

    .line 18
    .line 19
    return-object p1
.end method

.method public final remove(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/d;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method
