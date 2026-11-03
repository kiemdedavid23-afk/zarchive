.class public final La1/a$c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public c:I

.field public final synthetic d:La1/a;


# direct methods
.method public constructor <init>(La1/a;)V
    .locals 5

    .line 1
    iput-object p1, p0, La1/a$c;->d:La1/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, La1/a$c;->a:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v2, Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, La1/a$c;->b:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    .line 29
    .line 30
    iget v1, p1, La1/a;->c:I

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    sget-object v1, La1/a;->o:Landroid/graphics/PorterDuffXfermode;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    sget v1, La1/a;->n:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    sget v2, La1/a;->l:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    sget v3, La1/a;->m:I

    .line 53
    .line 54
    int-to-float v3, v3

    .line 55
    const/high16 v4, 0x66000000

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-static {p1}, La1/a;->a(La1/a;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    div-int/lit8 p1, p1, 0x2

    .line 65
    .line 66
    iput p1, p0, La1/a$c;->c:I

    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, La1/a$c;->d:La1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    int-to-float v2, v2

    .line 17
    iget v3, p0, La1/a$c;->c:I

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    iget-object v4, p0, La1/a$c;->a:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    div-int/lit8 v1, v1, 0x2

    .line 30
    .line 31
    int-to-float v1, v1

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    div-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    iget v2, p0, La1/a$c;->c:I

    .line 40
    .line 41
    int-to-float v2, v2

    .line 42
    iget-object v3, p0, La1/a$c;->b:Landroid/graphics/Paint;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
