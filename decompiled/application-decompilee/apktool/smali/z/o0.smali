.class public final Lz/o0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:Lg0/h;

.field public final f:Lru/zdevs/zarchiver/c;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/c;Lg0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz/o0;->f:Lru/zdevs/zarchiver/c;

    .line 5
    .line 6
    iput-object p2, p0, Lz/o0;->e:Lg0/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lz/o0;->e:Lg0/h;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lz/o0;->f:Lru/zdevs/zarchiver/c;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lp0/a;->l(Lru/zdevs/zarchiver/c;Lg0/h;)I

    .line 6
    .line 7
    .line 8
    move-result v1
    :try_end_0
    .catch Lp0/a$a; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const/4 v2, 0x0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    new-instance v3, Lz/a0;

    .line 18
    .line 19
    invoke-direct {v3, v1, v2, v0}, Lz/a0;-><init>(ILjava/lang/String;Lg0/h;)V

    .line 20
    .line 21
    .line 22
    return-object v3
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x6e

    return v0
.end method
