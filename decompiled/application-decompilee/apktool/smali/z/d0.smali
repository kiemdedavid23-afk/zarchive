.class public final Lz/d0;
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
    iput p2, p0, Lz/d0;->e:I

    .line 5
    .line 6
    iput-object p1, p0, Lz/d0;->f:Lg0/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lz/d0;->f:Lg0/h;

    .line 2
    .line 3
    invoke-static {v0}, Lg0/e;->d(Lg0/h;)Lg0/e$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lz/m;

    .line 10
    .line 11
    iget v2, p0, Lz/d0;->e:I

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lz/m;-><init>(ILg0/e$a;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lz/d0;->e:I

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
