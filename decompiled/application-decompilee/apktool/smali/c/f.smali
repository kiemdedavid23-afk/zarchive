.class public final Lc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/g;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc/f;->e:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget v0, p1, Lc/c;->r:I

    .line 12
    .line 13
    iput v0, p0, Lc/f;->a:I

    .line 14
    .line 15
    iget v0, p1, Lc/c;->s:I

    .line 16
    .line 17
    iput v0, p0, Lc/f;->b:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lc/c;->e()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lc/f;->c:I

    .line 24
    .line 25
    invoke-virtual {p1}, Lc/c;->d()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lc/f;->d:I

    .line 30
    .line 31
    iget-object p1, p1, Lc/c;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    if-ge v1, v0, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lc/b;

    .line 45
    .line 46
    iget-object v3, p0, Lc/f;->e:Ljava/util/ArrayList;

    .line 47
    .line 48
    new-instance v4, Lc/f$a;

    .line 49
    .line 50
    invoke-direct {v4, v2}, Lc/f$a;-><init>(Lc/b;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
