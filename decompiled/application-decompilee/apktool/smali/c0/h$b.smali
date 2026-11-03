.class public final Lc0/h$b;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lc0/h$b;->a:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lc0/h$b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View$DragShadowBuilder;->getView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lc0/h$b;->a:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
