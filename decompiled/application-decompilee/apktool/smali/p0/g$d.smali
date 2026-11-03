.class public final Lp0/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lp0/g$b;

.field public final b:Lp0/e$a;


# direct methods
.method public constructor <init>(Lp0/g$b;Lp0/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp0/g$d;->a:Lp0/g$b;

    .line 5
    .line 6
    iput-object p2, p0, Lp0/g$d;->b:Lp0/e$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp0/g$d;->b:Lp0/e$a;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lp0/g$d;->a:Lp0/g$b;

    .line 4
    .line 5
    iget-object v2, v1, Lp0/g$b;->e:Lc0/g;

    .line 6
    .line 7
    iget-object v3, v1, Lp0/g$b;->a:Lc0/d;

    .line 8
    .line 9
    iget-object v4, v0, Lp0/e$a;->a:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget v1, v1, Lp0/g$b;->d:I

    .line 12
    .line 13
    invoke-interface {v2, v3, v4, v1}, Lc0/g;->a(Lc0/d;Landroid/graphics/Bitmap;I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    iput v1, v0, Lp0/e$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    :catch_0
    :cond_0
    return-void
.end method
