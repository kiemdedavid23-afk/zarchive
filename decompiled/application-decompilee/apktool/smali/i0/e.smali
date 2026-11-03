.class public final Li0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/c;


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li0/e;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput p3, p0, Li0/e;->b:I

    .line 7
    .line 8
    iput-object p2, p0, Li0/e;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Li0/e;->b:I

    return v0
.end method

.method public final b(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 0

    iget-object p1, p0, Li0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Li0/e;->c:Ljava/lang/String;

    invoke-static {p2, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lru/zdevs/zarchiver/provider/FileProvider;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(I)Lg/a;
    .locals 2

    .line 1
    iget-object v0, p0, Li0/e;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Li0/e;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lb/d;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lg/a;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1, p1, v1}, Lg/a;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 25
    .line 26
    const-string v0, "Path must not be null"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public final e()Lg0/h;
    .locals 2

    new-instance v0, Lg0/h;

    iget-object v1, p0, Li0/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Li0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final remove(I)Z
    .locals 1

    iget-object v0, p0, Li0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
