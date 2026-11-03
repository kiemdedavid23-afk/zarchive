.class public final Ld0/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lru/zdevs/zarchiver/d;

.field public final c:Ljava/lang/StringBuilder;

.field public final d:Le0/d;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/d;Lru/zdevs/zarchiver/ZArchiver;Ljava/lang/StringBuilder;Le0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld0/b$c;->b:Lru/zdevs/zarchiver/d;

    .line 5
    .line 6
    iput-object p2, p0, Ld0/b$c;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Ld0/b$c;->c:Ljava/lang/StringBuilder;

    .line 9
    .line 10
    iput-object p4, p0, Ld0/b$c;->d:Le0/d;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Lf0/k;

    .line 2
    .line 3
    iget-object v1, p0, Ld0/b$c;->b:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    iget-object v2, p0, Ld0/b$c;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lf0/k;-><init>(Lru/zdevs/zarchiver/d;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x2

    .line 11
    iput v1, v0, Lf0/i;->c:I

    .line 12
    .line 13
    new-instance v1, Ld0/b$c$a;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Ld0/b$c$a;-><init>(Ld0/b$c;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lf0/i;->b:Lf0/i$c;

    .line 19
    .line 20
    new-instance v1, Ld0/b$c$b;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Ld0/b$c$b;-><init>(Ld0/b$c;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lf0/i;->a:Lf0/i$b;

    .line 26
    .line 27
    iget v1, v0, Lf0/i;->d:I

    .line 28
    .line 29
    const/high16 v2, 0x10000

    .line 30
    .line 31
    or-int/2addr v1, v2

    .line 32
    iput v1, v0, Lf0/i;->d:I

    .line 33
    .line 34
    iget-object v0, v0, Lf0/k;->g:Landroid/app/AlertDialog;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-static {v0}, Lf0/i;->q(Landroid/app/Dialog;)Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
