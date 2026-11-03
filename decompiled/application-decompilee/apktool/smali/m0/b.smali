.class public final Lm0/b;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic c:Lu0/d;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicLong;Lu0/d;)V
    .locals 0

    iput-object p1, p0, Lm0/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lm0/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lm0/b;->c:Lu0/d;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    iget-object p1, p0, Lm0/b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lm0/b;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lm0/b;->c:Lu0/d;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Lu0/d;->isCancelled()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 31
    .line 32
    :goto_0
    return-object p1
.end method

.method public final visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    instance-of v0, p2, Ljava/nio/file/AccessDeniedException;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/nio/file/SimpleFileVisitor;->visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method
