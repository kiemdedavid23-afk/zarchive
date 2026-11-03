.class public final Lz0/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz0/h;


# direct methods
.method public constructor <init>(Lz0/h;)V
    .locals 0

    iput-object p1, p0, Lz0/h$b;->a:Lz0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz0/h$b;->a:Lz0/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz0/h;->o(I)V

    return-void
.end method
