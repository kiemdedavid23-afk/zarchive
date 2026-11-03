.class public final Ld0/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld0/b$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld0/b$c;


# direct methods
.method public constructor <init>(Ld0/b$c;)V
    .locals 0

    iput-object p1, p0, Ld0/b$c$a;->a:Ld0/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lf0/i;)Z
    .locals 2

    .line 1
    check-cast p1, Lf0/k;

    .line 2
    .line 3
    iget-object p1, p1, Lf0/k;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Ld0/b$c$a;->a:Ld0/b$c;

    .line 6
    .line 7
    iget-object v0, v0, Ld0/b$c;->c:Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld0/b$c$a;->a:Ld0/b$c;

    .line 13
    .line 14
    iget-object v0, v0, Ld0/b$c;->d:Le0/d;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ld0/h;->d()Ld0/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Ld0/b$c$a;->a:Ld0/b$c;

    .line 23
    .line 24
    iget-object v1, v1, Ld0/b$c;->d:Le0/d;

    .line 25
    .line 26
    invoke-interface {v1}, Le0/d;->l()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1, p1}, Ld0/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Ld0/b$c$a;->a:Ld0/b$c;

    .line 34
    .line 35
    iget-object p1, p1, Ld0/b$c;->c:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    monitor-enter p1

    .line 38
    :try_start_0
    iget-object v0, p0, Ld0/b$c$a;->a:Ld0/b$c;

    .line 39
    .line 40
    iget-object v0, v0, Ld0/b$c;->c:Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 43
    .line 44
    .line 45
    monitor-exit p1

    .line 46
    const/4 p1, 0x1

    .line 47
    return p1

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0
.end method
