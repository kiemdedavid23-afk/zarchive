.class public final Lt0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lt0/b;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lt0/b;->b:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p1, p0, Lt0/b;->c:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lt0/b;->d:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lt0/b;->e:I

    return-void
.end method
