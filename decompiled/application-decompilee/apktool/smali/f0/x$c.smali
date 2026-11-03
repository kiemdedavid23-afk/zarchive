.class public final Lf0/x$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lf0/x$c;->a:I

    .line 6
    .line 7
    iput v0, p0, Lf0/x$c;->b:I

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lf0/x$c;->c:I

    .line 11
    .line 12
    iput v0, p0, Lf0/x$c;->d:I

    .line 13
    .line 14
    return-void
.end method
