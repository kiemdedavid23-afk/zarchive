.class public final Ln0/b;
.super Ln0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "sh"

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Ln0/a;->e(Ljava/lang/Process;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    return-void
.end method


# virtual methods
.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
