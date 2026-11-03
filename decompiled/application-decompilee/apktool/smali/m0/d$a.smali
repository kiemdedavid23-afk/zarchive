.class public final Lm0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>([BLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/d$a;->a:[B

    .line 5
    .line 6
    iput-object p2, p0, Lm0/d$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lm0/d$a;->c:Z

    .line 9
    .line 10
    return-void
.end method
