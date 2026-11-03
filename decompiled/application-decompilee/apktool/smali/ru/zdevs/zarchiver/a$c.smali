.class public final Lru/zdevs/zarchiver/a$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lru/zdevs/zarchiver/ZArchiver;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Intent;

.field public final c:Z


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;Landroid/content/Intent;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

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
    iput-object v0, p0, Lru/zdevs/zarchiver/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lru/zdevs/zarchiver/a$c;->b:Landroid/content/Intent;

    .line 12
    .line 13
    iput-boolean p3, p0, Lru/zdevs/zarchiver/a$c;->c:Z

    .line 14
    .line 15
    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lu0/f;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lw0/f;->c(Ljava/lang/String;)B

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move-object v0, v1

    .line 34
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 35
    .line 36
    invoke-static {p0}, Lru/zdevs/zarchiver/io/ZAIO;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget-object p1, p0, Lru/zdevs/zarchiver/a$c;->b:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.action.SEND"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "android.intent.extra.STREAM"

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    instance-of v1, p1, Landroid/net/Uri;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    check-cast p1, Landroid/net/Uri;

    .line 33
    .line 34
    invoke-static {p1}, Lru/zdevs/zarchiver/a$c;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-lez v1, :cond_3

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    instance-of v1, v1, Landroid/net/Uri;

    .line 79
    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_3

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/os/Parcelable;

    .line 97
    .line 98
    check-cast v1, Landroid/net/Uri;

    .line 99
    .line 100
    invoke-static {v1}, Lru/zdevs/zarchiver/a$c;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    .line 111
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-lez p1, :cond_5

    .line 118
    .line 119
    iget-object p1, p0, Lru/zdevs/zarchiver/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lru/zdevs/zarchiver/ZArchiver;

    .line 126
    .line 127
    if-nez p1, :cond_4

    .line 128
    .line 129
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    :try_start_0
    iget-object p1, p1, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 133
    .line 134
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 135
    .line 136
    new-instance v1, Lz/a;

    .line 137
    .line 138
    invoke-direct {v1, v0}, Lz/a;-><init>(Ljava/util/ArrayList;)V

    .line 139
    .line 140
    .line 141
    iput-object v1, p1, Lru/zdevs/zarchiver/a;->d:Lz/a;

    .line 142
    .line 143
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :catch_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 150
    .line 151
    :goto_2
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    iget-object v0, p0, Lru/zdevs/zarchiver/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lru/zdevs/zarchiver/ZArchiver;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 15
    .line 16
    const/16 v2, 0x12

    .line 17
    .line 18
    const/4 v3, -0x1

    .line 19
    const/4 v4, 0x1

    .line 20
    invoke-virtual {v1, v3, v4, v2}, Lru/zdevs/zarchiver/d;->b(III)Lf0/i;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Lf0/i;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 36
    .line 37
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 38
    .line 39
    iget-object p1, p1, Lru/zdevs/zarchiver/a;->d:Lz/a;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p1}, Lz/a;->g()Lg0/h;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lg0/h;->j()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Lg0/h;->i()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 60
    .line 61
    invoke-virtual {v1}, Lru/zdevs/zarchiver/d;->c()Lru/zdevs/zarchiver/b;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, p1, v2, v2}, Lru/zdevs/zarchiver/b;->l(Lg0/h;BI)V

    .line 67
    .line 68
    .line 69
    iget v1, v1, Lru/zdevs/zarchiver/b;->b:I

    .line 70
    .line 71
    const/16 v2, 0x80

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, p1}, Lru/zdevs/zarchiver/ZArchiver;->L(IILg0/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .line 75
    .line 76
    :catch_1
    :cond_2
    iget-object p1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 77
    .line 78
    iget-object p1, p1, Lru/zdevs/zarchiver/d;->c:Lru/zdevs/zarchiver/a;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    const/16 v2, 0x8

    .line 82
    .line 83
    invoke-virtual {p1, v0, v1, v2}, Lru/zdevs/zarchiver/a;->n(Lru/zdevs/zarchiver/ZArchiver;Lf0/v;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    const p1, 0x7f0c0046

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V

    .line 91
    .line 92
    .line 93
    iget-boolean p1, p0, Lru/zdevs/zarchiver/a$c;->c:Z

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0}, Lru/zdevs/zarchiver/ZArchiver;->finish()V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_0
    return-void
.end method

.method public final onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lru/zdevs/zarchiver/ZArchiver;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lf0/y;

    .line 13
    .line 14
    const v2, 0x7f0c0109

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    iget-object v4, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 19
    .line 20
    invoke-direct {v1, v4, v0, v2, v3}, Lf0/y;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;II)V

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x12

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lf0/i;->p(I)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lru/zdevs/zarchiver/a$c$a;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/a$c$a;-><init>(Lru/zdevs/zarchiver/a$c;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, v1, Lf0/i;->a:Lf0/i$b;

    .line 34
    .line 35
    invoke-virtual {v1}, Lf0/y;->r()V

    .line 36
    .line 37
    .line 38
    return-void
.end method
