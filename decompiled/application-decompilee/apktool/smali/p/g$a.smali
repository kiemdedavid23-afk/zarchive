.class public final Lp/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lp/l;

.field public final b:Lp/j;

.field public final c:Lp/d;


# direct methods
.method public constructor <init>(Lp/l;Lp/j;Lp/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp/g$a;->a:Lp/l;

    .line 5
    .line 6
    iput-object p2, p0, Lp/g$a;->b:Lp/j;

    .line 7
    .line 8
    iput-object p3, p0, Lp/g$a;->c:Lp/d;

    .line 9
    .line 10
    return-void
.end method
