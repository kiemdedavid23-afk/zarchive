.class public final Lc0/f;
.super Lc0/d;
.source "SourceFile"


# instance fields
.field public final k:Lg0/h;


# direct methods
.method public constructor <init>(Lg0/h;Ljava/lang/String;Ljava/lang/String;BJJ)V
    .locals 9

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p2

    .line 4
    move-object v2, p3

    .line 5
    move v3, p4

    .line 6
    move-wide/from16 v5, p7

    .line 7
    .line 8
    move-wide v7, p5

    .line 9
    invoke-direct/range {v0 .. v8}, Lc0/d;-><init>(Ljava/lang/String;Ljava/lang/String;BBJJ)V

    .line 10
    .line 11
    .line 12
    move-object v1, p1

    .line 13
    iput-object v1, v0, Lc0/f;->k:Lg0/h;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc0/f;->k:Lg0/h;

    invoke-virtual {p0, v0}, Lc0/d;->e(Lg0/h;)I

    move-result v0

    return v0
.end method
