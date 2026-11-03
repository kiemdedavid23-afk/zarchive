.class public abstract Lw/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[S

.field public final b:[B

.field public final c:F

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>([S[BFLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [S

    .line 9
    .line 10
    iput-object p1, p0, Lw/k;->a:[S

    .line 11
    .line 12
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    iput-object p1, p0, Lw/k;->b:[B

    .line 19
    .line 20
    iput p3, p0, Lw/k;->c:F

    .line 21
    .line 22
    iput-object p4, p0, Lw/k;->d:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method
