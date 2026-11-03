.class public final Lp/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:S

.field public b:Le/b;

.field public c:Le/b;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lp/b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lp/f;->d:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lp/f;->e:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget p1, p1, Lp/b;->d:I

    .line 22
    .line 23
    int-to-long v0, p1

    .line 24
    const-wide v2, 0xffffffffL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    and-long/2addr v0, v2

    .line 30
    long-to-int p1, v0

    .line 31
    int-to-short p1, p1

    .line 32
    iput-short p1, p0, Lp/f;->a:S

    .line 33
    .line 34
    return-void
.end method
