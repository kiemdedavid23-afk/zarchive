.class public final Lo/b$h;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final b:S


# direct methods
.method public constructor <init>(IS)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-short p2, p0, Lo/b$h;->b:S

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lo/b;->a:I

    int-to-float v0, v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lo/b;->a:I

    return v0
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "{"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p2, p0, Lo/b$h;->b:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lo/b;->a:I

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
