.class public final Lz0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Lz0/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lz0/f$a;->b:Z

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lz0/f$a;->c:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lz0/f$a;->d:I

    .line 12
    .line 13
    iput v0, p0, Lz0/f$a;->e:I

    .line 14
    .line 15
    iput-boolean v1, p0, Lz0/f$a;->f:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lz0/f$a;->g:Z

    .line 18
    .line 19
    return-void
.end method
