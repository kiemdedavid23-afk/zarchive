.class public final Le0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public final d:I

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le0/b;",
            ">;"
        }
    .end annotation
.end field

.field public f:Le0/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le0/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Le0/b;->b:J

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Le0/b;->c:I

    .line 12
    .line 13
    iput p2, p0, Le0/b;->d:I

    .line 14
    .line 15
    invoke-virtual {p0}, Le0/b;->b()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Le0/b;->e:Ljava/util/ArrayList;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput-object p2, p0, Le0/b;->e:Ljava/util/ArrayList;

    .line 31
    .line 32
    :goto_0
    iput-object p2, p0, Le0/b;->f:Le0/b;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le0/b;
    .locals 4

    .line 1
    iget-object v0, p0, Le0/b;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Le0/b;

    .line 22
    .line 23
    iget-object v3, v2, Le0/b;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_2
    return-object v1
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Le0/b;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
