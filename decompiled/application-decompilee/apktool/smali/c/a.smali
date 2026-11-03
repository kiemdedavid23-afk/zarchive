.class public final Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a$a;
    }
.end annotation


# static fields
.field public static g:Z = false


# instance fields
.field public final a:Lc/c;

.field public final b:Lc/a$a;

.field public final c:Lc/a$a;

.field public final d:Lc/a$a;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Lc/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc/a$a;

    .line 5
    .line 6
    invoke-direct {v0}, Lc/a$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lc/a;->b:Lc/a$a;

    .line 10
    .line 11
    new-instance v0, Lc/a$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lc/a$a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lc/a;->c:Lc/a$a;

    .line 17
    .line 18
    new-instance v0, Lc/a$a;

    .line 19
    .line 20
    invoke-direct {v0}, Lc/a$a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lc/a;->d:Lc/a$a;

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Lc/a;->e:J

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lc/a;->f:Z

    .line 31
    .line 32
    iput-object p1, p0, Lc/a;->a:Lc/c;

    .line 33
    .line 34
    return-void
.end method

.method public static a(FFF)I
    .locals 8

    float-to-double v0, p0

    float-to-double p0, p1

    float-to-double v2, p2

    sub-double/2addr v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, v6

    if-gez p2, :cond_0

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    add-double/2addr v2, p0

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v6

    neg-double v2, v2

    sub-double v4, v0, v4

    mul-double/2addr v4, v0

    sub-double/2addr v4, v6

    mul-double/2addr v4, v2

    add-double v2, v4, p0

    :goto_0
    double-to-int p0, v2

    return p0
.end method
