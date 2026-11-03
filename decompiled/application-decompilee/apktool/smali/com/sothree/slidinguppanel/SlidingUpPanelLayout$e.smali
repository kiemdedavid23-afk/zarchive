.class public final enum Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public static final enum b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public static final enum c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public static final enum d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public static final enum e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

.field public static final synthetic f:[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "EXPANDED"

    .line 5
    .line 6
    invoke-direct {v0, v1, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;-><init>(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->a:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 10
    .line 11
    new-instance v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    const-string v4, "COLLAPSED"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;-><init>(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->b:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 20
    .line 21
    new-instance v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "ANCHORED"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->c:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 30
    .line 31
    new-instance v6, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "HIDDEN"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->d:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 40
    .line 41
    new-instance v8, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "DRAGGING"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;-><init>(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->e:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 50
    .line 51
    const/4 v10, 0x5

    .line 52
    new-array v10, v10, [Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 53
    .line 54
    aput-object v0, v10, v1

    .line 55
    .line 56
    aput-object v2, v10, v3

    .line 57
    .line 58
    aput-object v4, v10, v5

    .line 59
    .line 60
    aput-object v6, v10, v7

    .line 61
    .line 62
    aput-object v8, v10, v9

    .line 63
    .line 64
    sput-object v10, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->f:[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;
    .locals 1

    const-class v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    return-object p0
.end method

.method public static values()[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;
    .locals 1

    sget-object v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->f:[Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    invoke-virtual {v0}, [Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$e;

    return-object v0
.end method
