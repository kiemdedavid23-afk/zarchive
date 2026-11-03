.class public final Lo/b$j;
.super Lo/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public final b:Le/b;


# direct methods
.method public constructor <init>(ILe/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/b;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lo/b$j;->b:Le/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Lp/g;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    iget p1, p0, Lo/b;->a:I

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lo/b$j;->b:Le/b;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Le/b;->a(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lo/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/b$j;->b:Le/b;

    invoke-virtual {v2, v1}, Le/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
