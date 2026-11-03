.class public Le/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:[Ld/a$a;

.field public b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/d$d;->a:[Ld/a$a;

    return-void
.end method

.method public constructor <init>(Le/d$d;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/d$d;->a:[Ld/a$a;

    .line 5
    iget-object v1, p1, Le/d$d;->b:Ljava/lang/String;

    iput-object v1, p0, Le/d$d;->b:Ljava/lang/String;

    .line 6
    iget v1, p1, Le/d$d;->c:I

    iput v1, p0, Le/d$d;->c:I

    .line 7
    iget-object p1, p1, Le/d$d;->a:[Ld/a$a;

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ld/a$a;

    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 10
    new-instance v2, Ld/a$a;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ld/a$a;-><init>(Ld/a$a;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    :goto_1
    iput-object v0, p0, Le/d$d;->a:[Ld/a$a;

    return-void
.end method
