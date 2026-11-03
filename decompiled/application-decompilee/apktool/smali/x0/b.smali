.class public final Lx0/b;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx0/b$a;,
        Lx0/b$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/Toast;

.field public b:Lx0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lx0/b;->a:Landroid/widget/Toast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    new-instance v0, Lx0/b$a;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lx0/b$a;-><init>(Lx0/b;Landroid/content/Context;)V

    return-object v0
.end method
