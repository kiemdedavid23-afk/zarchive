.class public final Lz/b0;
.super Lv0/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Lv0/a$b;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lm0/c;->b(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lz/l;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, v1}, Lz/l;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method
