.class public final Lc/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lc/b;

.field public b:Lc/b;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lc/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc/f$a;->a:Lc/b;

    .line 5
    .line 6
    iget-object v0, p1, Lc/b;->c:Lc/b;

    .line 7
    .line 8
    iput-object v0, p0, Lc/f$a;->b:Lc/b;

    .line 9
    .line 10
    invoke-virtual {p1}, Lc/b;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lc/f$a;->c:I

    .line 15
    .line 16
    iget v0, p1, Lc/b;->f:I

    .line 17
    .line 18
    iput v0, p0, Lc/f$a;->d:I

    .line 19
    .line 20
    iget p1, p1, Lc/b;->h:I

    .line 21
    .line 22
    iput p1, p0, Lc/f$a;->e:I

    .line 23
    .line 24
    return-void
.end method
