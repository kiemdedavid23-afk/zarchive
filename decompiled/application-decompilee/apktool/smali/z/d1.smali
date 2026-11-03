.class public final Lz/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;)V
    .locals 0

    iput-object p1, p0, Lz/d1;->a:Lru/zdevs/zarchiver/ZTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->h:[I

    .line 2
    .line 3
    iget-object v0, p0, Lz/d1;->a:Lru/zdevs/zarchiver/ZTextEditor;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZTextEditor;->f(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
