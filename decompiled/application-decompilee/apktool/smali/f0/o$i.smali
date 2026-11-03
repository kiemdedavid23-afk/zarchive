.class public final Lf0/o$i;
.super Lv0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
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
    iput-object p1, p0, Lf0/o$i;->e:Lg0/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/o$i;->e:Lg0/h;

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
    iget-object v0, v0, Lg0/e$a;->c:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lf0/o$e;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    invoke-direct {v1, v2}, Lf0/o$e;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, v1, Lf0/o$e;->c:Ljava/lang/String;

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method
