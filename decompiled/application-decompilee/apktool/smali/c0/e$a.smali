.class public final Lc0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc0/e$a;->a:Landroid/view/View;

    .line 5
    .line 6
    const v0, 0x7f07008c

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object v0, p0, Lc0/e$a;->b:Landroid/widget/TextView;

    .line 16
    .line 17
    const v0, 0x7f070060

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object v0, p0, Lc0/e$a;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    const v0, 0x7f070076

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object v0, p0, Lc0/e$a;->d:Landroid/widget/TextView;

    .line 38
    .line 39
    const v0, 0x7f070075

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ImageView;

    .line 47
    .line 48
    iput-object p1, p0, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lc0/d;Landroid/graphics/Bitmap;I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lc0/e$a;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v0, 0x7f070075

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, p3, :cond_2

    .line 17
    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const/4 p3, 0x4

    .line 21
    invoke-static {p3}, Ls0/b;->l(I)Z

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/16 p3, 0x20

    .line 33
    .line 34
    invoke-static {p3}, Ls0/b;->l(I)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    invoke-static {p1, p2}, Ly0/f;->c(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_2
    const/4 p1, 0x0

    .line 50
    return p1
.end method
