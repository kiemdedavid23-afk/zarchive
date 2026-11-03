.class public final Lv0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/a;->c(Lv0/a$b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv0/a$c;

.field public final synthetic b:Lv0/a$b;


# direct methods
.method public constructor <init>(Lv0/a$c;Lv0/a$b;)V
    .locals 0

    iput-object p1, p0, Lv0/a$a;->a:Lv0/a$c;

    iput-object p2, p0, Lv0/a$a;->b:Lv0/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lv0/a$a;->a:Lv0/a$c;

    iget-object v1, p0, Lv0/a$a;->b:Lv0/a$b;

    invoke-interface {v0, v1}, Lv0/a$c;->g(Lv0/a$b;)V

    return-void
.end method
