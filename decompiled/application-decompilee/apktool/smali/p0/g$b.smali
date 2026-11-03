.class public final Lp0/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lp0/g$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lc0/d;

.field public final b:Lg0/h;

.field public final c:I

.field public final d:I

.field public e:Lc0/g;


# direct methods
.method public constructor <init>(Lc0/d;Lg0/h;ILc0/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp0/g$b;->a:Lc0/d;

    .line 5
    .line 6
    iput-object p2, p0, Lp0/g$b;->b:Lg0/h;

    .line 7
    .line 8
    iput p3, p0, Lp0/g$b;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lp0/g$b;->e:Lc0/g;

    .line 11
    .line 12
    iput p5, p0, Lp0/g$b;->d:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lp0/g$b;

    .line 2
    .line 3
    iget-object v0, p0, Lp0/g$b;->a:Lc0/d;

    .line 4
    .line 5
    iget-object v0, v0, Lc0/d;->b:Ljava/lang/String;

    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    iget-object p1, p1, Lp0/g$b;->a:Lc0/d;

    .line 19
    .line 20
    iget-object p1, p1, Lc0/d;->b:Ljava/lang/String;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    if-ge v0, v1, :cond_3

    .line 34
    .line 35
    const/4 p1, -0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const/4 p1, 0x1

    .line 38
    :goto_2
    return p1
.end method
