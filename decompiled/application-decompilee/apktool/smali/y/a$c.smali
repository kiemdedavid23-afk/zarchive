.class public final Ly/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ly/a$d;


# direct methods
.method public constructor <init>(Ly/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly/a$c;->a:Ly/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$c;->a:Ly/a$d;

    .line 2
    .line 3
    iget-object v0, v0, Ly/a$d;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ly/a$f;

    .line 6
    .line 7
    invoke-interface {v0}, Ly/a$f;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
