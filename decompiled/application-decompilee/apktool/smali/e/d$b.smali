.class public final Le/d$b;
.super Le/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public d:I

.field public e:F

.field public f:I

.field public g:F

.field public h:I

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Landroid/graphics/Paint$Cap;

.field public n:Landroid/graphics/Paint$Join;

.field public o:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/d$d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/d$b;->d:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Le/d$b;->e:F

    .line 4
    iput v0, p0, Le/d$b;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, Le/d$b;->g:F

    .line 6
    iput v0, p0, Le/d$b;->h:I

    .line 7
    iput v2, p0, Le/d$b;->i:F

    .line 8
    iput v1, p0, Le/d$b;->j:F

    .line 9
    iput v2, p0, Le/d$b;->k:F

    .line 10
    iput v1, p0, Le/d$b;->l:F

    .line 11
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    .line 12
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Le/d$b;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 13
    iput v0, p0, Le/d$b;->o:F

    return-void
.end method

.method public constructor <init>(Le/d$b;)V
    .locals 3

    .line 14
    invoke-direct {p0, p1}, Le/d$d;-><init>(Le/d$d;)V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Le/d$b;->d:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Le/d$b;->e:F

    .line 17
    iput v0, p0, Le/d$b;->f:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    iput v2, p0, Le/d$b;->g:F

    .line 19
    iput v0, p0, Le/d$b;->h:I

    .line 20
    iput v2, p0, Le/d$b;->i:F

    .line 21
    iput v1, p0, Le/d$b;->j:F

    .line 22
    iput v2, p0, Le/d$b;->k:F

    .line 23
    iput v1, p0, Le/d$b;->l:F

    .line 24
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    .line 25
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Le/d$b;->n:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    .line 26
    iput v0, p0, Le/d$b;->o:F

    .line 27
    iget v0, p1, Le/d$b;->d:I

    iput v0, p0, Le/d$b;->d:I

    .line 28
    iget v0, p1, Le/d$b;->e:F

    iput v0, p0, Le/d$b;->e:F

    .line 29
    iget v0, p1, Le/d$b;->g:F

    iput v0, p0, Le/d$b;->g:F

    .line 30
    iget v0, p1, Le/d$b;->f:I

    iput v0, p0, Le/d$b;->f:I

    .line 31
    iget v0, p1, Le/d$b;->h:I

    iput v0, p0, Le/d$b;->h:I

    .line 32
    iget v0, p1, Le/d$b;->i:F

    iput v0, p0, Le/d$b;->i:F

    .line 33
    iget v0, p1, Le/d$b;->j:F

    iput v0, p0, Le/d$b;->j:F

    .line 34
    iget v0, p1, Le/d$b;->k:F

    iput v0, p0, Le/d$b;->k:F

    .line 35
    iget v0, p1, Le/d$b;->l:F

    iput v0, p0, Le/d$b;->l:F

    .line 36
    iget-object v0, p1, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Le/d$b;->m:Landroid/graphics/Paint$Cap;

    .line 37
    iget-object v0, p1, Le/d$b;->n:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Le/d$b;->n:Landroid/graphics/Paint$Join;

    .line 38
    iget p1, p1, Le/d$b;->o:F

    iput p1, p0, Le/d$b;->o:F

    return-void
.end method
