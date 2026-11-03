.class public final Lf0/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv0/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf0/o$e;->a:I

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lf0/o$e;->b:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lf0/o$e;->a:I

    return v0
.end method
