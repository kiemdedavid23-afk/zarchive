.class public final Lf0/o$k;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
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
    iput-boolean p2, p0, Lf0/o$k;->f:Z

    .line 5
    .line 6
    iput-object p1, p0, Lf0/o$k;->e:Lg0/h;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf0/o$k;->f:Z

    .line 2
    .line 3
    iget-object v1, p0, Lf0/o$k;->e:Lg0/h;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v1, Lg0/h;->c:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Ls0/b;->i(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget v0, Ls0/b;->m:I

    .line 16
    .line 17
    invoke-static {v0}, Ln0/a;->c(I)Ln0/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1}, Lg0/h;->toFile()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v0, v2}, Li0/c;->l(Ln0/a;Ljava/io/File;)Lg0/e$b;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0}, Ln0/a;->close()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-static {v1, p0}, Lg0/e;->e(Lg0/h;Lu0/d;)Lg0/e$b;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    new-instance v0, Lf0/o$d;

    .line 41
    .line 42
    invoke-direct {v0, v2, v1}, Lf0/o$d;-><init>(Lg0/e$b;Lg0/h;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method
