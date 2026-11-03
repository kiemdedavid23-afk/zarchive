.class public final Lx/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, [I

    .line 9
    .line 10
    iput-object p1, p0, Lx/j;->a:[I

    .line 11
    .line 12
    return-void
.end method

.method public static a(IIIIIIII)I
    .locals 0

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x4

    or-int/2addr p1, p2

    shl-int/lit8 p2, p5, 0x4

    or-int/2addr p2, p4

    shl-int/lit8 p3, p7, 0x4

    or-int/2addr p3, p6

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0x8

    or-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method
