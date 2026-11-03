.class public final Lz/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lz/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg0/h;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz/a$a;

    invoke-direct {v0}, Lz/a$a;-><init>()V

    sput-object v0, Lz/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 14

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lg0/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lg0/h;

    iput-object v1, p0, Lz/a;->b:Lg0/h;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lz/a;->c:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v1, :cond_1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    :goto_1
    if-ge v3, v2, :cond_2

    .line 51
    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    new-instance v1, Lc0/d;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lc0/d;-><init>(Ljava/lang/String;Ljava/lang/String;BBJJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 52
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    :goto_2
    if-ge v3, v2, :cond_2

    .line 53
    iget-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    new-instance v13, Lc0/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lg0/h;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const-wide/16 v9, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    move-object v4, v13

    invoke-direct/range {v4 .. v12}, Lc0/f;-><init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Lc0/b;Lg0/h;[I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p3

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc0/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lz/a;->c:Z

    .line 4
    new-instance v1, Lg0/h;

    invoke-direct {v1, p2}, Lg0/h;-><init>(Lg0/h;)V

    iput-object v1, p0, Lz/a;->b:Lg0/h;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 6
    array-length p2, p3

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p3, v0

    .line 7
    iget-object v2, p0, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lc0/b;->b(I)Lc0/d;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Fill failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lz/a;->c:Z

    .line 26
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "/uri/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 28
    new-instance v2, Lg0/h;

    invoke-static {p1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lg0/h;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lz/a;->b:Lg0/h;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Lc0/d;

    invoke-static {p1}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lc0/d;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lz/a;->b:Lg0/h;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34
    new-instance v2, Lg0/h;

    invoke-static {v0}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lg0/h;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v10, p0, Lz/a;->a:Ljava/util/ArrayList;

    new-instance v11, Lc0/f;

    invoke-static {v0}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v9}, Lc0/f;-><init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Fill failed"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 11

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lz/a;->c:Z

    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lz/a;->b:Lg0/h;

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg0/h;

    .line 42
    invoke-virtual {p2}, Lg0/h;->f()Lg0/h;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v9, p0, Lz/a;->a:Ljava/util/ArrayList;

    new-instance v10, Lc0/f;

    .line 44
    iget-object p2, p2, Lg0/h;->c:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v8}, Lc0/f;-><init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>([ILc0/i;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lc0/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lz/a;->c:Z

    .line 12
    array-length v2, p1

    if-ne v2, v1, :cond_0

    .line 13
    aget p1, p1, v0

    invoke-virtual {p2, p1}, Lc0/i;->j(I)Lc0/f;

    move-result-object p1

    .line 14
    iget-object p2, p1, Lc0/f;->k:Lg0/h;

    .line 15
    iput-object p2, p0, Lz/a;->b:Lg0/h;

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 18
    iput-object v1, p0, Lz/a;->b:Lg0/h;

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 20
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget v2, p1, v0

    .line 21
    iget-object v3, p0, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Lc0/i;->j(I)Lc0/f;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Fill failed"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Lg0/h;
    .locals 3

    .line 1
    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc0/d;

    .line 8
    .line 9
    iget-object v0, p0, Lz/a;->b:Lg0/h;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    check-cast v0, Lc0/f;

    .line 15
    .line 16
    iget-object v0, v0, Lc0/f;->k:Lg0/h;

    .line 17
    .line 18
    :cond_0
    new-instance v1, Lg0/h;

    .line 19
    .line 20
    iget-object v2, p1, Lc0/d;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lc0/d;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-direct {v1, v2, v0, p1}, Lg0/h;-><init>(Ljava/lang/String;Lg0/h;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lc0/d;

    .line 8
    .line 9
    iget-object p1, p1, Lc0/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-object p1
.end method

.method public final c()[Lg0/h;
    .locals 5

    .line 1
    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v2, v1, [Lg0/h;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lz/a;->b:Lg0/h;

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    :goto_0
    if-ge v3, v1, :cond_1

    .line 15
    .line 16
    aput-object v4, v2, v3

    .line 17
    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    :goto_1
    if-ge v3, v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lc0/f;

    .line 28
    .line 29
    iget-object v4, v4, Lc0/f;->k:Lg0/h;

    .line 30
    .line 31
    aput-object v4, v2, v3

    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    return-object v2
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object v1, p0, Lz/a;->b:Lg0/h;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {v1}, Lg0/h;->j()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Lb/d;->A(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v1, v1, Lg0/h;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {p1}, Lb/d;->y(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lc0/d;

    .line 48
    .line 49
    iget-object v2, v2, Lc0/d;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    return p1

    .line 59
    :cond_2
    :goto_0
    return v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(I)Z
    .locals 1

    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc0/d;

    invoke-virtual {p1}, Lc0/d;->f()Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lz/a;->b:Lg0/h;

    .line 4
    .line 5
    if-nez v2, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lc0/d;

    .line 24
    .line 25
    check-cast v3, Lc0/f;

    .line 26
    .line 27
    iget-object v3, v3, Lc0/f;->k:Lg0/h;

    .line 28
    .line 29
    invoke-virtual {v3}, Lg0/h;->i()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v3}, Lg0/h;->m()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    :cond_1
    return v1

    .line 42
    :cond_2
    return v0

    .line 43
    :cond_3
    invoke-virtual {v2}, Lg0/h;->i()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {v2}, Lg0/h;->m()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    :cond_4
    move v0, v1

    .line 56
    :cond_5
    return v0
.end method

.method public final g()Lg0/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lz/a;->b:Lg0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lc0/f;

    .line 14
    .line 15
    iget-object v0, v0, Lc0/f;->k:Lg0/h;

    .line 16
    .line 17
    return-object v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final i()[Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lc0/d;

    .line 25
    .line 26
    add-int/lit8 v4, v2, 0x1

    .line 27
    .line 28
    iget-object v3, v3, Lc0/d;->a:Ljava/lang/String;

    .line 29
    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    move v2, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v1
.end method

.method public final j()Ljava/util/ArrayList;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lc0/d;

    .line 27
    .line 28
    iget-object v2, v2, Lc0/d;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-object v0
.end method

.method public final k(Lg0/h;)Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object v0, p0, Lz/a;->b:Lg0/h;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lz/a;->j()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    iget-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lc0/d;

    .line 49
    .line 50
    move-object v3, v2

    .line 51
    check-cast v3, Lc0/f;

    .line 52
    .line 53
    iget-object v3, v3, Lc0/f;->k:Lg0/h;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Lg0/h;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    iget-object v2, v2, Lc0/d;->a:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lz/a;->b:Lg0/h;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lz/a;->c:Z

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lz/a;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    const/16 v4, 0x1c

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lc0/d;

    .line 42
    .line 43
    iget-object v1, v0, Lc0/d;->a:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lc0/d;->b:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lc0/d;->d()B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    .line 59
    .line 60
    iget-byte v1, v0, Lc0/d;->f:B

    .line 61
    .line 62
    if-ne v1, v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iget-wide v0, v0, Lc0/d;->d:J

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lc0/d;

    .line 89
    .line 90
    move-object v5, v1

    .line 91
    check-cast v5, Lc0/f;

    .line 92
    .line 93
    iget-object v5, v5, Lc0/f;->k:Lg0/h;

    .line 94
    .line 95
    invoke-virtual {p1, v5, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    .line 97
    .line 98
    iget-object v5, v1, Lc0/d;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Lc0/d;->d()B

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    .line 109
    .line 110
    iget-byte v5, v1, Lc0/d;->f:B

    .line 111
    .line 112
    if-ne v5, v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    iget-wide v5, v1, Lc0/d;->d:J

    .line 119
    .line 120
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    return-void
.end method
