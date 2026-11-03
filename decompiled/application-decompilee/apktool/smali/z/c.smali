.class public final Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/zdevs/zarchiver/ui/text/ExSearchView$c;


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;)V
    .locals 0

    iput-object p1, p0, Lz/c;->a:Lru/zdevs/zarchiver/ZArchiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/c;->a:Lru/zdevs/zarchiver/ZArchiver;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZArchiver;->h:Lru/zdevs/zarchiver/d;

    .line 4
    .line 5
    iget v1, v1, Lru/zdevs/zarchiver/d;->e:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p1, p2, v2}, Lru/zdevs/zarchiver/ZArchiver;->P(ILjava/lang/String;[Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
