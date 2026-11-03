.class public final Lf0/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/o;->s(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/o;


# direct methods
.method public constructor <init>(Lf0/o;)V
    .locals 0

    iput-object p1, p0, Lf0/o$b;->a:Lf0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lf0/o$b;->a:Lf0/o;

    .line 2
    .line 3
    iget-object v0, p1, Lf0/o;->l:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-le v1, v3, :cond_2

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lf0/o;->l:[Ljava/lang/String;

    .line 16
    .line 17
    array-length v4, v1

    .line 18
    :goto_0
    if-ge v2, v4, :cond_1

    .line 19
    .line 20
    aget-object v5, v1, v2

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    aget-object v0, v0, v2

    .line 45
    .line 46
    :goto_1
    iget-object p1, p1, Lf0/o;->g:Landroid/app/AlertDialog;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "ZA File"

    .line 53
    .line 54
    invoke-static {p1, v1, v0}, Lu0/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v3
.end method
