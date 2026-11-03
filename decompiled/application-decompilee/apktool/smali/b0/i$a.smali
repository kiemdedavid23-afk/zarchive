.class public final Lb0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb0/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Intent;

.field public final b:Landroid/content/pm/ResolveInfo;

.field public final c:Ljava/lang/String;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb0/i$a;->a:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lb0/i$a;->b:Landroid/content/pm/ResolveInfo;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lb0/i$a;->g:Z

    .line 10
    .line 11
    iput-object p3, p0, Lb0/i$a;->h:Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    iput-object p1, p0, Lb0/i$a;->c:Ljava/lang/String;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lb0/i$a;->e:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lb0/i$a;->b:Landroid/content/pm/ResolveInfo;

    .line 6
    .line 7
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 v1, 0x2e

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lez v1, :cond_0

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    iput-object v0, p0, Lb0/i$a;->e:Ljava/lang/String;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lb0/i$a;->e:Ljava/lang/String;

    .line 30
    .line 31
    return-object v0
.end method

.method public final declared-synchronized b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb0/i$a;->d:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lb0/i$a;->b:Landroid/content/pm/ResolveInfo;

    .line 7
    .line 8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 9
    .line 10
    iget-object v1, p0, Lb0/i$a;->h:Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lb0/i$a;->d:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lb0/i$a;->d:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb0/i$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lb0/i$a;->a:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lb0/i$a;->f:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lb0/i$a;->f:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lb0/i$a;

    .line 2
    .line 3
    iget-boolean v0, p0, Lb0/i$a;->g:Z

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-boolean v2, p1, Lb0/i$a;->g:Z

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p1, Lb0/i$a;->g:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p1, Lb0/i$a;->c:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lb0/i$a;->c:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    move v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    if-nez v0, :cond_4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    if-nez v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0}, Lb0/i$a;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lb0/i$a;->a()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    move v1, v0

    .line 57
    :cond_5
    if-nez v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, Lb0/i$a;->c()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lb0/i$a;->c()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :cond_6
    :goto_1
    return v1
.end method
