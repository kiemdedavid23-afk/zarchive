.class public final Lk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/c;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp/g;[Lo/b;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk/d;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lk/d;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lk/d;->c:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [Lo/b;

    .line 5
    .line 6
    aget-object v1, v1, p1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, [Lo/b;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    invoke-virtual {p1}, Lo/b;->b()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    return p2
.end method

.method public final b(FI)F
    .locals 2

    .line 1
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [Lo/b;

    .line 5
    .line 6
    aget-object v1, v1, p2

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, [Lo/b;

    .line 11
    .line 12
    aget-object p1, v0, p2

    .line 13
    .line 14
    invoke-virtual {p1}, Lo/b;->a()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_0
    return p1
.end method

.method public final c(FI)F
    .locals 2

    .line 1
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [Lo/b;

    .line 5
    .line 6
    aget-object v1, v1, p2

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, [Lo/b;

    .line 11
    .line 12
    aget-object p1, v0, p2

    .line 13
    .line 14
    invoke-virtual {p1}, Lo/b;->a()F

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :cond_0
    return p1
.end method

.method public final d(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [Lo/b;

    .line 5
    .line 6
    aget-object v1, v1, p1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, [Lo/b;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    invoke-virtual {p1}, Lo/b;->b()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_0
    return p2
.end method

.method public final e(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lk/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [Lo/b;

    .line 5
    .line 6
    aget-object v1, v1, p1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, [Lo/b;

    .line 11
    .line 12
    aget-object p1, v0, p1

    .line 13
    .line 14
    iget-object v0, p0, Lk/d;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lp/g;

    .line 17
    .line 18
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lo/b;->c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lk/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "XmlCData{data=\'"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lk/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, "\', typedData="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lk/d;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lo/b;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/16 v1, 0x7d

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
