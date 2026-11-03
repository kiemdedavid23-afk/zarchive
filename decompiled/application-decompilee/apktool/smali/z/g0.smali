.class public final Lz/g0;
.super Lv0/c;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:Lg0/h;


# direct methods
.method public constructor <init>(Lg0/h;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lz/g0;->e:I

    .line 5
    .line 6
    iput-object p1, p0, Lz/g0;->f:Lg0/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/g0;->f:Lg0/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lg0/h;->l()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lg0/e;->a:[Lg0/b;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    aget-object v0, v0, v1

    .line 15
    .line 16
    instance-of v1, v0, Li0/c;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Li0/c;

    .line 21
    .line 22
    iget-object v0, v0, Li0/c;->b:Ln0/a;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v1, v0, Ln0/a;->b:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ln0/a;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-super {p0}, Lv0/c;->e()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final f()Lv0/a$b;
    .locals 5

    .line 1
    iget-object v0, p0, Lz/g0;->f:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lg0/e;->e(Lg0/h;Lu0/d;)Lg0/e$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lz/g0;->e:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v2, Lz/o;

    .line 12
    .line 13
    iget-wide v3, v0, Lg0/e$b;->c:J

    .line 14
    .line 15
    invoke-direct {v2, v1, v3, v4}, Lz/o;-><init>(IJ)V

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    new-instance v0, Lz/o;

    .line 20
    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lz/o;-><init>(IJ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lz/g0;->e:I

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
