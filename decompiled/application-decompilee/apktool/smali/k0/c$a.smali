.class public final Lk0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p4, p0, Lk0/c$a;->a:J

    .line 5
    .line 6
    iput-wide p2, p0, Lk0/c$a;->b:J

    .line 7
    .line 8
    iput-object p1, p0, Lk0/c$a;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
