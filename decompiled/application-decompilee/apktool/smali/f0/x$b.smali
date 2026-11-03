.class public final Lf0/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/x;->s(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/x;


# direct methods
.method public constructor <init>(Lf0/x;)V
    .locals 0

    iput-object p1, p0, Lf0/x$b;->a:Lf0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/x$b;->a:Lf0/x;

    .line 2
    .line 3
    iget-object v0, p1, Lf0/x;->g:Landroid/app/AlertDialog;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lf0/x;->j:Z

    .line 7
    .line 8
    invoke-static {p1}, Lf0/x;->r(Lf0/x;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
