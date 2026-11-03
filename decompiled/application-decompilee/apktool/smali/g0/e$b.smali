.class public final Lg0/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lg0/e$b;->a:Z

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lg0/e$b;->c:J

    .line 10
    .line 11
    iput-wide v1, p0, Lg0/e$b;->b:J

    .line 12
    .line 13
    iput v0, p0, Lg0/e$b;->d:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lg0/e$b;->e:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lg0/e$b;->f:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lg0/e$b;->h:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lg0/e$b;->g:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lg0/e$b;->i:I

    .line 26
    .line 27
    return-void
.end method
