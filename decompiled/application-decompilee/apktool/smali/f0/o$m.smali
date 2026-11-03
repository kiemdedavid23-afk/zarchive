.class public final Lf0/o$m;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field public final e:Lg0/h;

.field public final f:Z


# direct methods
.method public constructor <init>(Lg0/h;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/o$m;->e:Lg0/h;

    .line 5
    .line 6
    iput-boolean p2, p0, Lf0/o$m;->f:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 4

    .line 1
    new-instance v0, Lf0/o$e;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lf0/o$e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-boolean v1, p0, Lf0/o$m;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    const-string v2, ".nomedia"

    .line 10
    .line 11
    iget-object v3, p0, Lf0/o$m;->e:Lg0/h;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    invoke-static {v3}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, v2}, Lg0/f;->b(Ljava/lang/String;)Lg0/h;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    iput v1, v0, Lf0/o$e;->b:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lg0/h;

    .line 30
    .line 31
    invoke-direct {v1, v2, v3}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Lg0/f;->u(Lg0/h;)Lg0/f;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lg0/f;->c()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    const/4 v1, -0x1

    .line 45
    iput v1, v0, Lf0/o$e;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
