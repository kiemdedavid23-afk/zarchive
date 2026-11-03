.class public final Le/d$f;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Le/d$e;

.field public c:Landroid/graphics/Bitmap;

.field public d:I

.field public e:Z

.field public f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 17
    new-instance v0, Le/d$e;

    invoke-direct {v0}, Le/d$e;-><init>()V

    iput-object v0, p0, Le/d$f;->b:Le/d$e;

    return-void
.end method

.method public constructor <init>(Le/d$f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iget v0, p1, Le/d$f;->a:I

    iput v0, p0, Le/d$f;->a:I

    .line 3
    new-instance v0, Le/d$e;

    iget-object v1, p1, Le/d$f;->b:Le/d$e;

    invoke-direct {v0, v1}, Le/d$e;-><init>(Le/d$e;)V

    iput-object v0, p0, Le/d$f;->b:Le/d$e;

    .line 4
    iget-object v1, p1, Le/d$f;->b:Le/d$e;

    .line 5
    iget-object v1, v1, Le/d$e;->e:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, Le/d$f;->b:Le/d$e;

    .line 7
    iget-object v2, v2, Le/d$e;->e:Landroid/graphics/Paint;

    .line 8
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 9
    iput-object v1, v0, Le/d$e;->e:Landroid/graphics/Paint;

    .line 10
    :cond_0
    iget-object v0, p1, Le/d$f;->b:Le/d$e;

    .line 11
    iget-object v0, v0, Le/d$e;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Le/d$f;->b:Le/d$e;

    new-instance v1, Landroid/graphics/Paint;

    iget-object p1, p1, Le/d$f;->b:Le/d$e;

    .line 13
    iget-object p1, p1, Le/d$e;->d:Landroid/graphics/Paint;

    .line 14
    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 15
    iput-object v1, v0, Le/d$e;->d:Landroid/graphics/Paint;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    iget v0, p0, Le/d$f;->a:I

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    new-instance v0, Le/d;

    invoke-direct {v0, p0}, Le/d;-><init>(Le/d$f;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2
    new-instance p1, Le/d;

    invoke-direct {p1, p0}, Le/d;-><init>(Le/d$f;)V

    return-object p1
.end method
