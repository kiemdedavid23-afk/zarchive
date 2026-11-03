.class public final Lf0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lf0/v;


# direct methods
.method public constructor <init>(Lf0/v;)V
    .locals 0

    iput-object p1, p0, Lf0/u;->a:Lf0/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf0/u;->a:Lf0/v;

    .line 2
    .line 3
    iget-object p1, p1, Lf0/v;->g:Landroid/app/Dialog;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
