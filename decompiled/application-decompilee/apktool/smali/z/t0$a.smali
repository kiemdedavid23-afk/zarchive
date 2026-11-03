.class public final Lz/t0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/t0;->l(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz/t0;


# direct methods
.method public constructor <init>(Lz/t0;)V
    .locals 0

    iput-object p1, p0, Lz/t0$a;->a:Lz/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lf0/i;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lz/t0$a;->a:Lz/t0;

    .line 2
    .line 3
    iget-object p1, p1, Lz/t0;->i:Lru/zdevs/zarchiver/archiver/NArc;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lru/zdevs/zarchiver/archiver/NArc;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
