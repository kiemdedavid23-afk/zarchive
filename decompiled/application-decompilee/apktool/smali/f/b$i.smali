.class public final Lf/b$i;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final synthetic a:Lf/b;


# direct methods
.method public constructor <init>(Lf/b;)V
    .locals 0

    iput-object p1, p0, Lf/b$i;->a:Lf/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lf/b$i;->a:Lf/b;

    invoke-virtual {v0}, Lf/b;->e()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    iget-object v0, p0, Lf/b$i;->a:Lf/b;

    invoke-virtual {v0}, Lf/b;->e()V

    return-void
.end method
