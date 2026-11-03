.class public final Lg/d$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:F

.field public final b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(FLandroid/graphics/PointF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lg/d$i;->a:F

    .line 5
    .line 6
    iput-object p2, p0, Lg/d$i;->b:Landroid/graphics/PointF;

    .line 7
    .line 8
    return-void
.end method
