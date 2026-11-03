.class public final Lf0/o$n;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public final e:Lg0/h;


# direct methods
.method public constructor <init>(Lg0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lv0/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf0/o$n;->e:Lg0/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 4

    .line 1
    new-instance v0, Lf0/o$e;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lf0/o$e;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lf0/o$n;->e:Lg0/h;

    .line 8
    .line 9
    invoke-virtual {v1}, Lg0/h;->toFile()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Ljava/io/File;

    .line 16
    .line 17
    const-string v3, ".nomedia"

    .line 18
    .line 19
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, v0, Lf0/o$e;->b:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x2

    .line 30
    iput v1, v0, Lf0/o$e;->b:I

    .line 31
    .line 32
    :goto_0
    return-object v0
.end method
