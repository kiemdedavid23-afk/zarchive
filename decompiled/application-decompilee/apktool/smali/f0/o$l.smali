.class public final Lf0/o$l;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public final e:Lg0/h;

.field public final f:J

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lg0/h;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lf0/o$l;->e:Lg0/h;

    .line 5
    .line 6
    iput-wide p3, p0, Lf0/o$l;->f:J

    .line 7
    .line 8
    iput p5, p0, Lf0/o$l;->g:I

    .line 9
    .line 10
    const/16 p2, 0xe

    .line 11
    .line 12
    if-ne p5, p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 p2, 0x9

    .line 17
    .line 18
    if-ne p5, p2, :cond_1

    .line 19
    .line 20
    const/4 p2, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p2, 0x4

    .line 23
    :goto_0
    invoke-static {p1, p2}, Lf0/o;->r(Landroid/app/Dialog;I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 7

    .line 1
    iget-object v0, p0, Lf0/o$l;->e:Lg0/h;

    .line 2
    .line 3
    iget-wide v1, p0, Lf0/o$l;->f:J

    .line 4
    .line 5
    iget v3, p0, Lf0/o$l;->g:I

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-static/range {v0 .. v6}, Lp0/e;->f(Lg0/h;JIII[B)Lp0/e$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v1, Lf0/o$c;

    .line 19
    .line 20
    iget-object v2, v0, Lp0/e$a;->b:[I

    .line 21
    .line 22
    iget-object v0, v0, Lp0/e$a;->c:[Ljava/lang/String;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v1, v3, v0, v2}, Lf0/o$c;-><init>(I[Ljava/lang/String;[I)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method
