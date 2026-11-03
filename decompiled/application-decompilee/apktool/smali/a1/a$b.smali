.class public final La1/a$b;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:La1/a;


# direct methods
.method public constructor <init>(La1/a;Landroid/graphics/drawable/shapes/OvalShape;)V
    .locals 2

    .line 1
    iput-object p1, p0, La1/a$b;->c:La1/a;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p2, p1, La1/a;->b:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget p2, La1/a;->n:I

    .line 12
    .line 13
    sget v1, La1/a;->l:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v1, p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v1, v0

    .line 22
    :goto_0
    iput v1, p0, La1/a$b;->a:I

    .line 23
    .line 24
    iget-boolean p1, p1, La1/a;->b:Z

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    sget p1, La1/a;->n:I

    .line 29
    .line 30
    sget p2, La1/a;->m:I

    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    add-int v0, p2, p1

    .line 37
    .line 38
    :cond_1
    iput v0, p0, La1/a$b;->b:I

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, La1/a$b;->c:La1/a;

    .line 2
    .line 3
    invoke-virtual {v0}, La1/a;->c()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, La1/a$b;->a:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {v0}, La1/a;->b()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v3, p0, La1/a$b;->b:I

    .line 15
    .line 16
    sub-int/2addr v0, v3

    .line 17
    invoke-virtual {p0, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
