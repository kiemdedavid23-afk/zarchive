.class public final Lf/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/b;


# direct methods
.method public constructor <init>(Lf/b;)V
    .locals 0

    iput-object p1, p0, Lf/b$c;->a:Lf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lf/b$c;->a:Lf/b;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lf/b;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lf/b;->o()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
