.class public final Le1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/a;-><init>(Landroid/content/Context;IZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/a;


# direct methods
.method public constructor <init>(Le1/a;)V
    .locals 0

    iput-object p1, p0, Le1/a$b;->a:Le1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p1, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;

    .line 2
    .line 3
    invoke-virtual {p1}, Lru/zdevs/zarchiver/ui/ctrl/MenuToggleButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Le1/a$b;->a:Le1/a;

    .line 8
    .line 9
    iput-boolean p1, v0, Le1/a;->e:Z

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, v0, Le1/a;->f:Z

    .line 13
    .line 14
    return-void
.end method
