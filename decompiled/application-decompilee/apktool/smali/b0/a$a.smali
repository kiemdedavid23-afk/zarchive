.class public final Lb0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb0/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/pm/PackageInfo;

.field public final b:Ljava/lang/String;

.field public c:Landroid/graphics/drawable/Drawable;

.field public final d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/a$a;->a:Landroid/content/pm/PackageInfo;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/a$a;->d:Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    iput-object p1, p0, Lb0/a$a;->b:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lb0/a$a;

    .line 2
    .line 3
    iget-object p1, p1, Lb0/a$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lb0/a$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    if-nez p1, :cond_2

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_0
    return p1
.end method
