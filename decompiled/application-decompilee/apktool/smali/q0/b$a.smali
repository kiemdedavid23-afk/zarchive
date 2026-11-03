.class public final Lq0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq0/b;->d(Lr0/a;Ljava/io/InputStream;JLjava/io/OutputStream;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lr0/a;

.field public final synthetic c:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Lr0/a;Landroid/os/CancellationSignal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq0/b$a;->b:Lr0/a;

    .line 2
    .line 3
    iput-object p2, p0, Lq0/b$a;->c:Landroid/os/CancellationSignal;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lq0/b$a;->a:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lq0/b$a;->b:Lr0/a;

    .line 2
    .line 3
    check-cast v0, Lr0/g;

    .line 4
    .line 5
    invoke-virtual {v0}, Lr0/g;->isCancelled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lq0/b$a;->c:Landroid/os/CancellationSignal;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lq0/b$a;->b:Lr0/a;

    .line 17
    .line 18
    iget-wide v1, p0, Lq0/b$a;->a:J

    .line 19
    .line 20
    sub-long v1, p1, v1

    .line 21
    .line 22
    invoke-interface {v0, v1, v2}, Lr0/a;->c(J)V

    .line 23
    .line 24
    .line 25
    iput-wide p1, p0, Lq0/b$a;->a:J

    .line 26
    .line 27
    return-void
.end method
