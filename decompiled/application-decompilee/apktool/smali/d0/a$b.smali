.class public final Ld0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld0/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld0/a$b$a;

    invoke-direct {v0}, Ld0/a$b$a;-><init>()V

    sput-object v0, Ld0/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Ld0/a$b;->a:I

    .line 4
    iput-object p3, p0, Ld0/a$b;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Ld0/a$b;->d:I

    .line 7
    iput p2, p0, Ld0/a$b;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ld0/a$b;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ld0/a$b;->e:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ld0/a$b;->b:Ljava/lang/String;

    .line 12
    sget-object v0, Ld0/a$a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    iput-object p1, p0, Ld0/a$b;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, p1}, Ld0/a$b;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x64

    .line 8
    .line 9
    if-gt v1, v2, :cond_1

    .line 10
    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ld0/a$a;

    .line 20
    .line 21
    iget v2, v1, Ld0/a$a;->a:I

    .line 22
    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    iget-object v1, v1, Ld0/a$a;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, p2}, Lu0/h;->f(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance v1, Ld0/a$a;

    .line 35
    .line 36
    invoke-direct {v1, p1, p2}, Ld0/a$a;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget p1, p0, Ld0/a$b;->e:I

    .line 44
    .line 45
    or-int/lit8 p1, p1, 0x2

    .line 46
    .line 47
    iput p1, p0, Ld0/a$b;->e:I

    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Ld0/a$b;->a:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Ld0/a$b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Ld0/a$b;->c:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
