.class public final Lf0/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le1/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/p;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/b;

.field public final synthetic b:Lru/zdevs/zarchiver/ui/FSSelect;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/b;Lru/zdevs/zarchiver/ui/FSSelect;)V
    .locals 0

    iput-object p1, p0, Lf0/p$a;->a:Lru/zdevs/zarchiver/b;

    iput-object p2, p0, Lf0/p$a;->b:Lru/zdevs/zarchiver/ui/FSSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/p$a;->a:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iput p1, v0, Lru/zdevs/zarchiver/b;->g:I

    .line 4
    .line 5
    iput-boolean p3, v0, Lru/zdevs/zarchiver/b;->i:Z

    .line 6
    .line 7
    iput p2, v0, Lru/zdevs/zarchiver/b;->h:I

    .line 8
    .line 9
    iget-object p1, p0, Lf0/p$a;->b:Lru/zdevs/zarchiver/ui/FSSelect;

    .line 10
    .line 11
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/FSSelect;->getPath()Lg0/h;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lru/zdevs/zarchiver/ui/FSSelect;->setPath(Lg0/h;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
