.class public abstract Lr0/g;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lr0/a;


# instance fields
.field public final a:Lru/zdevs/zarchiver/service/ZArchiverService;

.field public b:B

.field public final c:I

.field public d:I

.field public e:I

.field public f:Ln0/a;

.field public g:J

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld0/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/service/ZArchiverService;BI)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v3, "za_task"

    .line 6
    .line 7
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-wide/32 v4, 0x200000

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 25
    .line 26
    iput-byte p2, p0, Lr0/g;->b:B

    .line 27
    .line 28
    iput p3, p0, Lr0/g;->c:I

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lr0/g;->d:I

    .line 32
    .line 33
    iput p1, p0, Lr0/g;->e:I

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lr0/g;->f:Ln0/a;

    .line 37
    .line 38
    sget-object v0, Lb/d;->e:[B

    .line 39
    .line 40
    aput-byte p2, v0, p3

    .line 41
    .line 42
    sget-object p2, Lb/d;->d:[I

    .line 43
    .line 44
    aput p1, p2, p3

    .line 45
    .line 46
    invoke-static {p3}, Lru/zdevs/zarchiver/archiver/C2JBridge;->d(I)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final b(IILjava/lang/String;Lg0/h;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 4
    .line 5
    iget-byte v2, p0, Lr0/g;->b:B

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p4}, Lru/zdevs/zarchiver/service/a;->c(Lg0/h;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, p1, v2, p2, v3}, Lru/zdevs/zarchiver/service/a;->b(IIILjava/lang/String;)Lru/zdevs/zarchiver/service/a$a;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p2, :cond_4

    .line 20
    .line 21
    sget-object v2, Lb/d;->e:[B

    .line 22
    .line 23
    iget v3, p2, Lru/zdevs/zarchiver/service/a$a;->c:I

    .line 24
    .line 25
    aget-byte v2, v2, v3

    .line 26
    .line 27
    and-int/lit8 v2, v2, 0x7f

    .line 28
    .line 29
    packed-switch v2, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    :pswitch_0
    const-string v2, "-"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    const v2, 0x7f0c00af

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_0

    .line 43
    :pswitch_2
    const v2, 0x7f0c00b7

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :pswitch_3
    const v2, 0x7f0c00a4

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    const v2, 0x7f0c00bf

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_0

    .line 67
    :pswitch_5
    const v2, 0x7f0c009a

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    goto :goto_0

    .line 75
    :pswitch_6
    const v2, 0x7f0c00a5

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_0

    .line 83
    :pswitch_7
    const v2, 0x7f0c00a3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    goto :goto_0

    .line 91
    :pswitch_8
    const v2, 0x7f0c00a2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_0

    .line 99
    :pswitch_9
    const v2, 0x7f0c00a7

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_0
    const/4 v3, 0x0

    .line 107
    const/4 v4, 0x2

    .line 108
    iget v5, p2, Lru/zdevs/zarchiver/service/a$a;->b:I

    .line 109
    .line 110
    if-eq v5, v4, :cond_0

    .line 111
    .line 112
    if-ne v5, v1, :cond_1

    .line 113
    .line 114
    :cond_0
    if-eq p1, v4, :cond_2

    .line 115
    .line 116
    if-ne p1, v1, :cond_1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v2, p1, v3

    .line 122
    .line 123
    iget-object p2, p2, Lru/zdevs/zarchiver/service/a$a;->a:Ljava/lang/String;

    .line 124
    .line 125
    aput-object p2, p1, v1

    .line 126
    .line 127
    const p2, 0x7f0c00db

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    aput-object v2, p1, v3

    .line 138
    .line 139
    const p2, 0x7f0c00da

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    :goto_2
    if-nez p3, :cond_3

    .line 147
    .line 148
    iget-object p2, p4, Lg0/h;->c:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {p2}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    :cond_3
    invoke-virtual {p0, p3, p1}, Lr0/g;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return v3

    .line 158
    :cond_4
    return v1

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public final d(Lg0/h;Z)Z
    .locals 2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0, p1}, Lr0/g;->e(IILjava/lang/String;Lg0/h;)Z

    move-result p1

    return p1
.end method

.method public final e(IILjava/lang/String;Lg0/h;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 2
    .line 3
    iget-object v0, v0, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 4
    .line 5
    iget v1, p0, Lr0/g;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, p4, p1, v1, p2}, Lru/zdevs/zarchiver/service/a;->a(Lg0/h;III)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lr0/g;->b(IILjava/lang/String;Lg0/h;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final f(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 7

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ge v0, v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lg0/h;

    .line 26
    .line 27
    invoke-virtual {p0, p3, v3, p1, v0}, Lr0/g;->e(IILjava/lang/String;Lg0/h;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lg0/h;

    .line 39
    .line 40
    invoke-virtual {v0}, Lg0/h;->f()Lg0/h;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iget-object v4, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 55
    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lg0/h;

    .line 63
    .line 64
    iget-object v4, v4, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lru/zdevs/zarchiver/service/a;->c(Lg0/h;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/4 v6, -0x1

    .line 74
    invoke-virtual {v4, p3, v6, v3, v5}, Lru/zdevs/zarchiver/service/a;->b(IIILjava/lang/String;)Lru/zdevs/zarchiver/service/a$a;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    move v4, v2

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v4, v3

    .line 83
    :goto_0
    if-eqz v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {p0, p3, v3, p1, v1}, Lr0/g;->b(IILjava/lang/String;Lg0/h;)Z

    .line 86
    .line 87
    .line 88
    return v3

    .line 89
    :cond_4
    iget-object p1, v4, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 90
    .line 91
    iget p2, p0, Lr0/g;->c:I

    .line 92
    .line 93
    invoke-virtual {p1, v0, p3, p2, v3}, Lru/zdevs/zarchiver/service/a;->a(Lg0/h;III)Z

    .line 94
    .line 95
    .line 96
    :cond_5
    return v2
.end method

.method public final g(Lg0/h;Ljava/util/List;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/h;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    .line 27
    new-instance v1, Lg0/h;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p3, p4, v0, v1}, Lr0/g;->e(IILjava/lang/String;Lg0/h;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return v2

    .line 39
    :cond_1
    return v3

    .line 40
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 49
    .line 50
    if-eqz v0, :cond_5

    .line 51
    .line 52
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    new-instance v4, Lg0/h;

    .line 59
    .line 60
    invoke-direct {v4, v0, p1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    invoke-static {v4}, Lru/zdevs/zarchiver/service/a;->c(Lg0/h;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v5, -0x1

    .line 73
    invoke-virtual {v0, p3, v5, v2, v1}, Lru/zdevs/zarchiver/service/a;->b(IIILjava/lang/String;)Lru/zdevs/zarchiver/service/a$a;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    move v0, v3

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    move v0, v2

    .line 82
    :goto_0
    if-eqz v0, :cond_3

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    invoke-virtual {p0, p3, p4, p1, v4}, Lr0/g;->b(IILjava/lang/String;Lg0/h;)Z

    .line 86
    .line 87
    .line 88
    return v2

    .line 89
    :cond_5
    iget-object p2, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 90
    .line 91
    iget v0, p0, Lr0/g;->c:I

    .line 92
    .line 93
    invoke-virtual {p2, p1, p3, v0, p4}, Lru/zdevs/zarchiver/service/a;->a(Lg0/h;III)Z

    .line 94
    .line 95
    .line 96
    return v3
.end method

.method public final h()Z
    .locals 5

    .line 1
    sget-boolean v0, Lru/zdevs/zarchiver/archiver/C2JBridge;->c:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lru/zdevs/zarchiver/archiver/C2JBridge;->e()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const v0, 0x7f0c0044

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v3, p0, Lr0/g;->c:I

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static {v3, v4, v0}, Ld0/a;->d(IILjava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Ld0/a;->a(I)Ld0/a$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v2, p0, v4, v0, v1}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    return v4

    .line 45
    :cond_1
    :goto_0
    sget v0, Lru/zdevs/zarchiver/service/ZArchiverService;->g:I

    .line 46
    .line 47
    invoke-static {v1, v0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    invoke-static {v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->i(I)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-static {v2, v0}, Lru/zdevs/zarchiver/archiver/C2JBridge;->cSetOption(II)V

    .line 57
    .line 58
    .line 59
    return v1
.end method

.method public final i(Lg0/f;Lg0/f;)I
    .locals 10

    .line 1
    :try_start_0
    iget v0, p0, Lr0/g;->c:I

    .line 2
    .line 3
    invoke-virtual {p2}, Lg0/f;->i()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lg0/f;->o()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual {p2}, Lg0/f;->n()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const-wide/16 v6, 0x3e8

    .line 16
    .line 17
    div-long/2addr v4, v6

    .line 18
    long-to-int v4, v4

    .line 19
    invoke-virtual {p1}, Lg0/f;->i()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p1}, Lg0/f;->o()J

    .line 24
    .line 25
    .line 26
    move-result-wide v8

    .line 27
    invoke-virtual {p1}, Lg0/f;->n()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    div-long/2addr p1, v6

    .line 32
    long-to-int p1, p1

    .line 33
    move-wide v6, v8

    .line 34
    move v8, p1

    .line 35
    invoke-static/range {v0 .. v8}, Lru/zdevs/zarchiver/archiver/C2JBridge;->jAskOverwrite(ILjava/lang/String;JILjava/lang/String;JI)I

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return p1

    .line 40
    :catch_0
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public final isCancelled()Z
    .locals 2

    sget-object v0, Lb/d;->d:[I

    iget v1, p0, Lr0/g;->c:I

    aget v0, v0, v1

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lb/d;->K(II)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized j()Ln0/a;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lr0/g;->f:Ln0/a;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lru/zdevs/zarchiver/service/ZArchiverService;->f:I

    .line 7
    .line 8
    shr-int/lit8 v0, v0, 0x18

    .line 9
    .line 10
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lr0/g;->f:Ln0/a;

    .line 15
    .line 16
    iget v1, p0, Lr0/g;->c:I

    .line 17
    .line 18
    iput v1, v0, Ln0/a;->a:I

    .line 19
    .line 20
    const-string v1, "$C"

    .line 21
    .line 22
    iput-object v1, v0, Ln0/a;->b:Ljava/lang/String;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lr0/g;->f:Ln0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit p0

    .line 30
    throw v0
.end method

.method public final k(I)Z
    .locals 1

    iget v0, p0, Lr0/g;->d:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lr0/g;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :goto_0
    new-instance v0, Ld0/a$b;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ld0/a$b;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1, p2}, Ld0/a$b;->a(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget v0, p0, Lr0/g;->c:I

    .line 2
    .line 3
    invoke-static {v0}, Ld0/a;->a(I)Ld0/a$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x64

    .line 27
    .line 28
    if-le v1, v2, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    iget-object v1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lr0/g;->f:Ln0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, v0, Ln0/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v3, 0x64

    .line 27
    .line 28
    if-le v1, v3, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    new-instance v1, Ld0/a$b;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Ld0/a$b;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0xa

    .line 37
    .line 38
    invoke-static {v0, p1}, Lu0/h;->h(Ljava/lang/String;C)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    array-length v0, p1

    .line 43
    const/4 v3, 0x0

    .line 44
    move v4, v3

    .line 45
    :goto_1
    if-ge v4, v0, :cond_3

    .line 46
    .line 47
    aget-object v5, p1, v4

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, v3, v5}, Ld0/a$b;->a(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget-object p1, v1, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    xor-int/2addr p1, v2

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-object p1, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method public abstract p()V
.end method

.method public final q(I)V
    .locals 2

    iget-object v0, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    iget v1, p0, Lr0/g;->c:I

    invoke-static {v0, v1, p1}, Lb/d;->h0(Lru/zdevs/zarchiver/service/ZArchiverService;II)V

    return-void
.end method

.method public final r(B)V
    .locals 2

    .line 1
    iput-byte p1, p0, Lr0/g;->b:B

    .line 2
    .line 3
    sget-object v0, Lb/d;->e:[B

    .line 4
    .line 5
    iget v1, p0, Lr0/g;->c:I

    .line 6
    .line 7
    aput-byte p1, v0, v1

    .line 8
    .line 9
    return-void
.end method

.method public final run()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lr0/g;->q(I)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 6
    .line 7
    const-string v2, "power"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/os/PowerManager;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    iget-object v4, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 20
    .line 21
    const-string v5, "android.permission.WAKE_LOCK"

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    move v4, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v4, v0

    .line 32
    :goto_0
    if-eqz v4, :cond_3

    .line 33
    .line 34
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-static {v4}, Lu0/h;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string v5, "huawei"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    move v4, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v4, v0

    .line 53
    :goto_1
    if-eqz v4, :cond_2

    .line 54
    .line 55
    const-string v4, "android.media.MediaPlayer"

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v5, "ZArchiverTask["

    .line 61
    .line 62
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-byte v5, p0, Lr0/g;->b:B

    .line 66
    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v5, "]"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :goto_2
    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    move-object v1, v2

    .line 85
    :goto_3
    if-eqz v1, :cond_4

    .line 86
    .line 87
    const-wide/32 v4, 0x112a880

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 91
    .line 92
    .line 93
    :cond_4
    sget-object v4, Lb/d;->f:[Ljava/lang/String;

    .line 94
    .line 95
    iget v5, p0, Lr0/g;->c:I

    .line 96
    .line 97
    aget-object v4, v4, v5

    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lr0/g;->q(I)V

    .line 100
    .line 101
    .line 102
    iget-object v4, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 103
    .line 104
    iget v5, p0, Lr0/g;->c:I

    .line 105
    .line 106
    const/4 v6, 0x3

    .line 107
    invoke-virtual {v4, v5, v6}, Lru/zdevs/zarchiver/service/ZArchiverService;->n(II)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    iput-wide v4, p0, Lr0/g;->g:J

    .line 115
    .line 116
    invoke-virtual {p0, v3}, Lr0/g;->k(I)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    const/high16 v4, 0x110000

    .line 121
    .line 122
    if-eqz v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {p0}, Lr0/g;->j()Ln0/a;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ln0/a;->f()Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    iget-object v2, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 135
    .line 136
    iget v3, p0, Lr0/g;->c:I

    .line 137
    .line 138
    const-string v5, "Can\'t get root access"

    .line 139
    .line 140
    invoke-virtual {v2, v3, v0, v5}, Lru/zdevs/zarchiver/service/ZArchiverService;->e(IILjava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v4}, Lr0/g;->q(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    invoke-virtual {p0}, Lr0/g;->p()V

    .line 148
    .line 149
    .line 150
    sget-object v3, Lb/d;->d:[I

    .line 151
    .line 152
    iget v5, p0, Lr0/g;->c:I

    .line 153
    .line 154
    aget v3, v3, v5

    .line 155
    .line 156
    const/high16 v5, 0x200000

    .line 157
    .line 158
    invoke-static {v3, v5}, Lb/d;->K(II)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_6

    .line 163
    .line 164
    const/high16 v3, 0x210000

    .line 165
    .line 166
    invoke-virtual {p0, v3}, Lr0/g;->q(I)V

    .line 167
    .line 168
    .line 169
    :cond_6
    iget v3, p0, Lr0/g;->c:I

    .line 170
    .line 171
    invoke-static {v3}, Lb/d;->J(I)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    iget-object v3, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 178
    .line 179
    iget-object v5, p0, Lr0/g;->h:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v3, p0, v0, v5, v2}, Lru/zdevs/zarchiver/service/ZArchiverService;->l(Lr0/g;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v4}, Lr0/g;->q(I)V

    .line 185
    .line 186
    .line 187
    :cond_7
    :goto_4
    iget-object v2, p0, Lr0/g;->f:Ln0/a;

    .line 188
    .line 189
    if-eqz v2, :cond_8

    .line 190
    .line 191
    invoke-virtual {v2}, Ln0/a;->close()V

    .line 192
    .line 193
    .line 194
    :cond_8
    if-eqz v1, :cond_9

    .line 195
    .line 196
    :try_start_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    :catch_0
    :cond_9
    iget-object v1, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 200
    .line 201
    iget-object v1, v1, Lru/zdevs/zarchiver/service/ZArchiverService;->c:Lru/zdevs/zarchiver/service/a;

    .line 202
    .line 203
    iget v2, p0, Lr0/g;->c:I

    .line 204
    .line 205
    monitor-enter v1

    .line 206
    :try_start_1
    iget-object v3, v1, Lru/zdevs/zarchiver/service/a;->a:Ljava/util/LinkedList;

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_b

    .line 217
    .line 218
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    check-cast v4, Lru/zdevs/zarchiver/service/a$a;

    .line 223
    .line 224
    iget v4, v4, Lru/zdevs/zarchiver/service/a$a;->c:I

    .line 225
    .line 226
    if-ne v4, v2, :cond_a

    .line 227
    .line 228
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_b
    monitor-exit v1

    .line 233
    iget v1, p0, Lr0/g;->c:I

    .line 234
    .line 235
    invoke-static {v1}, Lru/zdevs/zarchiver/archiver/C2JBridge;->d(I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 239
    .line 240
    iget v2, p0, Lr0/g;->c:I

    .line 241
    .line 242
    invoke-virtual {v1, v2, v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->g(II)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Lr0/g;->a:Lru/zdevs/zarchiver/service/ZArchiverService;

    .line 246
    .line 247
    invoke-virtual {v0}, Lru/zdevs/zarchiver/service/ZArchiverService;->r()V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    monitor-exit v1

    .line 253
    throw v0
.end method
