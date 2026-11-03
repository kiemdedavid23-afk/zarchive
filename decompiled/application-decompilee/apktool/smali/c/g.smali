.class public Lc/g;
.super Lc/c;
.source "SourceFile"


# instance fields
.field public final M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c;-><init>()V

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
    iput-object v0, p0, Lc/g;->M:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/g;->M:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lc/c;->g()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final h(Lb/c;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lc/c;->h(Lb/c;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc/g;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lc/c;

    .line 18
    .line 19
    invoke-virtual {v3, p1}, Lc/c;->h(Lb/c;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final m(II)V
    .locals 5

    .line 1
    iput p1, p0, Lc/c;->x:I

    .line 2
    .line 3
    iput p2, p0, Lc/c;->y:I

    .line 4
    .line 5
    iget-object p1, p0, Lc/g;->M:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lc/c;

    .line 19
    .line 20
    iget v2, p0, Lc/c;->r:I

    .line 21
    .line 22
    iget v3, p0, Lc/c;->x:I

    .line 23
    .line 24
    add-int/2addr v2, v3

    .line 25
    iget v3, p0, Lc/c;->s:I

    .line 26
    .line 27
    iget v4, p0, Lc/c;->y:I

    .line 28
    .line 29
    add-int/2addr v3, v4

    .line 30
    invoke-virtual {v1, v2, v3}, Lc/c;->m(II)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 7

    .line 1
    invoke-super {p0}, Lc/c;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc/g;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lc/c;

    .line 21
    .line 22
    iget v4, p0, Lc/c;->t:I

    .line 23
    .line 24
    iget v5, p0, Lc/c;->x:I

    .line 25
    .line 26
    add-int/2addr v4, v5

    .line 27
    iget v5, p0, Lc/c;->u:I

    .line 28
    .line 29
    iget v6, p0, Lc/c;->y:I

    .line 30
    .line 31
    add-int/2addr v5, v6

    .line 32
    invoke-virtual {v3, v4, v5}, Lc/c;->m(II)V

    .line 33
    .line 34
    .line 35
    instance-of v4, v3, Lc/d;

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Lc/c;->q()V

    .line 40
    .line 41
    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public s()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/g;->q()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lc/g;->M:Ljava/util/ArrayList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lc/c;

    .line 21
    .line 22
    instance-of v4, v3, Lc/g;

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    check-cast v3, Lc/g;

    .line 27
    .line 28
    invoke-virtual {v3}, Lc/g;->s()V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method
